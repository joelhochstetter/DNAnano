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
	<36.766487, 52.510441, 50.506462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827087, 52.607231, 50.123108>,  <36.863449, 52.665306, 49.893097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827087, 52.607231, 50.123108>,  <36.766487, 52.510441, 50.506462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827087, 52.607231, 50.123108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640611, -0.714354, -0.281630,
		-0.752771, 0.656618, 0.046784,
		0.151503, 0.241973, -0.958382,
		36.872540, 52.679825, 49.835594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180500, 52.769508, 50.034935>,  <36.766487, 52.510441, 50.506462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180500, 52.769508, 50.034935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420856, 52.524849, 49.829094>,  <36.565071, 52.378052, 49.705589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420856, 52.524849, 49.829094>,  <36.180500, 52.769508, 50.034935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420856, 52.524849, 49.829094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783233, -0.579092, -0.226271,
		-0.159604, 0.539018, -0.827035,
		0.600893, -0.611647, -0.514601,
		36.601124, 52.341354, 49.674713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869465, 52.511696, 49.416607>,  <36.180500, 52.769508, 50.034935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869465, 52.511696, 49.416607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136284, 52.238152, 49.534851>,  <36.296375, 52.074024, 49.605797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136284, 52.238152, 49.534851>,  <35.869465, 52.511696, 49.416607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136284, 52.238152, 49.534851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653442, -0.727620, -0.208765,
		0.357859, -0.053909, -0.932218,
		0.667047, -0.683859, 0.295611,
		36.336399, 52.032993, 49.623535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064491, 51.985390, 48.769611>,  <35.869465, 52.511696, 49.416607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064491, 51.985390, 48.769611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067745, 51.850578, 49.146194>,  <36.069698, 51.769691, 49.372147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067745, 51.850578, 49.146194>,  <36.064491, 51.985390, 48.769611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067745, 51.850578, 49.146194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792698, -0.576088, -0.199380,
		0.609560, -0.744671, -0.271848,
		0.008135, -0.337027, 0.941460,
		36.070187, 51.749470, 49.428631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752312, 51.656502, 48.358917>,  <36.064491, 51.985390, 48.769611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752312, 51.656502, 48.358917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072487, 51.836506, 48.517307>,  <37.264591, 51.944508, 48.612343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072487, 51.836506, 48.517307>,  <36.752312, 51.656502, 48.358917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072487, 51.836506, 48.517307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558303, 0.800145, 0.219240,
		-0.218178, -0.396562, 0.891704,
		0.800435, 0.450008, 0.395976,
		37.312618, 51.971508, 48.636101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806820, 51.480957, 47.642750>,  <36.752312, 51.656502, 48.358917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806820, 51.480957, 47.642750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787693, 51.656734, 47.283951>,  <36.776218, 51.762199, 47.068672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787693, 51.656734, 47.283951>,  <36.806820, 51.480957, 47.642750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787693, 51.656734, 47.283951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805838, -0.513651, -0.294597,
		-0.590202, -0.736920, -0.329560,
		-0.047815, 0.439444, -0.896997,
		36.773350, 51.788567, 47.014851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828236, 50.926628, 47.064117>,  <36.806820, 51.480957, 47.642750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828236, 50.926628, 47.064117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.940807, 51.283440, 46.922646>,  <37.008350, 51.497524, 46.837765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.940807, 51.283440, 46.922646>,  <36.828236, 50.926628, 47.064117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940807, 51.283440, 46.922646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826803, -0.412479, -0.382435,
		-0.487027, -0.184793, -0.853614,
		0.281426, 0.892027, -0.353676,
		37.025234, 51.551048, 46.816544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513927, 51.015087, 46.735142>,  <36.828236, 50.926628, 47.064117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513927, 51.015087, 46.735142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578297, 51.069935, 47.126099>,  <37.616920, 51.102844, 47.360672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578297, 51.069935, 47.126099>,  <37.513927, 51.015087, 46.735142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578297, 51.069935, 47.126099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340098, -0.937354, 0.075510,
		0.926518, 0.320258, -0.197481,
		0.160927, 0.137124, 0.977394,
		37.626575, 51.111073, 47.419315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204781, 51.059315, 46.949146>,  <37.513927, 51.015087, 46.735142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204781, 51.059315, 46.949146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964527, 50.905922, 47.229771>,  <37.820377, 50.813889, 47.398144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964527, 50.905922, 47.229771>,  <38.204781, 51.059315, 46.949146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964527, 50.905922, 47.229771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387926, -0.907041, -0.163677,
		0.699111, 0.173845, 0.693557,
		-0.600630, -0.383477, 0.701561,
		37.784336, 50.790878, 47.440239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577724, 50.567623, 47.204018>,  <38.204781, 51.059315, 46.949146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577724, 50.567623, 47.204018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211853, 50.470131, 47.332985>,  <37.992329, 50.411636, 47.410366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211853, 50.470131, 47.332985>,  <38.577724, 50.567623, 47.204018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211853, 50.470131, 47.332985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271262, -0.961560, 0.042664,
		0.299621, 0.126482, 0.945637,
		-0.914683, -0.243732, 0.322414,
		37.937447, 50.397011, 47.429710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021210, 50.867485, 46.559895>,  <38.577724, 50.567623, 47.204018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021210, 50.867485, 46.559895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209103, 51.199482, 46.439583>,  <39.321838, 51.398678, 46.367397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209103, 51.199482, 46.439583>,  <39.021210, 50.867485, 46.559895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209103, 51.199482, 46.439583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655956, -0.100123, 0.748129,
		0.590824, -0.548719, -0.591468,
		0.469733, 0.829990, -0.300781,
		39.350021, 51.448479, 46.349350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312073, 51.370480, 47.103039>,  <39.021210, 50.867485, 46.559895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312073, 51.370480, 47.103039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.313042, 51.634377, 47.403633>,  <39.313625, 51.792713, 47.583992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.313042, 51.634377, 47.403633>,  <39.312073, 51.370480, 47.103039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313042, 51.634377, 47.403633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434340, 0.676208, -0.595055,
		-0.900746, 0.327845, -0.284913,
		0.002425, 0.659743, 0.751488,
		39.313770, 51.832298, 47.629078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807709, 51.914745, 47.033718>,  <39.312073, 51.370480, 47.103039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807709, 51.914745, 47.033718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.124340, 52.043671, 47.241379>,  <39.314320, 52.121025, 47.365974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.124340, 52.043671, 47.241379>,  <38.807709, 51.914745, 47.033718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124340, 52.043671, 47.241379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172705, 0.696938, -0.696025,
		-0.586160, 0.640616, 0.496012,
		0.791574, 0.322318, 0.519155,
		39.361813, 52.140366, 47.397125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841106, 52.730362, 47.028294>,  <38.807709, 51.914745, 47.033718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841106, 52.730362, 47.028294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197861, 52.559971, 47.089054>,  <39.411915, 52.457737, 47.125511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197861, 52.559971, 47.089054>,  <38.841106, 52.730362, 47.028294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197861, 52.559971, 47.089054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450276, 0.805019, -0.386259,
		0.042256, 0.412897, 0.909797,
		0.891889, -0.425981, 0.151901,
		39.465427, 52.432175, 47.134624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383320, 53.151569, 47.424614>,  <38.841106, 52.730362, 47.028294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383320, 53.151569, 47.424614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.518982, 52.914310, 47.132545>,  <39.600380, 52.771954, 46.957306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.518982, 52.914310, 47.132545>,  <39.383320, 53.151569, 47.424614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518982, 52.914310, 47.132545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590981, 0.738233, -0.325197,
		0.731924, -0.321222, 0.600918,
		0.339157, -0.593151, -0.730168,
		39.620728, 52.736366, 46.913494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836880, 53.483776, 47.834717>,  <39.383320, 53.151569, 47.424614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836880, 53.483776, 47.834717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.758427, 53.760380, 48.112808>,  <39.711357, 53.926342, 48.279663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.758427, 53.760380, 48.112808>,  <39.836880, 53.483776, 47.834717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.758427, 53.760380, 48.112808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119104, -0.720553, 0.683094,
		0.973318, 0.051170, 0.223683,
		-0.196130, 0.691509, 0.695232,
		39.699589, 53.967834, 48.321377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.197746, 53.330769, 48.345291>,  <39.836880, 53.483776, 47.834717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.197746, 53.330769, 48.345291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.859333, 53.502766, 48.471359>,  <39.656284, 53.605965, 48.547001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.859333, 53.502766, 48.471359>,  <40.197746, 53.330769, 48.345291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.859333, 53.502766, 48.471359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210745, -0.812761, 0.543144,
		0.489706, 0.393098, 0.778243,
		-0.846035, 0.429992, 0.315170,
		39.605522, 53.631763, 48.565910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970303, 53.074730, 48.978680>,  <40.197746, 53.330769, 48.345291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970303, 53.074730, 48.978680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.624264, 53.230160, 48.851799>,  <39.416641, 53.323418, 48.775669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.624264, 53.230160, 48.851799>,  <39.970303, 53.074730, 48.978680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624264, 53.230160, 48.851799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497902, -0.741892, 0.449098,
		-0.060823, 0.546450, 0.835280,
		-0.865097, 0.388573, -0.317203,
		39.364735, 53.346733, 48.756638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496315, 52.804722, 49.386177>,  <39.970303, 53.074730, 48.978680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496315, 52.804722, 49.386177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.895599, 52.795795, 49.408340>,  <41.135170, 52.790440, 49.421638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.895599, 52.795795, 49.408340>,  <40.496315, 52.804722, 49.386177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.895599, 52.795795, 49.408340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058268, -0.567805, 0.821098,
		0.013140, -0.822861, -0.568091,
		0.998215, -0.022312, 0.055407,
		41.195065, 52.789101, 49.424961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768349, 52.047512, 49.426575>,  <40.496315, 52.804722, 49.386177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.768349, 52.047512, 49.426575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.029930, 52.286804, 49.611820>,  <41.186878, 52.430378, 49.722969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.029930, 52.286804, 49.611820>,  <40.768349, 52.047512, 49.426575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.029930, 52.286804, 49.611820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003061, -0.610049, 0.792358,
		0.756533, -0.519579, -0.397110,
		0.653949, 0.598229, 0.463113,
		41.226116, 52.466274, 49.750755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362427, 51.620293, 49.665825>,  <40.768349, 52.047512, 49.426575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.362427, 51.620293, 49.665825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.273792, 51.938896, 49.890846>,  <41.220612, 52.130058, 50.025860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.273792, 51.938896, 49.890846>,  <41.362427, 51.620293, 49.665825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.273792, 51.938896, 49.890846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069518, -0.588332, 0.805626,
		0.972661, 0.139404, 0.185735,
		-0.221581, 0.796512, 0.562556,
		41.207317, 52.177849, 50.059612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.893345, 51.744297, 50.145096>,  <41.362427, 51.620293, 49.665825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.893345, 51.744297, 50.145096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.519981, 51.840652, 50.251465>,  <41.295963, 51.898464, 50.315285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.519981, 51.840652, 50.251465>,  <41.893345, 51.744297, 50.145096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.519981, 51.840652, 50.251465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036631, -0.801230, 0.597234,
		0.356930, 0.547725, 0.756702,
		-0.933413, 0.240890, 0.265920,
		41.239956, 51.912918, 50.331242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.885605, 52.508266, 50.073872>,  <41.893345, 51.744297, 50.145096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.885605, 52.508266, 50.073872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.878258, 52.703465, 50.422932>,  <41.873848, 52.820583, 50.632366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.878258, 52.703465, 50.422932>,  <41.885605, 52.508266, 50.073872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.878258, 52.703465, 50.422932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961949, -0.229350, 0.148501,
		0.272611, 0.842174, -0.465217,
		-0.018366, 0.487998, 0.872651,
		41.872749, 52.849865, 50.684727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.435150, 52.929836, 49.894711>,  <41.885605, 52.508266, 50.073872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.435150, 52.929836, 49.894711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.601120, 53.271179, 49.768463>,  <42.700703, 53.475986, 49.692715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.601120, 53.271179, 49.768463>,  <42.435150, 52.929836, 49.894711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.601120, 53.271179, 49.768463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498924, 0.076690, 0.863246,
		0.760863, -0.515654, -0.393941,
		0.414925, 0.853358, -0.315623,
		42.725597, 53.527187, 49.673775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.246723, 52.962879, 49.991837>,  <42.435150, 52.929836, 49.894711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.246723, 52.962879, 49.991837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.102562, 53.335415, 49.970963>,  <43.016064, 53.558937, 49.958439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.102562, 53.335415, 49.970963>,  <43.246723, 52.962879, 49.991837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.102562, 53.335415, 49.970963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469683, 0.229524, 0.852477,
		0.805920, 0.282723, -0.520154,
		-0.360403, 0.931336, -0.052188,
		42.994442, 53.614815, 49.955307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.546783, 53.331089, 50.524498>,  <43.246723, 52.962879, 49.991837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.546783, 53.331089, 50.524498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.707233, 53.697487, 50.527496>,  <43.803505, 53.917324, 50.529297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.707233, 53.697487, 50.527496>,  <43.546783, 53.331089, 50.524498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.707233, 53.697487, 50.527496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879261, -0.387311, 0.277290,
		0.256898, -0.104639, -0.960757,
		0.401127, 0.915992, 0.007495,
		43.827572, 53.972286, 50.529743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.256401, 53.275871, 50.113979>,  <43.546783, 53.331089, 50.524498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.256401, 53.275871, 50.113979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.216000, 53.598190, 50.347385>,  <44.191757, 53.791584, 50.487427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.216000, 53.598190, 50.347385>,  <44.256401, 53.275871, 50.113979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.216000, 53.598190, 50.347385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994658, 0.069225, 0.076576,
		0.021311, 0.588128, -0.808487,
		-0.101005, 0.805800, 0.583511,
		44.185699, 53.839931, 50.522438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.886528, 53.756676, 49.885746>,  <44.256401, 53.275871, 50.113979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.886528, 53.756676, 49.885746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.711781, 53.787586, 50.244225>,  <44.606934, 53.806133, 50.459312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.711781, 53.787586, 50.244225>,  <44.886528, 53.756676, 49.885746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.711781, 53.787586, 50.244225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867132, -0.228783, 0.442426,
		0.239223, 0.970406, 0.032943,
		-0.436869, 0.077273, 0.896200,
		44.580719, 53.810768, 50.513084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.017220, 54.249054, 50.395184>,  <44.886528, 53.756676, 49.885746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.017220, 54.249054, 50.395184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.967419, 53.906464, 50.595558>,  <44.937538, 53.700909, 50.715782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.967419, 53.906464, 50.595558>,  <45.017220, 54.249054, 50.395184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.967419, 53.906464, 50.595558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982681, -0.036597, 0.181654,
		-0.137250, 0.514881, 0.846203,
		-0.124499, -0.856480, 0.500941,
		44.930069, 53.649521, 50.745842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.221611, 54.332260, 51.117805>,  <45.017220, 54.249054, 50.395184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.221611, 54.332260, 51.117805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.270420, 53.980415, 50.933891>,  <45.299706, 53.769310, 50.823544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.270420, 53.980415, 50.933891>,  <45.221611, 54.332260, 51.117805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.270420, 53.980415, 50.933891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974164, 0.017444, 0.225167,
		-0.190038, -0.475380, 0.859010,
		0.122025, -0.879607, -0.459783,
		45.307026, 53.716534, 50.795956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.292992, 53.752956, 51.519840>,  <45.221611, 54.332260, 51.117805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.292992, 53.752956, 51.519840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.520245, 53.773598, 51.191315>,  <45.656597, 53.785984, 50.994198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.520245, 53.773598, 51.191315>,  <45.292992, 53.752956, 51.519840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.520245, 53.773598, 51.191315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822913, -0.028277, 0.567463,
		0.006059, -0.998267, -0.058531,
		0.568135, 0.051605, -0.821316,
		45.690685, 53.789078, 50.944920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.750935, 53.158623, 51.391266>,  <45.292992, 53.752956, 51.519840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.750935, 53.158623, 51.391266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.893192, 53.511459, 51.267704>,  <45.978546, 53.723164, 51.193565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.893192, 53.511459, 51.267704>,  <45.750935, 53.158623, 51.391266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.893192, 53.511459, 51.267704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795358, -0.112063, 0.595690,
		0.490838, -0.457546, -0.741437,
		0.355644, 0.882096, -0.308908,
		45.999886, 53.776089, 51.175030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.546326, 53.155231, 51.345062>,  <45.750935, 53.158623, 51.391266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.546326, 53.155231, 51.345062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.394745, 53.523499, 51.382519>,  <46.303795, 53.744457, 51.404991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.394745, 53.523499, 51.382519>,  <46.546326, 53.155231, 51.345062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.394745, 53.523499, 51.382519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674206, 0.205354, 0.709420,
		0.633909, 0.331971, -0.698538,
		-0.378954, 0.920666, 0.093640,
		46.281059, 53.799698, 51.410610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.134186, 53.665203, 51.253105>,  <46.546326, 53.155231, 51.345062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.134186, 53.665203, 51.253105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.843578, 53.826126, 51.475929>,  <46.669212, 53.922680, 51.609623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.843578, 53.826126, 51.475929>,  <47.134186, 53.665203, 51.253105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.843578, 53.826126, 51.475929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680599, 0.309682, 0.663990,
		0.094619, 0.861536, -0.498802,
		-0.726521, 0.402310, 0.557058,
		46.625622, 53.946819, 51.643047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.094639, 54.432156, 51.223122>,  <47.134186, 53.665203, 51.253105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.094639, 54.432156, 51.223122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.027248, 54.268120, 51.581661>,  <46.986816, 54.169697, 51.796783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.027248, 54.268120, 51.581661>,  <47.094639, 54.432156, 51.223122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.027248, 54.268120, 51.581661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855940, 0.390125, 0.339365,
		-0.488859, 0.824394, 0.285291,
		-0.168472, -0.410094, 0.896348,
		46.976707, 54.145092, 51.850567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.115555, 54.971096, 51.820080>,  <47.094639, 54.432156, 51.223122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.115555, 54.971096, 51.820080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.230091, 54.631180, 51.997101>,  <47.298813, 54.427231, 52.103313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.230091, 54.631180, 51.997101>,  <47.115555, 54.971096, 51.820080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.230091, 54.631180, 51.997101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794103, 0.468939, 0.386648,
		-0.536103, 0.240721, 0.809102,
		0.286345, -0.849794, 0.442557,
		47.315994, 54.376240, 52.129868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.253666, 55.134972, 52.490723>,  <47.115555, 54.971096, 51.820080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.253666, 55.134972, 52.490723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.461472, 54.800793, 52.419029>,  <47.586155, 54.600285, 52.376011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.461472, 54.800793, 52.419029>,  <47.253666, 55.134972, 52.490723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.461472, 54.800793, 52.419029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817121, 0.424427, 0.390097,
		-0.249834, -0.349119, 0.903160,
		0.519516, -0.835451, -0.179236,
		47.617325, 54.550156, 52.365257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.717896, 54.967163, 53.007675>,  <47.253666, 55.134972, 52.490723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.717896, 54.967163, 53.007675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.881840, 54.796246, 52.685326>,  <47.980206, 54.693695, 52.491917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.881840, 54.796246, 52.685326>,  <47.717896, 54.967163, 53.007675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.881840, 54.796246, 52.685326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897624, 0.345968, 0.273088,
		0.162117, -0.835300, 0.525349,
		0.409865, -0.427294, -0.805873,
		48.004799, 54.668056, 52.443565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.395607, 54.623985, 53.173367>,  <47.717896, 54.967163, 53.007675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.395607, 54.623985, 53.173367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.417355, 54.739120, 52.790913>,  <48.430405, 54.808201, 52.561440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.417355, 54.739120, 52.790913>,  <48.395607, 54.623985, 53.173367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.417355, 54.739120, 52.790913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915800, 0.367235, 0.162630,
		0.397937, -0.884470, -0.243635,
		0.054370, 0.287838, -0.956135,
		48.433666, 54.825470, 52.504074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.832657, 54.347740, 52.820919>,  <48.395607, 54.623985, 53.173367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.832657, 54.347740, 52.820919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.795044, 54.724510, 52.691963>,  <48.772476, 54.950573, 52.614590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.795044, 54.724510, 52.691963>,  <48.832657, 54.347740, 52.820919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.795044, 54.724510, 52.691963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965593, 0.165151, 0.200887,
		0.242463, -0.292403, -0.925047,
		-0.094032, 0.941927, -0.322385,
		48.766834, 55.007088, 52.595249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.284267, 54.446445, 52.222149>,  <48.832657, 54.347740, 52.820919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.284267, 54.446445, 52.222149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.227551, 54.755917, 52.469154>,  <49.193520, 54.941597, 52.617359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.227551, 54.755917, 52.469154>,  <49.284267, 54.446445, 52.222149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.227551, 54.755917, 52.469154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989746, 0.099899, 0.102094,
		0.017298, 0.625659, -0.779905,
		-0.141788, 0.773674, 0.617515,
		49.185013, 54.988018, 52.654408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.849205, 54.365597, 52.808197>,  <49.284267, 54.446445, 52.222149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.849205, 54.365597, 52.808197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.893894, 54.762611, 52.827782>,  <49.920708, 55.000820, 52.839535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.893894, 54.762611, 52.827782>,  <49.849205, 54.365597, 52.808197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.893894, 54.762611, 52.827782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928047, -0.121829, 0.351975,
		0.355312, 0.006118, -0.934728,
		0.111724, 0.992532, 0.048965,
		49.927410, 55.060371, 52.842472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.550167, 54.518559, 52.525383>,  <49.849205, 54.365597, 52.808197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.550167, 54.518559, 52.525383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.464371, 54.842190, 52.744247>,  <50.412891, 55.036369, 52.875565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.464371, 54.842190, 52.744247>,  <50.550167, 54.518559, 52.525383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.464371, 54.842190, 52.744247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942589, 0.024656, 0.333043,
		0.255968, 0.587180, -0.767919,
		-0.214490, 0.809081, 0.547159,
		50.400024, 55.084915, 52.908394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.962723, 55.184452, 52.375088>,  <50.550167, 54.518559, 52.525383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.962723, 55.184452, 52.375088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.841965, 55.068699, 52.738430>,  <50.769512, 54.999249, 52.956436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.841965, 55.068699, 52.738430>,  <50.962723, 55.184452, 52.375088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.841965, 55.068699, 52.738430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953302, -0.082880, 0.290426,
		-0.008760, 0.953618, 0.300891,
		-0.301893, -0.289384, 0.908360,
		50.751396, 54.981884, 53.010937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.228996, 55.567780, 52.967983>,  <50.962723, 55.184452, 52.375088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.228996, 55.567780, 52.967983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.172836, 55.177216, 53.033592>,  <51.139141, 54.942875, 53.072956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.172836, 55.177216, 53.033592>,  <51.228996, 55.567780, 52.967983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.172836, 55.177216, 53.033592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984508, -0.120105, 0.127748,
		-0.105035, 0.179417, 0.978150,
		-0.140401, -0.976414, 0.164022,
		51.130714, 54.884293, 53.082798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.618538, 55.445374, 53.577827>,  <51.228996, 55.567780, 52.967983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.618538, 55.445374, 53.577827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.591625, 55.130363, 53.332787>,  <51.575478, 54.941357, 53.185764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.591625, 55.130363, 53.332787>,  <51.618538, 55.445374, 53.577827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.591625, 55.130363, 53.332787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990455, -0.126747, 0.054158,
		-0.120296, -0.603109, 0.788536,
		-0.067281, -0.787525, -0.612600,
		51.571442, 54.894108, 53.149006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.906010, 54.873402, 53.920391>,  <51.618538, 55.445374, 53.577827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.906010, 54.873402, 53.920391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.923489, 54.880474, 53.520836>,  <51.933975, 54.884716, 53.281101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.923489, 54.880474, 53.520836>,  <51.906010, 54.873402, 53.920391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.923489, 54.880474, 53.520836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998000, 0.044945, 0.044455,
		0.045681, -0.998833, -0.015680,
		0.043699, 0.017679, -0.998888,
		51.936600, 54.885777, 53.221169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.036503, 54.161854, 53.740391>,  <51.906010, 54.873402, 53.920391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.036503, 54.161854, 53.740391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.183228, 54.434814, 53.487476>,  <52.271263, 54.598591, 53.335728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.183228, 54.434814, 53.487476>,  <52.036503, 54.161854, 53.740391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.183228, 54.434814, 53.487476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929906, -0.249285, 0.270429,
		0.026922, -0.687158, -0.726009,
		0.366811, 0.682400, -0.632281,
		52.293270, 54.639534, 53.297791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.434803, 53.934547, 53.191586>,  <52.036503, 54.161854, 53.740391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.434803, 53.934547, 53.191586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.549129, 54.295341, 53.321037>,  <52.617725, 54.511818, 53.398708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.549129, 54.295341, 53.321037>,  <52.434803, 53.934547, 53.191586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.549129, 54.295341, 53.321037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951781, -0.306477, 0.013590,
		0.111443, 0.304143, -0.946086,
		0.285820, 0.901981, 0.323632,
		52.634876, 54.565937, 53.418125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.156715, 54.286732, 52.899174>,  <52.434803, 53.934547, 53.191586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.156715, 54.286732, 52.899174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.105686, 54.440109, 53.265057>,  <53.075069, 54.532135, 53.484589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.105686, 54.440109, 53.265057>,  <53.156715, 54.286732, 52.899174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.105686, 54.440109, 53.265057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982101, -0.080010, 0.170514,
		0.138569, 0.920091, -0.366375,
		-0.127575, 0.383446, 0.914710,
		53.067413, 54.555141, 53.539471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.683716, 54.752285, 52.965244>,  <53.156715, 54.286732, 52.899174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.683716, 54.752285, 52.965244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.574001, 54.701550, 53.346542>,  <53.508171, 54.671108, 53.575321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.574001, 54.701550, 53.346542>,  <53.683716, 54.752285, 52.965244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.574001, 54.701550, 53.346542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936102, 0.191747, 0.294865,
		-0.220183, 0.973214, 0.066141,
		-0.274285, -0.126839, 0.953247,
		53.491714, 54.663498, 53.632515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.444756, 54.698311, 53.184380>,  <53.683716, 54.752285, 52.965244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.444756, 54.698311, 53.184380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.644775, 54.987854, 52.994232>,  <54.764786, 55.161579, 52.880142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.644775, 54.987854, 52.994232>,  <54.444756, 54.698311, 53.184380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.644775, 54.987854, 52.994232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701954, -0.017332, 0.712012,
		0.507159, -0.689728, -0.516784,
		0.500051, 0.723861, -0.475367,
		54.794792, 55.205013, 52.851624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.150646, 54.419781, 53.258675>,  <54.444756, 54.698311, 53.184380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.150646, 54.419781, 53.258675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.341324, 54.238873, 53.560192>,  <55.455730, 54.130325, 53.741104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.341324, 54.238873, 53.560192>,  <55.150646, 54.419781, 53.258675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.341324, 54.238873, 53.560192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552973, 0.820867, 0.142819,
		-0.683359, 0.348748, 0.641401,
		0.476697, -0.452274, 0.753796,
		55.484333, 54.103191, 53.786331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.174782, 54.875824, 53.876316>,  <55.150646, 54.419781, 53.258675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.174782, 54.875824, 53.876316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.484497, 54.625870, 53.916302>,  <55.670326, 54.475899, 53.940292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.484497, 54.625870, 53.916302>,  <55.174782, 54.875824, 53.876316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.484497, 54.625870, 53.916302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565804, 0.754347, 0.332907,
		-0.283437, -0.201206, 0.937646,
		0.774293, -0.624882, 0.099967,
		55.716785, 54.438404, 53.946293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.551563, 54.811623, 54.573711>,  <55.174782, 54.875824, 53.876316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.551563, 54.811623, 54.573711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.830879, 54.655197, 54.333893>,  <55.998466, 54.561340, 54.190002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.830879, 54.655197, 54.333893>,  <55.551563, 54.811623, 54.573711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.830879, 54.655197, 54.333893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612309, 0.760166, 0.217315,
		0.370771, -0.518858, 0.770270,
		0.698288, -0.391069, -0.599549,
		56.040367, 54.537876, 54.154030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.270378, 54.621101, 54.983002>,  <55.551563, 54.811623, 54.573711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.270378, 54.621101, 54.983002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.277664, 54.750111, 54.604446>,  <56.282036, 54.827515, 54.377312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.277664, 54.750111, 54.604446>,  <56.270378, 54.621101, 54.983002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.277664, 54.750111, 54.604446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484602, 0.825085, 0.290511,
		0.874545, -0.463912, -0.141265,
		0.018216, 0.322522, -0.946387,
		56.283131, 54.846867, 54.320530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.847126, 55.164234, 55.110611>,  <56.270378, 54.621101, 54.983002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.847126, 55.164234, 55.110611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.712585, 55.197937, 54.735428>,  <56.631859, 55.218159, 54.510319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.712585, 55.197937, 54.735428>,  <56.847126, 55.164234, 55.110611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.712585, 55.197937, 54.735428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358106, 0.932613, -0.044646,
		0.870991, -0.350905, -0.343861,
		-0.336356, 0.084253, -0.937958,
		56.611679, 55.223213, 54.454041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.209770, 54.587265, 55.438290>,  <56.847126, 55.164234, 55.110611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.209770, 54.587265, 55.438290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.938789, 54.553780, 55.730606>,  <56.776199, 54.533688, 55.905994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.938789, 54.553780, 55.730606>,  <57.209770, 54.587265, 55.438290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.938789, 54.553780, 55.730606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683546, -0.438630, 0.583411,
		0.271704, 0.894760, 0.354375,
		-0.677452, -0.083717, 0.730787,
		56.735554, 54.528664, 55.949841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.498032, 54.499104, 56.096916>,  <57.209770, 54.587265, 55.438290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.498032, 54.499104, 56.096916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.126823, 54.407875, 56.214737>,  <56.904099, 54.353138, 56.285431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.126823, 54.407875, 56.214737>,  <57.498032, 54.499104, 56.096916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.126823, 54.407875, 56.214737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372532, -0.565433, 0.735871,
		-0.001283, 0.792633, 0.609698,
		-0.928019, -0.228076, 0.294555,
		56.848419, 54.339451, 56.303104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.543484, 54.776146, 56.817242>,  <57.498032, 54.499104, 56.096916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.543484, 54.776146, 56.817242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.290550, 54.473488, 56.750732>,  <57.138790, 54.291893, 56.710827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.290550, 54.473488, 56.750732>,  <57.543484, 54.776146, 56.817242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.290550, 54.473488, 56.750732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303142, -0.439183, 0.845709,
		-0.712924, 0.484365, 0.507080,
		-0.632333, -0.756643, -0.166273,
		57.100849, 54.246494, 56.700851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.622135, 55.483883, 57.034538>,  <57.543484, 54.776146, 56.817242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.622135, 55.483883, 57.034538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.529900, 55.483383, 56.645317>,  <57.474556, 55.483082, 56.411785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.529900, 55.483383, 56.645317>,  <57.622135, 55.483883, 57.034538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.529900, 55.483383, 56.645317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874319, -0.438637, 0.207758,
		-0.427075, 0.898664, 0.100053,
		-0.230592, -0.001250, -0.973050,
		57.460724, 55.483009, 56.353401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.466949, 55.593693, 57.154961>,  <57.622135, 55.483883, 57.034538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.466949, 55.593693, 57.154961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.865639, 55.572685, 57.179588>,  <59.104851, 55.560081, 57.194366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.865639, 55.572685, 57.179588>,  <58.466949, 55.593693, 57.154961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.865639, 55.572685, 57.179588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000632, 0.755746, 0.654865,
		-0.080924, -0.652756, 0.753234,
		0.996720, -0.052519, 0.061571,
		59.164654, 55.556931, 57.198059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.691795, 55.530289, 57.854774>,  <58.466949, 55.593693, 57.154961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.691795, 55.530289, 57.854774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.958000, 55.734913, 57.637367>,  <59.117722, 55.857685, 57.506924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.958000, 55.734913, 57.637367>,  <58.691795, 55.530289, 57.854774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.958000, 55.734913, 57.637367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059433, 0.689560, 0.721786,
		0.744023, -0.512655, 0.428502,
		0.665505, 0.511558, -0.543517,
		59.157654, 55.888378, 57.474312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.175335, 55.706657, 58.357159>,  <58.691795, 55.530289, 57.854774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.175335, 55.706657, 58.357159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.177811, 55.952408, 58.041565>,  <59.179295, 56.099857, 57.852207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.177811, 55.952408, 58.041565>,  <59.175335, 55.706657, 58.357159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.177811, 55.952408, 58.041565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107986, 0.783978, 0.611324,
		0.994133, -0.088983, -0.061493,
		0.006189, 0.614378, -0.788987,
		59.179668, 56.136723, 57.804871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.760960, 56.117798, 58.464378>,  <59.175335, 55.706657, 58.357159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.760960, 56.117798, 58.464378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.482109, 56.287998, 58.233566>,  <59.314800, 56.390118, 58.095078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.482109, 56.287998, 58.233566>,  <59.760960, 56.117798, 58.464378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.482109, 56.287998, 58.233566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027091, 0.819902, 0.571863,
		0.716436, 0.383028, -0.583102,
		-0.697127, 0.425500, -0.577031,
		59.272972, 56.415649, 58.060455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.100517, 56.704872, 58.387321>,  <59.760960, 56.117798, 58.464378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.100517, 56.704872, 58.387321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.701630, 56.720985, 58.362251>,  <59.462296, 56.730652, 58.347210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.701630, 56.720985, 58.362251>,  <60.100517, 56.704872, 58.387321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.701630, 56.720985, 58.362251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002519, 0.822510, 0.568745,
		0.074460, 0.567322, -0.820123,
		-0.997221, 0.040283, -0.062674,
		59.402462, 56.733070, 58.343449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.931694, 57.451237, 58.186111>,  <60.100517, 56.704872, 58.387321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.931694, 57.451237, 58.186111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.685600, 57.217300, 58.397560>,  <59.537945, 57.076939, 58.524429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.685600, 57.217300, 58.397560>,  <59.931694, 57.451237, 58.186111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.685600, 57.217300, 58.397560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076252, 0.623260, 0.778288,
		-0.784649, 0.519138, -0.338855,
		-0.615234, -0.584844, 0.528625,
		59.501030, 57.041847, 58.556149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.736279, 58.248600, 58.193890>,  <59.931694, 57.451237, 58.186111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.736279, 58.248600, 58.193890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.553291, 57.945885, 58.007133>,  <59.443497, 57.764256, 57.895081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.553291, 57.945885, 58.007133>,  <59.736279, 58.248600, 58.193890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.553291, 57.945885, 58.007133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302310, 0.361419, -0.882035,
		0.836259, -0.544651, 0.063447,
		-0.457470, -0.756790, -0.466893,
		59.416050, 57.718849, 57.867065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.450512, 58.257286, 58.011932>,  <59.736279, 58.248600, 58.193890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.450512, 58.257286, 58.011932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.664955, 57.954254, 57.862984>,  <60.793621, 57.772434, 57.773613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.664955, 57.954254, 57.862984>,  <60.450512, 58.257286, 58.011932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.664955, 57.954254, 57.862984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843230, 0.501180, 0.194376,
		0.039371, -0.418202, 0.907500,
		0.536109, -0.757579, -0.372372,
		60.825787, 57.726982, 57.751270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.051785, 58.134106, 58.473618>,  <60.450512, 58.257286, 58.011932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.051785, 58.134106, 58.473618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.115898, 58.035854, 58.091209>,  <61.154366, 57.976902, 57.861763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.115898, 58.035854, 58.091209>,  <61.051785, 58.134106, 58.473618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.115898, 58.035854, 58.091209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947841, 0.308639, 0.079615,
		0.275509, -0.918916, 0.282291,
		0.160286, -0.245633, -0.956020,
		61.163982, 57.962166, 57.804405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.766537, 57.793812, 58.497372>,  <61.051785, 58.134106, 58.473618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.766537, 57.793812, 58.497372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.701706, 57.917831, 58.122650>,  <61.662807, 57.992241, 57.897816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.701706, 57.917831, 58.122650>,  <61.766537, 57.793812, 58.497372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.701706, 57.917831, 58.122650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941111, 0.334034, -0.052270,
		0.296719, -0.890108, -0.345927,
		-0.162077, 0.310046, -0.936804,
		61.653084, 58.010845, 57.841610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.170681, 58.073460, 58.994560>,  <61.766537, 57.793812, 58.497372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.170681, 58.073460, 58.994560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.967560, 58.217060, 59.307800>,  <61.845688, 58.303219, 59.495747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.967560, 58.217060, 59.307800>,  <62.170681, 58.073460, 58.994560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.967560, 58.217060, 59.307800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742928, -0.277688, 0.609054,
		0.436108, 0.891072, -0.125698,
		-0.507807, 0.358998, 0.783104,
		61.815216, 58.324760, 59.542732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.411953, 58.790028, 59.350590>,  <62.170681, 58.073460, 58.994560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.411953, 58.790028, 59.350590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.240860, 58.540325, 59.612076>,  <62.138203, 58.390503, 59.768967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.240860, 58.540325, 59.612076>,  <62.411953, 58.790028, 59.350590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.240860, 58.540325, 59.612076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838472, -0.003871, 0.544931,
		-0.337647, 0.781209, 0.525079,
		-0.427737, -0.624258, 0.653715,
		62.112537, 58.353046, 59.808189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.339001, 59.130539, 60.088921>,  <62.411953, 58.790028, 59.350590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.339001, 59.130539, 60.088921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.352989, 58.731567, 60.113945>,  <62.361382, 58.492184, 60.128960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.352989, 58.731567, 60.113945>,  <62.339001, 59.130539, 60.088921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.352989, 58.731567, 60.113945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667818, 0.069894, 0.741036,
		-0.743503, 0.015862, 0.668545,
		0.034973, -0.997428, 0.062559,
		62.363480, 58.432339, 60.132713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.381752, 59.033363, 60.786068>,  <62.339001, 59.130539, 60.088921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.381752, 59.033363, 60.786068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.484734, 58.681759, 60.625542>,  <62.546524, 58.470795, 60.529224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.484734, 58.681759, 60.625542>,  <62.381752, 59.033363, 60.786068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.484734, 58.681759, 60.625542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506525, -0.230915, 0.830729,
		-0.822891, -0.417151, 0.385791,
		0.257455, -0.879013, -0.401315,
		62.561970, 58.418056, 60.505146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.103062, 58.524574, 61.220005>,  <62.381752, 59.033363, 60.786068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.103062, 58.524574, 61.220005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.453453, 58.455177, 61.039978>,  <62.663689, 58.413540, 60.931961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.453453, 58.455177, 61.039978>,  <62.103062, 58.524574, 61.220005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.453453, 58.455177, 61.039978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402235, -0.252214, 0.880111,
		-0.266236, -0.951986, -0.151134,
		0.875971, -0.173526, -0.450070,
		62.716248, 58.403130, 60.904957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.322159, 57.837311, 61.472481>,  <62.103062, 58.524574, 61.220005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.322159, 57.837311, 61.472481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.635193, 58.044827, 61.334831>,  <62.823013, 58.169334, 61.252243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.635193, 58.044827, 61.334831>,  <62.322159, 57.837311, 61.472481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.635193, 58.044827, 61.334831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533366, -0.273656, 0.800395,
		0.321061, -0.809922, -0.490862,
		0.782586, 0.518785, -0.344125,
		62.869968, 58.200462, 61.231594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.791531, 57.318340, 61.401360>,  <62.322159, 57.837311, 61.472481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.791531, 57.318340, 61.401360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.944893, 57.682632, 61.462769>,  <63.036911, 57.901207, 61.499615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.944893, 57.682632, 61.462769>,  <62.791531, 57.318340, 61.401360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.944893, 57.682632, 61.462769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620933, -0.377235, 0.687121,
		0.683697, -0.168119, -0.710137,
		0.383407, 0.910730, 0.153524,
		63.059914, 57.955853, 61.508827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.550919, 57.310181, 61.339634>,  <62.791531, 57.318340, 61.401360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.550919, 57.310181, 61.339634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.423920, 57.590843, 61.594780>,  <63.347721, 57.759243, 61.747868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.423920, 57.590843, 61.594780>,  <63.550919, 57.310181, 61.339634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.423920, 57.590843, 61.594780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585782, -0.383845, 0.713809,
		0.745691, 0.600280, -0.289151,
		-0.317496, 0.701660, 0.637863,
		63.328671, 57.801342, 61.786140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.953297, 56.741634, 61.164581>,  <63.550919, 57.310181, 61.339634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.953297, 56.741634, 61.164581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.200478, 56.945843, 60.925415>,  <64.348785, 57.068367, 60.781914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.200478, 56.945843, 60.925415>,  <63.953297, 56.741634, 61.164581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.200478, 56.945843, 60.925415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011277, 0.766178, 0.642529,
		0.786133, -0.390311, 0.479220,
		0.617954, 0.510518, -0.597917,
		64.385864, 57.098999, 60.746040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.690643, 56.872494, 61.396393>,  <63.953297, 56.741634, 61.164581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.690643, 56.872494, 61.396393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.590652, 57.152901, 61.129234>,  <64.530655, 57.321144, 60.968941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.590652, 57.152901, 61.129234>,  <64.690643, 56.872494, 61.396393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.590652, 57.152901, 61.129234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055594, 0.699051, 0.712907,
		0.966652, 0.141085, -0.213725,
		-0.249985, 0.701015, -0.667896,
		64.515656, 57.363205, 60.928867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.195580, 57.438053, 61.220886>,  <64.690643, 56.872494, 61.396393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.195580, 57.438053, 61.220886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.822754, 57.580246, 61.192894>,  <64.599060, 57.665562, 61.176098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.822754, 57.580246, 61.192894>,  <65.195580, 57.438053, 61.220886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.822754, 57.580246, 61.192894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189176, 0.642227, 0.742804,
		0.308997, 0.679098, -0.665842,
		-0.932059, 0.355485, -0.069977,
		64.543137, 57.686890, 61.171902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.853203, 57.635170, 61.124470>,  <65.195580, 57.438053, 61.220886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.853203, 57.635170, 61.124470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.658607, 57.784897, 61.440247>,  <65.541855, 57.874733, 61.629715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.658607, 57.784897, 61.440247>,  <65.853203, 57.635170, 61.124470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.658607, 57.784897, 61.440247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809198, 0.533754, 0.245570,
		-0.329448, 0.758282, -0.562559,
		-0.486479, 0.374319, 0.789445,
		65.512665, 57.897194, 61.677078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.797615, 58.475437, 61.101372>,  <65.853203, 57.635170, 61.124470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.797615, 58.475437, 61.101372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.836372, 58.271965, 61.443565>,  <65.859627, 58.149883, 61.648884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.836372, 58.271965, 61.443565>,  <65.797615, 58.475437, 61.101372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.836372, 58.271965, 61.443565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900936, 0.410124, 0.141819,
		-0.422996, 0.756998, 0.498024,
		0.096895, -0.508677, 0.855488,
		65.865440, 58.119362, 61.700211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.062782, 58.893703, 61.755791>,  <65.797615, 58.475437, 61.101372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.062782, 58.893703, 61.755791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.138802, 58.502884, 61.794281>,  <66.184418, 58.268394, 61.817375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.138802, 58.502884, 61.794281>,  <66.062782, 58.893703, 61.755791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.138802, 58.502884, 61.794281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925837, 0.210975, 0.313551,
		-0.326655, 0.029493, 0.944683,
		0.190057, -0.977046, 0.096222,
		66.195816, 58.209770, 61.823147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.444641, 58.813629, 62.465321>,  <66.062782, 58.893703, 61.755791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.444641, 58.813629, 62.465321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.519203, 58.520180, 62.203926>,  <66.563942, 58.344109, 62.047089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.519203, 58.520180, 62.203926>,  <66.444641, 58.813629, 62.465321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.519203, 58.520180, 62.203926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967735, 0.022334, 0.250977,
		-0.169528, -0.679188, 0.714117,
		0.186410, -0.733624, -0.653488,
		66.575127, 58.300091, 62.007881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.934319, 58.229889, 62.656765>,  <66.444641, 58.813629, 62.465321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.934319, 58.229889, 62.656765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.959480, 58.178917, 62.260826>,  <66.974579, 58.148335, 62.023262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.959480, 58.178917, 62.260826>,  <66.934319, 58.229889, 62.656765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.959480, 58.178917, 62.260826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828532, -0.546271, 0.122978,
		-0.556397, -0.827859, 0.071211,
		0.062908, -0.127425, -0.989851,
		66.978355, 58.140690, 61.963871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.042320, 57.474281, 62.433140>,  <66.934319, 58.229889, 62.656765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.042320, 57.474281, 62.433140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.176994, 57.740181, 62.166382>,  <67.257797, 57.899723, 62.006329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.176994, 57.740181, 62.166382>,  <67.042320, 57.474281, 62.433140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.176994, 57.740181, 62.166382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913662, -0.401928, 0.060632,
		-0.227737, -0.629727, -0.742684,
		0.336687, 0.664753, -0.666892,
		67.278000, 57.939606, 61.966316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.306000, 57.219658, 61.759151>,  <67.042320, 57.474281, 62.433140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.306000, 57.219658, 61.759151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.519905, 57.542236, 61.860092>,  <67.648247, 57.735783, 61.920654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.519905, 57.542236, 61.860092>,  <67.306000, 57.219658, 61.759151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.519905, 57.542236, 61.860092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836947, -0.546633, -0.026692,
		0.116418, 0.225477, -0.967268,
		0.534759, 0.806444, 0.252350,
		67.680336, 57.784168, 61.935799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.865280, 57.482170, 61.195419>,  <67.306000, 57.219658, 61.759151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.865280, 57.482170, 61.195419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.938652, 57.535378, 61.585014>,  <67.982674, 57.567303, 61.818771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.938652, 57.535378, 61.585014>,  <67.865280, 57.482170, 61.195419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.938652, 57.535378, 61.585014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826908, -0.556659, -0.079712,
		0.531577, 0.820022, -0.212107,
		0.183437, 0.133020, 0.973990,
		67.993683, 57.575283, 61.877213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.635582, 57.543346, 61.008793>,  <67.865280, 57.482170, 61.195419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.635582, 57.543346, 61.008793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.598152, 57.909851, 61.164589>,  <68.575699, 58.129753, 61.258068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.598152, 57.909851, 61.164589>,  <68.635582, 57.543346, 61.008793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.598152, 57.909851, 61.164589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647565, 0.353161, -0.675231,
		-0.756244, 0.189043, -0.626385,
		-0.093567, 0.916264, 0.389493,
		68.570084, 58.184731, 61.281437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.755005, 58.129177, 60.476818>,  <68.635582, 57.543346, 61.008793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.755005, 58.129177, 60.476818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.797379, 58.305683, 60.833260>,  <68.822800, 58.411587, 61.047123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.797379, 58.305683, 60.833260>,  <68.755005, 58.129177, 60.476818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.797379, 58.305683, 60.833260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710021, 0.593829, -0.378467,
		-0.696167, 0.672793, -0.250403,
		0.105933, 0.441268, 0.891101,
		68.829155, 58.438065, 61.100590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.437798, 57.564560, 60.228710>,  <68.755005, 58.129177, 60.476818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.437798, 57.564560, 60.228710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.429863, 57.188004, 60.094017>,  <68.425102, 56.962070, 60.013199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.429863, 57.188004, 60.094017>,  <68.437798, 57.564560, 60.228710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.429863, 57.188004, 60.094017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357985, 0.321163, -0.876756,
		0.933516, 0.103149, -0.343377,
		-0.019843, -0.941390, -0.336737,
		68.423912, 56.905586, 59.992996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.783981, 57.389149, 59.663452>,  <68.437798, 57.564560, 60.228710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.783981, 57.389149, 59.663452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.438255, 57.188560, 59.678970>,  <68.230820, 57.068207, 59.688282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.438255, 57.188560, 59.678970>,  <68.783981, 57.389149, 59.663452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.438255, 57.188560, 59.678970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127019, 0.142992, -0.981539,
		0.486664, -0.853277, -0.187284,
		-0.864306, -0.501468, 0.038793,
		68.178963, 57.038120, 59.690609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.535805, 57.594543, 59.549942>,  <68.783981, 57.389149, 59.663452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.535805, 57.594543, 59.549942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.256226, 57.718918, 59.292328>,  <69.088478, 57.793545, 59.137760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.256226, 57.718918, 59.292328>,  <69.535805, 57.594543, 59.549942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.256226, 57.718918, 59.292328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422971, 0.546425, 0.722853,
		0.576679, 0.777649, -0.250408,
		-0.698955, 0.310938, -0.644034,
		69.046539, 57.812199, 59.099117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.147865, 57.844673, 59.879002>,  <69.535805, 57.594543, 59.549942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.147865, 57.844673, 59.879002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.500244, 57.750031, 59.715073>,  <70.711670, 57.693245, 59.616714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.500244, 57.750031, 59.715073>,  <70.147865, 57.844673, 59.879002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.500244, 57.750031, 59.715073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294931, 0.402735, -0.866499,
		0.370065, 0.884208, 0.285006,
		0.880947, -0.236604, -0.409818,
		70.764526, 57.679050, 59.592129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.220863, 58.418274, 59.453861>,  <70.147865, 57.844673, 59.879002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.220863, 58.418274, 59.453861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.461494, 58.110519, 59.367935>,  <70.605873, 57.925869, 59.316380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.461494, 58.110519, 59.367935>,  <70.220863, 58.418274, 59.453861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.461494, 58.110519, 59.367935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252876, 0.071668, -0.964841,
		0.757729, 0.634753, -0.151444,
		0.601582, -0.769384, -0.214818,
		70.641968, 57.879704, 59.303490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.776817, 58.753242, 59.842804>,  <70.220863, 58.418274, 59.453861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.776817, 58.753242, 59.842804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.752419, 59.150124, 59.886292>,  <70.737778, 59.388252, 59.912384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.752419, 59.150124, 59.886292>,  <70.776817, 58.753242, 59.842804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.752419, 59.150124, 59.886292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967694, 0.085481, -0.237194,
		-0.244637, 0.090737, -0.965360,
		-0.060998, 0.992199, 0.108717,
		70.734116, 59.447784, 59.918907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.519249, 58.343517, 59.603886>,  <70.776817, 58.753242, 59.842804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.519249, 58.343517, 59.603886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.494766, 58.411274, 59.210426>,  <71.480072, 58.451927, 58.974350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.494766, 58.411274, 59.210426>,  <71.519249, 58.343517, 59.603886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.494766, 58.411274, 59.210426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286137, 0.941153, 0.179881,
		0.956231, 0.292469, -0.009145,
		-0.061216, 0.169391, -0.983646,
		71.476402, 58.462090, 58.915333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.882339, 57.707943, 59.564320>,  <71.519249, 58.343517, 59.603886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.882339, 57.707943, 59.564320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.100510, 57.917305, 59.826180>,  <72.231415, 58.042923, 59.983295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.100510, 57.917305, 59.826180>,  <71.882339, 57.707943, 59.564320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.100510, 57.917305, 59.826180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194965, -0.680400, 0.706431,
		0.815171, -0.512936, -0.269059,
		0.545422, 0.523405, 0.654646,
		72.264137, 58.074326, 60.022572>
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
