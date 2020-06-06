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
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<24.100435, 34.925880, 35.197247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.486320, 34.955784, 35.096260>,  <24.717852, 34.973724, 35.035667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.486320, 34.955784, 35.096260>,  <24.100435, 34.925880, 35.197247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.486320, 34.955784, 35.096260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158918, 0.929820, -0.331934,
		0.209935, 0.360343, 0.908890,
		0.964714, 0.074754, -0.252467,
		24.775734, 34.978210, 35.020519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.547844, 35.577202, 35.504597>,  <24.100435, 34.925880, 35.197247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.547844, 35.577202, 35.504597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.656618, 35.453526, 35.140079>,  <24.721882, 35.379322, 34.921368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.656618, 35.453526, 35.140079>,  <24.547844, 35.577202, 35.504597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.656618, 35.453526, 35.140079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032524, 0.943485, -0.329816,
		0.961766, 0.119327, 0.246509,
		0.271934, -0.309188, -0.911293,
		24.738197, 35.360767, 34.866692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.033537, 36.086002, 35.230011>,  <24.547844, 35.577202, 35.504597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.033537, 36.086002, 35.230011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.934860, 35.939354, 34.871185>,  <24.875654, 35.851364, 34.655888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.934860, 35.939354, 34.871185>,  <25.033537, 36.086002, 35.230011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.934860, 35.939354, 34.871185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060270, 0.918081, -0.391785,
		0.967219, -0.150715, -0.204384,
		-0.246689, -0.366624, -0.897068,
		24.860853, 35.829369, 34.602066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.732761, 35.778240, 35.431717>,  <25.033537, 36.086002, 35.230011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.732761, 35.778240, 35.431717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.064384, 35.969227, 35.315311>,  <26.263357, 36.083820, 35.245468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.064384, 35.969227, 35.315311>,  <25.732761, 35.778240, 35.431717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.064384, 35.969227, 35.315311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258688, 0.133882, 0.956638,
		0.495728, -0.868388, -0.012520,
		0.829056, 0.477471, -0.291010,
		26.313101, 36.112469, 35.228008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.296953, 35.543056, 35.909752>,  <25.732761, 35.778240, 35.431717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.296953, 35.543056, 35.909752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.381844, 35.906578, 35.766068>,  <26.432777, 36.124691, 35.679855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.381844, 35.906578, 35.766068>,  <26.296953, 35.543056, 35.909752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.381844, 35.906578, 35.766068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287291, 0.293319, 0.911827,
		0.934036, -0.296713, -0.198841,
		0.212227, 0.908804, -0.359213,
		26.445511, 36.179218, 35.658302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.995497, 35.839260, 36.174656>,  <26.296953, 35.543056, 35.909752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.995497, 35.839260, 36.174656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.797073, 36.161335, 36.044670>,  <26.678019, 36.354580, 35.966679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.797073, 36.161335, 36.044670>,  <26.995497, 35.839260, 36.174656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.797073, 36.161335, 36.044670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174503, 0.459074, 0.871091,
		0.850573, 0.375405, -0.368235,
		-0.496059, 0.805184, -0.324967,
		26.648256, 36.402889, 35.947182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.387743, 36.526081, 36.382843>,  <26.995497, 35.839260, 36.174656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.387743, 36.526081, 36.382843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.018715, 36.658440, 36.303478>,  <26.797298, 36.737854, 36.255859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.018715, 36.658440, 36.303478>,  <27.387743, 36.526081, 36.382843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.018715, 36.658440, 36.303478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008514, 0.531603, 0.846951,
		0.385730, 0.779684, -0.493260,
		-0.922573, 0.330894, -0.198416,
		26.741943, 36.757710, 36.243954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.349636, 37.273674, 36.585018>,  <27.387743, 36.526081, 36.382843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.349636, 37.273674, 36.585018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.964106, 37.171402, 36.554901>,  <26.732788, 37.110039, 36.536831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.964106, 37.171402, 36.554901>,  <27.349636, 37.273674, 36.585018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.964106, 37.171402, 36.554901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235616, 0.685237, 0.689156,
		-0.124609, 0.681966, -0.720691,
		-0.963824, -0.255682, -0.075295,
		26.674959, 37.094696, 36.532314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.984179, 37.892765, 36.552601>,  <27.349636, 37.273674, 36.585018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.984179, 37.892765, 36.552601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.688911, 37.649487, 36.669365>,  <26.511751, 37.503521, 36.739422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.688911, 37.649487, 36.669365>,  <26.984179, 37.892765, 36.552601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.688911, 37.649487, 36.669365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163811, 0.581345, 0.796997,
		-0.654427, 0.540500, -0.528758,
		-0.738168, -0.608192, 0.291908,
		26.467461, 37.467030, 36.756939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.300474, 38.310322, 36.670361>,  <26.984179, 37.892765, 36.552601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.300474, 38.310322, 36.670361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.299801, 37.964943, 36.872135>,  <26.299397, 37.757713, 36.993198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.299801, 37.964943, 36.872135>,  <26.300474, 38.310322, 36.670361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.299801, 37.964943, 36.872135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108340, 0.501621, 0.858277,
		-0.994112, -0.053206, -0.094390,
		-0.001682, -0.863450, 0.504432,
		26.299295, 37.705910, 37.023464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.859695, 38.518467, 37.219250>,  <26.300474, 38.310322, 36.670361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.859695, 38.518467, 37.219250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.048704, 38.186871, 37.338913>,  <26.162109, 37.987911, 37.410709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.048704, 38.186871, 37.338913>,  <25.859695, 38.518467, 37.219250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.048704, 38.186871, 37.338913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035207, 0.356924, 0.933470,
		-0.880614, -0.430554, 0.197842,
		0.472524, -0.828992, 0.299154,
		26.190462, 37.938171, 37.428658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.600208, 38.478600, 37.891914>,  <25.859695, 38.518467, 37.219250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.600208, 38.478600, 37.891914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.908133, 38.223927, 37.909931>,  <26.092886, 38.071121, 37.920742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.908133, 38.223927, 37.909931>,  <25.600208, 38.478600, 37.891914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.908133, 38.223927, 37.909931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293071, 0.415276, 0.861194,
		-0.567012, -0.649755, 0.506277,
		0.769809, -0.636683, 0.045042,
		26.139076, 38.032921, 37.923443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.628466, 38.282101, 38.538986>,  <25.600208, 38.478600, 37.891914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.628466, 38.282101, 38.538986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.994928, 38.217686, 38.392166>,  <26.214806, 38.179039, 38.304073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.994928, 38.217686, 38.392166>,  <25.628466, 38.282101, 38.538986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.994928, 38.217686, 38.392166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400815, 0.362258, 0.841496,
		-0.002541, -0.918062, 0.396429,
		0.916156, -0.161033, -0.367053,
		26.269775, 38.169376, 38.282051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.931370, 37.878479, 39.008991>,  <25.628466, 38.282101, 38.538986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.931370, 37.878479, 39.008991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.264803, 38.013866, 38.834370>,  <26.464863, 38.095097, 38.729595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.264803, 38.013866, 38.834370>,  <25.931370, 37.878479, 39.008991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.264803, 38.013866, 38.834370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366888, 0.251569, 0.895604,
		0.412957, -0.906726, 0.085524,
		0.833583, 0.338468, -0.436554,
		26.514877, 38.115406, 38.703403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.345327, 37.639168, 39.475864>,  <25.931370, 37.878479, 39.008991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.345327, 37.639168, 39.475864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.570730, 37.879169, 39.248726>,  <26.705971, 38.023170, 39.112442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.570730, 37.879169, 39.248726>,  <26.345327, 37.639168, 39.475864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.570730, 37.879169, 39.248726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585608, 0.194709, 0.786862,
		0.582688, -0.775938, -0.241649,
		0.563505, 0.600007, -0.567850,
		26.739782, 38.059170, 39.078369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.065916, 37.445175, 39.524101>,  <26.345327, 37.639168, 39.475864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.065916, 37.445175, 39.524101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.024715, 37.835327, 39.446102>,  <26.999996, 38.069420, 39.399303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.024715, 37.835327, 39.446102>,  <27.065916, 37.445175, 39.524101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.024715, 37.835327, 39.446102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512805, 0.220046, 0.829826,
		0.852304, -0.014522, -0.522845,
		-0.103000, 0.975381, -0.194993,
		26.993816, 38.127941, 39.387604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.735401, 37.823444, 39.847889>,  <27.065916, 37.445175, 39.524101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.735401, 37.823444, 39.847889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.469784, 38.114506, 39.779114>,  <27.310413, 38.289143, 39.737846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.469784, 38.114506, 39.779114>,  <27.735401, 37.823444, 39.847889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.469784, 38.114506, 39.779114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391803, 0.534504, 0.748863,
		0.636819, 0.429910, -0.640031,
		-0.664043, 0.727656, -0.171942,
		27.270571, 38.332802, 39.727531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.150507, 38.420593, 39.679283>,  <27.735401, 37.823444, 39.847889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.150507, 38.420593, 39.679283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.790157, 38.522049, 39.820190>,  <27.573948, 38.582924, 39.904736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.790157, 38.522049, 39.820190>,  <28.150507, 38.420593, 39.679283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.790157, 38.522049, 39.820190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430698, 0.623366, 0.652621,
		-0.054059, 0.739650, -0.670817,
		-0.900876, 0.253640, 0.352264,
		27.519896, 38.598141, 39.925869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.200373, 39.066422, 39.743771>,  <28.150507, 38.420593, 39.679283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.200373, 39.066422, 39.743771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.878889, 38.974113, 39.963154>,  <27.685999, 38.918728, 40.094784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.878889, 38.974113, 39.963154>,  <28.200373, 39.066422, 39.743771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.878889, 38.974113, 39.963154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256968, 0.696736, 0.669721,
		-0.536677, 0.679194, -0.500672,
		-0.803707, -0.230767, 0.548454,
		27.637777, 38.904884, 40.127689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.915245, 39.717838, 39.870476>,  <28.200373, 39.066422, 39.743771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.915245, 39.717838, 39.870476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.795340, 39.470100, 40.160732>,  <27.723396, 39.321457, 40.334885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.795340, 39.470100, 40.160732>,  <27.915245, 39.717838, 39.870476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.795340, 39.470100, 40.160732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301445, 0.660160, 0.687982,
		-0.905138, 0.424971, -0.011192,
		-0.299761, -0.619345, 0.725641,
		27.705412, 39.284298, 40.378426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.847805, 40.116585, 40.416672>,  <27.915245, 39.717838, 39.870476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.847805, 40.116585, 40.416672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.788460, 39.784370, 40.631409>,  <27.752851, 39.585041, 40.760250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.788460, 39.784370, 40.631409>,  <27.847805, 40.116585, 40.416672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.788460, 39.784370, 40.631409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157822, 0.516007, 0.841920,
		-0.976258, 0.209636, 0.054520,
		-0.148365, -0.830535, 0.536841,
		27.743950, 39.535210, 40.792461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.284119, 40.214699, 40.781784>,  <27.847805, 40.116585, 40.416672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.284119, 40.214699, 40.781784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.527145, 39.950905, 40.958847>,  <27.672962, 39.792629, 41.065086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.527145, 39.950905, 40.958847>,  <27.284119, 40.214699, 40.781784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.527145, 39.950905, 40.958847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134853, 0.634871, 0.760759,
		-0.782738, -0.402518, 0.474659,
		0.607566, -0.659484, 0.442656,
		27.709415, 39.753059, 41.091644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.073723, 40.127335, 41.472530>,  <27.284119, 40.214699, 40.781784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.073723, 40.127335, 41.472530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455484, 40.009289, 41.454563>,  <27.684542, 39.938461, 41.443783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455484, 40.009289, 41.454563>,  <27.073723, 40.127335, 41.472530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.455484, 40.009289, 41.454563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222680, 0.603640, 0.765527,
		-0.198808, -0.740624, 0.641834,
		0.954405, -0.295117, -0.044914,
		27.741806, 39.920753, 41.441090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.426739, 40.207684, 42.198780>,  <27.073723, 40.127335, 41.472530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.426739, 40.207684, 42.198780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.736233, 40.184967, 41.946396>,  <27.921928, 40.171337, 41.794964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.736233, 40.184967, 41.946396>,  <27.426739, 40.207684, 42.198780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.736233, 40.184967, 41.946396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536743, 0.587819, 0.605290,
		0.336515, -0.806997, 0.485298,
		0.773734, -0.056791, -0.630960,
		27.968353, 40.167931, 41.757107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.010891, 40.040970, 42.564251>,  <27.426739, 40.207684, 42.198780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.010891, 40.040970, 42.564251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.153965, 40.217697, 42.235165>,  <28.239809, 40.323734, 42.037712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.153965, 40.217697, 42.235165>,  <28.010891, 40.040970, 42.564251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.153965, 40.217697, 42.235165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506828, 0.648111, 0.568398,
		0.784339, -0.620282, 0.007893,
		0.357683, 0.441817, -0.822715,
		28.261271, 40.350243, 41.988350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.633015, 40.343361, 42.794262>,  <28.010891, 40.040970, 42.564251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.633015, 40.343361, 42.794262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.561214, 40.524067, 42.444706>,  <28.518133, 40.632492, 42.234970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.561214, 40.524067, 42.444706>,  <28.633015, 40.343361, 42.794262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.561214, 40.524067, 42.444706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422210, 0.837725, 0.346345,
		0.888548, -0.306797, -0.341113,
		-0.179502, 0.451765, -0.873892,
		28.507364, 40.659595, 42.182537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.069767, 40.932377, 42.770332>,  <28.633015, 40.343361, 42.794262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.069767, 40.932377, 42.770332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.803272, 41.022079, 42.485844>,  <28.643375, 41.075901, 42.315151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.803272, 41.022079, 42.485844>,  <29.069767, 40.932377, 42.770332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.803272, 41.022079, 42.485844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211279, 0.971399, 0.108377,
		0.715187, -0.078062, -0.694561,
		-0.666235, 0.224256, -0.711224,
		28.603401, 41.089355, 42.272476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.415251, 40.625626, 42.334393>,  <29.069767, 40.932377, 42.770332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.415251, 40.625626, 42.334393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.733393, 40.825123, 42.472183>,  <29.924278, 40.944820, 42.554859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.733393, 40.825123, 42.472183>,  <29.415251, 40.625626, 42.334393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.733393, 40.825123, 42.472183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396621, -0.001544, 0.917981,
		0.458373, -0.866746, 0.196586,
		0.795353, 0.498748, 0.344477,
		29.971998, 40.974747, 42.575527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.442335, 41.234058, 42.101410>,  <29.415251, 40.625626, 42.334393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.442335, 41.234058, 42.101410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.704916, 41.404133, 42.350662>,  <29.862465, 41.506176, 42.500214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.704916, 41.404133, 42.350662>,  <29.442335, 41.234058, 42.101410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.704916, 41.404133, 42.350662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512115, -0.857698, 0.045737,
		0.553904, 0.289090, -0.780780,
		0.656451, 0.425183, 0.623130,
		29.901852, 41.531689, 42.537601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.846708, 41.772289, 41.648804>,  <29.442335, 41.234058, 42.101410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.846708, 41.772289, 41.648804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.041456, 42.045612, 41.431160>,  <30.158306, 42.209606, 41.300575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.041456, 42.045612, 41.431160>,  <29.846708, 41.772289, 41.648804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.041456, 42.045612, 41.431160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444993, -0.341988, -0.827663,
		-0.751623, 0.645089, 0.137561,
		0.486872, 0.683304, -0.544106,
		30.187517, 42.250603, 41.267929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.374155, 42.200932, 41.349026>,  <29.846708, 41.772289, 41.648804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.374155, 42.200932, 41.349026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.718487, 42.178707, 41.146683>,  <29.925085, 42.165371, 41.025276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.718487, 42.178707, 41.146683>,  <29.374155, 42.200932, 41.349026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.718487, 42.178707, 41.146683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506274, 0.007270, -0.862342,
		0.051591, 0.998429, -0.021872,
		0.860828, -0.055562, -0.505853,
		29.976736, 42.162037, 40.994926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.293364, 42.697239, 40.725452>,  <29.374155, 42.200932, 41.349026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.293364, 42.697239, 40.725452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.519497, 42.371086, 40.675560>,  <29.655176, 42.175396, 40.645626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.519497, 42.371086, 40.675560>,  <29.293364, 42.697239, 40.725452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.519497, 42.371086, 40.675560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430400, -0.162597, -0.887873,
		0.703671, 0.555627, -0.442861,
		0.565334, -0.815378, -0.124727,
		29.689096, 42.126472, 40.638142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.481459, 42.695152, 40.020973>,  <29.293364, 42.697239, 40.725452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.481459, 42.695152, 40.020973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.520468, 42.320030, 40.154247>,  <29.543873, 42.094955, 40.234211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.520468, 42.320030, 40.154247>,  <29.481459, 42.695152, 40.020973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.520468, 42.320030, 40.154247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585844, -0.324727, -0.742522,
		0.804535, -0.122783, -0.581075,
		0.097522, -0.937804, 0.333186,
		29.549725, 42.038689, 40.254204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.756096, 42.221199, 39.559921>,  <29.481459, 42.695152, 40.020973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.756096, 42.221199, 39.559921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495657, 42.020977, 39.788139>,  <29.339394, 41.900845, 39.925068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495657, 42.020977, 39.788139>,  <29.756096, 42.221199, 39.559921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.495657, 42.020977, 39.788139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486864, -0.301240, -0.819889,
		0.582267, -0.811605, -0.047564,
		-0.651098, -0.500552, 0.570543,
		29.300327, 41.870811, 39.959301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.831177, 41.475498, 39.531883>,  <29.756096, 42.221199, 39.559921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.831177, 41.475498, 39.531883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.460846, 41.615479, 39.588978>,  <29.238647, 41.699467, 39.623234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.460846, 41.615479, 39.588978>,  <29.831177, 41.475498, 39.531883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.460846, 41.615479, 39.588978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293642, -0.428288, -0.854602,
		-0.237937, -0.833129, 0.499282,
		-0.925830, 0.349952, 0.142736,
		29.183098, 41.720463, 39.631798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.291851, 41.094551, 39.775356>,  <29.831177, 41.475498, 39.531883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.291851, 41.094551, 39.775356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.092449, 41.350582, 39.541504>,  <28.972809, 41.504200, 39.401192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.092449, 41.350582, 39.541504>,  <29.291851, 41.094551, 39.775356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.092449, 41.350582, 39.541504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246664, -0.751259, -0.612182,
		-0.831054, -0.160968, 0.532390,
		-0.498504, 0.640077, -0.584631,
		28.942898, 41.542606, 39.366116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.729164, 40.744656, 39.593365>,  <29.291851, 41.094551, 39.775356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.729164, 40.744656, 39.593365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.725273, 41.014660, 39.298267>,  <28.722939, 41.176662, 39.121208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.725273, 41.014660, 39.298267>,  <28.729164, 40.744656, 39.593365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.725273, 41.014660, 39.298267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201988, -0.723894, -0.659680,
		-0.979339, 0.142599, 0.143385,
		-0.009726, 0.675013, -0.737742,
		28.722355, 41.217163, 39.076946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.162714, 40.591602, 39.143913>,  <28.729164, 40.744656, 39.593365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.162714, 40.591602, 39.143913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.401176, 40.822651, 38.920864>,  <28.544254, 40.961281, 38.787033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.401176, 40.822651, 38.920864>,  <28.162714, 40.591602, 39.143913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.401176, 40.822651, 38.920864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131019, -0.615238, -0.777377,
		-0.792106, 0.536498, -0.291098,
		0.596156, 0.577626, -0.557626,
		28.580023, 40.995937, 38.753578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.825834, 40.614769, 38.492836>,  <28.162714, 40.591602, 39.143913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.825834, 40.614769, 38.492836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.210260, 40.692890, 38.414646>,  <28.440916, 40.739761, 38.367733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.210260, 40.692890, 38.414646>,  <27.825834, 40.614769, 38.492836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.210260, 40.692890, 38.414646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018298, -0.660893, -0.750257,
		-0.275717, 0.724622, -0.631587,
		0.961065, 0.195301, -0.195479,
		28.498579, 40.751480, 38.356003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.874376, 40.708397, 37.739445>,  <27.825834, 40.614769, 38.492836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.874376, 40.708397, 37.739445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.255356, 40.645802, 37.844021>,  <28.483944, 40.608242, 37.906765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.255356, 40.645802, 37.844021>,  <27.874376, 40.708397, 37.739445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.255356, 40.645802, 37.844021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148376, -0.511205, -0.846555,
		0.266125, 0.845092, -0.463677,
		0.952450, -0.156491, 0.261436,
		28.541092, 40.598854, 37.922451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.311138, 40.965694, 37.146164>,  <27.874376, 40.708397, 37.739445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.311138, 40.965694, 37.146164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.514179, 40.703407, 37.369724>,  <28.636003, 40.546036, 37.503860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.514179, 40.703407, 37.369724>,  <28.311138, 40.965694, 37.146164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.514179, 40.703407, 37.369724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195395, -0.544179, -0.815899,
		0.839143, 0.523359, -0.148102,
		0.507602, -0.655717, 0.558906,
		28.666460, 40.506691, 37.537395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.954031, 40.892681, 36.768105>,  <28.311138, 40.965694, 37.146164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.954031, 40.892681, 36.768105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.938208, 40.574909, 37.010529>,  <28.928715, 40.384247, 37.155983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.938208, 40.574909, 37.010529>,  <28.954031, 40.892681, 36.768105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.938208, 40.574909, 37.010529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098774, -0.606675, -0.788789,
		0.994323, 0.028662, 0.102467,
		-0.039556, -0.794433, 0.606062,
		28.926340, 40.336578, 37.192348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.453100, 40.433151, 36.477947>,  <28.954031, 40.892681, 36.768105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.453100, 40.433151, 36.477947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.227262, 40.194920, 36.706512>,  <29.091759, 40.051979, 36.843651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.227262, 40.194920, 36.706512>,  <29.453100, 40.433151, 36.477947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.227262, 40.194920, 36.706512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048381, -0.715007, -0.697442,
		0.823949, -0.366126, 0.432504,
		-0.564595, -0.595581, 0.571415,
		29.057884, 40.016247, 36.877937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.794916, 39.889370, 36.617409>,  <29.453100, 40.433151, 36.477947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.794916, 39.889370, 36.617409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.415415, 39.767654, 36.651516>,  <29.187714, 39.694626, 36.671982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.415415, 39.767654, 36.651516>,  <29.794916, 39.889370, 36.617409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.415415, 39.767654, 36.651516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168067, -0.714368, -0.679287,
		0.267617, -0.630146, 0.728902,
		-0.948754, -0.304293, 0.085270,
		29.130789, 39.676365, 36.677097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842833, 39.118511, 36.721123>,  <29.794916, 39.889370, 36.617409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.842833, 39.118511, 36.721123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.462130, 39.175049, 36.612179>,  <29.233707, 39.208973, 36.546810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.462130, 39.175049, 36.612179>,  <29.842833, 39.118511, 36.721123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.462130, 39.175049, 36.612179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036145, -0.829775, -0.556927,
		-0.304717, -0.539904, 0.784635,
		-0.951757, 0.141344, -0.272361,
		29.176603, 39.217453, 36.530472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.677277, 38.465832, 36.658188>,  <29.842833, 39.118511, 36.721123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.677277, 38.465832, 36.658188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.366329, 38.665382, 36.504917>,  <29.179762, 38.785114, 36.412956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.366329, 38.665382, 36.504917>,  <29.677277, 38.465832, 36.658188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.366329, 38.665382, 36.504917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150690, -0.739082, -0.656544,
		-0.610730, -0.452637, 0.649715,
		-0.777368, 0.498877, -0.383172,
		29.133120, 38.815044, 36.389965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.194986, 37.979080, 36.569672>,  <29.677277, 38.465832, 36.658188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.194986, 37.979080, 36.569672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.072390, 38.283936, 36.341564>,  <28.998831, 38.466850, 36.204700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.072390, 38.283936, 36.341564>,  <29.194986, 37.979080, 36.569672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.072390, 38.283936, 36.341564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229868, -0.640628, -0.732636,
		-0.923700, -0.093463, 0.371541,
		-0.306494, 0.762142, -0.570265,
		28.980442, 38.512577, 36.170486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.562458, 37.725178, 36.406803>,  <29.194986, 37.979080, 36.569672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.562458, 37.725178, 36.406803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.698587, 37.981552, 36.131592>,  <28.780264, 38.135376, 35.966465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.698587, 37.981552, 36.131592>,  <28.562458, 37.725178, 36.406803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.698587, 37.981552, 36.131592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086716, -0.707194, -0.701682,
		-0.936302, 0.298461, -0.185094,
		0.340322, 0.640935, -0.688028,
		28.800684, 38.173832, 35.925182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.061197, 37.828632, 35.940140>,  <28.562458, 37.725178, 36.406803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.061197, 37.828632, 35.940140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.417944, 37.905720, 35.776466>,  <28.631992, 37.951973, 35.678261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.417944, 37.905720, 35.776466>,  <28.061197, 37.828632, 35.940140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.417944, 37.905720, 35.776466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103135, -0.794194, -0.598849,
		-0.440386, 0.576294, -0.688437,
		0.891865, 0.192723, -0.409188,
		28.685503, 37.963535, 35.653709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919537, 37.662899, 35.250656>,  <28.061197, 37.828632, 35.940140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.919537, 37.662899, 35.250656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.319437, 37.671410, 35.253281>,  <28.559378, 37.676514, 35.254856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.319437, 37.671410, 35.253281>,  <27.919537, 37.662899, 35.250656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.319437, 37.671410, 35.253281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020746, -0.783146, -0.621492,
		-0.008081, 0.621474, -0.783393,
		0.999752, 0.021274, 0.006564,
		28.619362, 37.677792, 35.255249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.179794, 37.526577, 34.634537>,  <27.919537, 37.662899, 35.250656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.179794, 37.526577, 34.634537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.515488, 37.440262, 34.834187>,  <28.716904, 37.388474, 34.953976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.515488, 37.440262, 34.834187>,  <28.179794, 37.526577, 34.634537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.515488, 37.440262, 34.834187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132645, -0.808925, -0.572752,
		0.527345, 0.546879, -0.650254,
		0.839233, -0.215785, 0.499124,
		28.767258, 37.375526, 34.983925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.700634, 37.456150, 34.070427>,  <28.179794, 37.526577, 34.634537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.700634, 37.456150, 34.070427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.800785, 37.262730, 34.405922>,  <28.860876, 37.146675, 34.607220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.800785, 37.262730, 34.405922>,  <28.700634, 37.456150, 34.070427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.800785, 37.262730, 34.405922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206986, -0.819567, -0.534291,
		0.945763, 0.307383, -0.105114,
		0.250380, -0.483556, 0.838739,
		28.875898, 37.117664, 34.657543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326982, 37.091736, 33.991894>,  <28.700634, 37.456150, 34.070427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.326982, 37.091736, 33.991894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.143578, 36.889751, 34.284409>,  <29.033535, 36.768559, 34.459919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.143578, 36.889751, 34.284409>,  <29.326982, 37.091736, 33.991894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.143578, 36.889751, 34.284409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306968, -0.862225, -0.402913,
		0.833989, 0.039742, 0.550347,
		-0.458511, -0.504964, 0.731286,
		29.006023, 36.738262, 34.503796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.720945, 36.479515, 34.179790>,  <29.326982, 37.091736, 33.991894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.720945, 36.479515, 34.179790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.367685, 36.390995, 34.345234>,  <29.155729, 36.337883, 34.444500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.367685, 36.390995, 34.345234>,  <29.720945, 36.479515, 34.179790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.367685, 36.390995, 34.345234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111998, -0.955697, -0.272213,
		0.455522, -0.194083, 0.868810,
		-0.883151, -0.221304, 0.413604,
		29.102739, 36.324604, 34.469315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.758709, 35.739735, 34.404789>,  <29.720945, 36.479515, 34.179790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.758709, 35.739735, 34.404789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.367960, 35.824997, 34.411472>,  <29.133511, 35.876156, 34.415482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.367960, 35.824997, 34.411472>,  <29.758709, 35.739735, 34.404789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.367960, 35.824997, 34.411472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200584, -0.886563, -0.416859,
		-0.074040, -0.410571, 0.908818,
		-0.976875, 0.213158, 0.016713,
		29.074898, 35.888943, 34.416485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.338818, 35.315521, 34.915161>,  <29.758709, 35.739735, 34.404789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.338818, 35.315521, 34.915161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.135729, 35.431183, 34.590542>,  <29.013876, 35.500580, 34.395771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.135729, 35.431183, 34.590542>,  <29.338818, 35.315521, 34.915161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.135729, 35.431183, 34.590542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119654, -0.956532, -0.265949,
		-0.853170, -0.037924, 0.520253,
		-0.507725, 0.289150, -0.811547,
		28.983412, 35.517929, 34.347076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917986, 35.084053, 35.110226>,  <29.338818, 35.315521, 34.915161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.917986, 35.084053, 35.110226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.738235, 35.244579, 35.429478>,  <29.630386, 35.340897, 35.621029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.738235, 35.244579, 35.429478>,  <29.917986, 35.084053, 35.110226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.738235, 35.244579, 35.429478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616773, 0.506937, -0.602167,
		-0.646260, -0.762862, 0.019718,
		-0.449375, 0.401318, 0.798127,
		29.603422, 35.364975, 35.668915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.747263, 35.135841, 35.204697>,  <29.917986, 35.084053, 35.110226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.747263, 35.135841, 35.204697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.977900, 34.892544, 34.986492>,  <31.116282, 34.746567, 34.855572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.977900, 34.892544, 34.986492>,  <30.747263, 35.135841, 35.204697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.977900, 34.892544, 34.986492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812323, 0.498356, 0.302939,
		0.087596, -0.617802, 0.781440,
		0.576592, -0.608245, -0.545509,
		31.150877, 34.710072, 34.822838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.322308, 34.963455, 35.564610>,  <30.747263, 35.135841, 35.204697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.322308, 34.963455, 35.564610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463652, 34.890591, 35.197578>,  <31.548458, 34.846870, 34.977360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463652, 34.890591, 35.197578>,  <31.322308, 34.963455, 35.564610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463652, 34.890591, 35.197578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823274, 0.526347, 0.212552,
		0.444247, -0.830527, 0.335960,
		0.353362, -0.182161, -0.917580,
		31.569660, 34.835941, 34.922306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945833, 34.632877, 35.635056>,  <31.322308, 34.963455, 35.564610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945833, 34.632877, 35.635056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892958, 34.868168, 35.315926>,  <31.861233, 35.009342, 35.124447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892958, 34.868168, 35.315926>,  <31.945833, 34.632877, 35.635056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892958, 34.868168, 35.315926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755594, 0.580753, 0.302990,
		0.641564, -0.562779, -0.521226,
		-0.132187, 0.588222, -0.797823,
		31.853302, 35.044636, 35.076580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545219, 34.717819, 35.276550>,  <31.945833, 34.632877, 35.635056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.545219, 34.717819, 35.276550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285782, 35.021824, 35.260040>,  <32.130119, 35.204227, 35.250134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285782, 35.021824, 35.260040>,  <32.545219, 34.717819, 35.276550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.285782, 35.021824, 35.260040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598179, 0.542515, 0.589796,
		0.470648, 0.357846, -0.806497,
		-0.648593, 0.760016, -0.041277,
		32.091206, 35.249828, 35.247658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888313, 35.266582, 35.175381>,  <32.545219, 34.717819, 35.276550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888313, 35.266582, 35.175381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543640, 35.409233, 35.319782>,  <32.336834, 35.494823, 35.406422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543640, 35.409233, 35.319782>,  <32.888313, 35.266582, 35.175381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543640, 35.409233, 35.319782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501946, 0.494570, 0.709543,
		0.074499, 0.792604, -0.605168,
		-0.861685, 0.356622, 0.360999,
		32.285133, 35.516220, 35.428082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878677, 36.086983, 35.163311>,  <32.888313, 35.266582, 35.175381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878677, 36.086983, 35.163311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665924, 35.902252, 35.447231>,  <32.538273, 35.791412, 35.617584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665924, 35.902252, 35.447231>,  <32.878677, 36.086983, 35.163311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665924, 35.902252, 35.447231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494068, 0.511505, 0.703036,
		-0.687747, 0.724622, -0.043887,
		-0.531884, -0.461828, 0.709799,
		32.506359, 35.763702, 35.660172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592033, 36.583443, 35.737129>,  <32.878677, 36.086983, 35.163311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592033, 36.583443, 35.737129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672401, 36.214474, 35.869053>,  <32.720623, 35.993092, 35.948208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672401, 36.214474, 35.869053>,  <32.592033, 36.583443, 35.737129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672401, 36.214474, 35.869053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556566, 0.384544, 0.736451,
		-0.806143, 0.035595, 0.590649,
		0.200917, -0.922420, 0.329808,
		32.732677, 35.937748, 35.967995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305191, 36.501850, 36.432720>,  <32.592033, 36.583443, 35.737129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305191, 36.501850, 36.432720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614799, 36.255581, 36.373615>,  <32.800564, 36.107819, 36.338154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614799, 36.255581, 36.373615>,  <32.305191, 36.501850, 36.432720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614799, 36.255581, 36.373615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394534, 0.286468, 0.873086,
		-0.495209, -0.734085, 0.464637,
		0.774023, -0.615675, -0.147760,
		32.847008, 36.070877, 36.329288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422295, 36.307281, 37.165794>,  <32.305191, 36.501850, 36.432720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422295, 36.307281, 37.165794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746323, 36.160507, 36.982864>,  <32.940739, 36.072441, 36.873104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746323, 36.160507, 36.982864>,  <32.422295, 36.307281, 37.165794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746323, 36.160507, 36.982864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509367, 0.054090, 0.858848,
		-0.290405, -0.928672, 0.230722,
		0.810068, -0.366936, -0.457327,
		32.989342, 36.050426, 36.845665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547401, 35.708984, 37.492958>,  <32.422295, 36.307281, 37.165794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547401, 35.708984, 37.492958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885830, 35.863464, 37.345978>,  <33.088886, 35.956150, 37.257790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885830, 35.863464, 37.345978>,  <32.547401, 35.708984, 37.492958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885830, 35.863464, 37.345978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402996, -0.012168, 0.915121,
		0.348947, -0.922335, -0.165932,
		0.846067, 0.386199, -0.367451,
		33.139648, 35.979324, 37.235741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101597, 35.255219, 37.727333>,  <32.547401, 35.708984, 37.492958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101597, 35.255219, 37.727333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290810, 35.597244, 37.642380>,  <33.404339, 35.802460, 37.591408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290810, 35.597244, 37.642380>,  <33.101597, 35.255219, 37.727333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290810, 35.597244, 37.642380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567313, -0.111173, 0.815963,
		0.674089, -0.506465, -0.537677,
		0.473032, 0.855063, -0.212384,
		33.432720, 35.853764, 37.578663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767010, 34.985668, 37.735859>,  <33.101597, 35.255219, 37.727333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767010, 34.985668, 37.735859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763557, 35.383175, 37.780319>,  <33.761486, 35.621677, 37.806995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763557, 35.383175, 37.780319>,  <33.767010, 34.985668, 37.735859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763557, 35.383175, 37.780319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550670, -0.088056, 0.830066,
		0.834679, 0.068375, -0.546476,
		-0.008635, 0.993766, 0.111151,
		33.760967, 35.681305, 37.813663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508629, 35.152920, 37.887409>,  <33.767010, 34.985668, 37.735859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508629, 35.152920, 37.887409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.291481, 35.468647, 38.002140>,  <34.161194, 35.658085, 38.070980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.291481, 35.468647, 38.002140>,  <34.508629, 35.152920, 37.887409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291481, 35.468647, 38.002140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633301, 0.160448, 0.757091,
		0.551564, 0.592650, -0.586978,
		-0.542870, 0.789318, 0.286828,
		34.128620, 35.705441, 38.088188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992786, 35.595448, 38.059864>,  <34.508629, 35.152920, 37.887409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992786, 35.595448, 38.059864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657124, 35.725735, 38.234093>,  <34.455727, 35.803909, 38.338631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657124, 35.725735, 38.234093>,  <34.992786, 35.595448, 38.059864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657124, 35.725735, 38.234093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505302, 0.170599, 0.845911,
		0.201223, 0.929947, -0.307746,
		-0.839154, 0.325722, 0.435576,
		34.405376, 35.823452, 38.364765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202171, 36.218277, 38.523071>,  <34.992786, 35.595448, 38.059864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202171, 36.218277, 38.523071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849041, 36.078171, 38.648247>,  <34.637161, 35.994106, 38.723354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849041, 36.078171, 38.648247>,  <35.202171, 36.218277, 38.523071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849041, 36.078171, 38.648247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290555, 0.116235, 0.949772,
		-0.369047, 0.929410, -0.000844,
		-0.882826, -0.350265, 0.312941,
		34.584194, 35.973091, 38.742130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048798, 36.626175, 39.064816>,  <35.202171, 36.218277, 38.523071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048798, 36.626175, 39.064816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803223, 36.325500, 39.161190>,  <34.655876, 36.145096, 39.219013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803223, 36.325500, 39.161190>,  <35.048798, 36.626175, 39.064816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803223, 36.325500, 39.161190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261425, 0.094381, 0.960598,
		-0.744808, 0.652733, 0.138566,
		-0.613936, -0.751686, 0.240936,
		34.619041, 36.099995, 39.233471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610985, 36.971069, 39.645966>,  <35.048798, 36.626175, 39.064816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610985, 36.971069, 39.645966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548916, 36.576550, 39.668365>,  <34.511673, 36.339836, 39.681805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548916, 36.576550, 39.668365>,  <34.610985, 36.971069, 39.645966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548916, 36.576550, 39.668365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082787, 0.043500, 0.995617,
		-0.984412, 0.159132, 0.074902,
		-0.155177, -0.986299, 0.055996,
		34.502361, 36.280659, 39.685165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063107, 36.899429, 40.195759>,  <34.610985, 36.971069, 39.645966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063107, 36.899429, 40.195759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304024, 36.582741, 40.154911>,  <34.448574, 36.392727, 40.130402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304024, 36.582741, 40.154911>,  <34.063107, 36.899429, 40.195759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304024, 36.582741, 40.154911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087834, -0.061420, 0.994240,
		-0.793431, -0.607789, 0.032547,
		0.602289, -0.791719, -0.102117,
		34.484711, 36.345226, 40.124275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801662, 36.419498, 40.654118>,  <34.063107, 36.899429, 40.195759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801662, 36.419498, 40.654118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181244, 36.322773, 40.573109>,  <34.408993, 36.264740, 40.524506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181244, 36.322773, 40.573109>,  <33.801662, 36.419498, 40.654118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181244, 36.322773, 40.573109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185403, -0.091806, 0.978365,
		-0.255172, -0.965971, -0.042287,
		0.948954, -0.241811, -0.202521,
		34.465931, 36.250229, 40.512352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951771, 35.863602, 41.011333>,  <33.801662, 36.419498, 40.654118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951771, 35.863602, 41.011333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319000, 35.989174, 40.914520>,  <34.539337, 36.064518, 40.856434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319000, 35.989174, 40.914520>,  <33.951771, 35.863602, 41.011333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319000, 35.989174, 40.914520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251856, 0.009542, 0.967718,
		0.306107, -0.949398, -0.070305,
		0.918078, 0.313932, -0.242032,
		34.594425, 36.083355, 40.841911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429684, 35.470036, 41.300350>,  <33.951771, 35.863602, 41.011333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429684, 35.470036, 41.300350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641804, 35.803791, 41.240257>,  <34.769077, 36.004044, 41.204201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641804, 35.803791, 41.240257>,  <34.429684, 35.470036, 41.300350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641804, 35.803791, 41.240257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135155, 0.091734, 0.986569,
		0.836965, -0.543486, -0.064125,
		0.530304, 0.834390, -0.150233,
		34.800896, 36.054108, 41.195187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196262, 35.324242, 41.554680>,  <34.429684, 35.470036, 41.300350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196262, 35.324242, 41.554680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090607, 35.710037, 41.554363>,  <35.027214, 35.941513, 41.554173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090607, 35.710037, 41.554363>,  <35.196262, 35.324242, 41.554680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090607, 35.710037, 41.554363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343949, 0.094961, 0.934174,
		0.901073, 0.246475, -0.356816,
		-0.264135, 0.964486, -0.000792,
		35.011368, 35.999382, 41.554127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712784, 35.667545, 42.011196>,  <35.196262, 35.324242, 41.554680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712784, 35.667545, 42.011196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415218, 35.934204, 41.992538>,  <35.236679, 36.094200, 41.981346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415218, 35.934204, 41.992538>,  <35.712784, 35.667545, 42.011196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415218, 35.934204, 41.992538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074339, 0.151911, 0.985595,
		0.664125, 0.729733, -0.162567,
		-0.743917, 0.666643, -0.046641,
		35.192043, 36.134197, 41.978546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021317, 36.377689, 42.267506>,  <35.712784, 35.667545, 42.011196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021317, 36.377689, 42.267506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.626362, 36.386616, 42.330200>,  <35.389389, 36.391972, 42.367817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.626362, 36.386616, 42.330200>,  <36.021317, 36.377689, 42.267506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626362, 36.386616, 42.330200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158128, 0.187542, 0.969445,
		-0.007765, 0.982003, -0.188705,
		-0.987388, 0.022312, 0.156739,
		35.330147, 36.393311, 42.377220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938866, 36.867031, 42.882946>,  <36.021317, 36.377689, 42.267506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938866, 36.867031, 42.882946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585159, 36.683178, 42.849953>,  <35.372936, 36.572865, 42.830158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585159, 36.683178, 42.849953>,  <35.938866, 36.867031, 42.882946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585159, 36.683178, 42.849953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211862, 0.237471, 0.948010,
		-0.416154, 0.855770, -0.307367,
		-0.884269, -0.459637, -0.082480,
		35.319878, 36.545288, 42.825207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443977, 37.253540, 43.211102>,  <35.938866, 36.867031, 42.882946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443977, 37.253540, 43.211102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255554, 36.900761, 43.204506>,  <35.142498, 36.689095, 43.200550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255554, 36.900761, 43.204506>,  <35.443977, 37.253540, 43.211102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255554, 36.900761, 43.204506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198230, 0.087630, 0.976231,
		-0.859539, 0.463131, -0.216107,
		-0.471060, -0.881947, -0.016485,
		35.114235, 36.636177, 43.199562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784389, 37.315475, 43.465244>,  <35.443977, 37.253540, 43.211102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784389, 37.315475, 43.465244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874722, 36.927517, 43.501705>,  <34.928921, 36.694744, 43.523582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874722, 36.927517, 43.501705>,  <34.784389, 37.315475, 43.465244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874722, 36.927517, 43.501705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303380, 0.018900, 0.952682,
		-0.925723, -0.242795, -0.289979,
		0.225826, -0.969893, 0.091155,
		34.942471, 36.636547, 43.529053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131145, 37.063164, 43.686359>,  <34.784389, 37.315475, 43.465244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131145, 37.063164, 43.686359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439735, 36.839329, 43.807480>,  <34.624889, 36.705029, 43.880154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439735, 36.839329, 43.807480>,  <34.131145, 37.063164, 43.686359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439735, 36.839329, 43.807480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411080, -0.075126, 0.908498,
		-0.485636, -0.825359, -0.287993,
		0.771473, -0.559588, 0.302804,
		34.671177, 36.671452, 43.898323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805115, 36.741047, 44.315987>,  <34.131145, 37.063164, 43.686359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805115, 36.741047, 44.315987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.192207, 36.656448, 44.370770>,  <34.424465, 36.605690, 44.403641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.192207, 36.656448, 44.370770>,  <33.805115, 36.741047, 44.315987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192207, 36.656448, 44.370770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198223, -0.303448, 0.932002,
		-0.155559, -0.929078, -0.335581,
		0.967734, -0.211501, 0.136961,
		34.482529, 36.592999, 44.411858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754696, 36.184311, 44.673912>,  <33.805115, 36.741047, 44.315987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754696, 36.184311, 44.673912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105980, 36.355709, 44.758900>,  <34.316750, 36.458549, 44.809891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105980, 36.355709, 44.758900>,  <33.754696, 36.184311, 44.673912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105980, 36.355709, 44.758900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146950, -0.180998, 0.972443,
		0.455148, -0.885227, -0.095986,
		0.878206, 0.428500, 0.212466,
		34.369442, 36.484261, 44.822639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026886, 35.715149, 45.074329>,  <33.754696, 36.184311, 44.673912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026886, 35.715149, 45.074329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230820, 36.046631, 45.166683>,  <34.353180, 36.245522, 45.222095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230820, 36.046631, 45.166683>,  <34.026886, 35.715149, 45.074329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230820, 36.046631, 45.166683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162836, -0.170575, 0.971797,
		0.844721, -0.533052, 0.047979,
		0.509834, 0.828709, 0.230888,
		34.383770, 36.295242, 45.235950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497704, 35.552219, 45.558979>,  <34.026886, 35.715149, 45.074329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497704, 35.552219, 45.558979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454491, 35.947208, 45.604980>,  <34.428562, 36.184200, 45.632580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454491, 35.947208, 45.604980>,  <34.497704, 35.552219, 45.558979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454491, 35.947208, 45.604980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074456, -0.123391, 0.989561,
		0.991355, 0.098341, 0.086853,
		-0.108031, 0.987473, 0.115002,
		34.422081, 36.243450, 45.639481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810528, 35.651165, 46.141186>,  <34.497704, 35.552219, 45.558979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810528, 35.651165, 46.141186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657051, 36.020050, 46.121956>,  <34.564964, 36.241379, 46.110416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657051, 36.020050, 46.121956>,  <34.810528, 35.651165, 46.141186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657051, 36.020050, 46.121956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109241, 0.097020, 0.989269,
		0.916978, 0.374320, -0.137969,
		-0.383689, 0.922210, -0.048074,
		34.541943, 36.296715, 46.107533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216167, 36.133186, 46.593620>,  <34.810528, 35.651165, 46.141186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216167, 36.133186, 46.593620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858906, 36.308891, 46.554996>,  <34.644550, 36.414314, 46.531822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858906, 36.308891, 46.554996>,  <35.216167, 36.133186, 46.593620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858906, 36.308891, 46.554996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056862, 0.323262, 0.944600,
		0.446140, 0.838183, -0.313700,
		-0.893155, 0.439262, -0.096560,
		34.590958, 36.440670, 46.526028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248569, 36.844948, 47.049023>,  <35.216167, 36.133186, 46.593620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248569, 36.844948, 47.049023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862522, 36.759991, 46.987778>,  <34.630894, 36.709019, 46.951031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862522, 36.759991, 46.987778>,  <35.248569, 36.844948, 47.049023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862522, 36.759991, 46.987778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222122, 0.354540, 0.908275,
		-0.138622, 0.910600, -0.389348,
		-0.965114, -0.212389, -0.153117,
		34.572987, 36.696274, 46.941841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956982, 37.422638, 47.405178>,  <35.248569, 36.844948, 47.049023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956982, 37.422638, 47.405178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678356, 37.136402, 47.384239>,  <34.511181, 36.964661, 47.371674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678356, 37.136402, 47.384239>,  <34.956982, 37.422638, 47.405178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678356, 37.136402, 47.384239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407842, 0.334855, 0.849434,
		-0.590313, 0.613033, -0.525092,
		-0.696560, -0.715586, -0.052351,
		34.469387, 36.921726, 47.368534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332249, 37.763851, 47.442856>,  <34.956982, 37.422638, 47.405178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332249, 37.763851, 47.442856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300468, 37.382965, 47.560825>,  <34.281403, 37.154434, 47.631607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300468, 37.382965, 47.560825>,  <34.332249, 37.763851, 47.442856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300468, 37.382965, 47.560825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192697, 0.304946, 0.932671,
		-0.978037, 0.017268, -0.207716,
		-0.079448, -0.952213, 0.294921,
		34.276634, 37.097301, 47.649303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814396, 37.803379, 47.930611>,  <34.332249, 37.763851, 47.442856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814396, 37.803379, 47.930611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011574, 37.462276, 47.999676>,  <34.129879, 37.257614, 48.041115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011574, 37.462276, 47.999676>,  <33.814396, 37.803379, 47.930611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011574, 37.462276, 47.999676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072178, 0.237840, 0.968619,
		-0.867062, -0.465013, 0.178793,
		0.492945, -0.852757, 0.172658,
		34.159458, 37.206448, 48.051472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474163, 37.548843, 48.521008>,  <33.814396, 37.803379, 47.930611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474163, 37.548843, 48.521008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823471, 37.354412, 48.507576>,  <34.033054, 37.237755, 48.499516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823471, 37.354412, 48.507576>,  <33.474163, 37.548843, 48.521008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823471, 37.354412, 48.507576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061400, 0.041412, 0.997254,
		-0.483353, -0.872933, 0.066009,
		0.873270, -0.486078, -0.033582,
		34.085453, 37.208588, 48.497501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450909, 37.178280, 49.155045>,  <33.474163, 37.548843, 48.521008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450909, 37.178280, 49.155045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835213, 37.140675, 49.050663>,  <34.065796, 37.118111, 48.988033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835213, 37.140675, 49.050663>,  <33.450909, 37.178280, 49.155045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835213, 37.140675, 49.050663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266249, 0.048853, 0.962665,
		-0.077756, -0.994371, 0.071968,
		0.960763, -0.094014, -0.260951,
		34.123444, 37.112473, 48.972378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636208, 36.581993, 49.496864>,  <33.450909, 37.178280, 49.155045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636208, 36.581993, 49.496864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962551, 36.807667, 49.446171>,  <34.158360, 36.943073, 49.415756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962551, 36.807667, 49.446171>,  <33.636208, 36.581993, 49.496864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962551, 36.807667, 49.446171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251909, -0.149504, 0.956133,
		0.520492, -0.811998, -0.264099,
		0.815862, 0.564188, -0.126733,
		34.207310, 36.976925, 49.408150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149830, 36.304451, 49.888165>,  <33.636208, 36.581993, 49.496864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149830, 36.304451, 49.888165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327679, 36.657993, 49.830055>,  <34.434387, 36.870117, 49.795189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327679, 36.657993, 49.830055>,  <34.149830, 36.304451, 49.888165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327679, 36.657993, 49.830055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490547, -0.104573, 0.865117,
		0.749447, -0.455920, -0.480069,
		0.444626, 0.883856, -0.145278,
		34.461067, 36.923149, 49.786472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817493, 36.116341, 50.092804>,  <34.149830, 36.304451, 49.888165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817493, 36.116341, 50.092804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768005, 36.511551, 50.129688>,  <34.738312, 36.748676, 50.151821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768005, 36.511551, 50.129688>,  <34.817493, 36.116341, 50.092804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768005, 36.511551, 50.129688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415170, -0.032867, 0.909150,
		0.901292, 0.150762, -0.406132,
		-0.123717, 0.988024, 0.092215,
		34.730888, 36.807957, 50.157352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385502, 36.372913, 50.446465>,  <34.817493, 36.116341, 50.092804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385502, 36.372913, 50.446465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103428, 36.648590, 50.513069>,  <34.934185, 36.813995, 50.553032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103428, 36.648590, 50.513069>,  <35.385502, 36.372913, 50.446465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103428, 36.648590, 50.513069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314609, 0.093688, 0.944587,
		0.635405, 0.718492, -0.282894,
		-0.705182, 0.689196, 0.166514,
		34.891872, 36.855350, 50.563023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672432, 36.993538, 50.772858>,  <35.385502, 36.372913, 50.446465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672432, 36.993538, 50.772858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284351, 36.982128, 50.869099>,  <35.051502, 36.975281, 50.926842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284351, 36.982128, 50.869099>,  <35.672432, 36.993538, 50.772858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284351, 36.982128, 50.869099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234419, 0.140505, 0.961928,
		-0.061248, 0.989669, -0.129631,
		-0.970204, -0.028528, 0.240602,
		34.993290, 36.973568, 50.941280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625439, 37.691776, 51.148495>,  <35.672432, 36.993538, 50.772858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625439, 37.691776, 51.148495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305645, 37.484951, 51.270786>,  <35.113770, 37.360855, 51.344162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305645, 37.484951, 51.270786>,  <35.625439, 37.691776, 51.148495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305645, 37.484951, 51.270786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162393, 0.303962, 0.938742,
		-0.578317, 0.800159, -0.159046,
		-0.799486, -0.517062, 0.305726,
		35.065800, 37.329834, 51.362503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338596, 38.087948, 51.700798>,  <35.625439, 37.691776, 51.148495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338596, 38.087948, 51.700798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.168564, 37.727959, 51.739479>,  <35.066544, 37.511967, 51.762688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.168564, 37.727959, 51.739479>,  <35.338596, 38.087948, 51.700798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168564, 37.727959, 51.739479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065855, 0.075798, 0.994946,
		-0.902754, 0.429305, 0.027047,
		-0.425086, -0.899973, 0.096699,
		35.041039, 37.457966, 51.768490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874828, 38.141376, 52.204224>,  <35.338596, 38.087948, 51.700798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874828, 38.141376, 52.204224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963955, 37.751583, 52.215027>,  <35.017429, 37.517708, 52.221508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963955, 37.751583, 52.215027>,  <34.874828, 38.141376, 52.204224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963955, 37.751583, 52.215027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165311, 0.065074, 0.984092,
		-0.960743, -0.214803, 0.175592,
		0.222813, -0.974487, 0.027010,
		35.030800, 37.459236, 52.223129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574963, 37.865734, 52.762844>,  <34.874828, 38.141376, 52.204224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574963, 37.865734, 52.762844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901436, 37.654194, 52.669750>,  <35.097321, 37.527267, 52.613895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901436, 37.654194, 52.669750>,  <34.574963, 37.865734, 52.762844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901436, 37.654194, 52.669750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187847, -0.138041, 0.972450,
		-0.546412, -0.837411, -0.013322,
		0.816179, -0.528855, -0.232732,
		35.146290, 37.495537, 52.599930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557728, 37.204269, 53.105881>,  <34.574963, 37.865734, 52.762844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557728, 37.204269, 53.105881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935486, 37.324730, 53.053089>,  <35.162140, 37.397007, 53.021416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935486, 37.324730, 53.053089>,  <34.557728, 37.204269, 53.105881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935486, 37.324730, 53.053089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210033, -0.243718, 0.946830,
		0.252979, -0.921904, -0.293420,
		0.944398, 0.301156, -0.131975,
		35.218803, 37.415077, 53.013496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059010, 36.688953, 53.237289>,  <34.557728, 37.204269, 53.105881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059010, 36.688953, 53.237289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.271549, 37.019238, 53.313046>,  <35.399071, 37.217407, 53.358498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.271549, 37.019238, 53.313046>,  <35.059010, 36.688953, 53.237289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271549, 37.019238, 53.313046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405435, -0.444149, 0.798971,
		0.743837, -0.347747, -0.570770,
		0.531347, 0.825714, 0.189385,
		35.430954, 37.266953, 53.369862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640213, 36.451374, 53.640934>,  <35.059010, 36.688953, 53.237289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640213, 36.451374, 53.640934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573483, 36.826576, 53.762470>,  <35.533443, 37.051697, 53.835392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573483, 36.826576, 53.762470>,  <35.640213, 36.451374, 53.640934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573483, 36.826576, 53.762470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395226, -0.218701, 0.892170,
		0.903308, 0.268926, -0.334237,
		-0.166829, 0.938003, 0.303841,
		35.523434, 37.107979, 53.853622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147415, 36.736355, 53.982967>,  <35.640213, 36.451374, 53.640934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147415, 36.736355, 53.982967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820496, 36.921803, 54.119839>,  <35.624344, 37.033070, 54.201962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820496, 36.921803, 54.119839>,  <36.147415, 36.736355, 53.982967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820496, 36.921803, 54.119839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051970, -0.532100, 0.845085,
		0.573870, 0.708467, 0.410789,
		-0.817296, 0.463620, 0.342176,
		35.575306, 37.060890, 54.222492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648239, 36.806740, 54.581505>,  <36.147415, 36.736355, 53.982967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648239, 36.806740, 54.581505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567268, 36.420029, 54.643944>,  <36.518684, 36.188004, 54.681408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567268, 36.420029, 54.643944>,  <36.648239, 36.806740, 54.581505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567268, 36.420029, 54.643944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186071, -0.118527, -0.975361,
		0.961458, -0.226484, -0.155896,
		-0.202426, -0.966776, 0.156101,
		36.506542, 36.129997, 54.690773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078957, 36.273705, 54.227741>,  <36.648239, 36.806740, 54.581505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078957, 36.273705, 54.227741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693504, 36.176704, 54.272663>,  <36.462234, 36.118504, 54.299614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693504, 36.176704, 54.272663>,  <37.078957, 36.273705, 54.227741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693504, 36.176704, 54.272663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090376, -0.099751, -0.990900,
		0.251491, -0.965010, 0.074208,
		-0.963631, -0.242496, 0.112300,
		36.404415, 36.103954, 54.306355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884106, 35.976242, 53.611546>,  <37.078957, 36.273705, 54.227741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884106, 35.976242, 53.611546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507233, 36.003513, 53.742786>,  <36.281109, 36.019875, 53.821529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507233, 36.003513, 53.742786>,  <36.884106, 35.976242, 53.611546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507233, 36.003513, 53.742786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318974, -0.482610, -0.815686,
		0.102731, -0.873177, 0.476453,
		-0.942180, 0.068179, 0.328100,
		36.224579, 36.023968, 53.841217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624783, 35.328743, 53.501682>,  <36.884106, 35.976242, 53.611546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624783, 35.328743, 53.501682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.347378, 35.616920, 53.502949>,  <36.180935, 35.789825, 53.503708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.347378, 35.616920, 53.502949>,  <36.624783, 35.328743, 53.501682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347378, 35.616920, 53.502949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479451, -0.458237, -0.748429,
		-0.537746, -0.520562, 0.663208,
		-0.693510, 0.720440, 0.003168,
		36.139324, 35.833054, 53.503899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877415, 35.106373, 53.697441>,  <36.624783, 35.328743, 53.501682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877415, 35.106373, 53.697441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880257, 35.410763, 53.437943>,  <35.881962, 35.593395, 53.282246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880257, 35.410763, 53.437943>,  <35.877415, 35.106373, 53.697441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880257, 35.410763, 53.437943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405599, -0.590804, -0.697452,
		-0.914023, 0.268087, 0.304451,
		0.007107, 0.760973, -0.648744,
		35.882389, 35.639053, 53.243320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592403, 34.758781, 53.198475>,  <35.877415, 35.106373, 53.697441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592403, 34.758781, 53.198475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642036, 35.077950, 52.962532>,  <35.671814, 35.269451, 52.820969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642036, 35.077950, 52.962532>,  <35.592403, 34.758781, 53.198475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642036, 35.077950, 52.962532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026070, -0.596864, -0.801919,
		-0.991930, 0.084125, -0.094860,
		0.124080, 0.797920, -0.589854,
		35.679260, 35.317326, 52.785576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099865, 34.809265, 52.653538>,  <35.592403, 34.758781, 53.198475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099865, 34.809265, 52.653538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391785, 35.031548, 52.494244>,  <35.566936, 35.164917, 52.398666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391785, 35.031548, 52.494244>,  <35.099865, 34.809265, 52.653538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391785, 35.031548, 52.494244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111925, -0.477525, -0.871460,
		-0.674442, 0.680560, -0.286298,
		0.729795, 0.555706, -0.398234,
		35.610722, 35.198257, 52.374775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872971, 35.016914, 51.969994>,  <35.099865, 34.809265, 52.653538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872971, 35.016914, 51.969994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272350, 35.027691, 51.950489>,  <35.511978, 35.034157, 51.938786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272350, 35.027691, 51.950489>,  <34.872971, 35.016914, 51.969994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272350, 35.027691, 51.950489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024631, -0.571609, -0.820157,
		-0.049974, 0.820084, -0.570057,
		0.998447, 0.026946, -0.048765,
		35.571884, 35.035774, 51.935860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037846, 35.131828, 51.303478>,  <34.872971, 35.016914, 51.969994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037846, 35.131828, 51.303478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.364441, 34.945206, 51.439522>,  <35.560398, 34.833233, 51.521149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.364441, 34.945206, 51.439522>,  <35.037846, 35.131828, 51.303478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364441, 34.945206, 51.439522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177474, -0.357736, -0.916803,
		0.549410, 0.808918, -0.209285,
		0.816488, -0.466558, 0.340106,
		35.609386, 34.805237, 51.541553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445984, 35.202080, 50.733059>,  <35.037846, 35.131828, 51.303478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445984, 35.202080, 50.733059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606991, 34.926601, 50.974285>,  <35.703594, 34.761314, 51.119019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606991, 34.926601, 50.974285>,  <35.445984, 35.202080, 50.733059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606991, 34.926601, 50.974285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518691, -0.371241, -0.770156,
		0.754281, 0.622804, 0.207787,
		0.402517, -0.688691, 0.603063,
		35.727745, 34.719994, 51.155205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121464, 35.302521, 50.787792>,  <35.445984, 35.202080, 50.733059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121464, 35.302521, 50.787792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070618, 34.907654, 50.826450>,  <36.040112, 34.670734, 50.849648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070618, 34.907654, 50.826450>,  <36.121464, 35.302521, 50.787792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070618, 34.907654, 50.826450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480406, -0.146521, -0.864721,
		0.867786, -0.063487, 0.492866,
		-0.127113, -0.987168, 0.096649,
		36.032482, 34.611504, 50.855446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737019, 35.115311, 50.472778>,  <36.121464, 35.302521, 50.787792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737019, 35.115311, 50.472778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.510147, 34.785927, 50.478725>,  <36.374023, 34.588295, 50.482292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.510147, 34.785927, 50.478725>,  <36.737019, 35.115311, 50.472778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510147, 34.785927, 50.478725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450414, -0.325243, -0.831471,
		0.689522, -0.464892, 0.555369,
		-0.567174, -0.823463, 0.014869,
		36.339996, 34.538887, 50.483185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195278, 34.538826, 50.250031>,  <36.737019, 35.115311, 50.472778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195278, 34.538826, 50.250031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829006, 34.384499, 50.204979>,  <36.609245, 34.291904, 50.177948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829006, 34.384499, 50.204979>,  <37.195278, 34.538826, 50.250031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829006, 34.384499, 50.204979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249514, -0.325997, -0.911849,
		0.315089, -0.863060, 0.394774,
		-0.915675, -0.385816, -0.112628,
		36.554302, 34.268753, 50.171192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269054, 33.775227, 50.071342>,  <37.195278, 34.538826, 50.250031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269054, 33.775227, 50.071342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898815, 33.879524, 49.961586>,  <36.676674, 33.942104, 49.895733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898815, 33.879524, 49.961586>,  <37.269054, 33.775227, 50.071342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898815, 33.879524, 49.961586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170693, -0.359487, -0.917406,
		-0.337834, -0.895984, 0.288235,
		-0.925598, 0.260731, -0.274386,
		36.621136, 33.957748, 49.879269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861763, 33.185009, 49.782913>,  <37.269054, 33.775227, 50.071342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861763, 33.185009, 49.782913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.698952, 33.518188, 49.632973>,  <36.601265, 33.718098, 49.543007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.698952, 33.518188, 49.632973>,  <36.861763, 33.185009, 49.782913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698952, 33.518188, 49.632973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109480, -0.362942, -0.925358,
		-0.906829, -0.417690, 0.056538,
		-0.407032, 0.832952, -0.374855,
		36.576843, 33.768074, 49.520515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744869, 33.044830, 49.044491>,  <36.861763, 33.185009, 49.782913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744869, 33.044830, 49.044491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578838, 33.408733, 49.041737>,  <36.479218, 33.627075, 49.040085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578838, 33.408733, 49.041737>,  <36.744869, 33.044830, 49.044491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578838, 33.408733, 49.041737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132118, -0.067762, -0.988915,
		-0.900141, -0.409570, 0.148322,
		-0.415080, 0.909759, -0.006883,
		36.454315, 33.681660, 49.039673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971878, 33.116131, 48.676571>,  <36.744869, 33.044830, 49.044491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971878, 33.116131, 48.676571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165173, 33.466110, 48.664223>,  <36.281147, 33.676098, 48.656815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165173, 33.466110, 48.664223>,  <35.971878, 33.116131, 48.676571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165173, 33.466110, 48.664223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022451, -0.047630, -0.998613,
		-0.875204, 0.481869, -0.042660,
		0.483233, 0.874948, -0.030867,
		36.310143, 33.728596, 48.654964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550835, 33.463802, 48.283485>,  <35.971878, 33.116131, 48.676571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550835, 33.463802, 48.283485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899017, 33.659920, 48.266003>,  <36.107929, 33.777592, 48.255512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899017, 33.659920, 48.266003>,  <35.550835, 33.463802, 48.283485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899017, 33.659920, 48.266003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093401, 0.077338, -0.992620,
		-0.483298, 0.868118, 0.113114,
		0.870459, 0.490296, -0.043705,
		36.160156, 33.807007, 48.252892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465355, 34.012108, 47.814056>,  <35.550835, 33.463802, 48.283485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465355, 34.012108, 47.814056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865280, 34.004345, 47.813713>,  <36.105236, 33.999687, 47.813507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865280, 34.004345, 47.813713>,  <35.465355, 34.012108, 47.814056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865280, 34.004345, 47.813713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001271, 0.109182, -0.994021,
		0.019387, 0.993832, 0.109186,
		0.999811, -0.019410, -0.000854,
		36.165222, 33.998524, 47.813457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683899, 34.561741, 47.371494>,  <35.465355, 34.012108, 47.814056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683899, 34.561741, 47.371494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990452, 34.305515, 47.390800>,  <36.174385, 34.151779, 47.402382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990452, 34.305515, 47.390800>,  <35.683899, 34.561741, 47.371494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990452, 34.305515, 47.390800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067824, 0.005980, -0.997679,
		0.638792, 0.767879, 0.048029,
		0.766385, -0.640567, 0.048261,
		36.220367, 34.113346, 47.405277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123196, 34.957859, 46.990227>,  <35.683899, 34.561741, 47.371494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123196, 34.957859, 46.990227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237865, 34.574707, 46.983528>,  <36.306667, 34.344814, 46.979507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237865, 34.574707, 46.983528>,  <36.123196, 34.957859, 46.990227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237865, 34.574707, 46.983528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251829, 0.092211, -0.963369,
		0.924337, 0.271957, 0.267657,
		0.286676, -0.957881, -0.016748,
		36.323868, 34.287342, 46.978504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735981, 34.865520, 46.545990>,  <36.123196, 34.957859, 46.990227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735981, 34.865520, 46.545990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592854, 34.492023, 46.549728>,  <36.506977, 34.267925, 46.551971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592854, 34.492023, 46.549728>,  <36.735981, 34.865520, 46.545990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592854, 34.492023, 46.549728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158038, -0.070422, -0.984919,
		0.920321, -0.350943, 0.172765,
		-0.357817, -0.933745, 0.009348,
		36.485508, 34.211899, 46.552532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218918, 34.439980, 46.123466>,  <36.735981, 34.865520, 46.545990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218918, 34.439980, 46.123466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887459, 34.216541, 46.137928>,  <36.688583, 34.082478, 46.146603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887459, 34.216541, 46.137928>,  <37.218918, 34.439980, 46.123466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887459, 34.216541, 46.137928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003909, -0.070356, -0.997514,
		0.559751, -0.826451, 0.060484,
		-0.828652, -0.558596, 0.036151,
		36.638863, 34.048962, 46.148773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279819, 33.970448, 45.643906>,  <37.218918, 34.439980, 46.123466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279819, 33.970448, 45.643906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884689, 33.940212, 45.698307>,  <36.647614, 33.922070, 45.730946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884689, 33.940212, 45.698307>,  <37.279819, 33.970448, 45.643906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884689, 33.940212, 45.698307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123610, -0.149614, -0.980987,
		0.094499, -0.985851, 0.138448,
		-0.987821, -0.075589, 0.135999,
		36.588345, 33.917534, 45.739105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115463, 33.325851, 45.304852>,  <37.279819, 33.970448, 45.643906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115463, 33.325851, 45.304852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.778355, 33.538948, 45.335651>,  <36.576092, 33.666805, 45.354134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.778355, 33.538948, 45.335651>,  <37.115463, 33.325851, 45.304852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778355, 33.538948, 45.335651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196769, -0.171757, -0.965288,
		-0.501021, -0.828667, 0.249578,
		-0.842769, 0.532739, 0.077002,
		36.525524, 33.698769, 45.358753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623447, 32.984829, 44.950733>,  <37.115463, 33.325851, 45.304852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623447, 32.984829, 44.950733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465141, 33.351360, 44.975071>,  <36.370155, 33.571281, 44.989674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465141, 33.351360, 44.975071>,  <36.623447, 32.984829, 44.950733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465141, 33.351360, 44.975071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248938, -0.043275, -0.967552,
		-0.883967, -0.398073, 0.245237,
		-0.395769, 0.916332, 0.060842,
		36.346409, 33.626259, 44.993324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010277, 32.921127, 44.674423>,  <36.623447, 32.984829, 44.950733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010277, 32.921127, 44.674423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.091217, 33.309925, 44.626617>,  <36.139782, 33.543201, 44.597935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.091217, 33.309925, 44.626617>,  <36.010277, 32.921127, 44.674423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091217, 33.309925, 44.626617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417129, -0.024872, -0.908507,
		-0.886035, 0.233692, 0.400413,
		0.202351, 0.971993, -0.119517,
		36.151924, 33.601524, 44.590763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735168, 33.003624, 44.089375>,  <36.010277, 32.921127, 44.674423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735168, 33.003624, 44.089375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909557, 33.363609, 44.088852>,  <36.014191, 33.579601, 44.088539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909557, 33.363609, 44.088852>,  <35.735168, 33.003624, 44.089375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909557, 33.363609, 44.088852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310163, 0.148892, -0.938952,
		-0.844825, 0.409760, 0.344047,
		0.435970, 0.899960, -0.001304,
		36.040348, 33.633598, 44.088459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294834, 33.476494, 43.844933>,  <35.735168, 33.003624, 44.089375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294834, 33.476494, 43.844933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660286, 33.619865, 43.768185>,  <35.879555, 33.705887, 43.722137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660286, 33.619865, 43.768185>,  <35.294834, 33.476494, 43.844933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660286, 33.619865, 43.768185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213759, 0.022062, -0.976637,
		-0.345822, 0.933297, 0.096773,
		0.913627, 0.358428, -0.191871,
		35.934376, 33.727394, 43.710625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217907, 33.846443, 43.238434>,  <35.294834, 33.476494, 43.844933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217907, 33.846443, 43.238434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616161, 33.856216, 43.274467>,  <35.855114, 33.862080, 43.296089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616161, 33.856216, 43.274467>,  <35.217907, 33.846443, 43.238434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616161, 33.856216, 43.274467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083632, 0.195126, -0.977206,
		-0.041453, 0.980474, 0.192231,
		0.995634, 0.024432, 0.090087,
		35.914852, 33.863544, 43.301495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388851, 34.500561, 42.988655>,  <35.217907, 33.846443, 43.238434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388851, 34.500561, 42.988655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676449, 34.223923, 42.961090>,  <35.849007, 34.057941, 42.944550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676449, 34.223923, 42.961090>,  <35.388851, 34.500561, 42.988655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676449, 34.223923, 42.961090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092077, 0.193064, -0.976856,
		0.688895, 0.696004, 0.202491,
		0.718990, -0.691596, -0.068914,
		35.892147, 34.016445, 42.940414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868237, 34.792400, 42.544815>,  <35.388851, 34.500561, 42.988655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868237, 34.792400, 42.544815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.973026, 34.406895, 42.524708>,  <36.035900, 34.175591, 42.512646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.973026, 34.406895, 42.524708>,  <35.868237, 34.792400, 42.544815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973026, 34.406895, 42.524708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033880, 0.061237, -0.997548,
		0.964480, 0.259629, 0.048695,
		0.261974, -0.963765, -0.050266,
		36.051617, 34.117764, 42.509628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511250, 34.767227, 42.041279>,  <35.868237, 34.792400, 42.544815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511250, 34.767227, 42.041279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345852, 34.405083, 42.079933>,  <36.246613, 34.187794, 42.103127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345852, 34.405083, 42.079933>,  <36.511250, 34.767227, 42.041279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345852, 34.405083, 42.079933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023224, -0.095607, -0.995148,
		0.910209, -0.413735, 0.018507,
		-0.413497, -0.905363, 0.096631,
		36.221802, 34.133472, 42.108921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876057, 34.410831, 41.611191>,  <36.511250, 34.767227, 42.041279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876057, 34.410831, 41.611191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552914, 34.178234, 41.649632>,  <36.359028, 34.038677, 41.672695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552914, 34.178234, 41.649632>,  <36.876057, 34.410831, 41.611191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552914, 34.178234, 41.649632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040318, -0.217193, -0.975296,
		0.587998, -0.784025, 0.198905,
		-0.807857, -0.581492, 0.096099,
		36.310558, 34.003788, 41.678463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973202, 33.708237, 41.241146>,  <36.876057, 34.410831, 41.611191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973202, 33.708237, 41.241146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581573, 33.778061, 41.282986>,  <36.346596, 33.819954, 41.308090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581573, 33.778061, 41.282986>,  <36.973202, 33.708237, 41.241146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581573, 33.778061, 41.282986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168028, -0.403470, -0.899432,
		-0.114799, -0.898188, 0.424358,
		-0.979075, 0.174558, 0.104603,
		36.287849, 33.830429, 41.314365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643303, 33.157814, 40.877804>,  <36.973202, 33.708237, 41.241146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643303, 33.157814, 40.877804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388245, 33.465149, 40.899910>,  <36.235210, 33.649551, 40.913174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388245, 33.465149, 40.899910>,  <36.643303, 33.157814, 40.877804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388245, 33.465149, 40.899910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435807, -0.300661, -0.848337,
		-0.635197, -0.565025, 0.526565,
		-0.637650, 0.768342, 0.055263,
		36.196949, 33.695652, 40.916489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033741, 32.898308, 40.584541>,  <36.643303, 33.157814, 40.877804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033741, 32.898308, 40.584541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970417, 33.293259, 40.582710>,  <35.932423, 33.530228, 40.581612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970417, 33.293259, 40.582710>,  <36.033741, 32.898308, 40.584541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970417, 33.293259, 40.582710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359984, -0.062031, -0.930894,
		-0.919428, -0.145726, 0.365261,
		-0.158313, 0.987378, -0.004574,
		35.922924, 33.589474, 40.581337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360897, 33.004028, 40.287357>,  <36.033741, 32.898308, 40.584541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360897, 33.004028, 40.287357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533974, 33.363346, 40.256760>,  <35.637821, 33.578938, 40.238400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533974, 33.363346, 40.256760>,  <35.360897, 33.004028, 40.287357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533974, 33.363346, 40.256760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273885, 0.050134, -0.960455,
		-0.858932, 0.436532, 0.267721,
		0.432691, 0.898291, -0.076498,
		35.663780, 33.632832, 40.233810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861038, 33.455837, 39.938702>,  <35.360897, 33.004028, 40.287357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861038, 33.455837, 39.938702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227505, 33.611248, 39.899326>,  <35.447384, 33.704494, 39.875702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227505, 33.611248, 39.899326>,  <34.861038, 33.455837, 39.938702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227505, 33.611248, 39.899326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168029, 0.149354, -0.974402,
		-0.363878, 0.909254, 0.202116,
		0.916165, 0.388525, -0.098434,
		35.502354, 33.727806, 39.869797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726933, 33.999641, 39.497803>,  <34.861038, 33.455837, 39.938702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726933, 33.999641, 39.497803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121223, 33.955742, 39.446735>,  <35.357800, 33.929401, 39.416096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121223, 33.955742, 39.446735>,  <34.726933, 33.999641, 39.497803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121223, 33.955742, 39.446735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117947, 0.090918, -0.988849,
		0.120128, 0.989793, 0.076677,
		0.985727, -0.109745, -0.127665,
		35.416943, 33.922817, 39.408436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875992, 34.424831, 38.870544>,  <34.726933, 33.999641, 39.497803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875992, 34.424831, 38.870544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.183601, 34.173878, 38.919533>,  <35.368168, 34.023308, 38.948925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.183601, 34.173878, 38.919533>,  <34.875992, 34.424831, 38.870544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183601, 34.173878, 38.919533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067722, -0.110550, -0.991561,
		0.635625, 0.770826, -0.042528,
		0.769022, -0.627380, 0.122470,
		35.414307, 33.985664, 38.956272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342140, 34.634235, 38.332176>,  <34.875992, 34.424831, 38.870544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342140, 34.634235, 38.332176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.450745, 34.265774, 38.443710>,  <35.515907, 34.044697, 38.510632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.450745, 34.265774, 38.443710>,  <35.342140, 34.634235, 38.332176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450745, 34.265774, 38.443710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135395, -0.250283, -0.958659,
		0.952864, 0.298041, 0.056765,
		0.271512, -0.921157, 0.278839,
		35.532200, 33.989426, 38.527363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899784, 34.484444, 37.837772>,  <35.342140, 34.634235, 38.332176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899784, 34.484444, 37.837772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844254, 34.114483, 37.979351>,  <35.810936, 33.892506, 38.064297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844254, 34.114483, 37.979351>,  <35.899784, 34.484444, 37.837772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844254, 34.114483, 37.979351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126827, -0.371066, -0.919905,
		0.982162, -0.082815, 0.168816,
		-0.138824, -0.924906, 0.353944,
		35.802605, 33.837009, 38.085533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539719, 34.019627, 37.702312>,  <35.899784, 34.484444, 37.837772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539719, 34.019627, 37.702312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.194077, 33.820316, 37.730736>,  <35.986691, 33.700729, 37.747791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.194077, 33.820316, 37.730736>,  <36.539719, 34.019627, 37.702312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194077, 33.820316, 37.730736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142927, -0.378293, -0.914585,
		0.482597, -0.780138, 0.398101,
		-0.864102, -0.498276, 0.071060,
		35.934845, 33.670834, 37.752052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707127, 33.266460, 37.555950>,  <36.539719, 34.019627, 37.702312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707127, 33.266460, 37.555950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337570, 33.407635, 37.496815>,  <36.115837, 33.492340, 37.461334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337570, 33.407635, 37.496815>,  <36.707127, 33.266460, 37.555950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337570, 33.407635, 37.496815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046441, -0.280069, -0.958856,
		-0.379821, -0.892747, 0.242363,
		-0.923894, 0.352938, -0.147836,
		36.060402, 33.513515, 37.452465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315815, 33.255249, 38.103756>,  <36.707127, 33.266460, 37.555950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315815, 33.255249, 38.103756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684216, 33.365322, 37.993462>,  <37.905254, 33.431366, 37.927284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684216, 33.365322, 37.993462>,  <37.315815, 33.255249, 38.103756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684216, 33.365322, 37.993462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365943, -0.368426, 0.854604,
		0.133583, -0.887996, -0.440022,
		0.921000, 0.275184, -0.275740,
		37.960514, 33.447876, 37.910740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783012, 32.678394, 38.187790>,  <37.315815, 33.255249, 38.103756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783012, 32.678394, 38.187790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987984, 33.018898, 38.233009>,  <38.110966, 33.223198, 38.260139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987984, 33.018898, 38.233009>,  <37.783012, 32.678394, 38.187790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987984, 33.018898, 38.233009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401956, -0.354105, 0.844418,
		0.758847, -0.387263, -0.523621,
		0.512429, 0.851256, 0.113049,
		38.141712, 33.274273, 38.266926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632885, 32.486217, 38.221039>,  <37.783012, 32.678394, 38.187790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632885, 32.486217, 38.221039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545792, 32.837841, 38.390671>,  <38.493534, 33.048817, 38.492451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545792, 32.837841, 38.390671>,  <38.632885, 32.486217, 38.221039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545792, 32.837841, 38.390671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559854, -0.243420, 0.792029,
		0.799472, 0.409873, -0.439146,
		-0.217735, 0.879062, 0.424077,
		38.480473, 33.101559, 38.517895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170818, 32.467991, 38.756016>,  <38.632885, 32.486217, 38.221039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170818, 32.467991, 38.756016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932003, 32.773312, 38.854736>,  <38.788715, 32.956505, 38.913971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932003, 32.773312, 38.854736>,  <39.170818, 32.467991, 38.756016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932003, 32.773312, 38.854736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357663, -0.022109, 0.933589,
		0.718068, 0.645662, -0.259805,
		-0.597039, 0.763303, 0.246805,
		38.752892, 33.002304, 38.928780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546970, 33.122669, 38.921379>,  <39.170818, 32.467991, 38.756016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546970, 33.122669, 38.921379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.196659, 33.121655, 39.114464>,  <38.986473, 33.121044, 39.230312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.196659, 33.121655, 39.114464>,  <39.546970, 33.122669, 38.921379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196659, 33.121655, 39.114464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482710, -0.009033, 0.875733,
		0.002136, 0.999956, 0.009138,
		-0.875777, -0.002541, 0.482709,
		38.933926, 33.120892, 39.259277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704548, 33.366722, 39.646854>,  <39.546970, 33.122669, 38.921379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704548, 33.366722, 39.646854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334381, 33.227745, 39.707359>,  <39.112282, 33.144360, 39.743664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334381, 33.227745, 39.707359>,  <39.704548, 33.366722, 39.646854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334381, 33.227745, 39.707359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177425, -0.044564, 0.983125,
		-0.334841, 0.936641, 0.102885,
		-0.925420, -0.347445, 0.151261,
		39.056755, 33.123512, 39.752739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449631, 33.837486, 40.209911>,  <39.704548, 33.366722, 39.646854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449631, 33.837486, 40.209911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.234520, 33.500610, 40.194408>,  <39.105453, 33.298485, 40.185108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.234520, 33.500610, 40.194408>,  <39.449631, 33.837486, 40.209911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234520, 33.500610, 40.194408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013148, -0.054344, 0.998436,
		-0.842982, 0.536431, 0.040298,
		-0.537781, -0.842193, -0.038759,
		39.073185, 33.247952, 40.182781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859825, 34.045612, 40.547203>,  <39.449631, 33.837486, 40.209911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859825, 34.045612, 40.547203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886219, 33.646496, 40.550209>,  <38.902058, 33.407024, 40.552013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886219, 33.646496, 40.550209>,  <38.859825, 34.045612, 40.547203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886219, 33.646496, 40.550209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097467, 0.013945, 0.995141,
		-0.993049, -0.064934, 0.098172,
		0.065987, -0.997792, 0.007519,
		38.906013, 33.347157, 40.552464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593388, 33.919098, 41.124550>,  <38.859825, 34.045612, 40.547203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593388, 33.919098, 41.124550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762951, 33.566433, 41.041622>,  <38.864689, 33.354836, 40.991863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762951, 33.566433, 41.041622>,  <38.593388, 33.919098, 41.124550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762951, 33.566433, 41.041622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113517, -0.175383, 0.977934,
		-0.898564, -0.438087, 0.025737,
		0.423906, -0.881658, -0.207323,
		38.890121, 33.301937, 40.979424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247723, 33.370209, 41.498112>,  <38.593388, 33.919098, 41.124550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247723, 33.370209, 41.498112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.616047, 33.228962, 41.431873>,  <38.837040, 33.144215, 41.392128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.616047, 33.228962, 41.431873>,  <38.247723, 33.370209, 41.498112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616047, 33.228962, 41.431873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009792, -0.403529, 0.914914,
		-0.389881, -0.844087, -0.368118,
		0.920813, -0.353103, -0.165594,
		38.892288, 33.123028, 41.382195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202705, 32.795250, 41.789413>,  <38.247723, 33.370209, 41.498112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202705, 32.795250, 41.789413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.595688, 32.841591, 41.730961>,  <38.831478, 32.869396, 41.695889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.595688, 32.841591, 41.730961>,  <38.202705, 32.795250, 41.789413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595688, 32.841591, 41.730961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183082, -0.450180, 0.873967,
		0.035467, -0.885390, -0.463494,
		0.982458, 0.115855, -0.146133,
		38.890427, 32.876347, 41.687122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471764, 32.168350, 42.057938>,  <38.202705, 32.795250, 41.789413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471764, 32.168350, 42.057938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793571, 32.405914, 42.056488>,  <38.986656, 32.548454, 42.055618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793571, 32.405914, 42.056488>,  <38.471764, 32.168350, 42.057938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793571, 32.405914, 42.056488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311274, -0.416440, 0.854217,
		0.505817, -0.688367, -0.519904,
		0.804523, 0.593910, -0.003628,
		39.034927, 32.584087, 42.055401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172306, 31.790323, 42.107559>,  <38.471764, 32.168350, 42.057938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172306, 31.790323, 42.107559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214249, 32.162239, 42.248695>,  <39.239414, 32.385387, 42.333378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214249, 32.162239, 42.248695>,  <39.172306, 31.790323, 42.107559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214249, 32.162239, 42.248695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383031, -0.365184, 0.848486,
		0.917765, 0.046177, -0.394431,
		0.104860, 0.929790, 0.352840,
		39.245708, 32.441177, 42.354546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633266, 31.682116, 42.504307>,  <39.172306, 31.790323, 42.107559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633266, 31.682116, 42.504307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.508064, 32.041164, 42.628441>,  <39.432945, 32.256592, 42.702919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.508064, 32.041164, 42.628441>,  <39.633266, 31.682116, 42.504307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508064, 32.041164, 42.628441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253687, -0.235862, 0.938090,
		0.915245, 0.372351, -0.153890,
		-0.313001, 0.897621, 0.310332,
		39.414165, 32.310452, 42.721539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162285, 31.923641, 42.993988>,  <39.633266, 31.682116, 42.504307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162285, 31.923641, 42.993988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827488, 32.131222, 43.063423>,  <39.626610, 32.255772, 43.105083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827488, 32.131222, 43.063423>,  <40.162285, 31.923641, 42.993988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827488, 32.131222, 43.063423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182771, -0.033884, 0.982571,
		0.515788, 0.854133, -0.066488,
		-0.836993, 0.518950, 0.173587,
		39.576389, 32.286907, 43.115498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.352531, 32.145451, 43.723598>,  <40.162285, 31.923641, 42.993988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.352531, 32.145451, 43.723598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967682, 32.239616, 43.668602>,  <39.736774, 32.296116, 43.635605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967682, 32.239616, 43.668602>,  <40.352531, 32.145451, 43.723598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967682, 32.239616, 43.668602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085858, 0.217010, 0.972386,
		0.258747, 0.947358, -0.188578,
		-0.962122, 0.235411, -0.137489,
		39.679047, 32.310238, 43.627354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257862, 32.883892, 43.893211>,  <40.352531, 32.145451, 43.723598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257862, 32.883892, 43.893211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916771, 32.683975, 43.953960>,  <39.712116, 32.564026, 43.990410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916771, 32.683975, 43.953960>,  <40.257862, 32.883892, 43.893211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916771, 32.683975, 43.953960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013720, 0.269212, 0.962983,
		-0.522181, 0.823243, -0.222706,
		-0.852724, -0.499796, 0.151872,
		39.660954, 32.534035, 43.999523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831509, 33.292965, 44.352070>,  <40.257862, 32.883892, 43.893211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831509, 33.292965, 44.352070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675369, 32.926590, 44.389339>,  <39.581684, 32.706764, 44.411701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675369, 32.926590, 44.389339>,  <39.831509, 33.292965, 44.352070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675369, 32.926590, 44.389339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041205, 0.118478, 0.992101,
		-0.919745, 0.383426, -0.083989,
		-0.390348, -0.915941, 0.093170,
		39.558266, 32.651806, 44.417290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213268, 33.484646, 44.773132>,  <39.831509, 33.292965, 44.352070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213268, 33.484646, 44.773132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.324436, 33.101063, 44.795628>,  <39.391136, 32.870914, 44.809124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.324436, 33.101063, 44.795628>,  <39.213268, 33.484646, 44.773132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324436, 33.101063, 44.795628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005902, 0.056840, 0.998366,
		-0.960587, -0.277793, 0.010137,
		0.277915, -0.958958, 0.056240,
		39.407810, 32.813374, 44.812500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850060, 33.249699, 45.222057>,  <39.213268, 33.484646, 44.773132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850060, 33.249699, 45.222057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.094597, 32.935230, 45.258282>,  <39.241318, 32.746552, 45.280014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.094597, 32.935230, 45.258282>,  <38.850060, 33.249699, 45.222057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094597, 32.935230, 45.258282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236264, -0.072107, 0.969010,
		-0.755273, -0.613794, -0.229825,
		0.611344, -0.786167, 0.090557,
		39.278000, 32.699379, 45.285450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438969, 32.785191, 45.492550>,  <38.850060, 33.249699, 45.222057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438969, 32.785191, 45.492550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812717, 32.682106, 45.590969>,  <39.036964, 32.620255, 45.650021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812717, 32.682106, 45.590969>,  <38.438969, 32.785191, 45.492550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812717, 32.682106, 45.590969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293729, -0.166222, 0.941325,
		-0.201704, -0.951813, -0.231013,
		0.934365, -0.257724, 0.246048,
		39.093029, 32.604790, 45.664783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296970, 32.249973, 45.947002>,  <38.438969, 32.785191, 45.492550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296970, 32.249973, 45.947002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655884, 32.416313, 46.006260>,  <38.871231, 32.516117, 46.041817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655884, 32.416313, 46.006260>,  <38.296970, 32.249973, 45.947002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655884, 32.416313, 46.006260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245717, 0.191678, 0.950201,
		0.366747, -0.889003, 0.274171,
		0.897285, 0.415852, 0.148146,
		38.925068, 32.541069, 46.050705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572781, 31.937704, 46.553204>,  <38.296970, 32.249973, 45.947002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572781, 31.937704, 46.553204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.765305, 32.285965, 46.512589>,  <38.880817, 32.494923, 46.488220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.765305, 32.285965, 46.512589>,  <38.572781, 31.937704, 46.553204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765305, 32.285965, 46.512589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268054, 0.256487, 0.928634,
		0.834560, -0.419739, 0.356831,
		0.481307, 0.870651, -0.101541,
		38.909698, 32.547161, 46.482124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912540, 32.088787, 47.170498>,  <38.572781, 31.937704, 46.553204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912540, 32.088787, 47.170498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900578, 32.453728, 47.007172>,  <38.893398, 32.672691, 46.909176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900578, 32.453728, 47.007172>,  <38.912540, 32.088787, 47.170498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900578, 32.453728, 47.007172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100928, 0.403653, 0.909328,
		0.994444, 0.068405, 0.080010,
		-0.029907, 0.912351, -0.408315,
		38.891605, 32.727432, 46.884678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531902, 32.509762, 47.470116>,  <38.912540, 32.088787, 47.170498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531902, 32.509762, 47.470116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.243656, 32.753494, 47.337799>,  <39.070709, 32.899734, 47.258408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.243656, 32.753494, 47.337799>,  <39.531902, 32.509762, 47.470116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243656, 32.753494, 47.337799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050244, 0.429957, 0.901450,
		0.691507, 0.666223, -0.279220,
		-0.720620, 0.609331, -0.330792,
		39.027470, 32.936295, 47.238560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788563, 33.188278, 47.628819>,  <39.531902, 32.509762, 47.470116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788563, 33.188278, 47.628819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401627, 33.264122, 47.561523>,  <39.169464, 33.309628, 47.521145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401627, 33.264122, 47.561523>,  <39.788563, 33.188278, 47.628819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401627, 33.264122, 47.561523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028944, 0.576741, 0.816415,
		0.251827, 0.794620, -0.552416,
		-0.967339, 0.189606, -0.168239,
		39.111423, 33.321003, 47.511051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630959, 33.915180, 47.612774>,  <39.788563, 33.188278, 47.628819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630959, 33.915180, 47.612774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.267025, 33.766579, 47.686726>,  <39.048664, 33.677418, 47.731098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.267025, 33.766579, 47.686726>,  <39.630959, 33.915180, 47.612774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267025, 33.766579, 47.686726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088194, 0.608469, 0.788662,
		-0.405485, 0.701249, -0.586372,
		-0.909837, -0.371504, 0.184879,
		38.994072, 33.655128, 47.742188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252274, 34.486591, 47.800346>,  <39.630959, 33.915180, 47.612774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252274, 34.486591, 47.800346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014355, 34.195427, 47.936802>,  <38.871605, 34.020729, 48.018673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014355, 34.195427, 47.936802>,  <39.252274, 34.486591, 47.800346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014355, 34.195427, 47.936802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136757, 0.509800, 0.849353,
		-0.792161, 0.458537, -0.402772,
		-0.594793, -0.727906, 0.341135,
		38.835918, 33.977055, 48.039143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662376, 34.723335, 48.076061>,  <39.252274, 34.486591, 47.800346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662376, 34.723335, 48.076061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.650673, 34.363956, 48.251301>,  <38.643650, 34.148327, 48.356445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.650673, 34.363956, 48.251301>,  <38.662376, 34.723335, 48.076061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650673, 34.363956, 48.251301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273640, 0.428742, 0.860988,
		-0.961387, -0.094688, -0.258397,
		-0.029261, -0.898451, 0.438098,
		38.641895, 34.094421, 48.382729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104794, 34.717438, 48.377064>,  <38.662376, 34.723335, 48.076061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104794, 34.717438, 48.377064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.335606, 34.454056, 48.570339>,  <38.474094, 34.296024, 48.686302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.335606, 34.454056, 48.570339>,  <38.104794, 34.717438, 48.377064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335606, 34.454056, 48.570339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140763, 0.502582, 0.852993,
		-0.804500, -0.560219, 0.197319,
		0.577032, -0.658458, 0.483185,
		38.508717, 34.256519, 48.715294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759518, 34.601536, 49.018822>,  <38.104794, 34.717438, 48.377064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759518, 34.601536, 49.018822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.143749, 34.499332, 49.062637>,  <38.374290, 34.438011, 49.088928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.143749, 34.499332, 49.062637>,  <37.759518, 34.601536, 49.018822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143749, 34.499332, 49.062637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004881, 0.409477, 0.912307,
		-0.277955, -0.875811, 0.394584,
		0.960582, -0.255506, 0.109541,
		38.431923, 34.422680, 49.095501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936741, 34.321514, 49.688824>,  <37.759518, 34.601536, 49.018822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936741, 34.321514, 49.688824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.315605, 34.408928, 49.594902>,  <38.542923, 34.461376, 49.538548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.315605, 34.408928, 49.594902>,  <37.936741, 34.321514, 49.688824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315605, 34.408928, 49.594902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070984, 0.571067, 0.817829,
		0.312815, -0.791280, 0.525378,
		0.947158, 0.218535, -0.234806,
		38.599754, 34.474487, 49.524460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325962, 34.082943, 50.275414>,  <37.936741, 34.321514, 49.688824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325962, 34.082943, 50.275414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530121, 34.369347, 50.084908>,  <38.652615, 34.541187, 49.970604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530121, 34.369347, 50.084908>,  <38.325962, 34.082943, 50.275414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530121, 34.369347, 50.084908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206020, 0.435892, 0.876102,
		0.834897, -0.545277, 0.074965,
		0.510395, 0.716011, -0.476263,
		38.683239, 34.584148, 49.942028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861767, 34.104374, 50.622200>,  <38.325962, 34.082943, 50.275414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861767, 34.104374, 50.622200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.862453, 34.460133, 50.439350>,  <38.862865, 34.673588, 50.329639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.862453, 34.460133, 50.439350>,  <38.861767, 34.104374, 50.622200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862453, 34.460133, 50.439350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197124, 0.447859, 0.872103,
		0.980377, -0.091606, -0.174554,
		0.001714, 0.889399, -0.457129,
		38.862968, 34.726952, 50.302212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453781, 34.486187, 50.754894>,  <38.861767, 34.104374, 50.622200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453781, 34.486187, 50.754894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.204720, 34.777935, 50.641529>,  <39.055283, 34.952984, 50.573509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.204720, 34.777935, 50.641529>,  <39.453781, 34.486187, 50.754894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204720, 34.777935, 50.641529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353238, 0.585179, 0.729923,
		0.698234, 0.354374, -0.622004,
		-0.622649, 0.729373, -0.283413,
		39.017925, 34.996746, 50.556503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753483, 35.057854, 50.961521>,  <39.453781, 34.486187, 50.754894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753483, 35.057854, 50.961521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.391724, 35.205597, 50.876064>,  <39.174667, 35.294243, 50.824791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.391724, 35.205597, 50.876064>,  <39.753483, 35.057854, 50.961521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391724, 35.205597, 50.876064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181268, 0.785837, 0.591271,
		0.386278, 0.496017, -0.777661,
		-0.904396, 0.369360, -0.213639,
		39.120403, 35.316406, 50.811974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871895, 35.830429, 50.752670>,  <39.753483, 35.057854, 50.961521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871895, 35.830429, 50.752670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483284, 35.797504, 50.841541>,  <39.250118, 35.777752, 50.894863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483284, 35.797504, 50.841541>,  <39.871895, 35.830429, 50.752670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483284, 35.797504, 50.841541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117800, 0.645804, 0.754361,
		-0.205573, 0.759054, -0.617719,
		-0.971526, -0.082309, 0.222176,
		39.191826, 35.772812, 50.908195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608753, 36.498528, 50.842392>,  <39.871895, 35.830429, 50.752670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608753, 36.498528, 50.842392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408463, 36.236065, 51.068218>,  <39.288288, 36.078587, 51.203712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408463, 36.236065, 51.068218>,  <39.608753, 36.498528, 50.842392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408463, 36.236065, 51.068218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262076, 0.506683, 0.821333,
		-0.824979, 0.559220, -0.081746,
		-0.500725, -0.656159, 0.564561,
		39.258244, 36.039219, 51.237587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536011, 36.947212, 51.482079>,  <39.608753, 36.498528, 50.842392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536011, 36.947212, 51.482079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.749428, 37.276985, 51.557602>,  <39.877480, 37.474850, 51.602917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.749428, 37.276985, 51.557602>,  <39.536011, 36.947212, 51.482079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.749428, 37.276985, 51.557602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227595, 0.354957, -0.906756,
		-0.814574, 0.440823, 0.377021,
		0.533544, 0.824428, 0.188810,
		39.909492, 37.524315, 51.614246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076054, 37.458515, 51.167881>,  <39.536011, 36.947212, 51.482079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076054, 37.458515, 51.167881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463493, 37.548416, 51.210403>,  <39.695957, 37.602356, 51.235916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463493, 37.548416, 51.210403>,  <39.076054, 37.458515, 51.167881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463493, 37.548416, 51.210403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062378, 0.194232, -0.978970,
		-0.240670, 0.954862, 0.174113,
		0.968600, 0.224748, 0.106308,
		39.754074, 37.615841, 51.242294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148930, 38.028343, 50.723003>,  <39.076054, 37.458515, 51.167881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148930, 38.028343, 50.723003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.511417, 37.880741, 50.805557>,  <39.728912, 37.792179, 50.855091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.511417, 37.880741, 50.805557>,  <39.148930, 38.028343, 50.723003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511417, 37.880741, 50.805557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288193, 0.181938, -0.940129,
		0.309360, 0.911447, 0.271220,
		0.906224, -0.369002, 0.206388,
		39.783283, 37.770039, 50.867474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645008, 38.479191, 50.414673>,  <39.148930, 38.028343, 50.723003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645008, 38.479191, 50.414673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.849121, 38.138966, 50.465500>,  <39.971588, 37.934830, 50.495998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.849121, 38.138966, 50.465500>,  <39.645008, 38.479191, 50.414673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.849121, 38.138966, 50.465500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276146, 0.022122, -0.960861,
		0.814464, 0.525404, 0.246169,
		0.510286, -0.850565, 0.127071,
		40.002209, 37.883797, 50.503620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166302, 38.566170, 50.083527>,  <39.645008, 38.479191, 50.414673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166302, 38.566170, 50.083527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168148, 38.166500, 50.099686>,  <40.169258, 37.926697, 50.109383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168148, 38.166500, 50.099686>,  <40.166302, 38.566170, 50.083527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.168148, 38.166500, 50.099686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354701, -0.036138, -0.934281,
		0.934969, 0.018646, 0.354240,
		0.004619, -0.999173, 0.040402,
		40.169533, 37.866749, 50.111805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838890, 38.331139, 49.767902>,  <40.166302, 38.566170, 50.083527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.838890, 38.331139, 49.767902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.599678, 38.010620, 49.774639>,  <40.456150, 37.818310, 49.778683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.599678, 38.010620, 49.774639>,  <40.838890, 38.331139, 49.767902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.599678, 38.010620, 49.774639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153276, -0.134975, -0.978922,
		0.786680, -0.582844, 0.203538,
		-0.598031, -0.801296, 0.016847,
		40.420269, 37.770233, 49.779694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.289162, 37.763470, 49.551193>,  <40.838890, 38.331139, 49.767902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.289162, 37.763470, 49.551193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.911613, 37.657978, 49.471649>,  <40.685085, 37.594681, 49.423923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.911613, 37.657978, 49.471649>,  <41.289162, 37.763470, 49.551193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911613, 37.657978, 49.471649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302285, -0.447053, -0.841883,
		0.133131, -0.854745, 0.501684,
		-0.943875, -0.263732, -0.198860,
		40.628452, 37.578857, 49.411991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.289471, 37.048386, 49.280811>,  <41.289162, 37.763470, 49.551193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.289471, 37.048386, 49.280811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957214, 37.206341, 49.123787>,  <40.757862, 37.301113, 49.029572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957214, 37.206341, 49.123787>,  <41.289471, 37.048386, 49.280811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957214, 37.206341, 49.123787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172714, -0.487509, -0.855865,
		-0.529349, -0.778714, 0.336740,
		-0.830638, 0.394892, -0.392558,
		40.708023, 37.324810, 49.006020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031254, 36.418404, 48.918625>,  <41.289471, 37.048386, 49.280811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031254, 36.418404, 48.918625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831886, 36.741669, 48.793118>,  <40.712265, 36.935627, 48.717812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831886, 36.741669, 48.793118>,  <41.031254, 36.418404, 48.918625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.831886, 36.741669, 48.793118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097831, -0.307185, -0.946608,
		-0.861398, -0.502505, 0.074043,
		-0.498420, 0.808162, -0.313769,
		40.682362, 36.984116, 48.698986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.558556, 36.118820, 48.530075>,  <41.031254, 36.418404, 48.918625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.558556, 36.118820, 48.530075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.565323, 36.495960, 48.396957>,  <40.569382, 36.722244, 48.317085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.565323, 36.495960, 48.396957>,  <40.558556, 36.118820, 48.530075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.565323, 36.495960, 48.396957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064374, -0.331126, -0.941388,
		-0.997782, 0.037351, 0.055092,
		0.016919, 0.942847, -0.332796,
		40.570400, 36.778816, 48.297119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991253, 36.153610, 48.064011>,  <40.558556, 36.118820, 48.530075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.991253, 36.153610, 48.064011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212673, 36.464699, 47.944862>,  <40.345528, 36.651352, 47.873375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212673, 36.464699, 47.944862>,  <39.991253, 36.153610, 48.064011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212673, 36.464699, 47.944862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017100, -0.346977, -0.937718,
		-0.832638, 0.524171, -0.178772,
		0.553554, 0.777722, -0.297869,
		40.378738, 36.698017, 47.855503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599232, 36.456944, 47.478783>,  <39.991253, 36.153610, 48.064011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599232, 36.456944, 47.478783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.978363, 36.582798, 47.458302>,  <40.205841, 36.658310, 47.446011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.978363, 36.582798, 47.458302>,  <39.599232, 36.456944, 47.478783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.978363, 36.582798, 47.458302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028820, -0.244554, -0.969207,
		-0.317469, 0.917168, -0.240863,
		0.947830, 0.314635, -0.051206,
		40.262711, 36.677189, 47.442940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667671, 36.817223, 46.867229>,  <39.599232, 36.456944, 47.478783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667671, 36.817223, 46.867229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.045650, 36.743473, 46.975365>,  <40.272438, 36.699223, 47.040245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.045650, 36.743473, 46.975365>,  <39.667671, 36.817223, 46.867229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045650, 36.743473, 46.975365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253899, -0.108060, -0.961176,
		0.206431, 0.976897, -0.055297,
		0.944945, -0.184377, 0.270340,
		40.329136, 36.688160, 47.056465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109364, 37.127396, 46.316044>,  <39.667671, 36.817223, 46.867229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109364, 37.127396, 46.316044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.335049, 36.863846, 46.515060>,  <40.470459, 36.705715, 46.634472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.335049, 36.863846, 46.515060>,  <40.109364, 37.127396, 46.316044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.335049, 36.863846, 46.515060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322380, -0.378975, -0.867438,
		0.760088, 0.649818, -0.001415,
		0.564214, -0.658873, 0.497543,
		40.504314, 36.666183, 46.664322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732895, 37.202332, 46.012001>,  <40.109364, 37.127396, 46.316044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.732895, 37.202332, 46.012001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710030, 36.840179, 46.180298>,  <40.696308, 36.622887, 46.281277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710030, 36.840179, 46.180298>,  <40.732895, 37.202332, 46.012001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710030, 36.840179, 46.180298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258973, -0.420450, -0.869572,
		0.964191, 0.059248, 0.258505,
		-0.057168, -0.905379, 0.420738,
		40.692879, 36.568565, 46.306519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.317429, 36.916740, 45.786549>,  <40.732895, 37.202332, 46.012001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.317429, 36.916740, 45.786549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030632, 36.648579, 45.862942>,  <40.858555, 36.487682, 45.908779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030632, 36.648579, 45.862942>,  <41.317429, 36.916740, 45.786549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.030632, 36.648579, 45.862942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058364, -0.330746, -0.941913,
		0.694632, -0.664199, 0.276271,
		-0.716993, -0.670408, 0.190982,
		40.815533, 36.447456, 45.920235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.561867, 36.262150, 45.578793>,  <41.317429, 36.916740, 45.786549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.561867, 36.262150, 45.578793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.169445, 36.189556, 45.605915>,  <40.933990, 36.146000, 45.622189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.169445, 36.189556, 45.605915>,  <41.561867, 36.262150, 45.578793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.169445, 36.189556, 45.605915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056002, -0.600676, -0.797529,
		0.185471, -0.778620, 0.599459,
		-0.981053, -0.181489, 0.067804,
		40.875130, 36.135109, 45.626255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.605846, 35.673954, 45.190205>,  <41.561867, 36.262150, 45.578793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.605846, 35.673954, 45.190205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.219898, 35.775124, 45.218632>,  <40.988327, 35.835823, 45.235687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.219898, 35.775124, 45.218632>,  <41.605846, 35.673954, 45.190205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.219898, 35.775124, 45.218632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212404, -0.591823, -0.777579,
		-0.154608, -0.765360, 0.624756,
		-0.964873, 0.252921, 0.071064,
		40.930435, 35.851002, 45.239952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.277149, 35.121418, 45.094696>,  <41.605846, 35.673954, 45.190205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.277149, 35.121418, 45.094696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012531, 35.406631, 45.001793>,  <40.853760, 35.577759, 44.946053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012531, 35.406631, 45.001793>,  <41.277149, 35.121418, 45.094696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.012531, 35.406631, 45.001793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112950, -0.400925, -0.909121,
		-0.741352, -0.575190, 0.345766,
		-0.661543, 0.713034, -0.232259,
		40.814068, 35.620541, 44.932114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648865, 34.745552, 44.828106>,  <41.277149, 35.121418, 45.094696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648865, 34.745552, 44.828106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.632740, 35.124397, 44.700764>,  <40.623066, 35.351704, 44.624359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.632740, 35.124397, 44.700764>,  <40.648865, 34.745552, 44.828106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.632740, 35.124397, 44.700764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304983, -0.315069, -0.898731,
		-0.951504, 0.060861, 0.301556,
		-0.040314, 0.947115, -0.318351,
		40.620647, 35.408531, 44.605259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022175, 34.752045, 44.589962>,  <40.648865, 34.745552, 44.828106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022175, 34.752045, 44.589962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.238091, 35.041313, 44.417614>,  <40.367641, 35.214874, 44.314205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.238091, 35.041313, 44.417614>,  <40.022175, 34.752045, 44.589962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.238091, 35.041313, 44.417614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132499, -0.432480, -0.891855,
		-0.831304, 0.538508, -0.137631,
		0.539793, 0.723167, -0.430874,
		40.400028, 35.258263, 44.288353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591991, 34.904034, 43.998806>,  <40.022175, 34.752045, 44.589962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591991, 34.904034, 43.998806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.949108, 35.066456, 43.920784>,  <40.163376, 35.163910, 43.873970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.949108, 35.066456, 43.920784>,  <39.591991, 34.904034, 43.998806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949108, 35.066456, 43.920784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076364, -0.290310, -0.953881,
		-0.443958, 0.866508, -0.228177,
		0.892788, 0.406059, -0.195055,
		40.216946, 35.188274, 43.862267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579414, 35.234959, 43.333649>,  <39.591991, 34.904034, 43.998806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579414, 35.234959, 43.333649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969086, 35.170971, 43.397388>,  <40.202888, 35.132580, 43.435635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969086, 35.170971, 43.397388>,  <39.579414, 35.234959, 43.333649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969086, 35.170971, 43.397388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071230, -0.451989, -0.889175,
		0.214263, 0.877563, -0.428922,
		0.974175, -0.159965, 0.159353,
		40.261337, 35.122982, 43.445194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839455, 35.386944, 42.750538>,  <39.579414, 35.234959, 43.333649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839455, 35.386944, 42.750538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.158924, 35.228912, 42.932102>,  <40.350605, 35.134094, 43.041039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.158924, 35.228912, 42.932102>,  <39.839455, 35.386944, 42.750538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158924, 35.228912, 42.932102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363604, -0.284196, -0.887144,
		0.479494, 0.873580, -0.083326,
		0.798673, -0.395082, 0.453907,
		40.398525, 35.110386, 43.068275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.412266, 35.665009, 42.397083>,  <39.839455, 35.386944, 42.750538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.412266, 35.665009, 42.397083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.505733, 35.311020, 42.558189>,  <40.561813, 35.098625, 42.654854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.505733, 35.311020, 42.558189>,  <40.412266, 35.665009, 42.397083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.505733, 35.311020, 42.558189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487390, -0.251820, -0.836085,
		0.841337, 0.391673, 0.372484,
		0.233673, -0.884974, 0.402763,
		40.575836, 35.045528, 42.679020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.090271, 35.600697, 42.143028>,  <40.412266, 35.665009, 42.397083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.090271, 35.600697, 42.143028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.985783, 35.236637, 42.271641>,  <40.923088, 35.018200, 42.348808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.985783, 35.236637, 42.271641>,  <41.090271, 35.600697, 42.143028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.985783, 35.236637, 42.271641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296011, -0.392584, -0.870778,
		0.918770, -0.132291, 0.371968,
		-0.261225, -0.910152, 0.321535,
		40.907413, 34.963593, 42.368103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.559246, 35.172119, 41.915844>,  <41.090271, 35.600697, 42.143028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.559246, 35.172119, 41.915844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.239281, 34.936741, 41.962963>,  <41.047302, 34.795513, 41.991234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.239281, 34.936741, 41.962963>,  <41.559246, 35.172119, 41.915844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.239281, 34.936741, 41.962963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154566, -0.391687, -0.907023,
		0.579872, -0.707330, 0.404268,
		-0.799911, -0.588444, 0.117799,
		40.999306, 34.760208, 41.998302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.781471, 34.499836, 41.662163>,  <41.559246, 35.172119, 41.915844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.781471, 34.499836, 41.662163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.381733, 34.510456, 41.652302>,  <41.141891, 34.516827, 41.646385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.381733, 34.510456, 41.652302>,  <41.781471, 34.499836, 41.662163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.381733, 34.510456, 41.652302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015418, -0.304145, -0.952501,
		-0.032787, -0.952256, 0.303536,
		-0.999344, 0.026549, -0.024654,
		41.081928, 34.518421, 41.644905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.602890, 33.831039, 41.517216>,  <41.781471, 34.499836, 41.662163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.602890, 33.831039, 41.517216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308826, 34.073448, 41.395710>,  <41.132389, 34.218895, 41.322807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308826, 34.073448, 41.395710>,  <41.602890, 33.831039, 41.517216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.308826, 34.073448, 41.395710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152364, -0.288919, -0.945151,
		-0.660548, -0.741121, 0.120065,
		-0.735160, 0.606025, -0.303765,
		41.088280, 34.255257, 41.304581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399845, 33.544815, 40.785133>,  <41.602890, 33.831039, 41.517216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.399845, 33.544815, 40.785133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.190266, 33.885159, 40.800701>,  <41.064518, 34.089363, 40.810043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.190266, 33.885159, 40.800701>,  <41.399845, 33.544815, 40.785133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.190266, 33.885159, 40.800701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155630, 0.140561, -0.977764,
		-0.837410, -0.506242, -0.206066,
		-0.523950, 0.850859, 0.038921,
		41.033081, 34.140415, 40.812378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.921471, 33.440762, 40.189358>,  <41.399845, 33.544815, 40.785133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.921471, 33.440762, 40.189358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.992363, 33.816868, 40.305622>,  <41.034897, 34.042534, 40.375381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.992363, 33.816868, 40.305622>,  <40.921471, 33.440762, 40.189358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.992363, 33.816868, 40.305622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190332, 0.257014, -0.947480,
		-0.965590, 0.223243, -0.133413,
		0.177229, 0.940269, 0.290660,
		41.045532, 34.098949, 40.392818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447803, 33.986874, 39.722267>,  <40.921471, 33.440762, 40.189358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.447803, 33.986874, 39.722267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773922, 34.159851, 39.876293>,  <40.969593, 34.263638, 39.968708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773922, 34.159851, 39.876293>,  <40.447803, 33.986874, 39.722267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773922, 34.159851, 39.876293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201613, 0.411394, -0.888880,
		-0.542805, 0.802339, 0.248224,
		0.815301, 0.432443, 0.385068,
		41.018513, 34.289585, 39.991814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.374348, 34.632656, 39.514843>,  <40.447803, 33.986874, 39.722267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.374348, 34.632656, 39.514843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.760872, 34.577774, 39.601940>,  <40.992786, 34.544846, 39.654198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.760872, 34.577774, 39.601940>,  <40.374348, 34.632656, 39.514843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.760872, 34.577774, 39.601940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253397, 0.359168, -0.898214,
		0.045036, 0.923132, 0.381837,
		0.966313, -0.137209, 0.217744,
		41.050766, 34.536610, 39.667263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685799, 35.214436, 39.367218>,  <40.374348, 34.632656, 39.514843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.685799, 35.214436, 39.367218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019245, 34.994987, 39.392845>,  <41.219315, 34.863319, 39.408222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019245, 34.994987, 39.392845>,  <40.685799, 35.214436, 39.367218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019245, 34.994987, 39.392845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356062, 0.445080, -0.821659,
		0.422262, 0.707759, 0.566368,
		0.833615, -0.548617, 0.064066,
		41.269329, 34.830402, 39.412064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283676, 35.774521, 39.350010>,  <40.685799, 35.214436, 39.367218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.283676, 35.774521, 39.350010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.411945, 35.418671, 39.219944>,  <41.488907, 35.205162, 39.141903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.411945, 35.418671, 39.219944>,  <41.283676, 35.774521, 39.350010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.411945, 35.418671, 39.219944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447622, 0.444876, -0.775706,
		0.834747, 0.103198, 0.540877,
		0.320675, -0.889626, -0.325165,
		41.508148, 35.151783, 39.122395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.055408, 35.828850, 39.177483>,  <41.283676, 35.774521, 39.350010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.055408, 35.828850, 39.177483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.926937, 35.530121, 38.944553>,  <41.849854, 35.350883, 38.804794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.926937, 35.530121, 38.944553>,  <42.055408, 35.828850, 39.177483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.926937, 35.530121, 38.944553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384248, 0.459244, -0.800905,
		0.865562, -0.480990, 0.139467,
		-0.321178, -0.746823, -0.582323,
		41.830585, 35.306072, 38.769855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.418308, 35.933289, 38.551083>,  <42.055408, 35.828850, 39.177483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.418308, 35.933289, 38.551083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.181820, 35.631805, 38.436279>,  <42.039928, 35.450916, 38.367397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.181820, 35.631805, 38.436279>,  <42.418308, 35.933289, 38.551083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.181820, 35.631805, 38.436279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119876, 0.269791, -0.955428,
		0.797551, -0.599275, -0.069154,
		-0.591221, -0.753712, -0.287011,
		42.004452, 35.405693, 38.350178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.839142, 35.572281, 38.104946>,  <42.418308, 35.933289, 38.551083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.839142, 35.572281, 38.104946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.457180, 35.474724, 38.037212>,  <42.228004, 35.416187, 37.996571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.457180, 35.474724, 38.037212>,  <42.839142, 35.572281, 38.104946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.457180, 35.474724, 38.037212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169320, 0.021193, -0.985333,
		0.243907, -0.969570, 0.021060,
		-0.954903, -0.243896, -0.169337,
		42.170708, 35.401554, 37.986412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.904610, 35.026237, 37.645836>,  <42.839142, 35.572281, 38.104946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.904610, 35.026237, 37.645836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.558411, 35.226429, 37.637550>,  <42.350689, 35.346546, 37.632580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.558411, 35.226429, 37.637550>,  <42.904610, 35.026237, 37.645836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.558411, 35.226429, 37.637550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169080, 0.252969, -0.952585,
		-0.471510, -0.827965, -0.303566,
		-0.865500, 0.500481, -0.020715,
		42.298759, 35.376572, 37.631336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.012196, 34.330151, 38.081127>,  <42.904610, 35.026237, 37.645836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.012196, 34.330151, 38.081127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.364048, 34.241001, 37.913044>,  <43.575161, 34.187511, 37.812195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.364048, 34.241001, 37.913044>,  <43.012196, 34.330151, 38.081127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.364048, 34.241001, 37.913044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268583, -0.961848, -0.052076,
		-0.392568, 0.158668, -0.905933,
		0.879633, -0.222875, -0.420206,
		43.627937, 34.174137, 37.786983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.919056, 33.927898, 37.468376>,  <43.012196, 34.330151, 38.081127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.919056, 33.927898, 37.468376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.283791, 33.867641, 37.621143>,  <43.502632, 33.831486, 37.712803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.283791, 33.867641, 37.621143>,  <42.919056, 33.927898, 37.468376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.283791, 33.867641, 37.621143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120418, -0.987470, -0.101996,
		0.392499, 0.047014, -0.918550,
		0.911836, -0.150643, 0.381919,
		43.557343, 33.822449, 37.735718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.277763, 33.369045, 36.983433>,  <42.919056, 33.927898, 37.468376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.277763, 33.369045, 36.983433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.427525, 33.390099, 37.353741>,  <43.517380, 33.402729, 37.575924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.427525, 33.390099, 37.353741>,  <43.277763, 33.369045, 36.983433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.427525, 33.390099, 37.353741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009598, -0.998554, 0.052888,
		0.927217, -0.010915, -0.374367,
		0.374403, 0.052632, 0.925771,
		43.539845, 33.405888, 37.631474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.917278, 32.911930, 37.162426>,  <43.277763, 33.369045, 36.983433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.917278, 32.911930, 37.162426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.668346, 32.952545, 37.472885>,  <43.518990, 32.976913, 37.659161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.668346, 32.952545, 37.472885>,  <43.917278, 32.911930, 37.162426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.668346, 32.952545, 37.472885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085095, -0.994450, 0.061872,
		0.778118, -0.027541, 0.627514,
		-0.622327, 0.101542, 0.776143,
		43.481647, 32.983009, 37.705727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.373463, 32.744762, 37.739761>,  <43.917278, 32.911930, 37.162426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.373463, 32.744762, 37.739761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.347824, 32.431458, 37.492409>,  <44.332443, 32.243473, 37.343998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.347824, 32.431458, 37.492409>,  <44.373463, 32.744762, 37.739761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.347824, 32.431458, 37.492409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882550, 0.244758, -0.401496,
		0.465830, -0.571482, 0.675582,
		-0.064093, -0.783263, -0.618377,
		44.328594, 32.196480, 37.306896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.210316, 32.784252, 38.539021>,  <44.373463, 32.744762, 37.739761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.210316, 32.784252, 38.539021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.599701, 32.792923, 38.447899>,  <44.833332, 32.798126, 38.393227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.599701, 32.792923, 38.447899>,  <44.210316, 32.784252, 38.539021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.599701, 32.792923, 38.447899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070636, 0.918428, 0.389231,
		0.217654, -0.394994, 0.892528,
		0.973466, 0.021673, -0.227801,
		44.891743, 32.799423, 38.379559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.388248, 32.870495, 39.185566>,  <44.210316, 32.784252, 38.539021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.388248, 32.870495, 39.185566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.619320, 33.016769, 38.893658>,  <44.757961, 33.104534, 38.718513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.619320, 33.016769, 38.893658>,  <44.388248, 32.870495, 39.185566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.619320, 33.016769, 38.893658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128109, 0.842335, 0.523507,
		0.806146, -0.395911, 0.439755,
		0.577683, 0.365686, -0.729765,
		44.792625, 33.126476, 38.674728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.024288, 33.132004, 39.446777>,  <44.388248, 32.870495, 39.185566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.024288, 33.132004, 39.446777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.944477, 33.319908, 39.102798>,  <44.896591, 33.432652, 38.896412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.944477, 33.319908, 39.102798>,  <45.024288, 33.132004, 39.446777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.944477, 33.319908, 39.102798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229306, 0.875613, 0.425112,
		0.952683, -0.112368, -0.282432,
		-0.199533, 0.469761, -0.859949,
		44.884617, 33.460835, 38.844814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.509392, 33.551937, 39.378414>,  <45.024288, 33.132004, 39.446777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.509392, 33.551937, 39.378414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.209934, 33.697472, 39.156727>,  <45.030262, 33.784794, 39.023716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.209934, 33.697472, 39.156727>,  <45.509392, 33.551937, 39.378414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.209934, 33.697472, 39.156727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189376, 0.918483, 0.347167,
		0.635354, 0.154947, -0.756516,
		-0.748640, 0.363840, -0.554219,
		44.985344, 33.806625, 38.990459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.752380, 34.098186, 39.106674>,  <45.509392, 33.551937, 39.378414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.752380, 34.098186, 39.106674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.356102, 34.145687, 39.080067>,  <45.118336, 34.174187, 39.064102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.356102, 34.145687, 39.080067>,  <45.752380, 34.098186, 39.106674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.356102, 34.145687, 39.080067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087757, 0.930818, 0.354790,
		0.104047, 0.345651, -0.932577,
		-0.990693, 0.118755, -0.066516,
		45.058895, 34.181313, 39.060112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.756046, 34.770008, 38.950279>,  <45.752380, 34.098186, 39.106674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.756046, 34.770008, 38.950279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.367329, 34.722221, 39.031605>,  <45.134098, 34.693550, 39.080399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.367329, 34.722221, 39.031605>,  <45.756046, 34.770008, 38.950279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.367329, 34.722221, 39.031605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011512, 0.885182, 0.465102,
		-0.235534, 0.449645, -0.861593,
		-0.971798, -0.119466, 0.203315,
		45.075790, 34.686382, 39.092598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.427681, 35.396362, 38.722939>,  <45.756046, 34.770008, 38.950279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.427681, 35.396362, 38.722939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.174992, 35.230415, 38.984875>,  <45.023380, 35.130848, 39.142036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.174992, 35.230415, 38.984875>,  <45.427681, 35.396362, 38.722939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.174992, 35.230415, 38.984875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033071, 0.858397, 0.511919,
		-0.774490, 0.301733, -0.555987,
		-0.631721, -0.414863, 0.654842,
		44.985474, 35.105957, 39.181328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.915478, 35.942123, 38.831245>,  <45.427681, 35.396362, 38.722939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.915478, 35.942123, 38.831245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.907688, 35.689823, 39.141541>,  <44.903015, 35.538441, 39.327717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.907688, 35.689823, 39.141541>,  <44.915478, 35.942123, 38.831245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.907688, 35.689823, 39.141541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046371, 0.775621, 0.629493,
		-0.998735, -0.023714, -0.044353,
		-0.019473, -0.630753, 0.775739,
		44.901848, 35.500599, 39.374264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.405727, 36.231907, 39.201649>,  <44.915478, 35.942123, 38.831245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.405727, 36.231907, 39.201649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.608402, 36.010887, 39.466362>,  <44.730007, 35.878277, 39.625191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.608402, 36.010887, 39.466362>,  <44.405727, 36.231907, 39.201649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.608402, 36.010887, 39.466362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111218, 0.803092, 0.585383,
		-0.854924, -0.223006, 0.468373,
		0.506691, -0.552550, 0.661781,
		44.760410, 35.845123, 39.664898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.091438, 36.451023, 39.820950>,  <44.405727, 36.231907, 39.201649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.091438, 36.451023, 39.820950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.453609, 36.291908, 39.880238>,  <44.670910, 36.196438, 39.915810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.453609, 36.291908, 39.880238>,  <44.091438, 36.451023, 39.820950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.453609, 36.291908, 39.880238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217383, 0.734381, 0.642984,
		-0.364625, -0.549952, 0.751399,
		0.905424, -0.397790, 0.148223,
		44.725235, 36.172573, 39.924706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.167274, 36.274986, 40.568951>,  <44.091438, 36.451023, 39.820950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.167274, 36.274986, 40.568951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.548073, 36.304562, 40.450134>,  <44.776550, 36.322308, 40.378845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.548073, 36.304562, 40.450134>,  <44.167274, 36.274986, 40.568951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.548073, 36.304562, 40.450134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156034, 0.717647, 0.678702,
		0.263354, -0.692471, 0.671661,
		0.951997, 0.073937, -0.297044,
		44.833672, 36.326744, 40.361019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.511612, 36.244652, 41.122173>,  <44.167274, 36.274986, 40.568951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.511612, 36.244652, 41.122173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.756748, 36.422291, 40.860729>,  <44.903831, 36.528873, 40.703865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.756748, 36.422291, 40.860729>,  <44.511612, 36.244652, 41.122173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.756748, 36.422291, 40.860729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075384, 0.790508, 0.607795,
		0.786594, -0.421759, 0.450986,
		0.612851, 0.444091, -0.653603,
		44.940601, 36.555519, 40.664646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.123966, 36.560814, 41.525505>,  <44.511612, 36.244652, 41.122173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.123966, 36.560814, 41.525505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.126690, 36.756546, 41.176678>,  <45.128323, 36.873985, 40.967381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.126690, 36.756546, 41.176678>,  <45.123966, 36.560814, 41.525505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.126690, 36.756546, 41.176678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331293, 0.821737, 0.463675,
		0.943503, -0.292066, -0.156521,
		0.006805, 0.489333, -0.872071,
		45.128731, 36.903347, 40.915058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.812698, 36.934372, 41.528816>,  <45.123966, 36.560814, 41.525505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.812698, 36.934372, 41.528816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.565880, 37.120773, 41.275173>,  <45.417789, 37.232613, 41.122986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.565880, 37.120773, 41.275173>,  <45.812698, 36.934372, 41.528816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.565880, 37.120773, 41.275173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321846, 0.884777, 0.337025,
		0.718097, 0.003876, -0.695932,
		-0.617051, 0.465999, -0.634108,
		45.380764, 37.260574, 41.084942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.203609, 37.507420, 41.411213>,  <45.812698, 36.934372, 41.528816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.203609, 37.507420, 41.411213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.832428, 37.596149, 41.291412>,  <45.609718, 37.649387, 41.219532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.832428, 37.596149, 41.291412>,  <46.203609, 37.507420, 41.411213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.832428, 37.596149, 41.291412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178084, 0.969821, 0.166534,
		0.327403, 0.101199, -0.939449,
		-0.927951, 0.221825, -0.299501,
		45.554043, 37.662697, 41.201561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.224888, 38.141369, 40.941833>,  <46.203609, 37.507420, 41.411213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.224888, 38.141369, 40.941833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.864597, 38.117489, 41.113941>,  <45.648422, 38.103161, 41.217205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.864597, 38.117489, 41.113941>,  <46.224888, 38.141369, 40.941833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.864597, 38.117489, 41.113941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033677, 0.977933, 0.206185,
		-0.433084, 0.200206, -0.878838,
		-0.900724, -0.059699, 0.430269,
		45.594379, 38.099579, 41.243023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.040806, 38.836601, 40.867489>,  <46.224888, 38.141369, 40.941833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.040806, 38.836601, 40.867489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.751923, 38.702435, 41.109451>,  <45.578594, 38.621933, 41.254627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.751923, 38.702435, 41.109451>,  <46.040806, 38.836601, 40.867489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.751923, 38.702435, 41.109451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212574, 0.939858, 0.267355,
		-0.658200, 0.064499, -0.750075,
		-0.722208, -0.335420, 0.604904,
		45.535259, 38.601810, 41.290924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.492699, 39.350903, 40.775768>,  <46.040806, 38.836601, 40.867489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.492699, 39.350903, 40.775768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.412987, 39.158558, 41.117310>,  <45.365158, 39.043152, 41.322235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.412987, 39.158558, 41.117310>,  <45.492699, 39.350903, 40.775768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.412987, 39.158558, 41.117310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284062, 0.862262, 0.419300,
		-0.937867, -0.158987, -0.308428,
		-0.199283, -0.480860, 0.853850,
		45.353203, 39.014301, 41.373466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.801270, 39.478706, 41.032681>,  <45.492699, 39.350903, 40.775768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.801270, 39.478706, 41.032681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.991863, 39.357716, 41.362885>,  <45.106220, 39.285122, 41.561008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.991863, 39.357716, 41.362885>,  <44.801270, 39.478706, 41.032681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.991863, 39.357716, 41.362885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222427, 0.866932, 0.446043,
		-0.850579, -0.396150, 0.345803,
		0.476488, -0.302479, 0.825509,
		45.134811, 39.266972, 41.610538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.376682, 39.703178, 41.567795>,  <44.801270, 39.478706, 41.032681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.376682, 39.703178, 41.567795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.735977, 39.651546, 41.735851>,  <44.951553, 39.620567, 41.836685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.735977, 39.651546, 41.735851>,  <44.376682, 39.703178, 41.567795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.735977, 39.651546, 41.735851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084419, 0.887439, 0.453128,
		-0.431334, -0.442482, 0.786232,
		0.898234, -0.129076, 0.420137,
		45.005447, 39.612823, 41.861893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.205116, 39.903145, 42.345459>,  <44.376682, 39.703178, 41.567795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.205116, 39.903145, 42.345459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.593880, 39.911552, 42.251694>,  <44.827137, 39.916595, 42.195435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.593880, 39.911552, 42.251694>,  <44.205116, 39.903145, 42.345459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.593880, 39.911552, 42.251694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068587, 0.927480, 0.367528,
		0.225133, -0.373282, 0.899987,
		0.971911, 0.021015, -0.234409,
		44.885452, 39.917858, 42.181370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.456997, 40.154690, 42.953751>,  <44.205116, 39.903145, 42.345459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.456997, 40.154690, 42.953751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.744423, 40.236954, 42.688007>,  <44.916878, 40.286312, 42.528561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.744423, 40.236954, 42.688007>,  <44.456997, 40.154690, 42.953751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.744423, 40.236954, 42.688007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079847, 0.924566, 0.372563,
		0.690865, -0.320757, 0.647937,
		0.718562, 0.205655, -0.664361,
		44.959991, 40.298649, 42.488701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.859509, 40.675537, 43.280762>,  <44.456997, 40.154690, 42.953751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.859509, 40.675537, 43.280762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.952896, 40.740223, 42.897232>,  <45.008930, 40.779034, 42.667114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.952896, 40.740223, 42.897232>,  <44.859509, 40.675537, 43.280762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.952896, 40.740223, 42.897232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040529, 0.986835, 0.156568,
		0.971520, 0.002307, 0.236948,
		0.233467, 0.161712, -0.958824,
		45.022938, 40.788738, 42.609585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.258133, 41.266479, 43.294147>,  <44.859509, 40.675537, 43.280762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.258133, 41.266479, 43.294147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.158325, 41.235535, 42.908039>,  <45.098442, 41.216969, 42.676373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.158325, 41.235535, 42.908039>,  <45.258133, 41.266479, 43.294147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.158325, 41.235535, 42.908039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259594, 0.965663, -0.010292,
		0.932926, 0.248012, -0.261035,
		-0.249519, -0.077365, -0.965275,
		45.083469, 41.212326, 42.618458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.732746, 41.712608, 42.896343>,  <45.258133, 41.266479, 43.294147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.732746, 41.712608, 42.896343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.372604, 41.659393, 42.730610>,  <45.156521, 41.627464, 42.631172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.372604, 41.659393, 42.730610>,  <45.732746, 41.712608, 42.896343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.372604, 41.659393, 42.730610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117806, 0.991084, -0.062239,
		0.418916, -0.007226, -0.907996,
		-0.900351, -0.133040, -0.414329,
		45.102501, 41.619480, 42.606312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.889385, 42.456951, 43.102764>,  <45.732746, 41.712608, 42.896343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.889385, 42.456951, 43.102764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.059322, 42.814079, 43.162601>,  <46.161285, 43.028355, 43.198502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.059322, 42.814079, 43.162601>,  <45.889385, 42.456951, 43.102764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.059322, 42.814079, 43.162601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649854, -0.185748, -0.737013,
		-0.630234, 0.410329, -0.659117,
		0.424847, 0.892820, 0.149589,
		46.186775, 43.081924, 43.207478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.889530, 42.913349, 42.543964>,  <45.889385, 42.456951, 43.102764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.889530, 42.913349, 42.543964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.220943, 42.983253, 42.756752>,  <46.419792, 43.025196, 42.884426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.220943, 42.983253, 42.756752>,  <45.889530, 42.913349, 42.543964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.220943, 42.983253, 42.756752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535684, 0.029209, -0.843913,
		-0.163020, 0.984178, -0.069415,
		0.828533, 0.174760, 0.531970,
		46.469501, 43.035683, 42.916344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.250359, 43.626503, 42.241287>,  <45.889530, 42.913349, 42.543964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.250359, 43.626503, 42.241287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.497681, 43.351372, 42.393391>,  <46.646072, 43.186295, 42.484653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.497681, 43.351372, 42.393391>,  <46.250359, 43.626503, 42.241287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.497681, 43.351372, 42.393391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426377, -0.112879, -0.897475,
		0.660228, 0.717047, 0.223479,
		0.618305, -0.687824, 0.380258,
		46.683170, 43.145023, 42.507469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.062317, 43.802643, 42.026733>,  <46.250359, 43.626503, 42.241287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.062317, 43.802643, 42.026733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.933975, 43.430763, 42.099072>,  <46.856972, 43.207634, 42.142475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.933975, 43.430763, 42.099072>,  <47.062317, 43.802643, 42.026733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.933975, 43.430763, 42.099072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252865, -0.268100, -0.929614,
		0.912750, -0.252539, 0.321110,
		-0.320853, -0.929702, 0.180850,
		46.837719, 43.151852, 42.153328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.477013, 43.379768, 41.660358>,  <47.062317, 43.802643, 42.026733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.477013, 43.379768, 41.660358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.177357, 43.128792, 41.745304>,  <46.997562, 42.978207, 41.796272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.177357, 43.128792, 41.745304>,  <47.477013, 43.379768, 41.660358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.177357, 43.128792, 41.745304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030492, -0.287595, -0.957267,
		0.661708, -0.723603, 0.196317,
		-0.749141, -0.627445, 0.212368,
		46.952614, 42.940559, 41.809013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.668598, 42.624977, 41.718941>,  <47.477013, 43.379768, 41.660358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.668598, 42.624977, 41.718941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.298138, 42.699039, 41.587509>,  <47.075863, 42.743477, 41.508652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.298138, 42.699039, 41.587509>,  <47.668598, 42.624977, 41.718941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.298138, 42.699039, 41.587509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272366, -0.274276, -0.922274,
		-0.260882, -0.943658, 0.203592,
		-0.926152, 0.185153, -0.328574,
		47.020294, 42.754585, 41.488937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.460468, 42.103035, 41.098675>,  <47.668598, 42.624977, 41.718941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.460468, 42.103035, 41.098675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.226257, 42.427261, 41.103401>,  <47.085732, 42.621796, 41.106236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.226257, 42.427261, 41.103401>,  <47.460468, 42.103035, 41.098675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.226257, 42.427261, 41.103401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169317, 0.136533, -0.976058,
		-0.792771, -0.569512, -0.217187,
		-0.585530, 0.810565, 0.011812,
		47.050598, 42.670429, 41.106945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.046978, 41.757721, 40.521004>,  <47.460468, 42.103035, 41.098675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.046978, 41.757721, 40.521004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.130043, 41.420567, 40.719566>,  <47.179882, 41.218273, 40.838703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.130043, 41.420567, 40.719566>,  <47.046978, 41.757721, 40.521004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.130043, 41.420567, 40.719566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197908, -0.460772, -0.865171,
		0.957971, 0.277907, 0.071128,
		0.207663, -0.842886, 0.496406,
		47.192341, 41.167702, 40.868488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.271656, 41.422920, 39.947491>,  <47.046978, 41.757721, 40.521004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.271656, 41.422920, 39.947491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.215042, 41.135609, 40.219975>,  <47.181072, 40.963223, 40.383465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.215042, 41.135609, 40.219975>,  <47.271656, 41.422920, 39.947491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.215042, 41.135609, 40.219975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115774, -0.695426, -0.709211,
		0.983140, -0.021512, 0.181585,
		-0.141535, -0.718276, 0.681210,
		47.172581, 40.920124, 40.424339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.714294, 40.802605, 39.782639>,  <47.271656, 41.422920, 39.947491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.714294, 40.802605, 39.782639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.414745, 40.672085, 40.013363>,  <47.235016, 40.593773, 40.151798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.414745, 40.672085, 40.013363>,  <47.714294, 40.802605, 39.782639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.414745, 40.672085, 40.013363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039013, -0.847171, -0.529886,
		0.661559, -0.419323, 0.621697,
		-0.748877, -0.326296, 0.576813,
		47.190083, 40.574196, 40.186405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.947857, 40.083527, 39.919815>,  <47.714294, 40.802605, 39.782639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.947857, 40.083527, 39.919815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.553265, 40.130501, 39.965542>,  <47.316509, 40.158688, 39.992977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.553265, 40.130501, 39.965542>,  <47.947857, 40.083527, 39.919815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.553265, 40.130501, 39.965542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155858, -0.887921, -0.432788,
		0.050679, -0.444753, 0.894218,
		-0.986479, 0.117438, 0.114317,
		47.257320, 40.165733, 39.999836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.774693, 39.470436, 39.932198>,  <47.947857, 40.083527, 39.919815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.774693, 39.470436, 39.932198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.406143, 39.616318, 39.878429>,  <47.185013, 39.703846, 39.846169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.406143, 39.616318, 39.878429>,  <47.774693, 39.470436, 39.932198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.406143, 39.616318, 39.878429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272400, -0.852566, -0.446016,
		-0.277262, -0.374331, 0.884874,
		-0.921371, 0.364703, -0.134417,
		47.129730, 39.725727, 39.838104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.383396, 38.969772, 40.114193>,  <47.774693, 39.470436, 39.932198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.383396, 38.969772, 40.114193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.161602, 39.203304, 39.876980>,  <47.028526, 39.343426, 39.734653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.161602, 39.203304, 39.876980>,  <47.383396, 38.969772, 40.114193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.161602, 39.203304, 39.876980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273216, -0.800824, -0.532948,
		-0.786061, -0.133491, 0.603562,
		-0.554491, 0.583833, -0.593025,
		46.995258, 39.378456, 39.699070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.707207, 38.652763, 40.128906>,  <47.383396, 38.969772, 40.114193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.707207, 38.652763, 40.128906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.759846, 38.861988, 39.792076>,  <46.791428, 38.987522, 39.589977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.759846, 38.861988, 39.792076>,  <46.707207, 38.652763, 40.128906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.759846, 38.861988, 39.792076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213337, -0.814615, -0.539342,
		-0.968075, 0.250621, 0.004388,
		0.131596, 0.523060, -0.842075,
		46.799324, 39.018906, 39.539452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.196194, 38.354530, 39.727383>,  <46.707207, 38.652763, 40.128906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.196194, 38.354530, 39.727383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.451103, 38.531826, 39.475220>,  <46.604050, 38.638203, 39.323921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.451103, 38.531826, 39.475220>,  <46.196194, 38.354530, 39.727383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.451103, 38.531826, 39.475220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162609, -0.722276, -0.672217,
		-0.753283, 0.530899, -0.388215,
		0.637277, 0.443242, -0.630407,
		46.642288, 38.664799, 39.286098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.820232, 38.367214, 39.083096>,  <46.196194, 38.354530, 39.727383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.820232, 38.367214, 39.083096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.210331, 38.399902, 39.000904>,  <46.444389, 38.419514, 38.951588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.210331, 38.399902, 39.000904>,  <45.820232, 38.367214, 39.083096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.210331, 38.399902, 39.000904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109455, -0.629019, -0.769646,
		-0.192146, 0.773083, -0.604502,
		0.975243, 0.081718, -0.205481,
		46.502903, 38.424419, 38.939259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.917656, 38.449348, 38.330429>,  <45.820232, 38.367214, 39.083096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.917656, 38.449348, 38.330429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.264561, 38.297668, 38.459465>,  <46.472702, 38.206661, 38.536884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.264561, 38.297668, 38.459465>,  <45.917656, 38.449348, 38.330429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.264561, 38.297668, 38.459465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003148, -0.652123, -0.758106,
		0.497841, 0.656462, -0.566756,
		0.867262, -0.379201, 0.322587,
		46.524738, 38.183907, 38.556240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.303917, 38.442921, 37.747997>,  <45.917656, 38.449348, 38.330429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.303917, 38.442921, 37.747997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.467823, 38.185749, 38.006836>,  <46.566166, 38.031445, 38.162140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.467823, 38.185749, 38.006836>,  <46.303917, 38.442921, 37.747997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.467823, 38.185749, 38.006836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079734, -0.681427, -0.727530,
		0.908699, 0.349713, -0.227963,
		0.409767, -0.642930, 0.647096,
		46.590752, 37.992870, 38.200966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.938854, 38.128448, 37.332840>,  <46.303917, 38.442921, 37.747997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.938854, 38.128448, 37.332840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.863785, 37.886024, 37.642025>,  <46.818745, 37.740570, 37.827534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.863785, 37.886024, 37.642025>,  <46.938854, 38.128448, 37.332840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.863785, 37.886024, 37.642025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213304, -0.743015, -0.634373,
		0.958791, -0.283930, 0.010168,
		-0.187673, -0.606062, 0.772960,
		46.807484, 37.704205, 37.873913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.385860, 37.486492, 37.307915>,  <46.938854, 38.128448, 37.332840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.385860, 37.486492, 37.307915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.052853, 37.407928, 37.515118>,  <46.853046, 37.360790, 37.639439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.052853, 37.407928, 37.515118>,  <47.385860, 37.486492, 37.307915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.052853, 37.407928, 37.515118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255447, -0.693612, -0.673534,
		0.491581, -0.693056, 0.527277,
		-0.832523, -0.196405, 0.518006,
		46.803097, 37.349007, 37.670521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.328388, 36.743805, 37.291542>,  <47.385860, 37.486492, 37.307915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.328388, 36.743805, 37.291542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.976044, 36.862240, 37.439278>,  <46.764637, 36.933300, 37.527920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.976044, 36.862240, 37.439278>,  <47.328388, 36.743805, 37.291542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.976044, 36.862240, 37.439278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459905, -0.720048, -0.519633,
		0.112086, -0.627587, 0.770435,
		-0.880866, 0.296084, 0.369338,
		46.711784, 36.951065, 37.550079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.101662, 36.171589, 37.631615>,  <47.328388, 36.743805, 37.291542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.101662, 36.171589, 37.631615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.778732, 36.381004, 37.522709>,  <46.584972, 36.506653, 37.457363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.778732, 36.381004, 37.522709>,  <47.101662, 36.171589, 37.631615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.778732, 36.381004, 37.522709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419339, -0.833608, -0.359517,
		-0.415186, -0.176075, 0.892535,
		-0.807326, 0.523541, -0.272267,
		46.536533, 36.538067, 37.441029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.509830, 35.808392, 37.752846>,  <47.101662, 36.171589, 37.631615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.509830, 35.808392, 37.752846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.371010, 36.077202, 37.491177>,  <46.287716, 36.238487, 37.334175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.371010, 36.077202, 37.491177>,  <46.509830, 35.808392, 37.752846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.371010, 36.077202, 37.491177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632535, -0.682721, -0.365777,
		-0.692426, 0.286842, 0.662018,
		-0.347053, 0.672022, -0.654171,
		46.266891, 36.278809, 37.294926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.794586, 35.715137, 37.868961>,  <46.509830, 35.808392, 37.752846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.794586, 35.715137, 37.868961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.891605, 35.896645, 37.525970>,  <45.949818, 36.005547, 37.320175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.891605, 35.896645, 37.525970>,  <45.794586, 35.715137, 37.868961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.891605, 35.896645, 37.525970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564633, -0.652718, -0.505122,
		-0.788898, 0.606676, 0.097896,
		0.242547, 0.453765, -0.857478,
		45.964371, 36.032776, 37.268726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.194439, 35.834900, 37.598736>,  <45.794586, 35.715137, 37.868961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.194439, 35.834900, 37.598736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.439953, 35.868134, 37.284698>,  <45.587261, 35.888073, 37.096275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.439953, 35.868134, 37.284698>,  <45.194439, 35.834900, 37.598736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.439953, 35.868134, 37.284698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579572, -0.627824, -0.519551,
		-0.536066, 0.773908, -0.337195,
		0.613783, 0.083085, -0.785091,
		45.624088, 35.893059, 37.049171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.758579, 35.845730, 37.035522>,  <45.194439, 35.834900, 37.598736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.758579, 35.845730, 37.035522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.104523, 35.738796, 36.865562>,  <45.312088, 35.674637, 36.763584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.104523, 35.738796, 36.865562>,  <44.758579, 35.845730, 37.035522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.104523, 35.738796, 36.865562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473946, -0.713851, -0.515550,
		-0.165493, 0.647261, -0.744087,
		0.864863, -0.267337, -0.424904,
		45.363983, 35.658596, 36.738091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.530357, 35.585369, 36.389591>,  <44.758579, 35.845730, 37.035522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.530357, 35.585369, 36.389591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.893456, 35.429214, 36.451050>,  <45.111313, 35.335522, 36.487923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.893456, 35.429214, 36.451050>,  <44.530357, 35.585369, 36.389591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.893456, 35.429214, 36.451050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236096, -0.778082, -0.582105,
		0.346790, 0.492127, -0.798466,
		0.907742, -0.390383, 0.153642,
		45.165779, 35.312099, 36.497143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.842659, 35.362263, 35.810497>,  <44.530357, 35.585369, 36.389591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.842659, 35.362263, 35.810497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.025333, 35.144985, 36.092316>,  <45.134937, 35.014618, 36.261406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.025333, 35.144985, 36.092316>,  <44.842659, 35.362263, 35.810497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.025333, 35.144985, 36.092316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203899, -0.834780, -0.511436,
		0.865947, 0.089909, -0.491988,
		0.456685, -0.543193, 0.704543,
		45.162338, 34.982029, 36.303680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.279781, 34.978840, 35.401669>,  <44.842659, 35.362263, 35.810497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.279781, 34.978840, 35.401669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.209976, 34.798077, 35.751598>,  <45.168095, 34.689617, 35.961555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.209976, 34.798077, 35.751598>,  <45.279781, 34.978840, 35.401669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.209976, 34.798077, 35.751598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008973, -0.889153, -0.457523,
		0.984614, -0.071993, 0.159222,
		-0.174511, -0.451913, 0.874826,
		45.157623, 34.662502, 36.014046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.752388, 34.389385, 35.634544>,  <45.279781, 34.978840, 35.401669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.752388, 34.389385, 35.634544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.420536, 34.267559, 35.821712>,  <45.221424, 34.194462, 35.934013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.420536, 34.267559, 35.821712>,  <45.752388, 34.389385, 35.634544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.420536, 34.267559, 35.821712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051874, -0.876525, -0.478553,
		0.555901, -0.372748, 0.742989,
		-0.829628, -0.304570, 0.467925,
		45.171646, 34.176189, 35.962090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.276623, 34.867512, 35.180882>,  <45.752388, 34.389385, 35.634544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.276623, 34.867512, 35.180882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.435055, 34.712097, 34.848099>,  <46.530113, 34.618847, 34.648430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.435055, 34.712097, 34.848099>,  <46.276623, 34.867512, 35.180882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.435055, 34.712097, 34.848099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788052, 0.321192, -0.525176,
		0.471270, 0.863640, -0.178971,
		0.396079, -0.388538, -0.831961,
		46.553879, 34.595535, 34.598511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.848541, 35.345032, 34.935074>,  <46.276623, 34.867512, 35.180882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.848541, 35.345032, 34.935074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.142776, 35.257782, 35.191616>,  <47.319317, 35.205433, 35.345539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.142776, 35.257782, 35.191616>,  <46.848541, 35.345032, 34.935074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.142776, 35.257782, 35.191616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059170, -0.922436, -0.381590,
		0.674843, 0.318641, -0.665624,
		0.735586, -0.218128, 0.641353,
		47.363453, 35.192345, 35.384022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.507881, 35.246140, 34.602409>,  <46.848541, 35.345032, 34.935074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.507881, 35.246140, 34.602409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.500759, 35.027977, 34.937603>,  <47.496487, 34.897079, 35.138718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.500759, 35.027977, 34.937603>,  <47.507881, 35.246140, 34.602409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.500759, 35.027977, 34.937603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201683, -0.822847, -0.531269,
		0.979289, 0.159549, 0.124647,
		-0.017802, -0.545405, 0.837984,
		47.495419, 34.864357, 35.188999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.176174, 34.931965, 34.778610>,  <47.507881, 35.246140, 34.602409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.176174, 34.931965, 34.778610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.846092, 34.726334, 34.872211>,  <47.648045, 34.602955, 34.928371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.846092, 34.726334, 34.872211>,  <48.176174, 34.931965, 34.778610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.846092, 34.726334, 34.872211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322054, -0.768583, -0.552775,
		0.464026, -0.380789, 0.799800,
		-0.825204, -0.514081, 0.234008,
		47.598530, 34.572109, 34.942413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.056248, 39.932808, 44.181541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.724922, 39.725292, 44.266159>,  <36.526127, 39.600784, 44.316929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.724922, 39.725292, 44.266159>,  <37.056248, 39.932808, 44.181541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724922, 39.725292, 44.266159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018334, -0.402475, -0.915247,
		0.559958, -0.754238, 0.342889,
		-0.828318, -0.518786, 0.211541,
		36.476425, 39.569656, 44.329620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126057, 39.192551, 43.986290>,  <37.056248, 39.932808, 44.181541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126057, 39.192551, 43.986290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.729286, 39.242981, 43.991634>,  <36.491222, 39.273239, 43.994839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.729286, 39.242981, 43.991634>,  <37.126057, 39.192551, 43.986290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729286, 39.242981, 43.991634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066196, -0.425156, -0.902696,
		-0.108130, -0.896296, 0.430071,
		-0.991930, 0.126077, 0.013359,
		36.431705, 39.280804, 43.995644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791138, 38.563679, 43.941601>,  <37.126057, 39.192551, 43.986290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791138, 38.563679, 43.941601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.500824, 38.802383, 43.804714>,  <36.326637, 38.945606, 43.722580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.500824, 38.802383, 43.804714>,  <36.791138, 38.563679, 43.941601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500824, 38.802383, 43.804714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039673, -0.532950, -0.845216,
		-0.686776, -0.599869, 0.410482,
		-0.725785, 0.596760, -0.342219,
		36.283089, 38.981411, 43.702049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405281, 38.127499, 43.509132>,  <36.791138, 38.563679, 43.941601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405281, 38.127499, 43.509132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.295773, 38.496693, 43.400948>,  <36.230068, 38.718208, 43.336037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.295773, 38.496693, 43.400948>,  <36.405281, 38.127499, 43.509132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295773, 38.496693, 43.400948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184491, -0.326384, -0.927058,
		-0.943933, -0.203907, 0.259638,
		-0.273775, 0.922982, -0.270465,
		36.213638, 38.773586, 43.319809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749577, 38.047554, 43.102135>,  <36.405281, 38.127499, 43.509132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749577, 38.047554, 43.102135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.903519, 38.403111, 43.002735>,  <35.995884, 38.616444, 42.943096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.903519, 38.403111, 43.002735>,  <35.749577, 38.047554, 43.102135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903519, 38.403111, 43.002735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027689, -0.257996, -0.965749,
		-0.922561, 0.378554, -0.074679,
		0.384855, 0.888895, -0.248499,
		36.018974, 38.669781, 42.928185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383038, 38.184566, 42.564423>,  <35.749577, 38.047554, 43.102135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383038, 38.184566, 42.564423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.689640, 38.440987, 42.548813>,  <35.873600, 38.594837, 42.539448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.689640, 38.440987, 42.548813>,  <35.383038, 38.184566, 42.564423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689640, 38.440987, 42.548813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103127, -0.182830, -0.977721,
		-0.633902, 0.745406, -0.206250,
		0.766507, 0.641049, -0.039025,
		35.919594, 38.633301, 42.537106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267372, 38.701893, 41.965420>,  <35.383038, 38.184566, 42.564423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267372, 38.701893, 41.965420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.659016, 38.662441, 42.036537>,  <35.894001, 38.638771, 42.079208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.659016, 38.662441, 42.036537>,  <35.267372, 38.701893, 41.965420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659016, 38.662441, 42.036537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158980, -0.173710, -0.971880,
		0.126741, 0.979845, -0.154402,
		0.979113, -0.098630, 0.177792,
		35.952751, 38.632851, 42.089874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625328, 39.018288, 41.390678>,  <35.267372, 38.701893, 41.965420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625328, 39.018288, 41.390678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.882507, 38.765594, 41.563900>,  <36.036816, 38.613979, 41.667831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.882507, 38.765594, 41.563900>,  <35.625328, 39.018288, 41.390678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882507, 38.765594, 41.563900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333458, -0.278125, -0.900806,
		0.689512, 0.723574, 0.031837,
		0.642946, -0.631733, 0.433052,
		36.075390, 38.576073, 41.693817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162891, 39.144924, 40.907288>,  <35.625328, 39.018288, 41.390678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162891, 39.144924, 40.907288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.230652, 38.804497, 41.106075>,  <36.271309, 38.600239, 41.225349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.230652, 38.804497, 41.106075>,  <36.162891, 39.144924, 40.907288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230652, 38.804497, 41.106075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412242, -0.396838, -0.820107,
		0.895187, 0.343801, 0.283622,
		0.169402, -0.851070, 0.496973,
		36.281471, 38.549175, 41.255169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845627, 39.053062, 40.832985>,  <36.162891, 39.144924, 40.907288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845627, 39.053062, 40.832985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.719997, 38.680950, 40.908817>,  <36.644619, 38.457684, 40.954319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.719997, 38.680950, 40.908817>,  <36.845627, 39.053062, 40.832985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719997, 38.680950, 40.908817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590886, -0.347833, -0.727919,
		0.743110, -0.116596, 0.658933,
		-0.314071, -0.930278, 0.189583,
		36.625774, 38.401867, 40.965691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473545, 38.639595, 40.955242>,  <36.845627, 39.053062, 40.832985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473545, 38.639595, 40.955242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.184921, 38.386208, 40.843479>,  <37.011749, 38.234173, 40.776421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.184921, 38.386208, 40.843479>,  <37.473545, 38.639595, 40.955242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184921, 38.386208, 40.843479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640988, -0.458666, -0.615436,
		0.261707, -0.623168, 0.737002,
		-0.721557, -0.633472, -0.279407,
		36.968452, 38.196167, 40.759659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746540, 37.939217, 41.015766>,  <37.473545, 38.639595, 40.955242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746540, 37.939217, 41.015766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.429966, 37.894501, 40.775387>,  <37.240021, 37.867672, 40.631161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.429966, 37.894501, 40.775387>,  <37.746540, 37.939217, 41.015766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429966, 37.894501, 40.775387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541834, -0.583360, -0.605067,
		-0.282930, -0.804484, 0.522261,
		-0.791433, -0.111787, -0.600947,
		37.192535, 37.860966, 40.595104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741474, 37.246880, 40.863857>,  <37.746540, 37.939217, 41.015766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741474, 37.246880, 40.863857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.513981, 37.403828, 40.574699>,  <37.377483, 37.497997, 40.401203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.513981, 37.403828, 40.574699>,  <37.741474, 37.246880, 40.863857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513981, 37.403828, 40.574699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457590, -0.579383, -0.674482,
		-0.683484, -0.714393, 0.149970,
		-0.568736, 0.392373, -0.722898,
		37.343361, 37.521538, 40.357830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510071, 36.751465, 40.428040>,  <37.741474, 37.246880, 40.863857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510071, 36.751465, 40.428040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.465378, 37.054783, 40.171131>,  <37.438564, 37.236774, 40.016987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.465378, 37.054783, 40.171131>,  <37.510071, 36.751465, 40.428040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465378, 37.054783, 40.171131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566934, -0.482174, -0.667902,
		-0.816151, -0.438748, -0.376030,
		-0.111729, 0.758293, -0.642268,
		37.431858, 37.282272, 39.978451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409092, 36.431015, 39.791306>,  <37.510071, 36.751465, 40.428040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409092, 36.431015, 39.791306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.507252, 36.802063, 39.678661>,  <37.566147, 37.024693, 39.611076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.507252, 36.802063, 39.678661>,  <37.409092, 36.431015, 39.791306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507252, 36.802063, 39.678661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520925, -0.371168, -0.768682,
		-0.817567, 0.041940, -0.574304,
		0.245402, 0.927618, -0.281607,
		37.580872, 37.080349, 39.594181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320126, 36.452862, 39.132385>,  <37.409092, 36.431015, 39.791306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320126, 36.452862, 39.132385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.571774, 36.758469, 39.189640>,  <37.722763, 36.941833, 39.223991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.571774, 36.758469, 39.189640>,  <37.320126, 36.452862, 39.132385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571774, 36.758469, 39.189640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512074, -0.268820, -0.815791,
		-0.584801, 0.586525, -0.560354,
		0.629117, 0.764018, 0.143138,
		37.760509, 36.987675, 39.232582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443935, 36.748829, 38.398705>,  <37.320126, 36.452862, 39.132385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443935, 36.748829, 38.398705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.738976, 36.898968, 38.623226>,  <37.916000, 36.989052, 38.757938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.738976, 36.898968, 38.623226>,  <37.443935, 36.748829, 38.398705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738976, 36.898968, 38.623226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654878, -0.195056, -0.730129,
		-0.164568, 0.906127, -0.389681,
		0.737599, 0.375350, 0.561302,
		37.960255, 37.011574, 38.791618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724350, 37.260086, 38.057774>,  <37.443935, 36.748829, 38.398705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724350, 37.260086, 38.057774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.024376, 37.192749, 38.313606>,  <38.204391, 37.152348, 38.467106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.024376, 37.192749, 38.313606>,  <37.724350, 37.260086, 38.057774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024376, 37.192749, 38.313606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637611, -0.072777, -0.766913,
		0.175649, 0.983039, 0.052748,
		0.750067, -0.168340, 0.639579,
		38.249397, 37.142246, 38.505482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206085, 37.814247, 37.918007>,  <37.724350, 37.260086, 38.057774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206085, 37.814247, 37.918007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.377121, 37.487690, 38.073273>,  <38.479740, 37.291756, 38.166431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.377121, 37.487690, 38.073273>,  <38.206085, 37.814247, 37.918007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377121, 37.487690, 38.073273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680167, 0.007718, -0.733017,
		0.595436, 0.577441, 0.558586,
		0.427585, -0.816396, 0.388160,
		38.505398, 37.242771, 38.189720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970482, 37.891411, 37.792606>,  <38.206085, 37.814247, 37.918007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970482, 37.891411, 37.792606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.969639, 37.498951, 37.869892>,  <38.969131, 37.263474, 37.916264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.969639, 37.498951, 37.869892>,  <38.970482, 37.891411, 37.792606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969639, 37.498951, 37.869892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723134, -0.134953, -0.677396,
		0.690705, 0.138293, 0.709790,
		-0.002109, -0.981154, 0.193217,
		38.969006, 37.204605, 37.927856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659214, 37.729824, 37.786587>,  <38.970482, 37.891411, 37.792606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659214, 37.729824, 37.786587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.498074, 37.367222, 37.736061>,  <39.401390, 37.149658, 37.705746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.498074, 37.367222, 37.736061>,  <39.659214, 37.729824, 37.786587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498074, 37.367222, 37.736061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688626, -0.209282, -0.694259,
		0.602917, -0.366662, 0.708554,
		-0.402846, -0.906510, -0.126313,
		39.377220, 37.095268, 37.698166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062103, 37.121788, 38.087093>,  <39.659214, 37.729824, 37.786587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062103, 37.121788, 38.087093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.454475, 37.146614, 38.013416>,  <40.689899, 37.161510, 37.969212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.454475, 37.146614, 38.013416>,  <40.062103, 37.121788, 38.087093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.454475, 37.146614, 38.013416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112177, 0.593122, 0.797260,
		0.158727, -0.802717, 0.574849,
		0.980929, 0.062062, -0.184191,
		40.748753, 37.165234, 37.958160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233643, 37.075191, 38.726601>,  <40.062103, 37.121788, 38.087093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233643, 37.075191, 38.726601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.535637, 37.234245, 38.518036>,  <40.716835, 37.329678, 38.392895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.535637, 37.234245, 38.518036>,  <40.233643, 37.075191, 38.726601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535637, 37.234245, 38.518036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166484, 0.652870, 0.738948,
		0.634250, -0.644706, 0.426710,
		0.754990, 0.397637, -0.521415,
		40.762135, 37.353539, 38.361610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819363, 37.073456, 39.203938>,  <40.233643, 37.075191, 38.726601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819363, 37.073456, 39.203938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.916584, 37.317604, 38.902378>,  <40.974918, 37.464092, 38.721443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.916584, 37.317604, 38.902378>,  <40.819363, 37.073456, 39.203938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.916584, 37.317604, 38.902378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489218, 0.593986, 0.638628,
		0.837609, -0.524046, -0.154233,
		0.243058, 0.610374, -0.753901,
		40.989502, 37.500717, 38.676208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398560, 37.273907, 39.428238>,  <40.819363, 37.073456, 39.203938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.398560, 37.273907, 39.428238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.368244, 37.550648, 39.141018>,  <41.350056, 37.716694, 38.968685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.368244, 37.550648, 39.141018>,  <41.398560, 37.273907, 39.428238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368244, 37.550648, 39.141018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103296, 0.721694, 0.684462,
		0.991759, -0.022294, -0.126165,
		-0.075792, 0.691853, -0.718049,
		41.345505, 37.758205, 38.925602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.065948, 37.666412, 39.334389>,  <41.398560, 37.273907, 39.428238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.065948, 37.666412, 39.334389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.729225, 37.865070, 39.249813>,  <41.527191, 37.984264, 39.199070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.729225, 37.865070, 39.249813>,  <42.065948, 37.666412, 39.334389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.729225, 37.865070, 39.249813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155535, 0.598276, 0.786050,
		0.516882, 0.628818, -0.580879,
		-0.841809, 0.496642, -0.211435,
		41.476681, 38.014065, 39.186382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.215248, 38.403214, 39.505432>,  <42.065948, 37.666412, 39.334389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.215248, 38.403214, 39.505432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.818302, 38.354446, 39.498043>,  <41.580135, 38.325188, 39.493610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.818302, 38.354446, 39.498043>,  <42.215248, 38.403214, 39.505432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.818302, 38.354446, 39.498043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080777, 0.529564, 0.844415,
		-0.093165, 0.839463, -0.535371,
		-0.992369, -0.121916, -0.018473,
		41.520592, 38.317871, 39.492500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.944649, 39.059853, 39.541508>,  <42.215248, 38.403214, 39.505432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.944649, 39.059853, 39.541508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.656288, 38.814713, 39.670944>,  <41.483273, 38.667629, 39.748608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.656288, 38.814713, 39.670944>,  <41.944649, 39.059853, 39.541508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.656288, 38.814713, 39.670944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130873, 0.578904, 0.804824,
		-0.680564, 0.537853, -0.497541,
		-0.720905, -0.612849, 0.323591,
		41.440018, 38.630859, 39.768021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.624035, 39.563141, 39.780205>,  <41.944649, 39.059853, 39.541508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.624035, 39.563141, 39.780205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.442661, 39.244377, 39.939869>,  <41.333836, 39.053120, 40.035667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.442661, 39.244377, 39.939869>,  <41.624035, 39.563141, 39.780205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.442661, 39.244377, 39.939869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128845, 0.501754, 0.855361,
		-0.881928, 0.336419, -0.330190,
		-0.453434, -0.796910, 0.399165,
		41.306633, 39.005302, 40.059620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.148743, 39.846226, 40.138195>,  <41.624035, 39.563141, 39.780205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.148743, 39.846226, 40.138195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.142551, 39.473316, 40.282764>,  <41.138836, 39.249569, 40.369507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.142551, 39.473316, 40.282764>,  <41.148743, 39.846226, 40.138195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.142551, 39.473316, 40.282764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262320, 0.352593, 0.898258,
		-0.964857, -0.080906, -0.250011,
		-0.015477, -0.932273, 0.361425,
		41.137909, 39.193634, 40.391193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657825, 39.857159, 40.541355>,  <41.148743, 39.846226, 40.138195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.657825, 39.857159, 40.541355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.858364, 39.536091, 40.670586>,  <40.978687, 39.343452, 40.748123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.858364, 39.536091, 40.670586>,  <40.657825, 39.857159, 40.541355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.858364, 39.536091, 40.670586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309916, 0.182029, 0.933176,
		-0.807838, -0.567972, -0.157500,
		0.501348, -0.802666, 0.323073,
		41.008770, 39.295292, 40.767509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177246, 39.357677, 40.883755>,  <40.657825, 39.857159, 40.541355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177246, 39.357677, 40.883755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.554367, 39.332531, 41.014702>,  <40.780640, 39.317444, 41.093269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.554367, 39.332531, 41.014702>,  <40.177246, 39.357677, 40.883755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.554367, 39.332531, 41.014702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316760, 0.137001, 0.938559,
		-0.103855, -0.988574, 0.109251,
		0.942803, -0.062868, 0.327369,
		40.837208, 39.313671, 41.112911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048981, 39.012573, 41.493706>,  <40.177246, 39.357677, 40.883755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048981, 39.012573, 41.493706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.426453, 39.135475, 41.542805>,  <40.652935, 39.209217, 41.572266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.426453, 39.135475, 41.542805>,  <40.048981, 39.012573, 41.493706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426453, 39.135475, 41.542805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231868, 0.349458, 0.907808,
		0.236029, -0.885141, 0.401018,
		0.943677, 0.307252, 0.122753,
		40.709557, 39.227654, 41.579632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346668, 38.791985, 42.137085>,  <40.048981, 39.012573, 41.493706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.346668, 38.791985, 42.137085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.569859, 39.108368, 42.036644>,  <40.703773, 39.298199, 41.976379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.569859, 39.108368, 42.036644>,  <40.346668, 38.791985, 42.137085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569859, 39.108368, 42.036644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160751, 0.399873, 0.902364,
		0.814140, -0.463130, 0.350266,
		0.557974, 0.790956, -0.251104,
		40.737251, 39.345654, 41.961311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814007, 38.651009, 42.613705>,  <40.346668, 38.791985, 42.137085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.814007, 38.651009, 42.613705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.785732, 39.019615, 42.460968>,  <40.768768, 39.240780, 42.369328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.785732, 39.019615, 42.460968>,  <40.814007, 38.651009, 42.613705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.785732, 39.019615, 42.460968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363983, 0.332578, 0.870004,
		0.928719, 0.200480, 0.311910,
		-0.070684, 0.921520, -0.381843,
		40.764526, 39.296070, 42.346416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.117424, 39.165928, 43.082928>,  <40.814007, 38.651009, 42.613705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.117424, 39.165928, 43.082928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.881096, 39.394241, 42.854843>,  <40.739300, 39.531231, 42.717991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.881096, 39.394241, 42.854843>,  <41.117424, 39.165928, 43.082928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.881096, 39.394241, 42.854843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492977, 0.304080, 0.815174,
		0.638677, 0.762721, 0.101727,
		-0.590817, 0.570782, -0.570213,
		40.703850, 39.565475, 42.683781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021969, 39.831154, 43.426235>,  <41.117424, 39.165928, 43.082928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.021969, 39.831154, 43.426235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.718918, 39.807766, 43.166210>,  <40.537086, 39.793732, 43.010197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.718918, 39.807766, 43.166210>,  <41.021969, 39.831154, 43.426235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718918, 39.807766, 43.166210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622850, 0.362465, 0.693309,
		0.195088, 0.930162, -0.311031,
		-0.757627, -0.058469, -0.650064,
		40.491631, 39.790226, 42.971191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.769817, 40.515022, 43.558094>,  <41.021969, 39.831154, 43.426235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.769817, 40.515022, 43.558094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.494244, 40.260983, 43.418373>,  <40.328899, 40.108559, 43.334541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.494244, 40.260983, 43.418373>,  <40.769817, 40.515022, 43.558094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.494244, 40.260983, 43.418373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635049, 0.296587, 0.713267,
		-0.349396, 0.713222, -0.607649,
		-0.688938, -0.635099, -0.349304,
		40.287563, 40.070454, 43.313583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144615, 40.912868, 43.505047>,  <40.769817, 40.515022, 43.558094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144615, 40.912868, 43.505047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.998886, 40.540638, 43.490677>,  <39.911449, 40.317299, 43.482056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.998886, 40.540638, 43.490677>,  <40.144615, 40.912868, 43.505047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.998886, 40.540638, 43.490677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704828, 0.250314, 0.663747,
		-0.608678, 0.267138, -0.747093,
		-0.364320, -0.930581, -0.035926,
		39.889591, 40.261463, 43.479900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404945, 41.040871, 43.356571>,  <40.144615, 40.912868, 43.505047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404945, 41.040871, 43.356571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.453003, 40.687901, 43.538513>,  <39.481838, 40.476120, 43.647678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.453003, 40.687901, 43.538513>,  <39.404945, 41.040871, 43.356571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453003, 40.687901, 43.538513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690871, 0.254709, 0.676625,
		-0.712926, -0.395533, -0.579042,
		0.120140, -0.882427, 0.454851,
		39.489044, 40.423172, 43.674969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.698238, 40.740677, 43.375523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.905022, 40.526546, 43.642712>,  <39.029091, 40.398067, 43.803024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.905022, 40.526546, 43.642712>,  <38.698238, 40.740677, 43.375523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905022, 40.526546, 43.642712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734715, 0.122946, 0.667141,
		-0.439262, -0.835650, -0.329755,
		0.516954, -0.535326, 0.667970,
		39.060108, 40.365948, 43.843102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197884, 40.431911, 43.884407>,  <38.698238, 40.740677, 43.375523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197884, 40.431911, 43.884407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.546535, 40.390072, 44.075958>,  <38.755726, 40.364967, 44.190891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.546535, 40.390072, 44.075958>,  <38.197884, 40.431911, 43.884407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546535, 40.390072, 44.075958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475185, 0.059420, 0.877877,
		-0.120279, -0.992738, 0.002089,
		0.871626, -0.104597, 0.478881,
		38.808025, 40.358692, 44.219624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120312, 39.846233, 44.505806>,  <38.197884, 40.431911, 43.884407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120312, 39.846233, 44.505806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.416794, 40.094997, 44.606880>,  <38.594681, 40.244255, 44.667526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.416794, 40.094997, 44.606880>,  <38.120312, 39.846233, 44.505806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416794, 40.094997, 44.606880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300408, -0.029326, 0.953360,
		0.600311, -0.782542, 0.165090,
		0.741203, 0.621907, 0.252687,
		38.639156, 40.281570, 44.682686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547161, 39.536961, 45.104401>,  <38.120312, 39.846233, 44.505806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547161, 39.536961, 45.104401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.666653, 39.917061, 45.139706>,  <38.738350, 40.145119, 45.160889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.666653, 39.917061, 45.139706>,  <38.547161, 39.536961, 45.104401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666653, 39.917061, 45.139706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040136, -0.079896, 0.995995,
		0.953493, -0.301077, 0.014272,
		0.298731, 0.950247, 0.088265,
		38.756271, 40.202133, 45.166183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938618, 39.603394, 45.798744>,  <38.547161, 39.536961, 45.104401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938618, 39.603394, 45.798744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.813778, 39.975571, 45.721935>,  <38.738873, 40.198875, 45.675850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.813778, 39.975571, 45.721935>,  <38.938618, 39.603394, 45.798744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813778, 39.975571, 45.721935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188516, 0.137447, 0.972405,
		0.931157, 0.339691, 0.132506,
		-0.312104, 0.930440, -0.192022,
		38.720146, 40.254704, 45.664330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164787, 39.899662, 46.364914>,  <38.938618, 39.603394, 45.798744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164787, 39.899662, 46.364914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.897449, 40.153858, 46.210270>,  <38.737045, 40.306374, 46.117481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.897449, 40.153858, 46.210270>,  <39.164787, 39.899662, 46.364914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897449, 40.153858, 46.210270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367259, 0.170068, 0.914438,
		0.646863, 0.753150, 0.119723,
		-0.668348, 0.635486, -0.386612,
		38.696945, 40.344505, 46.094288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275841, 40.483143, 46.855350>,  <39.164787, 39.899662, 46.364914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275841, 40.483143, 46.855350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.936310, 40.579098, 46.666908>,  <38.732590, 40.636669, 46.553841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.936310, 40.579098, 46.666908>,  <39.275841, 40.483143, 46.855350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936310, 40.579098, 46.666908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418582, 0.239355, 0.876070,
		0.322916, 0.940832, -0.102762,
		-0.848831, 0.239883, -0.471107,
		38.681660, 40.651062, 46.525578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024426, 41.056213, 47.169037>,  <39.275841, 40.483143, 46.855350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024426, 41.056213, 47.169037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.708817, 40.881432, 46.996284>,  <38.519451, 40.776562, 46.892632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.708817, 40.881432, 46.996284>,  <39.024426, 41.056213, 47.169037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708817, 40.881432, 46.996284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501169, 0.051166, 0.863835,
		-0.355359, 0.898027, -0.259359,
		-0.789018, -0.436954, -0.431881,
		38.472111, 40.750347, 46.866718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533829, 41.508591, 47.236385>,  <39.024426, 41.056213, 47.169037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533829, 41.508591, 47.236385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.382908, 41.139099, 47.209969>,  <38.292355, 40.917404, 47.194118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.382908, 41.139099, 47.209969>,  <38.533829, 41.508591, 47.236385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382908, 41.139099, 47.209969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485629, 0.136632, 0.863421,
		-0.788545, 0.357846, -0.500143,
		-0.377307, -0.923731, -0.066040,
		38.269714, 40.861980, 47.190155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970871, 41.577549, 47.736668>,  <38.533829, 41.508591, 47.236385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970871, 41.577549, 47.736668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.015736, 41.189156, 47.652187>,  <38.042656, 40.956120, 47.601498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.015736, 41.189156, 47.652187>,  <37.970871, 41.577549, 47.736668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015736, 41.189156, 47.652187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153343, -0.226913, 0.961767,
		-0.981787, -0.075490, -0.174345,
		0.112165, -0.970985, -0.211205,
		38.049385, 40.897861, 47.588825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343288, 41.301037, 47.996124>,  <37.970871, 41.577549, 47.736668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343288, 41.301037, 47.996124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.605312, 40.998867, 48.002121>,  <37.762527, 40.817566, 48.005718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.605312, 40.998867, 48.002121>,  <37.343288, 41.301037, 47.996124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605312, 40.998867, 48.002121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195389, -0.150198, 0.969156,
		-0.729873, -0.637788, -0.245991,
		0.655064, -0.755425, 0.014991,
		37.801830, 40.772240, 48.006618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103657, 40.857433, 48.489166>,  <37.343288, 41.301037, 47.996124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103657, 40.857433, 48.489166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.477909, 40.730179, 48.427990>,  <37.702461, 40.653828, 48.391285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.477909, 40.730179, 48.427990>,  <37.103657, 40.857433, 48.489166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477909, 40.730179, 48.427990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073706, -0.247653, 0.966041,
		-0.345207, -0.915128, -0.208263,
		0.935628, -0.318134, -0.152942,
		37.758598, 40.634739, 48.382107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081364, 40.237183, 48.716675>,  <37.103657, 40.857433, 48.489166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081364, 40.237183, 48.716675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.471107, 40.326450, 48.728168>,  <37.704952, 40.380013, 48.735065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.471107, 40.326450, 48.728168>,  <37.081364, 40.237183, 48.716675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471107, 40.326450, 48.728168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023626, -0.228482, 0.973261,
		0.223770, -0.947624, -0.227895,
		0.974355, 0.223171, 0.028739,
		37.763412, 40.393402, 48.736790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430439, 39.711967, 49.010647>,  <37.081364, 40.237183, 48.716675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430439, 39.711967, 49.010647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.677540, 40.022594, 49.060169>,  <37.825798, 40.208969, 49.089882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.677540, 40.022594, 49.060169>,  <37.430439, 39.711967, 49.010647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677540, 40.022594, 49.060169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147118, -0.268790, 0.951897,
		0.772490, -0.569820, -0.280292,
		0.617750, 0.776568, 0.123807,
		37.862865, 40.255566, 49.097313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090652, 39.448277, 49.354820>,  <37.430439, 39.711967, 49.010647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090652, 39.448277, 49.354820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.057213, 39.840515, 49.425747>,  <38.037151, 40.075859, 49.468304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.057213, 39.840515, 49.425747>,  <38.090652, 39.448277, 49.354820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057213, 39.840515, 49.425747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143988, -0.164188, 0.975863,
		0.986042, 0.107109, -0.127469,
		-0.083595, 0.980597, 0.177318,
		38.032135, 40.134693, 49.478943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681255, 39.641987, 49.691761>,  <38.090652, 39.448277, 49.354820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681255, 39.641987, 49.691761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.440140, 39.945827, 49.789452>,  <38.295471, 40.128132, 49.848064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.440140, 39.945827, 49.789452>,  <38.681255, 39.641987, 49.691761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440140, 39.945827, 49.789452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099196, -0.232365, 0.967557,
		0.791710, 0.607459, 0.064718,
		-0.602789, 0.759605, 0.244223,
		38.259304, 40.173710, 49.862720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941616, 39.857075, 50.282581>,  <38.681255, 39.641987, 49.691761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941616, 39.857075, 50.282581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.589058, 40.046009, 50.285248>,  <38.377525, 40.159370, 50.286846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.589058, 40.046009, 50.285248>,  <38.941616, 39.857075, 50.282581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589058, 40.046009, 50.285248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002219, -0.018244, 0.999831,
		0.472382, 0.881228, 0.017128,
		-0.881391, 0.472340, 0.006663,
		38.324642, 40.187710, 50.287247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155022, 40.367947, 50.684746>,  <38.941616, 39.857075, 50.282581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155022, 40.367947, 50.684746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.755966, 40.341038, 50.679131>,  <38.516533, 40.324890, 50.675762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.755966, 40.341038, 50.679131>,  <39.155022, 40.367947, 50.684746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755966, 40.341038, 50.679131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003746, -0.150698, 0.988573,
		-0.068622, 0.986288, 0.150090,
		-0.997636, -0.067276, -0.014036,
		38.456676, 40.320854, 50.674919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785488, 40.887032, 51.139618>,  <39.155022, 40.367947, 50.684746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785488, 40.887032, 51.139618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.563656, 40.558174, 51.088203>,  <38.430557, 40.360859, 51.057354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.563656, 40.558174, 51.088203>,  <38.785488, 40.887032, 51.139618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563656, 40.558174, 51.088203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080733, -0.100577, 0.991648,
		-0.828207, 0.560322, -0.010596,
		-0.554576, -0.822146, -0.128535,
		38.397282, 40.311531, 51.049644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450207, 40.902710, 51.703579>,  <38.785488, 40.887032, 51.139618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450207, 40.902710, 51.703579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.375118, 40.533379, 51.569576>,  <38.330063, 40.311779, 51.489174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.375118, 40.533379, 51.569576>,  <38.450207, 40.902710, 51.703579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375118, 40.533379, 51.569576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022548, -0.336933, 0.941258,
		-0.981963, 0.184250, 0.042431,
		-0.187724, -0.923324, -0.335010,
		38.318802, 40.256382, 51.469074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961281, 40.624321, 52.106075>,  <38.450207, 40.902710, 51.703579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961281, 40.624321, 52.106075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.150738, 40.302322, 51.963169>,  <38.264412, 40.109123, 51.877426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.150738, 40.302322, 51.963169>,  <37.961281, 40.624321, 52.106075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150738, 40.302322, 51.963169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103465, -0.351990, 0.930268,
		-0.874617, -0.477582, -0.083429,
		0.473645, -0.804996, -0.357269,
		38.292831, 40.060825, 51.855988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770443, 40.124580, 52.605858>,  <37.961281, 40.624321, 52.106075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770443, 40.124580, 52.605858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.084194, 39.996414, 52.393414>,  <38.272446, 39.919514, 52.265949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.084194, 39.996414, 52.393414>,  <37.770443, 40.124580, 52.605858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084194, 39.996414, 52.393414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356031, -0.468574, 0.808505,
		-0.507927, -0.823267, -0.253460,
		0.784380, -0.320422, -0.531109,
		38.319508, 39.900288, 52.234081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991528, 40.050568, 52.590187>,  <37.770443, 40.124580, 52.605858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991528, 40.050568, 52.590187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.773323, 40.383045, 52.633144>,  <36.642399, 40.582531, 52.658916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.773323, 40.383045, 52.633144>,  <36.991528, 40.050568, 52.590187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773323, 40.383045, 52.633144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583409, 0.468601, -0.663361,
		-0.601703, -0.299221, -0.740554,
		-0.545516, 0.831192, 0.107391,
		36.609669, 40.632404, 52.665363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605804, 40.151367, 52.000660>,  <36.991528, 40.050568, 52.590187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605804, 40.151367, 52.000660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.659424, 40.505203, 52.179337>,  <36.691593, 40.717506, 52.286541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.659424, 40.505203, 52.179337>,  <36.605804, 40.151367, 52.000660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659424, 40.505203, 52.179337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654057, 0.259660, -0.710483,
		-0.744474, 0.387399, -0.543766,
		0.134046, 0.884590, 0.446691,
		36.699638, 40.770580, 52.313343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003632, 39.905434, 52.502541>,  <36.605804, 40.151367, 52.000660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003632, 39.905434, 52.502541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.624825, 39.794785, 52.437263>,  <35.397541, 39.728394, 52.398098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.624825, 39.794785, 52.437263>,  <36.003632, 39.905434, 52.502541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624825, 39.794785, 52.437263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187962, -0.065352, -0.980000,
		0.260427, -0.958753, 0.113885,
		-0.947021, -0.276625, -0.163190,
		35.340717, 39.711796, 52.388306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051113, 39.383968, 52.053047>,  <36.003632, 39.905434, 52.502541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051113, 39.383968, 52.053047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.665154, 39.477333, 52.004913>,  <35.433578, 39.533352, 51.976032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.665154, 39.477333, 52.004913>,  <36.051113, 39.383968, 52.053047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665154, 39.477333, 52.004913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077550, -0.184520, -0.979765,
		-0.250898, -0.954709, 0.159942,
		-0.964902, 0.233418, -0.120333,
		35.375683, 39.547356, 51.968815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741661, 38.859261, 51.661461>,  <36.051113, 39.383968, 52.053047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741661, 38.859261, 51.661461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.510361, 39.180836, 51.605877>,  <35.371582, 39.373783, 51.572525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.510361, 39.180836, 51.605877>,  <35.741661, 38.859261, 51.661461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510361, 39.180836, 51.605877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118806, -0.085536, -0.989226,
		-0.807166, -0.588526, -0.046052,
		-0.578246, 0.803941, -0.138962,
		35.336887, 39.422016, 51.564190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182423, 38.613419, 51.236378>,  <35.741661, 38.859261, 51.661461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182423, 38.613419, 51.236378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.201935, 39.009678, 51.185402>,  <35.213642, 39.247433, 51.154816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.201935, 39.009678, 51.185402>,  <35.182423, 38.613419, 51.236378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201935, 39.009678, 51.185402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110411, -0.121458, -0.986437,
		-0.992688, 0.062187, 0.103454,
		0.048778, 0.990647, -0.127436,
		35.216568, 39.306873, 51.147171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634125, 38.767189, 50.635780>,  <35.182423, 38.613419, 51.236378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634125, 38.767189, 50.635780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.867210, 39.090328, 50.671165>,  <35.007061, 39.284210, 50.692394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.867210, 39.090328, 50.671165>,  <34.634125, 38.767189, 50.635780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867210, 39.090328, 50.671165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097571, 0.038516, -0.994483,
		-0.806798, 0.588131, -0.056379,
		0.582715, 0.807848, 0.088459,
		35.042027, 39.332684, 50.697704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381783, 39.350014, 50.183949>,  <34.634125, 38.767189, 50.635780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381783, 39.350014, 50.183949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.769943, 39.423126, 50.247082>,  <35.002838, 39.466995, 50.284962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.769943, 39.423126, 50.247082>,  <34.381783, 39.350014, 50.183949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769943, 39.423126, 50.247082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125205, 0.178066, -0.976021,
		-0.206501, 0.966894, 0.149911,
		0.970402, 0.182780, 0.157831,
		35.061066, 39.477959, 50.294430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535721, 39.907520, 49.689293>,  <34.381783, 39.350014, 50.183949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535721, 39.907520, 49.689293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.882652, 39.724560, 49.767811>,  <35.090813, 39.614784, 49.814922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.882652, 39.724560, 49.767811>,  <34.535721, 39.907520, 49.689293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882652, 39.724560, 49.767811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278471, 0.119050, -0.953038,
		0.412548, 0.881258, 0.230627,
		0.867328, -0.457397, 0.196291,
		35.142849, 39.587341, 49.826698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042782, 40.204838, 49.331680>,  <34.535721, 39.907520, 49.689293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042782, 40.204838, 49.331680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.218235, 39.855110, 49.414791>,  <35.323505, 39.645275, 49.464657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.218235, 39.855110, 49.414791>,  <35.042782, 40.204838, 49.331680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218235, 39.855110, 49.414791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292871, -0.079513, -0.952840,
		0.849605, 0.478800, 0.221185,
		0.438633, -0.874316, 0.207781,
		35.349823, 39.592815, 49.477127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579037, 40.254475, 48.960228>,  <35.042782, 40.204838, 49.331680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579037, 40.254475, 48.960228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.571552, 39.860306, 49.027870>,  <35.567062, 39.623806, 49.068455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.571552, 39.860306, 49.027870>,  <35.579037, 40.254475, 48.960228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571552, 39.860306, 49.027870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356317, -0.164606, -0.919752,
		0.934178, 0.043046, 0.354202,
		-0.018712, -0.985420, 0.169109,
		35.565937, 39.564678, 49.078602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154728, 40.009022, 48.644688>,  <35.579037, 40.254475, 48.960228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154728, 40.009022, 48.644688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.950062, 39.667439, 48.682518>,  <35.827263, 39.462486, 48.705215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.950062, 39.667439, 48.682518>,  <36.154728, 40.009022, 48.644688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950062, 39.667439, 48.682518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260843, -0.259272, -0.929913,
		0.818631, -0.451138, 0.355411,
		-0.511668, -0.853963, 0.094571,
		35.796562, 39.411251, 48.710888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646397, 39.380161, 48.466331>,  <36.154728, 40.009022, 48.644688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646397, 39.380161, 48.466331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.261307, 39.276875, 48.434132>,  <36.030251, 39.214905, 48.414814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.261307, 39.276875, 48.434132>,  <36.646397, 39.380161, 48.466331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261307, 39.276875, 48.434132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170155, -0.346876, -0.922347,
		0.210241, -0.901666, 0.377884,
		-0.962729, -0.258214, -0.080495,
		35.972488, 39.199409, 48.409985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613705, 38.658260, 48.145653>,  <36.646397, 39.380161, 48.466331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613705, 38.658260, 48.145653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.259079, 38.821381, 48.058289>,  <36.046303, 38.919250, 48.005871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.259079, 38.821381, 48.058289>,  <36.613705, 38.658260, 48.145653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259079, 38.821381, 48.058289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122513, -0.248294, -0.960906,
		-0.446086, -0.878664, 0.170169,
		-0.886565, 0.407799, -0.218408,
		35.993111, 38.943722, 47.992767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372017, 38.377697, 47.514446>,  <36.613705, 38.658260, 48.145653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372017, 38.377697, 47.514446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.118900, 38.685539, 47.548569>,  <35.967030, 38.870247, 47.569042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.118900, 38.685539, 47.548569>,  <36.372017, 38.377697, 47.514446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118900, 38.685539, 47.548569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027063, 0.132089, -0.990868,
		-0.773849, -0.624705, -0.104413,
		-0.632792, 0.769608, 0.085311,
		35.929062, 38.916420, 47.574162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958424, 38.299831, 46.923107>,  <36.372017, 38.377697, 47.514446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958424, 38.299831, 46.923107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.926517, 38.685616, 47.023872>,  <35.907375, 38.917084, 47.084332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.926517, 38.685616, 47.023872>,  <35.958424, 38.299831, 46.923107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926517, 38.685616, 47.023872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012181, 0.253645, -0.967221,
		-0.996739, -0.074080, -0.031979,
		-0.079763, 0.964457, 0.251915,
		35.902588, 38.974953, 47.099445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502926, 38.539238, 46.383286>,  <35.958424, 38.299831, 46.923107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502926, 38.539238, 46.383286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.664509, 38.870266, 46.539204>,  <35.761459, 39.068882, 46.632755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.664509, 38.870266, 46.539204>,  <35.502926, 38.539238, 46.383286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664509, 38.870266, 46.539204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041790, 0.408966, -0.911592,
		-0.913821, 0.384536, 0.130622,
		0.403960, 0.827574, 0.389792,
		35.785698, 39.118538, 46.656139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184586, 39.066769, 45.939564>,  <35.502926, 38.539238, 46.383286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184586, 39.066769, 45.939564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.517605, 39.216835, 46.102589>,  <35.717419, 39.306873, 46.200405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.517605, 39.216835, 46.102589>,  <35.184586, 39.066769, 45.939564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517605, 39.216835, 46.102589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221652, 0.448669, -0.865775,
		-0.507668, 0.811141, 0.290385,
		0.832552, 0.375162, 0.407566,
		35.767372, 39.329384, 46.224857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226139, 39.878574, 45.826176>,  <35.184586, 39.066769, 45.939564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226139, 39.878574, 45.826176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.589329, 39.715233, 45.863762>,  <35.807243, 39.617226, 45.886314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.589329, 39.715233, 45.863762>,  <35.226139, 39.878574, 45.826176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589329, 39.715233, 45.863762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273029, 0.406433, -0.871933,
		0.317870, 0.817347, 0.480524,
		0.907972, -0.408358, 0.093967,
		35.861721, 39.592724, 45.891953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618118, 40.375736, 45.546551>,  <35.226139, 39.878574, 45.826176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618118, 40.375736, 45.546551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.827599, 40.034985, 45.548771>,  <35.953285, 39.830532, 45.550102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.827599, 40.034985, 45.548771>,  <35.618118, 40.375736, 45.546551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827599, 40.034985, 45.548771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181983, 0.105503, -0.977625,
		0.832237, 0.512995, 0.210281,
		0.523702, -0.851883, 0.005553,
		35.984711, 39.779419, 45.550438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071472, 40.572392, 44.959003>,  <35.618118, 40.375736, 45.546551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071472, 40.572392, 44.959003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.122295, 40.182823, 45.034184>,  <36.152790, 39.949081, 45.079292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.122295, 40.182823, 45.034184>,  <36.071472, 40.572392, 44.959003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122295, 40.182823, 45.034184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306812, -0.141607, -0.941177,
		0.943251, 0.177254, 0.280819,
		0.127061, -0.973924, 0.187955,
		36.160416, 39.890644, 45.090569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721447, 40.372803, 44.693707>,  <36.071472, 40.572392, 44.959003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721447, 40.372803, 44.693707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.532570, 40.020916, 44.716103>,  <36.419243, 39.809784, 44.729538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.532570, 40.020916, 44.716103>,  <36.721447, 40.372803, 44.693707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532570, 40.020916, 44.716103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229464, -0.183992, -0.955768,
		0.851107, -0.438457, 0.288743,
		-0.472190, -0.879717, 0.055986,
		36.390911, 39.757000, 44.732899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.675274, 40.956863, 41.392475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.834003, 41.039425, 41.750229>,  <44.929241, 41.088963, 41.964882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.834003, 41.039425, 41.750229>,  <44.675274, 40.956863, 41.392475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.834003, 41.039425, 41.750229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269920, -0.957547, 0.101226,
		0.877311, 0.201244, -0.435690,
		0.396823, 0.206408, 0.894387,
		44.953049, 41.101349, 42.018543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.428463, 40.926289, 41.389210>,  <44.675274, 40.956863, 41.392475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.428463, 40.926289, 41.389210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.314011, 40.873692, 41.768860>,  <45.245338, 40.842133, 41.996651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.314011, 40.873692, 41.768860>,  <45.428463, 40.926289, 41.389210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.314011, 40.873692, 41.768860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467788, -0.883645, 0.018601,
		0.836245, 0.449312, 0.314346,
		-0.286128, -0.131492, 0.949126,
		45.228172, 40.834244, 42.053596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.968353, 40.598087, 41.670773>,  <45.428463, 40.926289, 41.389210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.968353, 40.598087, 41.670773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.648052, 40.517899, 41.896553>,  <45.455872, 40.469784, 42.032021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.648052, 40.517899, 41.896553>,  <45.968353, 40.598087, 41.670773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.648052, 40.517899, 41.896553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273281, -0.960813, 0.046438,
		0.533021, 0.191438, 0.824161,
		-0.800754, -0.200475, 0.564449,
		45.407825, 40.457756, 42.065887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.227192, 40.132893, 42.208836>,  <45.968353, 40.598087, 41.670773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.227192, 40.132893, 42.208836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.833904, 40.064083, 42.184532>,  <45.597931, 40.022797, 42.169949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.833904, 40.064083, 42.184532>,  <46.227192, 40.132893, 42.208836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.833904, 40.064083, 42.184532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181500, -0.956068, -0.230199,
		-0.018494, -0.237364, 0.971245,
		-0.983217, -0.172024, -0.060763,
		45.538940, 40.012474, 42.166302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.141247, 39.486824, 42.569336>,  <46.227192, 40.132893, 42.208836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.141247, 39.486824, 42.569336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.817627, 39.523476, 42.337112>,  <45.623455, 39.545467, 42.197781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.817627, 39.523476, 42.337112>,  <46.141247, 39.486824, 42.569336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.817627, 39.523476, 42.337112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108126, -0.947708, -0.300265,
		-0.577711, -0.305701, 0.756833,
		-0.809048, 0.091633, -0.580556,
		45.574913, 39.550964, 42.162945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.615681, 38.904560, 42.720711>,  <46.141247, 39.486824, 42.569336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.615681, 38.904560, 42.720711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.511879, 39.007786, 42.348461>,  <45.449596, 39.069721, 42.125111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.511879, 39.007786, 42.348461>,  <45.615681, 38.904560, 42.720711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.511879, 39.007786, 42.348461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135599, -0.963826, -0.229463,
		-0.956174, 0.066643, 0.285115,
		-0.259509, 0.258068, -0.930621,
		45.434029, 39.085205, 42.069275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.134827, 38.346272, 42.504402>,  <45.615681, 38.904560, 42.720711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.134827, 38.346272, 42.504402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.197834, 38.538681, 42.159428>,  <45.235638, 38.654129, 41.952442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.197834, 38.538681, 42.159428>,  <45.134827, 38.346272, 42.504402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.197834, 38.538681, 42.159428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035086, -0.875516, -0.481913,
		-0.986893, 0.045650, -0.154787,
		0.157518, 0.481027, -0.862439,
		45.245090, 38.682991, 41.900696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.686405, 38.074089, 42.113331>,  <45.134827, 38.346272, 42.504402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.686405, 38.074089, 42.113331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.951595, 38.232052, 41.858925>,  <45.110710, 38.326828, 41.706284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.951595, 38.232052, 41.858925>,  <44.686405, 38.074089, 42.113331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.951595, 38.232052, 41.858925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049419, -0.824618, -0.563527,
		-0.747007, 0.405036, -0.527187,
		0.662977, 0.394905, -0.636012,
		45.150490, 38.350525, 41.668121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.357632, 38.064575, 41.517994>,  <44.686405, 38.074089, 42.113331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.357632, 38.064575, 41.517994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.745960, 38.089432, 41.425343>,  <44.978958, 38.104343, 41.369751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.745960, 38.089432, 41.425343>,  <44.357632, 38.064575, 41.517994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.745960, 38.089432, 41.425343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074002, -0.841097, -0.535798,
		-0.228120, 0.537303, -0.811953,
		0.970817, 0.062140, -0.231632,
		45.037205, 38.108074, 41.355854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.501484, 38.169518, 40.764721>,  <44.357632, 38.064575, 41.517994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.501484, 38.169518, 40.764721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.822502, 37.985085, 40.916153>,  <45.015114, 37.874424, 41.007011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.822502, 37.985085, 40.916153>,  <44.501484, 38.169518, 40.764721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.822502, 37.985085, 40.916153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122313, -0.748257, -0.652036,
		0.583920, 0.476981, -0.656906,
		0.802544, -0.461085, 0.378581,
		45.063267, 37.846760, 41.029728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.809513, 37.928978, 40.132248>,  <44.501484, 38.169518, 40.764721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.809513, 37.928978, 40.132248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.967018, 37.710674, 40.428116>,  <45.061520, 37.579693, 40.605637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.967018, 37.710674, 40.428116>,  <44.809513, 37.928978, 40.132248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.967018, 37.710674, 40.428116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017437, -0.800093, -0.599623,
		0.919048, 0.249004, -0.305527,
		0.393759, -0.545755, 0.739666,
		45.085144, 37.546947, 40.650017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.192135, 37.495419, 39.763729>,  <44.809513, 37.928978, 40.132248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.192135, 37.495419, 39.763729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.212376, 37.311573, 40.118401>,  <45.224518, 37.201263, 40.331203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.212376, 37.311573, 40.118401>,  <45.192135, 37.495419, 39.763729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.212376, 37.311573, 40.118401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061436, -0.884698, -0.462099,
		0.996828, 0.077856, -0.016529,
		0.050600, -0.459617, 0.886674,
		45.227554, 37.173687, 40.384403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.843395, 37.100506, 39.887119>,  <45.192135, 37.495419, 39.763729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.843395, 37.100506, 39.887119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.550713, 36.937084, 40.105362>,  <45.375103, 36.839031, 40.236309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.550713, 36.937084, 40.105362>,  <45.843395, 37.100506, 39.887119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.550713, 36.937084, 40.105362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091778, -0.852226, -0.515061,
		0.675409, -0.326800, 0.661078,
		-0.731710, -0.408549, 0.545608,
		45.331200, 36.814518, 40.269043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.052933, 36.361053, 40.107971>,  <45.843395, 37.100506, 39.887119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.052933, 36.361053, 40.107971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.655861, 36.350601, 40.155136>,  <45.417618, 36.344330, 40.183434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.655861, 36.350601, 40.155136>,  <46.052933, 36.361053, 40.107971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.655861, 36.350601, 40.155136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027212, -0.902797, -0.429205,
		0.117664, -0.429272, 0.895478,
		-0.992681, -0.026134, 0.117908,
		45.358055, 36.342762, 40.190510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.945259, 35.715649, 40.233448>,  <46.052933, 36.361053, 40.107971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.945259, 35.715649, 40.233448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.578251, 35.835865, 40.129269>,  <45.358047, 35.907993, 40.066761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.578251, 35.835865, 40.129269>,  <45.945259, 35.715649, 40.233448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.578251, 35.835865, 40.129269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172979, -0.891300, -0.419121,
		-0.358095, -0.339501, 0.869774,
		-0.917522, 0.300537, -0.260444,
		45.302994, 35.926025, 40.051136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.441914, 35.148232, 40.515739>,  <45.945259, 35.715649, 40.233448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.441914, 35.148232, 40.515739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.245403, 35.364506, 40.242592>,  <45.127499, 35.494270, 40.078705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.245403, 35.364506, 40.242592>,  <45.441914, 35.148232, 40.515739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.245403, 35.364506, 40.242592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277936, -0.840327, -0.465405,
		-0.825468, -0.038850, 0.563110,
		-0.491278, 0.540686, -0.682865,
		45.098022, 35.526711, 40.037731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.782612, 34.865803, 40.446522>,  <45.441914, 35.148232, 40.515739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.782612, 34.865803, 40.446522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.861389, 35.051991, 40.101372>,  <44.908653, 35.163704, 39.894283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.861389, 35.051991, 40.101372>,  <44.782612, 34.865803, 40.446522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.861389, 35.051991, 40.101372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306513, -0.806761, -0.505159,
		-0.931270, 0.363969, -0.016212,
		0.196941, 0.465470, -0.862874,
		44.920471, 35.191631, 39.842510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.281837, 34.535690, 40.105896>,  <44.782612, 34.865803, 40.446522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.281837, 34.535690, 40.105896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.542030, 34.694679, 39.847012>,  <44.698147, 34.790073, 39.691681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.542030, 34.694679, 39.847012>,  <44.281837, 34.535690, 40.105896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.542030, 34.694679, 39.847012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153366, -0.765842, -0.624472,
		-0.743876, 0.505468, -0.437208,
		0.650483, 0.397477, -0.647213,
		44.737175, 34.813923, 39.652847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.917248, 34.397976, 39.588478>,  <44.281837, 34.535690, 40.105896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.917248, 34.397976, 39.588478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.273415, 34.501968, 39.439041>,  <44.487114, 34.564365, 39.349380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.273415, 34.501968, 39.439041>,  <43.917248, 34.397976, 39.588478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.273415, 34.501968, 39.439041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142456, -0.620386, -0.771251,
		-0.432284, 0.739954, -0.515364,
		0.890414, 0.259982, -0.373594,
		44.540539, 34.579964, 39.326962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.801502, 34.472984, 38.858360>,  <43.917248, 34.397976, 39.588478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.801502, 34.472984, 38.858360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.182186, 34.371925, 38.928127>,  <44.410595, 34.311291, 38.969986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.182186, 34.371925, 38.928127>,  <43.801502, 34.472984, 38.858360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.182186, 34.371925, 38.928127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053608, -0.696158, -0.715884,
		0.302284, 0.671964, -0.676084,
		0.951709, -0.252644, 0.174415,
		44.467697, 34.296131, 38.980453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.093632, 34.357994, 38.200001>,  <43.801502, 34.472984, 38.858360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.093632, 34.357994, 38.200001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.366753, 34.185081, 38.435600>,  <44.530624, 34.081333, 38.576962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.366753, 34.185081, 38.435600>,  <44.093632, 34.357994, 38.200001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.366753, 34.185081, 38.435600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186887, -0.676015, -0.712795,
		0.706298, 0.596772, -0.380796,
		0.682800, -0.432280, 0.588997,
		44.571594, 34.055397, 38.612301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.704048, 34.322388, 37.777618>,  <44.093632, 34.357994, 38.200001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.704048, 34.322388, 37.777618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.701626, 34.062706, 38.081852>,  <44.700172, 33.906895, 38.264393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.701626, 34.062706, 38.081852>,  <44.704048, 34.322388, 37.777618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.701626, 34.062706, 38.081852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129213, -0.754731, -0.643183,
		0.991598, 0.094384, 0.088455,
		-0.006054, -0.649209, 0.760586,
		44.699810, 33.867943, 38.310028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.136311, 34.077236, 37.253551>,  <44.704048, 34.322388, 37.777618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.136311, 34.077236, 37.253551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.204910, 34.233685, 36.891865>,  <45.246071, 34.327553, 36.674850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.204910, 34.233685, 36.891865>,  <45.136311, 34.077236, 37.253551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.204910, 34.233685, 36.891865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359623, 0.829630, 0.427065,
		0.917202, -0.398419, 0.001623,
		0.171497, 0.391121, -0.904220,
		45.256359, 34.351021, 36.620598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.905315, 34.269688, 37.082191>,  <45.136311, 34.077236, 37.253551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.905315, 34.269688, 37.082191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.685604, 34.494656, 36.834972>,  <45.553780, 34.629635, 36.686642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.685604, 34.494656, 36.834972>,  <45.905315, 34.269688, 37.082191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.685604, 34.494656, 36.834972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532856, 0.805464, 0.259408,
		0.643710, -0.186843, -0.742110,
		-0.549274, 0.562421, -0.618046,
		45.520821, 34.663383, 36.649559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.327454, 34.687706, 36.709225>,  <45.905315, 34.269688, 37.082191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.327454, 34.687706, 36.709225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.008976, 34.914764, 36.625465>,  <45.817890, 35.050999, 36.575211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.008976, 34.914764, 36.625465>,  <46.327454, 34.687706, 36.709225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.008976, 34.914764, 36.625465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554586, 0.823060, 0.122497,
		0.241883, -0.018598, -0.970127,
		-0.796195, 0.567649, -0.209398,
		45.770119, 35.085060, 36.562645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.501007, 35.288353, 36.336876>,  <46.327454, 34.687706, 36.709225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.501007, 35.288353, 36.336876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.147503, 35.418804, 36.471100>,  <45.935398, 35.497074, 36.551636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.147503, 35.418804, 36.471100>,  <46.501007, 35.288353, 36.336876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.147503, 35.418804, 36.471100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390128, 0.909504, 0.143535,
		-0.258382, 0.257763, -0.931020,
		-0.883764, 0.326130, 0.335560,
		45.882374, 35.516644, 36.571766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.402687, 35.998680, 36.009907>,  <46.501007, 35.288353, 36.336876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.402687, 35.998680, 36.009907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.173985, 35.955257, 36.335190>,  <46.036762, 35.929203, 36.530361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.173985, 35.955257, 36.335190>,  <46.402687, 35.998680, 36.009907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.173985, 35.955257, 36.335190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318473, 0.884112, 0.341938,
		-0.756091, 0.454490, -0.470919,
		-0.571753, -0.108561, 0.813212,
		46.002460, 35.922688, 36.579155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.138931, 36.678799, 36.136959>,  <46.402687, 35.998680, 36.009907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.138931, 36.678799, 36.136959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.089500, 36.483364, 36.482445>,  <46.059841, 36.366104, 36.689735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.089500, 36.483364, 36.482445>,  <46.138931, 36.678799, 36.136959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.089500, 36.483364, 36.482445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315893, 0.805743, 0.500989,
		-0.940713, 0.334753, 0.054770,
		-0.123577, -0.488588, 0.863719,
		46.052429, 36.336788, 36.741562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.758736, 37.151749, 36.482441>,  <46.138931, 36.678799, 36.136959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.758736, 37.151749, 36.482441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.921200, 36.885410, 36.732780>,  <46.018677, 36.725609, 36.882984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.921200, 36.885410, 36.732780>,  <45.758736, 37.151749, 36.482441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.921200, 36.885410, 36.732780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296866, 0.743877, 0.598763,
		-0.864238, -0.057400, 0.499799,
		0.406158, -0.665847, 0.625846,
		46.043049, 36.685658, 36.920536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.527424, 37.338604, 37.072544>,  <45.758736, 37.151749, 36.482441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.527424, 37.338604, 37.072544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.836426, 37.107964, 37.178955>,  <46.021828, 36.969582, 37.242802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.836426, 37.107964, 37.178955>,  <45.527424, 37.338604, 37.072544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.836426, 37.107964, 37.178955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246282, 0.658196, 0.711423,
		-0.585304, -0.484060, 0.650465,
		0.772505, -0.576597, 0.266030,
		46.068176, 36.934986, 37.258762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.512817, 37.245171, 37.898598>,  <45.527424, 37.338604, 37.072544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.512817, 37.245171, 37.898598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.890038, 37.173748, 37.786335>,  <46.116371, 37.130894, 37.718979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.890038, 37.173748, 37.786335>,  <45.512817, 37.245171, 37.898598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.890038, 37.173748, 37.786335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332202, 0.548935, 0.767015,
		0.017103, -0.816570, 0.576993,
		0.943053, -0.178560, -0.280655,
		46.172955, 37.120178, 37.702137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.877975, 37.082336, 38.496632>,  <45.512817, 37.245171, 37.898598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.877975, 37.082336, 38.496632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.167797, 37.134602, 38.225945>,  <46.341690, 37.165962, 38.063530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.167797, 37.134602, 38.225945>,  <45.877975, 37.082336, 38.496632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.167797, 37.134602, 38.225945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564071, 0.451784, 0.691170,
		0.396043, -0.882507, 0.253637,
		0.724551, 0.130663, -0.676722,
		46.385162, 37.173801, 38.022926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.589104, 36.895180, 38.872849>,  <45.877975, 37.082336, 38.496632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.589104, 36.895180, 38.872849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.663368, 37.127827, 38.556053>,  <46.707928, 37.267414, 38.365974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.663368, 37.127827, 38.556053>,  <46.589104, 36.895180, 38.872849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.663368, 37.127827, 38.556053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388053, 0.697089, 0.602894,
		0.902743, -0.419268, -0.096278,
		0.185660, 0.581619, -0.791991,
		46.719067, 37.302311, 38.318455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.214722, 37.253139, 39.064301>,  <46.589104, 36.895180, 38.872849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.214722, 37.253139, 39.064301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.042057, 37.475365, 38.780041>,  <46.938457, 37.608700, 38.609486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.042057, 37.475365, 38.780041>,  <47.214722, 37.253139, 39.064301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.042057, 37.475365, 38.780041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316812, 0.831013, 0.457216,
		0.844572, -0.027782, -0.534721,
		-0.431658, 0.555558, -0.710652,
		46.912560, 37.642033, 38.566845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.706100, 37.749645, 38.845531>,  <47.214722, 37.253139, 39.064301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.706100, 37.749645, 38.845531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.336716, 37.883205, 38.769920>,  <47.115086, 37.963341, 38.724552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.336716, 37.883205, 38.769920>,  <47.706100, 37.749645, 38.845531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.336716, 37.883205, 38.769920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194279, 0.831733, 0.520072,
		0.330873, 0.443542, -0.832943,
		-0.923460, 0.333901, -0.189027,
		47.059677, 37.983376, 38.713211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.781879, 38.411156, 38.686264>,  <47.706100, 37.749645, 38.845531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.781879, 38.411156, 38.686264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.388863, 38.408085, 38.760628>,  <47.153053, 38.406242, 38.805244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.388863, 38.408085, 38.760628>,  <47.781879, 38.411156, 38.686264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.388863, 38.408085, 38.760628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100810, 0.817828, 0.566565,
		-0.156388, 0.575412, -0.802772,
		-0.982538, -0.007677, 0.185905,
		47.094101, 38.405781, 38.816399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.503872, 39.173019, 38.516396>,  <47.781879, 38.411156, 38.686264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.503872, 39.173019, 38.516396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.215813, 39.010361, 38.741264>,  <47.042976, 38.912766, 38.876186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.215813, 39.010361, 38.741264>,  <47.503872, 39.173019, 38.516396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.215813, 39.010361, 38.741264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018651, 0.798609, 0.601561,
		-0.693573, 0.443696, -0.567530,
		-0.720145, -0.406642, 0.562169,
		46.999771, 38.888367, 38.909916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.889690, 39.615234, 38.450066>,  <47.503872, 39.173019, 38.516396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.889690, 39.615234, 38.450066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.891006, 39.424007, 38.801392>,  <46.891796, 39.309273, 39.012188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.891006, 39.424007, 38.801392>,  <46.889690, 39.615234, 38.450066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.891006, 39.424007, 38.801392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168518, 0.865497, 0.471717,
		-0.985693, -0.149565, -0.077714,
		0.003291, -0.478064, 0.878319,
		46.891994, 39.280586, 39.064888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.434372, 40.128983, 38.780624>,  <46.889690, 39.615234, 38.450066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.434372, 40.128983, 38.780624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.592411, 39.896172, 39.064919>,  <46.687233, 39.756485, 39.235493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.592411, 39.896172, 39.064919>,  <46.434372, 40.128983, 38.780624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.592411, 39.896172, 39.064919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139816, 0.726565, 0.672722,
		-0.907937, -0.365163, 0.205687,
		0.395098, -0.582031, 0.710731,
		46.710941, 39.721561, 39.278137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.106647, 40.317684, 39.418537>,  <46.434372, 40.128983, 38.780624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.106647, 40.317684, 39.418537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.427715, 40.130379, 39.566292>,  <46.620358, 40.017998, 39.654945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.427715, 40.130379, 39.566292>,  <46.106647, 40.317684, 39.418537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.427715, 40.130379, 39.566292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052545, 0.672456, 0.738270,
		-0.594100, -0.573180, 0.564367,
		0.802674, -0.468261, 0.369388,
		46.668518, 39.989899, 39.677109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.974701, 40.281582, 40.131531>,  <46.106647, 40.317684, 39.418537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.974701, 40.281582, 40.131531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.369080, 40.240952, 40.078484>,  <46.605709, 40.216572, 40.046658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.369080, 40.240952, 40.078484>,  <45.974701, 40.281582, 40.131531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.369080, 40.240952, 40.078484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165778, 0.692551, 0.702062,
		0.020530, -0.714182, 0.699659,
		0.985949, -0.101575, -0.132614,
		46.664864, 40.210480, 40.038700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.133011, 40.093868, 40.701546>,  <45.974701, 40.281582, 40.131531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.133011, 40.093868, 40.701546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.462349, 40.261616, 40.548580>,  <46.659950, 40.362263, 40.456802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.462349, 40.261616, 40.548580>,  <46.133011, 40.093868, 40.701546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.462349, 40.261616, 40.548580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040703, 0.715696, 0.697225,
		0.566082, -0.558491, 0.606333,
		0.823344, 0.419366, -0.382410,
		46.709351, 40.387424, 40.433857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.466270, 40.273430, 41.469700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254902, 39.987030, 41.652180>,  <41.128082, 39.815189, 41.761669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254902, 39.987030, 41.652180>,  <41.466270, 40.273430, 41.469700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.254902, 39.987030, 41.652180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165212, -0.613799, -0.771982,
		0.832753, -0.332561, 0.442635,
		-0.528420, -0.715999, 0.456199,
		41.096375, 39.772232, 41.789040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.947460, 39.703770, 41.581039>,  <41.466270, 40.273430, 41.469700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.947460, 39.703770, 41.581039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.572983, 39.563190, 41.582886>,  <41.348297, 39.478844, 41.583992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.572983, 39.563190, 41.582886>,  <41.947460, 39.703770, 41.581039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.572983, 39.563190, 41.582886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216002, -0.585651, -0.781253,
		0.277276, -0.730408, 0.624197,
		-0.936195, -0.351450, 0.004617,
		41.292126, 39.457756, 41.584270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.067837, 39.047523, 41.443798>,  <41.947460, 39.703770, 41.581039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.067837, 39.047523, 41.443798> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.682983, 39.111240, 41.355320>,  <41.452072, 39.149471, 41.302235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.682983, 39.111240, 41.355320>,  <42.067837, 39.047523, 41.443798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.682983, 39.111240, 41.355320> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081875, -0.605117, -0.791916,
		-0.259995, -0.780038, 0.569160,
		-0.962133, 0.159294, -0.221192,
		41.394344, 39.159027, 41.288963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.836170, 38.431709, 41.206604>,  <42.067837, 39.047523, 41.443798>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.836170, 38.431709, 41.206604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.576988, 38.703896, 41.069714>,  <41.421478, 38.867207, 40.987579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.576988, 38.703896, 41.069714>,  <41.836170, 38.431709, 41.206604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.576988, 38.703896, 41.069714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049739, -0.486149, -0.872459,
		-0.760057, -0.548288, 0.348847,
		-0.647950, 0.680470, -0.342229,
		41.382603, 38.908035, 40.967045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378063, 38.054085, 40.893566>,  <41.836170, 38.431709, 41.206604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.378063, 38.054085, 40.893566> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291615, 38.416153, 40.747169>,  <41.239746, 38.633396, 40.659332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291615, 38.416153, 40.747169>,  <41.378063, 38.054085, 40.893566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.291615, 38.416153, 40.747169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317535, -0.419635, -0.850340,
		-0.923290, -0.067560, 0.378116,
		-0.216120, 0.905175, -0.365992,
		41.226780, 38.687706, 40.637371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789337, 37.913597, 40.492188>,  <41.378063, 38.054085, 40.893566>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789337, 37.913597, 40.492188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948032, 38.255840, 40.359196>,  <41.043251, 38.461185, 40.279400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948032, 38.255840, 40.359196>,  <40.789337, 37.913597, 40.492188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.948032, 38.255840, 40.359196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024623, -0.352150, -0.935620,
		-0.917602, 0.379382, -0.118643,
		0.396738, 0.855605, -0.332475,
		41.067055, 38.512520, 40.259453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282440, 38.051544, 39.998634>,  <40.789337, 37.913597, 40.492188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282440, 38.051544, 39.998634> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.639576, 38.218372, 39.930649>,  <40.853859, 38.318470, 39.889858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.639576, 38.218372, 39.930649>,  <40.282440, 38.051544, 39.998634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639576, 38.218372, 39.930649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076709, -0.231034, -0.969917,
		-0.443788, 0.879021, -0.174284,
		0.892843, 0.417068, -0.169959,
		40.907429, 38.343494, 39.879662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266239, 38.578026, 39.446972>,  <40.282440, 38.051544, 39.998634>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.266239, 38.578026, 39.446972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653862, 38.481453, 39.467495>,  <40.886436, 38.423508, 39.479809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653862, 38.481453, 39.467495>,  <40.266239, 38.578026, 39.446972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653862, 38.481453, 39.467495> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021905, -0.122935, -0.992173,
		0.245854, 0.962599, -0.113842,
		0.969060, -0.241436, 0.051310,
		40.944580, 38.409023, 39.482887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409546, 38.621639, 38.711327>,  <40.266239, 38.578026, 39.446972>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.409546, 38.621639, 38.711327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716648, 38.419086, 38.868362>,  <40.900909, 38.297554, 38.962582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716648, 38.419086, 38.868362>,  <40.409546, 38.621639, 38.711327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716648, 38.419086, 38.868362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237599, -0.344026, -0.908401,
		0.595056, 0.790712, -0.143814,
		0.767760, -0.506380, 0.392587,
		40.946976, 38.267174, 38.986137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849842, 38.680134, 38.190121>,  <40.409546, 38.621639, 38.711327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.849842, 38.680134, 38.190121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019707, 38.385399, 38.400543>,  <41.121624, 38.208557, 38.526794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019707, 38.385399, 38.400543>,  <40.849842, 38.680134, 38.190121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019707, 38.385399, 38.400543> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033518, -0.593445, -0.804176,
		0.904731, 0.323871, -0.276711,
		0.424662, -0.736838, 0.526053,
		41.147106, 38.164349, 38.558361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315548, 38.407619, 37.706833>,  <40.849842, 38.680134, 38.190121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315548, 38.407619, 37.706833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219418, 38.147820, 37.995388>,  <41.161739, 37.991940, 38.168522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219418, 38.147820, 37.995388>,  <41.315548, 38.407619, 37.706833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.219418, 38.147820, 37.995388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229765, -0.683983, -0.692370,
		0.943108, -0.332140, 0.015144,
		-0.240322, -0.649500, 0.721384,
		41.147320, 37.952969, 38.211803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.774662, 37.832127, 37.672211>,  <41.315548, 38.407619, 37.706833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.774662, 37.832127, 37.672211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.460247, 37.696327, 37.878857>,  <41.271599, 37.614849, 38.002846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.460247, 37.696327, 37.878857>,  <41.774662, 37.832127, 37.672211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.460247, 37.696327, 37.878857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216792, -0.631243, -0.744670,
		0.578924, -0.697333, 0.422578,
		-0.786033, -0.339496, 0.516618,
		41.224438, 37.594479, 38.033844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.441326, 37.124489, 37.496689>,  <41.774662, 37.832127, 37.672211>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.441326, 37.124489, 37.496689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.107559, 37.290691, 37.351860>,  <40.907299, 37.390411, 37.264961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.107559, 37.290691, 37.351860>,  <41.441326, 37.124489, 37.496689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.107559, 37.290691, 37.351860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539291, -0.751007, 0.380990,
		-0.113615, 0.513169, 0.850734,
		-0.834420, 0.415507, -0.362073,
		40.857235, 37.415344, 37.243237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990376, 36.645855, 37.954262>,  <41.441326, 37.124489, 37.496689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.990376, 36.645855, 37.954262> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700672, 36.824631, 37.744236>,  <40.526852, 36.931896, 37.618221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700672, 36.824631, 37.744236>,  <40.990376, 36.645855, 37.954262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700672, 36.824631, 37.744236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205981, -0.586477, -0.783337,
		-0.658045, -0.675491, 0.332699,
		-0.724257, 0.446941, -0.525067,
		40.483395, 36.958714, 37.586716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.700184, 36.427711, 37.785614>,  <40.990376, 36.645855, 37.954262>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.700184, 36.427711, 37.785614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.827034, 36.149563, 37.527653>,  <41.903145, 35.982674, 37.372875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.827034, 36.149563, 37.527653>,  <41.700184, 36.427711, 37.785614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.827034, 36.149563, 37.527653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282438, -0.718392, 0.635722,
		-0.905353, -0.019455, -0.424215,
		0.317120, -0.695367, -0.644903,
		41.922169, 35.940952, 37.334183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.144211, 35.964386, 37.502968>,  <41.700184, 36.427711, 37.785614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.144211, 35.964386, 37.502968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.501785, 35.785866, 37.519424>,  <41.716331, 35.678753, 37.529301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.501785, 35.785866, 37.519424>,  <41.144211, 35.964386, 37.502968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.501785, 35.785866, 37.519424> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315955, -0.562409, 0.764113,
		-0.317886, -0.696067, -0.643769,
		0.893936, -0.446303, 0.041144,
		41.769966, 35.651974, 37.531769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963013, 35.216473, 37.589943>,  <41.144211, 35.964386, 37.502968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.963013, 35.216473, 37.589943> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339878, 35.266090, 37.714489>,  <41.565998, 35.295860, 37.789219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339878, 35.266090, 37.714489>,  <40.963013, 35.216473, 37.589943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.339878, 35.266090, 37.714489> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213218, -0.494956, 0.842352,
		0.258602, -0.860019, -0.439878,
		0.942159, 0.124044, 0.311368,
		41.622524, 35.303303, 37.807899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249828, 34.499378, 37.754589>,  <40.963013, 35.216473, 37.589943>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.249828, 34.499378, 37.754589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.462395, 34.782810, 37.940281>,  <41.589935, 34.952869, 38.051697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.462395, 34.782810, 37.940281>,  <41.249828, 34.499378, 37.754589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.462395, 34.782810, 37.940281> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156908, -0.456193, 0.875938,
		0.832451, -0.538330, -0.131247,
		0.531418, 0.708582, 0.464227,
		41.621819, 34.995384, 38.079548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493851, 34.126820, 38.262379>,  <41.249828, 34.499378, 37.754589>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.493851, 34.126820, 38.262379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.595066, 34.484276, 38.410637>,  <41.655796, 34.698750, 38.499592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.595066, 34.484276, 38.410637>,  <41.493851, 34.126820, 38.262379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.595066, 34.484276, 38.410637> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159191, -0.339430, 0.927063,
		0.954270, -0.293582, 0.056373,
		0.253034, 0.893643, 0.370643,
		41.670975, 34.752369, 38.521832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.025047, 34.024448, 38.768997>,  <41.493851, 34.126820, 38.262379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.025047, 34.024448, 38.768997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834896, 34.364368, 38.860077>,  <41.720806, 34.568321, 38.914722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834896, 34.364368, 38.860077>,  <42.025047, 34.024448, 38.768997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.834896, 34.364368, 38.860077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139536, -0.328364, 0.934188,
		0.868644, 0.412323, 0.274677,
		-0.475381, 0.849804, 0.227697,
		41.692280, 34.619308, 38.928387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.398804, 34.155338, 39.395802>,  <42.025047, 34.024448, 38.768997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.398804, 34.155338, 39.395802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.057655, 34.364101, 39.389919>,  <41.852966, 34.489361, 39.386391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.057655, 34.364101, 39.389919>,  <42.398804, 34.155338, 39.395802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.057655, 34.364101, 39.389919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136268, -0.195322, 0.971226,
		0.504022, 0.830336, 0.237705,
		-0.852873, 0.521911, -0.014702,
		41.801792, 34.520676, 39.385509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.372791, 34.483246, 40.050438>,  <42.398804, 34.155338, 39.395802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.372791, 34.483246, 40.050438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.995136, 34.488392, 39.918713>,  <41.768543, 34.491478, 39.839680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.995136, 34.488392, 39.918713>,  <42.372791, 34.483246, 40.050438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.995136, 34.488392, 39.918713> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325721, -0.188502, 0.926484,
		-0.050158, 0.981988, 0.182161,
		-0.944135, 0.012863, -0.329309,
		41.711895, 34.492252, 39.819920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.967407, 34.869534, 40.581879>,  <42.372791, 34.483246, 40.050438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.967407, 34.869534, 40.581879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.656528, 34.707787, 40.389023>,  <41.470001, 34.610737, 40.273312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.656528, 34.707787, 40.389023>,  <41.967407, 34.869534, 40.581879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.656528, 34.707787, 40.389023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491278, -0.088862, 0.866458,
		-0.393215, 0.910267, -0.129596,
		-0.777192, -0.404372, -0.482136,
		41.423370, 34.586475, 40.244381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.333828, 35.392967, 40.629650>,  <41.967407, 34.869534, 40.581879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.333828, 35.392967, 40.629650> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223579, 35.012054, 40.577198>,  <41.157433, 34.783508, 40.545727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223579, 35.012054, 40.577198>,  <41.333828, 35.392967, 40.629650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.223579, 35.012054, 40.577198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605510, 0.066045, 0.793092,
		-0.746587, 0.297991, -0.594819,
		-0.275619, -0.952281, -0.131128,
		41.140892, 34.726372, 40.537861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619186, 35.302433, 40.713421>,  <41.333828, 35.392967, 40.629650>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619186, 35.302433, 40.713421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757774, 34.932636, 40.777016>,  <40.840927, 34.710758, 40.815174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757774, 34.932636, 40.777016>,  <40.619186, 35.302433, 40.713421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.757774, 34.932636, 40.777016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460862, -0.020130, 0.887243,
		-0.817048, -0.380671, -0.433037,
		0.346465, -0.924491, 0.158990,
		40.861713, 34.655289, 40.824711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098797, 35.070938, 41.094090>,  <40.619186, 35.302433, 40.713421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098797, 35.070938, 41.094090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390293, 34.799675, 41.132099>,  <40.565193, 34.636917, 41.154903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390293, 34.799675, 41.132099>,  <40.098797, 35.070938, 41.094090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390293, 34.799675, 41.132099> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239493, -0.122401, 0.963152,
		-0.641542, -0.724647, -0.251614,
		0.728743, -0.678162, 0.095023,
		40.608917, 34.596226, 41.160606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767097, 34.582451, 41.548100>,  <40.098797, 35.070938, 41.094090>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.767097, 34.582451, 41.548100> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160606, 34.536221, 41.602993>,  <40.396713, 34.508480, 41.635929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160606, 34.536221, 41.602993>,  <39.767097, 34.582451, 41.548100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160606, 34.536221, 41.602993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108470, 0.226133, 0.968038,
		-0.142919, -0.967215, 0.209927,
		0.983773, -0.115580, 0.137232,
		40.455738, 34.501545, 41.644161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896587, 34.109718, 42.107967>,  <39.767097, 34.582451, 41.548100>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.896587, 34.109718, 42.107967> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.237583, 34.318207, 42.092007>,  <40.442181, 34.443298, 42.082432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.237583, 34.318207, 42.092007>,  <39.896587, 34.109718, 42.107967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.237583, 34.318207, 42.092007> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057813, -0.018150, 0.998162,
		0.519536, -0.853231, -0.045606,
		0.852491, 0.521218, -0.039899,
		40.493332, 34.474571, 42.080036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974560, 33.472710, 42.069630>,  <39.896587, 34.109718, 42.107967>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974560, 33.472710, 42.069630> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681854, 33.200119, 42.073933>,  <39.506233, 33.036564, 42.076515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681854, 33.200119, 42.073933>,  <39.974560, 33.472710, 42.069630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681854, 33.200119, 42.073933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176235, 0.173951, -0.968856,
		0.658382, -0.710866, -0.247390,
		-0.731761, -0.681477, 0.010753,
		39.462326, 32.995678, 42.077160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155899, 33.055801, 41.454388>,  <39.974560, 33.472710, 42.069630>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155899, 33.055801, 41.454388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768559, 32.984516, 41.524284>,  <39.536152, 32.941746, 41.566223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768559, 32.984516, 41.524284>,  <40.155899, 33.055801, 41.454388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768559, 32.984516, 41.524284> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216298, 0.249897, -0.943804,
		0.124527, -0.951732, -0.280535,
		-0.968354, -0.178208, 0.174739,
		39.478054, 32.931053, 41.576706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020405, 32.618023, 40.961609>,  <40.155899, 33.055801, 41.454388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020405, 32.618023, 40.961609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676395, 32.779373, 41.086605>,  <39.469990, 32.876183, 41.161602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676395, 32.779373, 41.086605>,  <40.020405, 32.618023, 40.961609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676395, 32.779373, 41.086605> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293386, 0.110143, -0.949628,
		-0.417473, -0.908382, 0.023619,
		-0.860024, 0.403373, 0.312489,
		39.418388, 32.900387, 41.180351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578365, 32.198544, 40.701923>,  <40.020405, 32.618023, 40.961609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578365, 32.198544, 40.701923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369808, 32.528355, 40.789833>,  <39.244675, 32.726242, 40.842579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369808, 32.528355, 40.789833>,  <39.578365, 32.198544, 40.701923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369808, 32.528355, 40.789833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496618, -0.083767, -0.863918,
		-0.693915, -0.559585, 0.453151,
		-0.521395, 0.824528, 0.219773,
		39.213390, 32.775715, 40.855766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931831, 32.053635, 40.511372>,  <39.578365, 32.198544, 40.701923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931831, 32.053635, 40.511372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914955, 32.452301, 40.539310>,  <38.904827, 32.691502, 40.556076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914955, 32.452301, 40.539310>,  <38.931831, 32.053635, 40.511372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914955, 32.452301, 40.539310> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517874, 0.037970, -0.854614,
		-0.854416, -0.072234, 0.514545,
		-0.042195, 0.996665, 0.069850,
		38.902298, 32.751301, 40.560265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242935, 32.207405, 40.207207>,  <38.931831, 32.053635, 40.511372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242935, 32.207405, 40.207207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469177, 32.537262, 40.204498>,  <38.604923, 32.735176, 40.202873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469177, 32.537262, 40.204498>,  <38.242935, 32.207405, 40.207207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469177, 32.537262, 40.204498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378090, 0.252016, -0.890806,
		-0.732894, 0.506407, 0.454333,
		0.565610, 0.824645, -0.006767,
		38.638859, 32.784657, 40.202469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837708, 32.762611, 39.993828>,  <38.242935, 32.207405, 40.207207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837708, 32.762611, 39.993828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215767, 32.867329, 39.915688>,  <38.442600, 32.930161, 39.868801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215767, 32.867329, 39.915688>,  <37.837708, 32.762611, 39.993828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215767, 32.867329, 39.915688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244916, 0.172243, -0.954122,
		-0.216133, 0.949630, 0.226911,
		0.945147, 0.261792, -0.195352,
		38.499310, 32.945866, 39.857082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766357, 33.345821, 39.744247>,  <37.837708, 32.762611, 39.993828>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766357, 33.345821, 39.744247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128391, 33.260826, 39.596916>,  <38.345612, 33.209827, 39.508518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128391, 33.260826, 39.596916>,  <37.766357, 33.345821, 39.744247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128391, 33.260826, 39.596916> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309183, 0.265807, -0.913101,
		0.291926, 0.940317, 0.174882,
		0.905089, -0.212487, -0.368326,
		38.399918, 33.197079, 39.486420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880802, 33.929665, 39.385849>,  <37.766357, 33.345821, 39.744247>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880802, 33.929665, 39.385849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142441, 33.671013, 39.228859>,  <38.299423, 33.515823, 39.134666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142441, 33.671013, 39.228859>,  <37.880802, 33.929665, 39.385849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142441, 33.671013, 39.228859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198426, 0.354007, -0.913951,
		0.729923, 0.675687, 0.103247,
		0.654095, -0.646626, -0.392471,
		38.338669, 33.477024, 39.111118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258511, 34.328331, 38.948215>,  <37.880802, 33.929665, 39.385849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258511, 34.328331, 38.948215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318722, 33.950329, 38.832073>,  <38.354847, 33.723526, 38.762386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318722, 33.950329, 38.832073>,  <38.258511, 34.328331, 38.948215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318722, 33.950329, 38.832073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056702, 0.284970, -0.956858,
		0.986979, 0.160495, -0.010689,
		0.150524, -0.945005, -0.290359,
		38.363880, 33.666828, 38.744965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733475, 34.383625, 38.354355>,  <38.258511, 34.328331, 38.948215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733475, 34.383625, 38.354355> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570038, 34.020367, 38.317856>,  <38.471977, 33.802410, 38.295956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570038, 34.020367, 38.317856>,  <38.733475, 34.383625, 38.354355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570038, 34.020367, 38.317856> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098384, 0.143210, -0.984790,
		0.907400, -0.393398, -0.147861,
		-0.408589, -0.908146, -0.091244,
		38.447460, 33.747921, 38.290482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165329, 34.026264, 37.804672>,  <38.733475, 34.383625, 38.354355>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165329, 34.026264, 37.804672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792419, 33.881680, 37.798878>,  <38.568672, 33.794930, 37.795403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792419, 33.881680, 37.798878>,  <39.165329, 34.026264, 37.804672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792419, 33.881680, 37.798878> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050932, 0.170795, -0.983989,
		0.358151, -0.916609, -0.177637,
		-0.932274, -0.361464, -0.014486,
		38.512737, 33.773239, 37.794533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.258842, 32.107021, 45.884785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.893734, 32.263073, 45.836388>,  <39.674667, 32.356705, 45.807350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.893734, 32.263073, 45.836388>,  <40.258842, 32.107021, 45.884785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893734, 32.263073, 45.836388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074831, -0.131480, -0.988490,
		-0.401548, -0.911324, 0.090818,
		-0.912775, 0.390131, -0.120991,
		39.619900, 32.380112, 45.800091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957756, 31.634153, 45.485561>,  <40.258842, 32.107021, 45.884785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957756, 31.634153, 45.485561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.745644, 31.968208, 45.427124>,  <39.618374, 32.168640, 45.392063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.745644, 31.968208, 45.427124>,  <39.957756, 31.634153, 45.485561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745644, 31.968208, 45.427124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037958, -0.148755, -0.988145,
		-0.846970, -0.529543, 0.047182,
		-0.530284, 0.835138, -0.146091,
		39.586559, 32.218750, 45.383297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599869, 31.378651, 44.975197>,  <39.957756, 31.634153, 45.485561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599869, 31.378651, 44.975197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.502048, 31.763012, 44.923264>,  <39.443356, 31.993629, 44.892105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.502048, 31.763012, 44.923264>,  <39.599869, 31.378651, 44.975197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502048, 31.763012, 44.923264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005072, -0.135164, -0.990810,
		-0.969622, -0.241648, 0.037929,
		-0.244554, 0.960904, -0.129832,
		39.428684, 32.051285, 44.884315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115604, 31.468851, 44.438663>,  <39.599869, 31.378651, 44.975197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115604, 31.468851, 44.438663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.239677, 31.848749, 44.455498>,  <39.314121, 32.076687, 44.465599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.239677, 31.848749, 44.455498>,  <39.115604, 31.468851, 44.438663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239677, 31.848749, 44.455498> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068023, 0.066327, -0.995477,
		-0.948241, 0.305915, 0.085177,
		0.310180, 0.949746, 0.042085,
		39.332733, 32.133675, 44.468124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547489, 31.879982, 44.176155>,  <39.115604, 31.468851, 44.438663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547489, 31.879982, 44.176155> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.889591, 32.082390, 44.131477>,  <39.094852, 32.203835, 44.104671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.889591, 32.082390, 44.131477>,  <38.547489, 31.879982, 44.176155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889591, 32.082390, 44.131477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276866, 0.264001, -0.923931,
		-0.438040, 0.821125, 0.365889,
		0.855258, 0.506021, -0.111699,
		39.146168, 32.234196, 44.097969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415283, 32.333977, 43.726768>,  <38.547489, 31.879982, 44.176155>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415283, 32.333977, 43.726768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.813110, 32.354542, 43.690559>,  <39.051807, 32.366879, 43.668835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.813110, 32.354542, 43.690559>,  <38.415283, 32.333977, 43.726768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813110, 32.354542, 43.690559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100788, 0.257987, -0.960877,
		-0.026045, 0.964779, 0.261767,
		0.994567, 0.051409, -0.090518,
		39.111481, 32.369965, 43.663403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430149, 32.958302, 43.320618>,  <38.415283, 32.333977, 43.726768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430149, 32.958302, 43.320618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.786232, 32.784657, 43.265377>,  <38.999882, 32.680470, 43.232231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.786232, 32.784657, 43.265377>,  <38.430149, 32.958302, 43.320618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786232, 32.784657, 43.265377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008783, 0.286747, -0.957966,
		0.455462, 0.854006, 0.251453,
		0.890212, -0.434108, -0.138103,
		39.053295, 32.654423, 43.223946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942963, 33.465054, 42.988239>,  <38.430149, 32.958302, 43.320618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942963, 33.465054, 42.988239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.073246, 33.092442, 42.923534>,  <39.151417, 32.868874, 42.884712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.073246, 33.092442, 42.923534>,  <38.942963, 33.465054, 42.988239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073246, 33.092442, 42.923534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209171, 0.237847, -0.948513,
		0.922041, 0.275105, 0.272318,
		0.325711, -0.931529, -0.161761,
		39.170959, 32.812984, 42.875008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652493, 33.540779, 42.763439>,  <38.942963, 33.465054, 42.988239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652493, 33.540779, 42.763439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.471092, 33.209881, 42.630775>,  <39.362251, 33.011341, 42.551178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.471092, 33.209881, 42.630775>,  <39.652493, 33.540779, 42.763439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471092, 33.209881, 42.630775> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142573, 0.299993, -0.943227,
		0.879776, -0.475043, -0.018105,
		-0.453505, -0.827248, -0.331655,
		39.335041, 32.961708, 42.531281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345055, 33.790535, 42.712563>,  <39.652493, 33.540779, 42.763439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345055, 33.790535, 42.712563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.509216, 34.141354, 42.612679>,  <40.607716, 34.351845, 42.552746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.509216, 34.141354, 42.612679>,  <40.345055, 33.790535, 42.712563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509216, 34.141354, 42.612679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179998, 0.190536, 0.965037,
		0.893961, -0.441007, -0.079669,
		0.410409, 0.877046, -0.249712,
		40.632339, 34.404469, 42.537766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935524, 33.890900, 43.137913>,  <40.345055, 33.790535, 42.712563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935524, 33.890900, 43.137913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.831627, 34.255890, 43.011475>,  <40.769287, 34.474884, 42.935612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.831627, 34.255890, 43.011475>,  <40.935524, 33.890900, 43.137913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.831627, 34.255890, 43.011475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013647, 0.330770, 0.943613,
		0.965581, 0.240783, -0.098367,
		-0.259743, 0.912477, -0.316100,
		40.753704, 34.529633, 42.916645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296143, 34.310139, 43.558868>,  <40.935524, 33.890900, 43.137913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296143, 34.310139, 43.558868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.015285, 34.547428, 43.401348>,  <40.846771, 34.689800, 43.306835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.015285, 34.547428, 43.401348>,  <41.296143, 34.310139, 43.558868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015285, 34.547428, 43.401348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059523, 0.502225, 0.862686,
		0.709540, 0.629172, -0.317325,
		-0.702146, 0.593223, -0.393799,
		40.804642, 34.725395, 43.283207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.504585, 34.982071, 43.612278>,  <41.296143, 34.310139, 43.558868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.504585, 34.982071, 43.612278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.110710, 35.014484, 43.550549>,  <40.874386, 35.033932, 43.513512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.110710, 35.014484, 43.550549>,  <41.504585, 34.982071, 43.612278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.110710, 35.014484, 43.550549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061846, 0.665353, 0.743963,
		0.162965, 0.742118, -0.650156,
		-0.984692, 0.081031, -0.154326,
		40.815304, 35.038795, 43.504250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.404404, 35.735546, 43.514931>,  <41.504585, 34.982071, 43.612278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.404404, 35.735546, 43.514931> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.040619, 35.591915, 43.598785>,  <40.822350, 35.505737, 43.649097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.040619, 35.591915, 43.598785>,  <41.404404, 35.735546, 43.514931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.040619, 35.591915, 43.598785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066776, 0.623774, 0.778747,
		-0.410396, 0.694240, -0.591275,
		-0.909459, -0.359078, 0.209636,
		40.767780, 35.484192, 43.661674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951118, 36.308231, 43.680313>,  <41.404404, 35.735546, 43.514931>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.951118, 36.308231, 43.680313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.802700, 35.990517, 43.872742>,  <40.713650, 35.799889, 43.988201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.802700, 35.990517, 43.872742>,  <40.951118, 36.308231, 43.680313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802700, 35.990517, 43.872742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063904, 0.494989, 0.866546,
		-0.926414, 0.352269, -0.132904,
		-0.371043, -0.794288, 0.481076,
		40.691387, 35.752232, 44.017063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.435734, 36.579197, 44.134533>,  <40.951118, 36.308231, 43.680313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.435734, 36.579197, 44.134533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.479500, 36.211853, 44.286659>,  <40.505760, 35.991447, 44.377934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.479500, 36.211853, 44.286659>,  <40.435734, 36.579197, 44.134533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.479500, 36.211853, 44.286659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112977, 0.368644, 0.922679,
		-0.987554, -0.143926, -0.063417,
		0.109419, -0.918361, 0.380316,
		40.512325, 35.936344, 44.400753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940353, 36.546631, 44.770077>,  <40.435734, 36.579197, 44.134533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940353, 36.546631, 44.770077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.201336, 36.246357, 44.811584>,  <40.357925, 36.066193, 44.836491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.201336, 36.246357, 44.811584>,  <39.940353, 36.546631, 44.770077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201336, 36.246357, 44.811584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086786, 0.210045, 0.973832,
		-0.752837, -0.626382, 0.202194,
		0.652461, -0.750684, 0.103768,
		40.397076, 36.021152, 44.842716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623890, 36.180340, 45.227669>,  <39.940353, 36.546631, 44.770077>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623890, 36.180340, 45.227669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.013596, 36.091118, 45.240688>,  <40.247417, 36.037582, 45.248501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.013596, 36.091118, 45.240688>,  <39.623890, 36.180340, 45.227669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013596, 36.091118, 45.240688> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066812, 0.423642, 0.903362,
		-0.215292, -0.877936, 0.427641,
		0.974261, -0.223059, 0.032550,
		40.305874, 36.024200, 45.250454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633759, 35.910713, 45.782440>,  <39.623890, 36.180340, 45.227669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633759, 35.910713, 45.782440> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.027660, 35.954948, 45.728737>,  <40.264000, 35.981491, 45.696514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.027660, 35.954948, 45.728737>,  <39.633759, 35.910713, 45.782440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027660, 35.954948, 45.728737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097441, 0.288647, 0.952464,
		0.144087, -0.951027, 0.273471,
		0.984756, 0.110590, -0.134260,
		40.323086, 35.988125, 45.688457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036453, 35.494843, 46.331375>,  <39.633759, 35.910713, 45.782440>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036453, 35.494843, 46.331375> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.262562, 35.794285, 46.192780>,  <40.398228, 35.973949, 46.109623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.262562, 35.794285, 46.192780>,  <40.036453, 35.494843, 46.331375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.262562, 35.794285, 46.192780> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196121, 0.286028, 0.937936,
		0.801254, -0.598140, 0.014865,
		0.565269, 0.748609, -0.346489,
		40.432144, 36.018867, 46.088833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670555, 35.286213, 46.696384>,  <40.036453, 35.494843, 46.331375>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670555, 35.286213, 46.696384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.675652, 35.669563, 46.582294>,  <40.678711, 35.899574, 46.513840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.675652, 35.669563, 46.582294>,  <40.670555, 35.286213, 46.696384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.675652, 35.669563, 46.582294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067204, 0.283784, 0.956531,
		0.997658, -0.031359, -0.060790,
		0.012745, 0.958375, -0.285227,
		40.679474, 35.957077, 46.496727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.263577, 35.662659, 47.008930>,  <40.670555, 35.286213, 46.696384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.263577, 35.662659, 47.008930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.009586, 35.956936, 46.914639>,  <40.857193, 36.133503, 46.858063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.009586, 35.956936, 46.914639>,  <41.263577, 35.662659, 47.008930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.009586, 35.956936, 46.914639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071351, 0.359681, 0.930344,
		0.769232, 0.573924, -0.280880,
		-0.634973, 0.735691, -0.235728,
		40.819096, 36.177643, 46.843922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.566360, 36.331139, 47.287308>,  <41.263577, 35.662659, 47.008930>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.566360, 36.331139, 47.287308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.182343, 36.427635, 47.230583>,  <40.951931, 36.485535, 47.196548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.182343, 36.427635, 47.230583>,  <41.566360, 36.331139, 47.287308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.182343, 36.427635, 47.230583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023433, 0.574283, 0.818322,
		0.278850, 0.782306, -0.556992,
		-0.960049, 0.241241, -0.141808,
		40.894329, 36.500008, 47.188042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.451229, 36.998623, 46.291271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.817265, 36.863708, 46.379681>,  <34.036884, 36.782761, 46.432728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.817265, 36.863708, 46.379681>,  <33.451229, 36.998623, 46.291271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817265, 36.863708, 46.379681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190672, -0.121055, -0.974161,
		0.355328, 0.933586, -0.046464,
		0.915088, -0.337288, 0.221023,
		34.091789, 36.762524, 46.445988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886105, 37.363461, 45.893162>,  <33.451229, 36.998623, 46.291271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886105, 37.363461, 45.893162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.115875, 37.049099, 45.984722>,  <34.253738, 36.860481, 46.039658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.115875, 37.049099, 45.984722>,  <33.886105, 37.363461, 45.893162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115875, 37.049099, 45.984722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102754, -0.208194, -0.972675,
		0.812081, 0.582250, -0.038838,
		0.574426, -0.785901, 0.228899,
		34.288204, 36.813328, 46.053391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553669, 37.518623, 45.689548>,  <33.886105, 37.363461, 45.893162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553669, 37.518623, 45.689548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.485893, 37.124714, 45.674034>,  <34.445229, 36.888367, 45.664726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.485893, 37.124714, 45.674034>,  <34.553669, 37.518623, 45.689548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485893, 37.124714, 45.674034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302337, -0.014481, -0.953091,
		0.938020, -0.173218, 0.300188,
		-0.169440, -0.984777, -0.038787,
		34.435062, 36.829281, 45.662399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238613, 37.195030, 45.455627>,  <34.553669, 37.518623, 45.689548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238613, 37.195030, 45.455627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.914154, 36.972881, 45.382305>,  <34.719479, 36.839592, 45.338310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.914154, 36.972881, 45.382305>,  <35.238613, 37.195030, 45.455627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914154, 36.972881, 45.382305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277130, -0.088999, -0.956702,
		0.515007, -0.826829, 0.226101,
		-0.811151, -0.555368, -0.183304,
		34.670807, 36.806271, 45.327312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621914, 36.887806, 44.868000>,  <35.238613, 37.195030, 45.455627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621914, 36.887806, 44.868000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.281345, 36.679783, 44.895214>,  <35.077003, 36.554970, 44.911545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.281345, 36.679783, 44.895214>,  <35.621914, 36.887806, 44.868000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281345, 36.679783, 44.895214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109343, -0.302873, -0.946737,
		0.512963, -0.798630, 0.314737,
		-0.851418, -0.520055, 0.068038,
		35.025921, 36.523766, 44.915627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733139, 36.323421, 44.483528>,  <35.621914, 36.887806, 44.868000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733139, 36.323421, 44.483528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.335876, 36.365902, 44.464062>,  <35.097519, 36.391392, 44.452381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.335876, 36.365902, 44.464062>,  <35.733139, 36.323421, 44.483528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335876, 36.365902, 44.464062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014346, -0.302564, -0.953021,
		-0.115934, -0.947194, 0.298968,
		-0.993154, 0.106199, -0.048666,
		35.037930, 36.397762, 44.449463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634846, 35.791782, 43.997768>,  <35.733139, 36.323421, 44.483528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634846, 35.791782, 43.997768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.311447, 36.026875, 43.985756>,  <35.117409, 36.167931, 43.978550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.311447, 36.026875, 43.985756>,  <35.634846, 35.791782, 43.997768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311447, 36.026875, 43.985756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118619, -0.212734, -0.969883,
		-0.576417, -0.780589, 0.241711,
		-0.808500, 0.587729, -0.030031,
		35.068897, 36.203194, 43.976746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978848, 35.331772, 43.701347>,  <35.634846, 35.791782, 43.997768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978848, 35.331772, 43.701347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.964542, 35.728188, 43.649876>,  <34.955959, 35.966038, 43.618992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.964542, 35.728188, 43.649876>,  <34.978848, 35.331772, 43.701347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964542, 35.728188, 43.649876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049813, -0.126830, -0.990673,
		-0.998118, -0.041839, -0.044831,
		-0.035763, 0.991042, -0.128676,
		34.953812, 36.025501, 43.611275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506039, 35.429619, 43.156830>,  <34.978848, 35.331772, 43.701347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506039, 35.429619, 43.156830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.707664, 35.775085, 43.157032>,  <34.828640, 35.982365, 43.157154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.707664, 35.775085, 43.157032>,  <34.506039, 35.429619, 43.156830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707664, 35.775085, 43.157032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051807, 0.030816, -0.998182,
		-0.862112, 0.503119, 0.060277,
		0.504062, 0.863667, 0.000502,
		34.858883, 36.034187, 43.157181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163361, 35.923870, 42.776459>,  <34.506039, 35.429619, 43.156830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163361, 35.923870, 42.776459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.517330, 36.109959, 42.785244>,  <34.729713, 36.221611, 42.790516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.517330, 36.109959, 42.785244>,  <34.163361, 35.923870, 42.776459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517330, 36.109959, 42.785244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077331, 0.193271, -0.978093,
		-0.459271, 0.863839, 0.207006,
		0.884924, 0.465218, 0.021962,
		34.782806, 36.249523, 42.791832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093430, 36.577938, 42.524944>,  <34.163361, 35.923870, 42.776459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093430, 36.577938, 42.524944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.478886, 36.488544, 42.466366>,  <34.710159, 36.434910, 42.431217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.478886, 36.488544, 42.466366>,  <34.093430, 36.577938, 42.524944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478886, 36.488544, 42.466366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098977, 0.210550, -0.972560,
		0.248184, 0.951696, 0.180776,
		0.963643, -0.223481, -0.146451,
		34.767979, 36.421501, 42.422432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380131, 37.130867, 42.087158>,  <34.093430, 36.577938, 42.524944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380131, 37.130867, 42.087158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.606041, 36.803505, 42.044762>,  <34.741589, 36.607086, 42.019321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.606041, 36.803505, 42.044762>,  <34.380131, 37.130867, 42.087158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606041, 36.803505, 42.044762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024116, 0.112016, -0.993414,
		0.824890, 0.563616, 0.043527,
		0.564779, -0.818407, -0.105993,
		34.775475, 36.557983, 42.012962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783783, 37.272903, 41.492504>,  <34.380131, 37.130867, 42.087158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783783, 37.272903, 41.492504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.852039, 36.880066, 41.524456>,  <34.892994, 36.644363, 41.543625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.852039, 36.880066, 41.524456>,  <34.783783, 37.272903, 41.492504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852039, 36.880066, 41.524456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037217, -0.087433, -0.995475,
		0.984630, 0.166896, -0.051470,
		0.170641, -0.982090, 0.079878,
		34.903233, 36.585438, 41.548420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384609, 37.180943, 41.131241>,  <34.783783, 37.272903, 41.492504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384609, 37.180943, 41.131241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.177410, 36.838890, 41.139603>,  <35.053089, 36.633659, 41.144619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.177410, 36.838890, 41.139603>,  <35.384609, 37.180943, 41.131241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177410, 36.838890, 41.139603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106755, -0.088881, -0.990305,
		0.848695, -0.510742, 0.137329,
		-0.517996, -0.855127, 0.020909,
		35.022011, 36.582352, 41.145874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138752, 37.221550, 41.220940>,  <35.384609, 37.180943, 41.131241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138752, 37.221550, 41.220940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.275635, 37.587051, 41.133347>,  <36.357765, 37.806351, 41.080791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.275635, 37.587051, 41.133347>,  <36.138752, 37.221550, 41.220940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275635, 37.587051, 41.133347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362568, 0.343416, 0.866377,
		0.866855, -0.217085, 0.448816,
		0.342209, 0.913750, -0.218984,
		36.378296, 37.861176, 41.067650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480003, 37.445873, 41.806450>,  <36.138752, 37.221550, 41.220940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480003, 37.445873, 41.806450> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.427208, 37.796032, 41.620434>,  <36.395531, 38.006126, 41.508823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.427208, 37.796032, 41.620434>,  <36.480003, 37.445873, 41.806450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427208, 37.796032, 41.620434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209410, 0.433934, 0.876270,
		0.968879, 0.213040, 0.126043,
		-0.131987, 0.875394, -0.465043,
		36.387611, 38.058651, 41.480923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990601, 37.927265, 42.232449>,  <36.480003, 37.445873, 41.806450>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990601, 37.927265, 42.232449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.712513, 38.148014, 42.048233>,  <36.545658, 38.280464, 41.937702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.712513, 38.148014, 42.048233>,  <36.990601, 37.927265, 42.232449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712513, 38.148014, 42.048233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139703, 0.524752, 0.839713,
		0.705086, 0.648128, -0.287721,
		-0.695224, 0.551875, -0.460541,
		36.503944, 38.313576, 41.910072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167931, 38.690475, 42.298130>,  <36.990601, 37.927265, 42.232449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167931, 38.690475, 42.298130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.776253, 38.614105, 42.270634>,  <36.541245, 38.568283, 42.254135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.776253, 38.614105, 42.270634>,  <37.167931, 38.690475, 42.298130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776253, 38.614105, 42.270634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147698, 0.438246, 0.886637,
		-0.139156, 0.878343, -0.457327,
		-0.979194, -0.190928, -0.068745,
		36.482494, 38.556828, 42.250011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909748, 39.418133, 42.291180>,  <37.167931, 38.690475, 42.298130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909748, 39.418133, 42.291180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.645458, 39.132534, 42.383827>,  <36.486885, 38.961174, 42.439415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.645458, 39.132534, 42.383827>,  <36.909748, 39.418133, 42.291180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645458, 39.132534, 42.383827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332971, 0.555338, 0.762056,
		-0.672736, 0.426386, -0.604667,
		-0.660724, -0.713999, 0.231622,
		36.447243, 38.918335, 42.453312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455704, 39.817909, 42.620510>,  <36.909748, 39.418133, 42.291180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455704, 39.817909, 42.620510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.320446, 39.453403, 42.714535>,  <36.239292, 39.234699, 42.770950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.320446, 39.453403, 42.714535>,  <36.455704, 39.817909, 42.620510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320446, 39.453403, 42.714535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153487, 0.299835, 0.941563,
		-0.928492, 0.282308, -0.241255,
		-0.338147, -0.911264, 0.235064,
		36.219002, 39.180023, 42.785053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761471, 39.896149, 42.878120>,  <36.455704, 39.817909, 42.620510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761471, 39.896149, 42.878120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.887726, 39.544895, 43.021931>,  <35.963478, 39.334145, 43.108219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.887726, 39.544895, 43.021931>,  <35.761471, 39.896149, 42.878120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887726, 39.544895, 43.021931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126020, 0.336747, 0.933124,
		-0.940475, -0.339835, -0.004373,
		0.315636, -0.878131, 0.359528,
		35.982418, 39.281456, 43.129787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407890, 39.872696, 43.458061>,  <35.761471, 39.896149, 42.878120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407890, 39.872696, 43.458061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.671608, 39.578896, 43.522362>,  <35.829838, 39.402615, 43.560940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.671608, 39.578896, 43.522362>,  <35.407890, 39.872696, 43.458061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671608, 39.578896, 43.522362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132582, 0.096878, 0.986426,
		-0.740101, -0.671660, -0.033510,
		0.659296, -0.734498, 0.160749,
		35.869396, 39.358547, 43.570587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196224, 39.476173, 44.011505>,  <35.407890, 39.872696, 43.458061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196224, 39.476173, 44.011505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.585213, 39.383476, 44.021244>,  <35.818607, 39.327858, 44.027088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.585213, 39.383476, 44.021244>,  <35.196224, 39.476173, 44.011505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585213, 39.383476, 44.021244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002598, 0.115277, 0.993330,
		-0.233003, -0.965923, 0.112706,
		0.972472, -0.231742, 0.024350,
		35.876953, 39.313953, 44.028549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339981, 38.946541, 44.523342>,  <35.196224, 39.476173, 44.011505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339981, 38.946541, 44.523342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.693424, 39.125809, 44.469109>,  <35.905491, 39.233372, 44.436569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.693424, 39.125809, 44.469109>,  <35.339981, 38.946541, 44.523342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693424, 39.125809, 44.469109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027479, 0.239424, 0.970526,
		0.467427, -0.861287, 0.199240,
		0.883604, 0.448175, -0.135581,
		35.958508, 39.260262, 44.428436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760632, 38.686581, 45.040466>,  <35.339981, 38.946541, 44.523342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760632, 38.686581, 45.040466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.942993, 39.023846, 44.926460>,  <36.052410, 39.226204, 44.858059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.942993, 39.023846, 44.926460>,  <35.760632, 38.686581, 45.040466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942993, 39.023846, 44.926460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268678, 0.174911, 0.947216,
		0.848508, -0.508414, -0.146797,
		0.455902, 0.843161, -0.285013,
		36.079765, 39.276794, 44.840958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308117, 38.655479, 45.405685>,  <35.760632, 38.686581, 45.040466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308117, 38.655479, 45.405685> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.261887, 39.041985, 45.313625>,  <36.234150, 39.273888, 45.258389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.261887, 39.041985, 45.313625>,  <36.308117, 38.655479, 45.405685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261887, 39.041985, 45.313625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270403, 0.253560, 0.928757,
		0.955785, 0.045106, -0.290586,
		-0.115574, 0.966267, -0.230152,
		36.227215, 39.331863, 45.244579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990414, 38.938744, 45.649902>,  <36.308117, 38.655479, 45.405685>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990414, 38.938744, 45.649902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.671375, 39.178623, 45.623955>,  <36.479954, 39.322552, 45.608387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.671375, 39.178623, 45.623955>,  <36.990414, 38.938744, 45.649902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671375, 39.178623, 45.623955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063670, 0.190642, 0.979593,
		0.599827, 0.777186, -0.190237,
		-0.797593, 0.599698, -0.064869,
		36.432098, 39.358532, 45.604496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082352, 39.621704, 46.055561>,  <36.990414, 38.938744, 45.649902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082352, 39.621704, 46.055561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.689587, 39.561543, 46.009567>,  <36.453926, 39.525444, 45.981972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.689587, 39.561543, 46.009567>,  <37.082352, 39.621704, 46.055561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689587, 39.561543, 46.009567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138135, 0.153806, 0.978398,
		-0.129471, 0.976587, -0.171800,
		-0.981914, -0.150406, -0.114988,
		36.395012, 39.516422, 45.975071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471577, 40.110996, 46.368217>,  <37.082352, 39.621704, 46.055561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471577, 40.110996, 46.368217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.772972, 40.318420, 46.529881>,  <37.953808, 40.442875, 46.626881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.772972, 40.318420, 46.529881>,  <37.471577, 40.110996, 46.368217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772972, 40.318420, 46.529881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254805, 0.336356, -0.906609,
		-0.606076, 0.786102, 0.121308,
		0.753490, 0.518564, 0.404160,
		37.999020, 40.473991, 46.651127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452442, 40.701664, 46.069592>,  <37.471577, 40.110996, 46.368217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452442, 40.701664, 46.069592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.829269, 40.691490, 46.203377>,  <38.055367, 40.685387, 46.283649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.829269, 40.691490, 46.203377>,  <37.452442, 40.701664, 46.069592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829269, 40.691490, 46.203377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335404, 0.084293, -0.938296,
		-0.004327, 0.996116, 0.087941,
		0.942064, -0.025436, 0.334466,
		38.111889, 40.683861, 46.303719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796165, 41.113728, 45.651226>,  <37.452442, 40.701664, 46.069592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796165, 41.113728, 45.651226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.103645, 40.907516, 45.802658>,  <38.288136, 40.783791, 45.893517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.103645, 40.907516, 45.802658>,  <37.796165, 41.113728, 45.651226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103645, 40.907516, 45.802658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417085, -0.044713, -0.907767,
		0.484911, 0.855703, 0.180649,
		0.768701, -0.515532, 0.378582,
		38.334255, 40.752857, 45.916233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371166, 41.475124, 45.407425>,  <37.796165, 41.113728, 45.651226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371166, 41.475124, 45.407425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.482296, 41.096611, 45.473587>,  <38.548973, 40.869503, 45.513283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.482296, 41.096611, 45.473587>,  <38.371166, 41.475124, 45.407425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482296, 41.096611, 45.473587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490964, -0.008126, -0.871142,
		0.825692, 0.323232, 0.462334,
		0.277825, -0.946285, 0.165405,
		38.565643, 40.812725, 45.523209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938004, 41.452049, 44.993870>,  <38.371166, 41.475124, 45.407425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938004, 41.452049, 44.993870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.891743, 41.061138, 45.064930>,  <38.863987, 40.826591, 45.107567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.891743, 41.061138, 45.064930>,  <38.938004, 41.452049, 44.993870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891743, 41.061138, 45.064930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437688, -0.210693, -0.874092,
		0.891658, -0.023332, 0.452108,
		-0.115650, -0.977274, 0.177654,
		38.857048, 40.767956, 45.118225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646519, 41.073067, 44.877769>,  <38.938004, 41.452049, 44.993870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646519, 41.073067, 44.877769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.341045, 40.818974, 44.831707>,  <39.157761, 40.666519, 44.804070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.341045, 40.818974, 44.831707>,  <39.646519, 41.073067, 44.877769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341045, 40.818974, 44.831707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378393, -0.295916, -0.877070,
		0.523069, -0.713381, 0.466355,
		-0.763687, -0.635234, -0.115154,
		39.111938, 40.628403, 44.797161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995907, 40.469631, 44.717346>,  <39.646519, 41.073067, 44.877769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995907, 40.469631, 44.717346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.621239, 40.413593, 44.588955>,  <39.396439, 40.379971, 44.511921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.621239, 40.413593, 44.588955>,  <39.995907, 40.469631, 44.717346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621239, 40.413593, 44.588955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350027, -0.404396, -0.844952,
		-0.011431, -0.903791, 0.427821,
		-0.936670, -0.140090, -0.320974,
		39.340237, 40.371567, 44.492664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783386, 39.719879, 44.730782>,  <39.995907, 40.469631, 44.717346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783386, 39.719879, 44.730782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.586720, 39.936413, 44.457951>,  <39.468719, 40.066334, 44.294250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.586720, 39.936413, 44.457951>,  <39.783386, 39.719879, 44.730782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586720, 39.936413, 44.457951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371785, -0.577812, -0.726574,
		-0.787429, -0.610815, 0.082830,
		-0.491662, 0.541330, -0.682078,
		39.439220, 40.098812, 44.253326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687370, 39.197323, 44.202869>,  <39.783386, 39.719879, 44.730782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687370, 39.197323, 44.202869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.603016, 39.556694, 44.048805>,  <39.552402, 39.772316, 43.956367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.603016, 39.556694, 44.048805>,  <39.687370, 39.197323, 44.202869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.603016, 39.556694, 44.048805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344192, -0.300538, -0.889499,
		-0.914908, -0.320156, -0.245852,
		-0.210890, 0.898430, -0.385160,
		39.539749, 39.826221, 43.933258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404495, 39.085766, 43.523815>,  <39.687370, 39.197323, 44.202869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404495, 39.085766, 43.523815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.545937, 39.458740, 43.494091>,  <39.630802, 39.682526, 43.476257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.545937, 39.458740, 43.494091>,  <39.404495, 39.085766, 43.523815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545937, 39.458740, 43.494091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421888, -0.229881, -0.877021,
		-0.834851, 0.278767, -0.474671,
		0.353602, 0.932440, -0.074308,
		39.652016, 39.738472, 43.471798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273113, 39.249317, 42.808041>,  <39.404495, 39.085766, 43.523815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273113, 39.249317, 42.808041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.552906, 39.496609, 42.951439>,  <39.720779, 39.644985, 43.037479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.552906, 39.496609, 42.951439>,  <39.273113, 39.249317, 42.808041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552906, 39.496609, 42.951439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540462, -0.129404, -0.831358,
		-0.467577, 0.775273, -0.424645,
		0.699480, 0.618228, 0.358499,
		39.762749, 39.682076, 43.058990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472767, 39.515820, 42.218956>,  <39.273113, 39.249317, 42.808041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472767, 39.515820, 42.218956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.784241, 39.611362, 42.451023>,  <39.971127, 39.668686, 42.590263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.784241, 39.611362, 42.451023>,  <39.472767, 39.515820, 42.218956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784241, 39.611362, 42.451023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600492, -0.015773, -0.799475,
		-0.181806, 0.970928, -0.155712,
		0.778688, 0.238853, 0.580167,
		40.017849, 39.683018, 42.625072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805119, 40.202400, 41.996574>,  <39.472767, 39.515820, 42.218956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.805119, 40.202400, 41.996574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.076420, 39.988403, 42.198071>,  <40.239201, 39.860004, 42.318970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.076420, 39.988403, 42.198071>,  <39.805119, 40.202400, 41.996574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076420, 39.988403, 42.198071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542256, -0.098244, -0.834450,
		0.495917, 0.839123, 0.223471,
		0.678251, -0.534996, 0.503740,
		40.279896, 39.827904, 42.349194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473694, 40.525295, 41.946045>,  <39.805119, 40.202400, 41.996574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473694, 40.525295, 41.946045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.525742, 40.137287, 42.028141>,  <40.556973, 39.904480, 42.077400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.525742, 40.137287, 42.028141>,  <40.473694, 40.525295, 41.946045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525742, 40.137287, 42.028141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692076, -0.059373, -0.719379,
		0.710000, 0.235651, 0.663603,
		0.130122, -0.970023, 0.205243,
		40.564777, 39.846279, 42.089714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.778913, 40.747784, 40.941757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.702063, 40.587368, 41.300034>,  <28.655952, 40.491119, 41.514999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.702063, 40.587368, 41.300034>,  <28.778913, 40.747784, 40.941757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.702063, 40.587368, 41.300034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184012, -0.881780, -0.434285,
		0.963964, -0.248254, 0.095616,
		-0.192126, -0.401041, 0.895686,
		28.644424, 40.467056, 41.568741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.117771, 40.050453, 41.089966>,  <28.778913, 40.747784, 40.941757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.117771, 40.050453, 41.089966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.778700, 40.082706, 41.299706>,  <28.575258, 40.102058, 41.425549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.778700, 40.082706, 41.299706>,  <29.117771, 40.050453, 41.089966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.778700, 40.082706, 41.299706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364829, -0.806169, -0.465823,
		0.385156, -0.586166, 0.712786,
		-0.847676, 0.080631, 0.524351,
		28.524397, 40.106895, 41.457012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.945610, 39.375595, 41.284260>,  <29.117771, 40.050453, 41.089966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.945610, 39.375595, 41.284260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.588423, 39.552216, 41.319229>,  <28.374111, 39.658188, 41.340210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.588423, 39.552216, 41.319229>,  <28.945610, 39.375595, 41.284260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.588423, 39.552216, 41.319229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416966, -0.738281, -0.530170,
		-0.169556, -0.509875, 0.843373,
		-0.892967, 0.441552, 0.087420,
		28.320532, 39.684681, 41.345455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.461054, 38.841164, 41.595139>,  <28.945610, 39.375595, 41.284260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.461054, 38.841164, 41.595139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.220175, 39.124653, 41.448135>,  <28.075647, 39.294746, 41.359932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.220175, 39.124653, 41.448135>,  <28.461054, 38.841164, 41.595139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.220175, 39.124653, 41.448135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448307, -0.681106, -0.578891,
		-0.660589, -0.183850, 0.727888,
		-0.602198, 0.708726, -0.367511,
		28.039515, 39.337273, 41.337883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.844120, 38.465103, 41.437981>,  <28.461054, 38.841164, 41.595139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.844120, 38.465103, 41.437981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.822943, 38.802135, 41.223598>,  <27.810236, 39.004356, 41.094967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.822943, 38.802135, 41.223598>,  <27.844120, 38.465103, 41.437981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.822943, 38.802135, 41.223598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411767, -0.507377, -0.756978,
		-0.909750, 0.180613, 0.373809,
		-0.052942, 0.842584, -0.535957,
		27.807060, 39.054909, 41.062813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.173035, 38.599564, 41.326195>,  <27.844120, 38.465103, 41.437981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.173035, 38.599564, 41.326195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.344862, 38.801167, 41.026478>,  <27.447958, 38.922131, 40.846645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.344862, 38.801167, 41.026478>,  <27.173035, 38.599564, 41.326195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.344862, 38.801167, 41.026478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625866, -0.431979, -0.649374,
		-0.650972, 0.747908, 0.129880,
		0.429566, 0.504012, -0.749296,
		27.473732, 38.952370, 40.801689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.586674, 38.732891, 40.839272>,  <27.173035, 38.599564, 41.326195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.586674, 38.732891, 40.839272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.899843, 38.816338, 40.604832>,  <27.087744, 38.866405, 40.464169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.899843, 38.816338, 40.604832>,  <26.586674, 38.732891, 40.839272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.899843, 38.816338, 40.604832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476561, -0.404483, -0.780566,
		-0.399904, 0.890435, -0.217262,
		0.782922, 0.208612, -0.586101,
		27.134720, 38.878922, 40.429001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.345577, 39.009869, 40.351395>,  <26.586674, 38.732891, 40.839272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.345577, 39.009869, 40.351395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.700466, 38.921833, 40.189213>,  <26.913401, 38.869011, 40.091904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.700466, 38.921833, 40.189213>,  <26.345577, 39.009869, 40.351395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.700466, 38.921833, 40.189213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446271, -0.186649, -0.875217,
		0.116949, 0.957456, -0.263819,
		0.887223, -0.220091, -0.405456,
		26.966633, 38.855804, 40.067577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.359066, 39.301907, 39.687843>,  <26.345577, 39.009869, 40.351395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.359066, 39.301907, 39.687843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.631748, 39.009365, 39.695892>,  <26.795357, 38.833839, 39.700722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.631748, 39.009365, 39.695892>,  <26.359066, 39.301907, 39.687843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.631748, 39.009365, 39.695892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255634, -0.263871, -0.930066,
		0.685516, 0.628885, -0.366840,
		0.681703, -0.731352, 0.020123,
		26.836260, 38.789959, 39.701931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.717369, 39.398487, 39.043758>,  <26.359066, 39.301907, 39.687843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.717369, 39.398487, 39.043758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.818436, 39.021885, 39.132961>,  <26.879076, 38.795925, 39.186485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.818436, 39.021885, 39.132961>,  <26.717369, 39.398487, 39.043758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.818436, 39.021885, 39.132961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045251, -0.218738, -0.974734,
		0.966495, 0.256373, -0.012663,
		0.252665, -0.941502, 0.223011,
		26.894236, 38.739433, 39.199863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.249594, 39.141792, 38.507053>,  <26.717369, 39.398487, 39.043758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.249594, 39.141792, 38.507053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.083090, 38.807659, 38.650692>,  <26.983187, 38.607182, 38.736877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.083090, 38.807659, 38.650692>,  <27.249594, 39.141792, 38.507053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.083090, 38.807659, 38.650692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025814, -0.383927, -0.923002,
		0.908879, -0.393479, 0.138250,
		-0.416260, -0.835329, 0.359101,
		26.958212, 38.557060, 38.758423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.532490, 38.625645, 38.083775>,  <27.249594, 39.141792, 38.507053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.532490, 38.625645, 38.083775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.221478, 38.460415, 38.273434>,  <27.034870, 38.361279, 38.387230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.221478, 38.460415, 38.273434>,  <27.532490, 38.625645, 38.083775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.221478, 38.460415, 38.273434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227389, -0.518295, -0.824417,
		0.586294, -0.748826, 0.309062,
		-0.777530, -0.413073, 0.474148,
		26.988218, 38.336494, 38.415680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.463930, 37.902573, 37.800426>,  <27.532490, 38.625645, 38.083775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.463930, 37.902573, 37.800426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.109743, 37.990631, 37.964123>,  <26.897230, 38.043468, 38.062340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.109743, 37.990631, 37.964123>,  <27.463930, 37.902573, 37.800426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.109743, 37.990631, 37.964123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460453, -0.534431, -0.708778,
		0.062674, -0.816037, 0.574591,
		-0.885469, 0.220150, 0.409242,
		26.844103, 38.056675, 38.086895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.191525, 37.314133, 37.930080>,  <27.463930, 37.902573, 37.800426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.191525, 37.314133, 37.930080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.853561, 37.528076, 37.933113>,  <26.650784, 37.656445, 37.934933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.853561, 37.528076, 37.933113>,  <27.191525, 37.314133, 37.930080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.853561, 37.528076, 37.933113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373849, -0.580296, -0.723529,
		-0.382586, -0.614149, 0.690253,
		-0.844906, 0.534862, 0.007586,
		26.600090, 37.688534, 37.935390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.597351, 36.915874, 38.125931>,  <27.191525, 37.314133, 37.930080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.597351, 36.915874, 38.125931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.518679, 37.215744, 37.873169>,  <26.471476, 37.395664, 37.721512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.518679, 37.215744, 37.873169>,  <26.597351, 36.915874, 38.125931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.518679, 37.215744, 37.873169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310262, -0.658965, -0.685202,
		-0.930083, 0.061290, 0.362201,
		-0.196682, 0.749672, -0.631908,
		26.459675, 37.440647, 37.683598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.182194, 36.599857, 37.661800>,  <26.597351, 36.915874, 38.125931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.182194, 36.599857, 37.661800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.231007, 36.950050, 37.474766>,  <26.260294, 37.160168, 37.362545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.231007, 36.950050, 37.474766>,  <26.182194, 36.599857, 37.661800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.231007, 36.950050, 37.474766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336607, -0.406685, -0.849296,
		-0.933705, 0.261034, 0.245065,
		0.122031, 0.875482, -0.467589,
		26.267616, 37.212696, 37.334488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.737429, 36.503925, 37.155144>,  <26.182194, 36.599857, 37.661800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.737429, 36.503925, 37.155144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.921812, 36.830162, 37.015240>,  <26.032442, 37.025902, 36.931297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.921812, 36.830162, 37.015240>,  <25.737429, 36.503925, 37.155144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.921812, 36.830162, 37.015240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089570, -0.434881, -0.896022,
		-0.882889, 0.381701, -0.273515,
		0.460959, 0.815587, -0.349763,
		26.060101, 37.074837, 36.910313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.388309, 36.899235, 36.542828>,  <25.737429, 36.503925, 37.155144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.388309, 36.899235, 36.542828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.786167, 36.936466, 36.524845>,  <26.024881, 36.958805, 36.514057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.786167, 36.936466, 36.524845>,  <25.388309, 36.899235, 36.542828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.786167, 36.936466, 36.524845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025162, -0.203801, -0.978689,
		-0.100256, 0.974578, -0.200367,
		0.994644, 0.093078, -0.044954,
		26.084560, 36.964390, 36.511360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.581541, 37.131790, 35.875713>,  <25.388309, 36.899235, 36.542828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.581541, 37.131790, 35.875713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.956266, 37.051647, 35.990421>,  <26.181101, 37.003563, 36.059246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.956266, 37.051647, 35.990421>,  <25.581541, 37.131790, 35.875713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.956266, 37.051647, 35.990421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190854, -0.394303, -0.898944,
		0.293182, 0.896875, -0.331150,
		0.936813, -0.200353, 0.286774,
		26.237310, 36.991543, 36.076454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.130438, 37.400269, 35.347378>,  <25.581541, 37.131790, 35.875713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.130438, 37.400269, 35.347378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.308996, 37.090778, 35.527191>,  <26.416132, 36.905087, 35.635078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.308996, 37.090778, 35.527191>,  <26.130438, 37.400269, 35.347378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.308996, 37.090778, 35.527191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152751, -0.429107, -0.890244,
		0.881701, 0.466070, -0.073365,
		0.446397, -0.773722, 0.449537,
		26.442915, 36.858662, 35.662052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.889759, 37.203968, 34.993576>,  <26.130438, 37.400269, 35.347378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.889759, 37.203968, 34.993576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.777735, 36.885788, 35.208546>,  <26.710520, 36.694881, 35.337528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.777735, 36.885788, 35.208546>,  <26.889759, 37.203968, 34.993576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.777735, 36.885788, 35.208546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246997, -0.600689, -0.760372,
		0.927664, -0.080206, 0.364702,
		-0.280058, -0.795449, 0.537427,
		26.693718, 36.647152, 35.369774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.437517, 36.696392, 34.992523>,  <26.889759, 37.203968, 34.993576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.437517, 36.696392, 34.992523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.078501, 36.535370, 35.064484>,  <26.863091, 36.438755, 35.107658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.078501, 36.535370, 35.064484>,  <27.437517, 36.696392, 34.992523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.078501, 36.535370, 35.064484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112023, -0.602799, -0.789990,
		0.426459, -0.688897, 0.586134,
		-0.897543, -0.402559, 0.179897,
		26.809238, 36.414600, 35.118454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.778564, 36.091213, 34.525703>,  <27.437517, 36.696392, 34.992523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.778564, 36.091213, 34.525703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.172138, 36.040169, 34.475765>,  <28.408283, 36.009541, 34.445801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.172138, 36.040169, 34.475765>,  <27.778564, 36.091213, 34.525703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.172138, 36.040169, 34.475765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173335, 0.850294, 0.496945,
		0.042737, -0.510602, 0.858754,
		0.983935, -0.127614, -0.124844,
		28.467319, 36.001884, 34.438313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.095785, 36.082497, 35.163227>,  <27.778564, 36.091213, 34.525703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.095785, 36.082497, 35.163227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.410883, 36.167271, 34.931870>,  <28.599941, 36.218136, 34.793053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.410883, 36.167271, 34.931870>,  <28.095785, 36.082497, 35.163227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.410883, 36.167271, 34.931870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262953, 0.733412, 0.626868,
		0.557059, -0.645902, 0.522012,
		0.787745, 0.211938, -0.578395,
		28.647205, 36.230854, 34.758350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.633169, 36.214317, 35.580624>,  <28.095785, 36.082497, 35.163227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.633169, 36.214317, 35.580624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.762146, 36.379932, 35.240128>,  <28.839533, 36.479301, 35.035831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.762146, 36.379932, 35.240128>,  <28.633169, 36.214317, 35.580624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.762146, 36.379932, 35.240128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186665, 0.853796, 0.485992,
		0.928002, -0.315601, 0.198013,
		0.322442, 0.414039, -0.851235,
		28.858879, 36.504143, 34.984756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.208941, 36.614708, 35.821899>,  <28.633169, 36.214317, 35.580624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.208941, 36.614708, 35.821899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.113298, 36.769218, 35.465557>,  <29.055914, 36.861923, 35.251751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.113298, 36.769218, 35.465557>,  <29.208941, 36.614708, 35.821899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.113298, 36.769218, 35.465557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237858, 0.912813, 0.331957,
		0.941410, -0.132525, -0.310135,
		-0.239103, 0.386276, -0.890854,
		29.041567, 36.885101, 35.198299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.843641, 37.037975, 35.572063>,  <29.208941, 36.614708, 35.821899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.843641, 37.037975, 35.572063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.510408, 37.155704, 35.384727>,  <29.310469, 37.226341, 35.272324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.510408, 37.155704, 35.384727>,  <29.843641, 37.037975, 35.572063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.510408, 37.155704, 35.384727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140364, 0.931458, 0.335684,
		0.535042, 0.213914, -0.817295,
		-0.833083, 0.294324, -0.468344,
		29.260483, 37.244003, 35.244225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.946451, 37.736294, 35.258915>,  <29.843641, 37.037975, 35.572063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.946451, 37.736294, 35.258915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.546457, 37.737011, 35.260822>,  <29.306461, 37.737442, 35.261967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.546457, 37.737011, 35.260822>,  <29.946451, 37.736294, 35.258915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.546457, 37.737011, 35.260822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003792, 0.886489, 0.462733,
		-0.003396, 0.462745, -0.886485,
		-0.999987, 0.001790, 0.004765,
		29.246462, 37.737549, 35.262253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.731981, 38.424831, 35.006458>,  <29.946451, 37.736294, 35.258915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.731981, 38.424831, 35.006458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.419552, 38.277729, 35.208321>,  <29.232094, 38.189468, 35.329437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.419552, 38.277729, 35.208321>,  <29.731981, 38.424831, 35.006458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.419552, 38.277729, 35.208321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170603, 0.903106, 0.394075,
		-0.600685, 0.221704, -0.768131,
		-0.781071, -0.367760, 0.504658,
		29.185230, 38.167400, 35.359718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.228107, 38.989895, 34.995270>,  <29.731981, 38.424831, 35.006458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.228107, 38.989895, 34.995270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.081388, 38.753559, 35.282707>,  <28.993357, 38.611759, 35.455170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.081388, 38.753559, 35.282707>,  <29.228107, 38.989895, 34.995270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.081388, 38.753559, 35.282707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186754, 0.803469, 0.565297,
		-0.911362, 0.073151, -0.405053,
		-0.366799, -0.590836, 0.718590,
		28.971348, 38.576309, 35.498283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.619818, 39.328091, 35.162334>,  <29.228107, 38.989895, 34.995270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.619818, 39.328091, 35.162334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.693607, 39.089817, 35.475033>,  <28.737881, 38.946854, 35.662651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.693607, 39.089817, 35.475033>,  <28.619818, 39.328091, 35.162334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.693607, 39.089817, 35.475033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008752, 0.794369, 0.607373,
		-0.982798, -0.118887, 0.141328,
		0.184475, -0.595688, 0.781745,
		28.748949, 38.911110, 35.709557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.154436, 39.475693, 35.635014>,  <28.619818, 39.328091, 35.162334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.154436, 39.475693, 35.635014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.427046, 39.283154, 35.855495>,  <28.590612, 39.167629, 35.987785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.427046, 39.283154, 35.855495>,  <28.154436, 39.475693, 35.635014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.427046, 39.283154, 35.855495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135200, 0.657443, 0.741276,
		-0.719197, -0.579722, 0.382986,
		0.681525, -0.481344, 0.551209,
		28.631504, 39.138752, 36.020859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.895384, 39.438313, 36.307739>,  <28.154436, 39.475693, 35.635014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.895384, 39.438313, 36.307739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.281822, 39.361324, 36.376575>,  <28.513685, 39.315132, 36.417877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.281822, 39.361324, 36.376575>,  <27.895384, 39.438313, 36.307739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.281822, 39.361324, 36.376575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050617, 0.512423, 0.857240,
		-0.253176, -0.836886, 0.485307,
		0.966095, -0.192468, 0.172093,
		28.571651, 39.303585, 36.428204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.902412, 39.175129, 36.951111>,  <27.895384, 39.438313, 36.307739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.902412, 39.175129, 36.951111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.266247, 39.323227, 36.875664>,  <28.484547, 39.412086, 36.830395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.266247, 39.323227, 36.875664>,  <27.902412, 39.175129, 36.951111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.266247, 39.323227, 36.875664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032150, 0.515274, 0.856422,
		0.414273, -0.772925, 0.480588,
		0.909585, 0.370244, -0.188615,
		28.539122, 39.434299, 36.819080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.371937, 39.209583, 37.614422>,  <27.902412, 39.175129, 36.951111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.371937, 39.209583, 37.614422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.614399, 39.434250, 37.389172>,  <28.759876, 39.569050, 37.254021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.614399, 39.434250, 37.389172>,  <28.371937, 39.209583, 37.614422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.614399, 39.434250, 37.389172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354865, 0.442651, 0.823487,
		0.711790, -0.698995, 0.069001,
		0.606157, 0.561664, -0.563123,
		28.796246, 39.602749, 37.220234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.017929, 39.246964, 37.881603>,  <28.371937, 39.209583, 37.614422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.017929, 39.246964, 37.881603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.972458, 39.583305, 37.669930>,  <28.945175, 39.785110, 37.542923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.972458, 39.583305, 37.669930>,  <29.017929, 39.246964, 37.881603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.972458, 39.583305, 37.669930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256027, 0.539445, 0.802153,
		0.959962, -0.044299, -0.276604,
		-0.113678, 0.840854, -0.529189,
		28.938354, 39.835560, 37.511173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504204, 39.709305, 38.247921>,  <29.017929, 39.246964, 37.881603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504204, 39.709305, 38.247921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.283587, 39.963242, 38.031487>,  <29.151217, 40.115604, 37.901627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.283587, 39.963242, 38.031487>,  <29.504204, 39.709305, 38.247921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.283587, 39.963242, 38.031487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128781, 0.705698, 0.696711,
		0.824144, 0.314586, -0.470980,
		-0.551545, 0.634843, -0.541084,
		29.118122, 40.153694, 37.869160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.692966, 40.349342, 38.377308>,  <29.504204, 39.709305, 38.247921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.692966, 40.349342, 38.377308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.350687, 40.457985, 38.201122>,  <29.145319, 40.523170, 38.095409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.350687, 40.457985, 38.201122>,  <29.692966, 40.349342, 38.377308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.350687, 40.457985, 38.201122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096701, 0.752263, 0.651728,
		0.508360, 0.600275, -0.617446,
		-0.855698, 0.271605, -0.440468,
		29.093977, 40.539467, 38.068981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.780525, 41.067787, 38.221565>,  <29.692966, 40.349342, 38.377308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.780525, 41.067787, 38.221565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.387842, 40.993126, 38.236595>,  <29.152233, 40.948330, 38.245613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.387842, 40.993126, 38.236595>,  <29.780525, 41.067787, 38.221565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.387842, 40.993126, 38.236595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137205, 0.830348, 0.540089,
		-0.132005, 0.525055, -0.840769,
		-0.981707, -0.186652, 0.037570,
		29.093330, 40.937130, 38.247868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.397505, 41.649242, 37.980427>,  <29.780525, 41.067787, 38.221565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.397505, 41.649242, 37.980427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.145393, 41.466446, 38.231476>,  <28.994127, 41.356766, 38.382103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.145393, 41.466446, 38.231476>,  <29.397505, 41.649242, 37.980427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.145393, 41.466446, 38.231476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165425, 0.868889, 0.466547,
		-0.758541, 0.190230, -0.623240,
		-0.630278, -0.456995, 0.627619,
		28.956310, 41.329346, 38.419762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.037836, 42.191742, 38.301098>,  <29.397505, 41.649242, 37.980427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.037836, 42.191742, 38.301098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.918076, 41.894566, 38.540562>,  <28.846220, 41.716259, 38.684238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.918076, 41.894566, 38.540562>,  <29.037836, 42.191742, 38.301098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.918076, 41.894566, 38.540562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310696, 0.669158, 0.675053,
		-0.902124, 0.016111, -0.431176,
		-0.299401, -0.742946, 0.598658,
		28.828255, 41.671680, 38.720158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.318007, 42.297531, 38.472702>,  <29.037836, 42.191742, 38.301098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.318007, 42.297531, 38.472702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.510904, 42.092701, 38.757015>,  <28.626642, 41.969803, 38.927605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.510904, 42.092701, 38.757015>,  <28.318007, 42.297531, 38.472702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.510904, 42.092701, 38.757015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102900, 0.772639, 0.626450,
		-0.869973, -0.375242, 0.319908,
		0.482243, -0.512076, 0.710788,
		28.655577, 41.939079, 38.970253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.553856, 37.085377, 47.503868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.168697, 36.983971, 47.466866>,  <40.937603, 36.923126, 47.444664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.168697, 36.983971, 47.466866>,  <41.553856, 37.085377, 47.503868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.168697, 36.983971, 47.466866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233194, 0.609114, 0.758024,
		-0.135819, 0.751473, -0.645633,
		-0.962899, -0.253512, -0.092510,
		40.879829, 36.907917, 47.439114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156925, 37.702385, 47.493473>,  <41.553856, 37.085377, 47.503868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.156925, 37.702385, 47.493473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.931461, 37.400200, 47.627079>,  <40.796185, 37.218887, 47.707241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.931461, 37.400200, 47.627079>,  <41.156925, 37.702385, 47.493473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931461, 37.400200, 47.627079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240753, 0.537070, 0.808452,
		-0.790145, 0.375274, -0.484603,
		-0.563657, -0.755464, 0.334014,
		40.762363, 37.173561, 47.727283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526699, 37.985096, 47.793682>,  <41.156925, 37.702385, 47.493473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526699, 37.985096, 47.793682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.552574, 37.627068, 47.970161>,  <40.568100, 37.412251, 48.076050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.552574, 37.627068, 47.970161>,  <40.526699, 37.985096, 47.793682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.552574, 37.627068, 47.970161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284552, 0.407227, 0.867869,
		-0.956476, -0.181684, -0.228353,
		0.064686, -0.895074, 0.441202,
		40.571980, 37.358547, 48.102524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005554, 37.981190, 48.207962>,  <40.526699, 37.985096, 47.793682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.005554, 37.981190, 48.207962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.207638, 37.670124, 48.357628>,  <40.328888, 37.483486, 48.447430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.207638, 37.670124, 48.357628>,  <40.005554, 37.981190, 48.207962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207638, 37.670124, 48.357628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411312, 0.164178, 0.896587,
		-0.758674, -0.606864, -0.236918,
		0.505209, -0.777664, 0.374168,
		40.359200, 37.436825, 48.469879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536911, 37.679512, 48.722687>,  <40.005554, 37.981190, 48.207962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536911, 37.679512, 48.722687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.899464, 37.539974, 48.818005>,  <40.116993, 37.456249, 48.875195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.899464, 37.539974, 48.818005>,  <39.536911, 37.679512, 48.722687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899464, 37.539974, 48.818005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197918, 0.147698, 0.969027,
		-0.373240, -0.925467, 0.064827,
		0.906378, -0.348849, 0.238293,
		40.171375, 37.435318, 48.889492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392750, 37.160160, 49.272202>,  <39.536911, 37.679512, 48.722687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392750, 37.160160, 49.272202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.769222, 37.290787, 49.306931>,  <39.995106, 37.369164, 49.327770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.769222, 37.290787, 49.306931>,  <39.392750, 37.160160, 49.272202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769222, 37.290787, 49.306931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118739, 0.079055, 0.989773,
		0.316365, -0.941862, 0.113181,
		0.941177, 0.326569, 0.086826,
		40.051575, 37.388756, 49.332977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684982, 36.716087, 49.728092>,  <39.392750, 37.160160, 49.272202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684982, 36.716087, 49.728092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.904408, 37.049656, 49.752254>,  <40.036064, 37.249798, 49.766750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.904408, 37.049656, 49.752254>,  <39.684982, 36.716087, 49.728092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.904408, 37.049656, 49.752254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040690, -0.098785, 0.994276,
		0.835118, -0.542966, -0.088122,
		0.548563, 0.833924, 0.060404,
		40.068977, 37.299831, 49.770374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.150383, 36.532108, 50.276718>,  <39.684982, 36.716087, 49.728092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.150383, 36.532108, 50.276718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.180519, 36.928596, 50.233242>,  <40.198601, 37.166489, 50.207157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.180519, 36.928596, 50.233242>,  <40.150383, 36.532108, 50.276718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.180519, 36.928596, 50.233242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146599, 0.096802, 0.984448,
		0.986323, -0.090101, -0.138019,
		0.075339, 0.991217, -0.108687,
		40.203121, 37.225960, 50.200638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610149, 36.772369, 50.806507>,  <40.150383, 36.532108, 50.276718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610149, 36.772369, 50.806507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.366531, 37.078247, 50.722309>,  <40.220360, 37.261772, 50.671791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.366531, 37.078247, 50.722309>,  <40.610149, 36.772369, 50.806507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366531, 37.078247, 50.722309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069620, 0.315915, 0.946230,
		0.790073, 0.561643, -0.245644,
		-0.609046, 0.764692, -0.210494,
		40.183819, 37.307655, 50.659161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956478, 37.260292, 51.182903>,  <40.610149, 36.772369, 50.806507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.956478, 37.260292, 51.182903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.597179, 37.407021, 51.086075>,  <40.381599, 37.495056, 51.027977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.597179, 37.407021, 51.086075>,  <40.956478, 37.260292, 51.182903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.597179, 37.407021, 51.086075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068685, 0.426858, 0.901707,
		0.434091, 0.826582, -0.358229,
		-0.898247, 0.366818, -0.242069,
		40.327705, 37.517067, 51.013454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976948, 37.891876, 51.440750>,  <40.956478, 37.260292, 51.182903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976948, 37.891876, 51.440750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.587101, 37.843266, 51.365540>,  <40.353191, 37.814098, 51.320415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.587101, 37.843266, 51.365540>,  <40.976948, 37.891876, 51.440750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587101, 37.843266, 51.365540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214408, 0.265013, 0.940105,
		-0.064417, 0.956556, -0.284342,
		-0.974618, -0.121524, -0.188022,
		40.294716, 37.806808, 51.309132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.733345, 38.448860, 51.806576>,  <40.976948, 37.891876, 51.440750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.733345, 38.448860, 51.806576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.436691, 38.188801, 51.740505>,  <40.258698, 38.032764, 51.700863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.436691, 38.188801, 51.740505>,  <40.733345, 38.448860, 51.806576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.436691, 38.188801, 51.740505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327224, 0.135687, 0.935154,
		-0.585576, 0.747594, -0.313374,
		-0.741637, -0.650147, -0.165176,
		40.214199, 37.993755, 51.690952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194118, 38.962593, 51.791176>,  <40.733345, 38.448860, 51.806576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194118, 38.962593, 51.791176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.095470, 38.608307, 51.948502>,  <40.036282, 38.395737, 52.042896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.095470, 38.608307, 51.948502>,  <40.194118, 38.962593, 51.791176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095470, 38.608307, 51.948502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181653, 0.440902, 0.878981,
		-0.951935, 0.145328, -0.269628,
		-0.246620, -0.885712, 0.393311,
		40.021484, 38.342594, 52.066494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563679, 39.075253, 52.185898>,  <40.194118, 38.962593, 51.791176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563679, 39.075253, 52.185898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.789913, 38.770905, 52.313141>,  <39.925655, 38.588295, 52.389484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.789913, 38.770905, 52.313141>,  <39.563679, 39.075253, 52.185898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789913, 38.770905, 52.313141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106928, 0.314814, 0.943111,
		-0.817727, -0.567427, 0.096698,
		0.565588, -0.760867, 0.318106,
		39.959591, 38.542645, 52.408573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322941, 39.540607, 51.542347>,  <39.563679, 39.075253, 52.185898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322941, 39.540607, 51.542347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.004021, 39.605907, 51.774780>,  <38.812668, 39.645088, 51.914242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.004021, 39.605907, 51.774780>,  <39.322941, 39.540607, 51.542347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004021, 39.605907, 51.774780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485140, 0.399439, -0.777874,
		-0.359095, -0.902108, -0.239275,
		-0.797302, 0.163249, 0.581085,
		38.764832, 39.654881, 51.949104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885654, 39.033863, 51.310329>,  <39.322941, 39.540607, 51.542347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885654, 39.033863, 51.310329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.699928, 39.347324, 51.475399>,  <38.588493, 39.535400, 51.574440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.699928, 39.347324, 51.475399>,  <38.885654, 39.033863, 51.310329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699928, 39.347324, 51.475399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502133, 0.150901, -0.851523,
		-0.729570, -0.602593, 0.323432,
		-0.464316, 0.783652, 0.412675,
		38.560635, 39.582420, 51.599201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201374, 39.029621, 50.971069>,  <38.885654, 39.033863, 51.310329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201374, 39.029621, 50.971069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.254520, 39.395477, 51.123798>,  <38.286407, 39.614990, 51.215435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.254520, 39.395477, 51.123798>,  <38.201374, 39.029621, 50.971069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254520, 39.395477, 51.123798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286997, 0.404237, -0.868461,
		-0.948673, 0.005805, 0.316206,
		0.132863, 0.914636, 0.381823,
		38.294380, 39.669868, 51.238346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604576, 39.340576, 50.862881>,  <38.201374, 39.029621, 50.971069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604576, 39.340576, 50.862881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.828171, 39.665245, 50.930672>,  <37.962326, 39.860046, 50.971348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.828171, 39.665245, 50.930672>,  <37.604576, 39.340576, 50.862881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828171, 39.665245, 50.930672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310742, 0.394563, -0.864731,
		-0.768748, 0.430708, 0.472776,
		0.558986, 0.811672, 0.169481,
		37.995865, 39.908745, 50.981518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212719, 39.900002, 50.624313>,  <37.604576, 39.340576, 50.862881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212719, 39.900002, 50.624313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.579315, 40.060020, 50.623680>,  <37.799274, 40.156033, 50.623299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.579315, 40.060020, 50.623680>,  <37.212719, 39.900002, 50.624313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579315, 40.060020, 50.623680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223072, 0.507754, -0.832121,
		-0.332082, 0.762987, 0.554592,
		0.916494, 0.400046, -0.001585,
		37.854263, 40.180035, 50.623203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106312, 40.622929, 50.394245>,  <37.212719, 39.900002, 50.624313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106312, 40.622929, 50.394245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.482491, 40.495781, 50.346062>,  <37.708199, 40.419491, 50.317150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.482491, 40.495781, 50.346062>,  <37.106312, 40.622929, 50.394245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482491, 40.495781, 50.346062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039881, 0.455102, -0.889546,
		0.337583, 0.831770, 0.440678,
		0.940451, -0.317870, -0.120463,
		37.764626, 40.400421, 50.309921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476742, 41.185921, 50.179173>,  <37.106312, 40.622929, 50.394245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476742, 41.185921, 50.179173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.693439, 40.864803, 50.079544>,  <37.823460, 40.672134, 50.019768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.693439, 40.864803, 50.079544>,  <37.476742, 41.185921, 50.179173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693439, 40.864803, 50.079544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099764, 0.355639, -0.929284,
		0.834601, 0.478587, 0.272756,
		0.541746, -0.802792, -0.249071,
		37.855965, 40.623966, 50.004822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997047, 41.385334, 49.776230>,  <37.476742, 41.185921, 50.179173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997047, 41.385334, 49.776230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.965664, 40.996990, 49.685661>,  <37.946835, 40.763985, 49.631321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.965664, 40.996990, 49.685661>,  <37.997047, 41.385334, 49.776230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965664, 40.996990, 49.685661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179123, 0.209700, -0.961219,
		0.980693, -0.115977, 0.157450,
		-0.078462, -0.970863, -0.226425,
		37.942123, 40.705730, 49.617733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588108, 41.284744, 49.318764>,  <37.997047, 41.385334, 49.776230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588108, 41.284744, 49.318764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.313530, 40.999294, 49.262848>,  <38.148785, 40.828026, 49.229298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.313530, 40.999294, 49.262848>,  <38.588108, 41.284744, 49.318764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313530, 40.999294, 49.262848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159156, 0.040139, -0.986437,
		0.709554, -0.699380, 0.086024,
		-0.686442, -0.713622, -0.139791,
		38.107597, 40.785206, 49.220909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943542, 40.889210, 48.729156>,  <38.588108, 41.284744, 49.318764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943542, 40.889210, 48.729156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.579708, 40.724495, 48.751373>,  <38.361408, 40.625664, 48.764706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.579708, 40.724495, 48.751373>,  <38.943542, 40.889210, 48.729156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579708, 40.724495, 48.751373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015260, -0.166688, -0.985892,
		0.415238, -0.895904, 0.157901,
		-0.909585, -0.411789, 0.055544,
		38.306831, 40.600960, 48.768036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985809, 40.241005, 48.343311>,  <38.943542, 40.889210, 48.729156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985809, 40.241005, 48.343311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.607922, 40.371822, 48.352615>,  <38.381187, 40.450314, 48.358196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.607922, 40.371822, 48.352615>,  <38.985809, 40.241005, 48.343311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607922, 40.371822, 48.352615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047932, -0.067582, -0.996562,
		-0.324347, -0.942590, 0.079522,
		-0.944723, 0.327043, 0.023260,
		38.324505, 40.469936, 48.359592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672020, 39.799419, 47.898384>,  <38.985809, 40.241005, 48.343311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672020, 39.799419, 47.898384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.401581, 40.091843, 47.935146>,  <38.239319, 40.267296, 47.957203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.401581, 40.091843, 47.935146>,  <38.672020, 39.799419, 47.898384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401581, 40.091843, 47.935146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122859, 0.011130, -0.992362,
		-0.726499, -0.682222, 0.082292,
		-0.676095, 0.731060, 0.091903,
		38.198753, 40.311161, 47.962719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142681, 39.605667, 47.459686>,  <38.672020, 39.799419, 47.898384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142681, 39.605667, 47.459686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.103664, 40.002338, 47.493313>,  <38.080254, 40.240341, 47.513489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.103664, 40.002338, 47.493313>,  <38.142681, 39.605667, 47.459686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103664, 40.002338, 47.493313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045537, 0.079930, -0.995760,
		-0.994190, -0.100953, 0.037362,
		-0.097538, 0.991675, 0.084062,
		38.074402, 40.299843, 47.518532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669506, 39.707508, 46.992767>,  <38.142681, 39.605667, 47.459686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669506, 39.707508, 46.992767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.854893, 40.054852, 47.063358>,  <37.966125, 40.263260, 47.105713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.854893, 40.054852, 47.063358>,  <37.669506, 39.707508, 46.992767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854893, 40.054852, 47.063358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065014, 0.165303, -0.984098,
		-0.883725, 0.467572, 0.020157,
		0.463468, 0.868362, 0.176481,
		37.993935, 40.315361, 47.116302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853748, 39.744053, 46.775616>,  <37.669506, 39.707508, 46.992767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853748, 39.744053, 46.775616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.495983, 39.648964, 46.624084>,  <36.281322, 39.591911, 46.533165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.495983, 39.648964, 46.624084>,  <36.853748, 39.744053, 46.775616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495983, 39.648964, 46.624084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323050, -0.242389, 0.914815,
		-0.309292, 0.940605, 0.140001,
		-0.894414, -0.237718, -0.378831,
		36.227657, 39.577648, 46.510433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412663, 40.158310, 47.083347>,  <36.853748, 39.744053, 46.775616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412663, 40.158310, 47.083347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.210808, 39.839668, 46.950222>,  <36.089695, 39.648483, 46.870346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.210808, 39.839668, 46.950222>,  <36.412663, 40.158310, 47.083347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210808, 39.839668, 46.950222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312760, -0.190632, 0.930505,
		-0.804688, 0.573660, -0.152945,
		-0.504637, -0.796601, -0.332817,
		36.059418, 39.600689, 46.850376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783577, 40.217407, 47.357883>,  <36.412663, 40.158310, 47.083347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783577, 40.217407, 47.357883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.834404, 39.827961, 47.282070>,  <35.864899, 39.594292, 47.236584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.834404, 39.827961, 47.282070>,  <35.783577, 40.217407, 47.357883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834404, 39.827961, 47.282070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376747, -0.224132, 0.898792,
		-0.917560, -0.042802, -0.395287,
		0.127067, -0.973618, -0.189529,
		35.872524, 39.535877, 47.225212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148830, 39.966549, 47.556870>,  <35.783577, 40.217407, 47.357883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148830, 39.966549, 47.556870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.383430, 39.642666, 47.564796>,  <35.524189, 39.448338, 47.569553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.383430, 39.642666, 47.564796>,  <35.148830, 39.966549, 47.556870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383430, 39.642666, 47.564796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341533, -0.225046, 0.912529,
		-0.734423, -0.541964, -0.408531,
		0.586497, -0.809709, 0.019820,
		35.559380, 39.399754, 47.570744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753098, 39.352280, 47.935799>,  <35.148830, 39.966549, 47.556870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753098, 39.352280, 47.935799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.140514, 39.253181, 47.945194>,  <35.372963, 39.193722, 47.950832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.140514, 39.253181, 47.945194>,  <34.753098, 39.352280, 47.935799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140514, 39.253181, 47.945194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045919, -0.085165, 0.995308,
		-0.244585, -0.965074, -0.093862,
		0.968540, -0.247747, 0.023485,
		35.431076, 39.178860, 47.952240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749428, 38.833363, 48.294800>,  <34.753098, 39.352280, 47.935799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749428, 38.833363, 48.294800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.133945, 38.940075, 48.322334>,  <35.364655, 39.004101, 48.338856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.133945, 38.940075, 48.322334>,  <34.749428, 38.833363, 48.294800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133945, 38.940075, 48.322334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029848, -0.147548, 0.988604,
		0.273898, -0.952396, -0.133875,
		0.961295, 0.266780, 0.068840,
		35.422333, 39.020107, 48.342987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191441, 38.286457, 48.736313>,  <34.749428, 38.833363, 48.294800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191441, 38.286457, 48.736313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.365700, 38.646439, 48.743240>,  <35.470253, 38.862427, 48.747398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.365700, 38.646439, 48.743240>,  <35.191441, 38.286457, 48.736313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365700, 38.646439, 48.743240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002552, -0.018006, 0.999835,
		0.900116, -0.435616, -0.005548,
		0.435643, 0.899952, 0.017319,
		35.496391, 38.916424, 48.748436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312668, 37.678104, 49.181210>,  <35.191441, 38.286457, 48.736313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312668, 37.678104, 49.181210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.987171, 37.453598, 49.241604>,  <34.791874, 37.318893, 49.277840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.987171, 37.453598, 49.241604>,  <35.312668, 37.678104, 49.181210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987171, 37.453598, 49.241604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125089, -0.084565, -0.988535,
		0.567600, -0.823303, -0.001394,
		-0.813746, -0.561267, 0.150985,
		34.743046, 37.285217, 49.286900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393833, 37.182049, 48.685059>,  <35.312668, 37.678104, 49.181210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393833, 37.182049, 48.685059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.004543, 37.155788, 48.773178>,  <34.770969, 37.140034, 48.826050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.004543, 37.155788, 48.773178>,  <35.393833, 37.182049, 48.685059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004543, 37.155788, 48.773178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213152, -0.101074, -0.971777,
		0.086068, -0.992710, 0.084373,
		-0.973221, -0.065655, 0.220297,
		34.712578, 37.136093, 48.839268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146065, 36.511116, 48.413349>,  <35.393833, 37.182049, 48.685059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146065, 36.511116, 48.413349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.820351, 36.740601, 48.448677>,  <34.624924, 36.878292, 48.469872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.820351, 36.740601, 48.448677>,  <35.146065, 36.511116, 48.413349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820351, 36.740601, 48.448677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348148, -0.360957, -0.865161,
		-0.464475, -0.735232, 0.493657,
		-0.814282, 0.573711, 0.088314,
		34.576065, 36.912712, 48.475170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474743, 36.016033, 48.362011>,  <35.146065, 36.511116, 48.413349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474743, 36.016033, 48.362011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.411213, 36.394939, 48.250679>,  <34.373096, 36.622284, 48.183880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.411213, 36.394939, 48.250679>,  <34.474743, 36.016033, 48.362011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411213, 36.394939, 48.250679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404523, -0.319599, -0.856865,
		-0.900631, -0.023499, 0.433949,
		-0.158825, 0.947262, -0.278334,
		34.363564, 36.679119, 48.167179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915783, 35.892708, 47.885075>,  <34.474743, 36.016033, 48.362011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915783, 35.892708, 47.885075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.054230, 36.265144, 47.838989>,  <34.137299, 36.488605, 47.811337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.054230, 36.265144, 47.838989>,  <33.915783, 35.892708, 47.885075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054230, 36.265144, 47.838989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080159, -0.093009, -0.992433,
		-0.934762, 0.352731, 0.042443,
		0.346115, 0.931091, -0.115216,
		34.158066, 36.544472, 47.804424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481083, 36.133411, 47.352116>,  <33.915783, 35.892708, 47.885075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481083, 36.133411, 47.352116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.776939, 36.400864, 47.321476>,  <33.954453, 36.561337, 47.303093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.776939, 36.400864, 47.321476>,  <33.481083, 36.133411, 47.352116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776939, 36.400864, 47.321476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127424, -0.250888, -0.959593,
		-0.660832, 0.699990, -0.270766,
		0.739638, 0.668632, -0.076599,
		33.998829, 36.601452, 47.298496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387665, 36.356510, 46.723530>,  <33.481083, 36.133411, 47.352116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387665, 36.356510, 46.723530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.765423, 36.456074, 46.809475>,  <33.992077, 36.515812, 46.861042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.765423, 36.456074, 46.809475>,  <33.387665, 36.356510, 46.723530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765423, 36.456074, 46.809475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254367, -0.138923, -0.957078,
		-0.208379, 0.958511, -0.194513,
		0.944392, 0.248912, 0.214865,
		34.048740, 36.530746, 46.873936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<38.226597, 35.559856, 51.880905> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.561150, 35.688210, 51.703140>,  <38.761879, 35.765221, 51.596481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.561150, 35.688210, 51.703140>,  <38.226597, 35.559856, 51.880905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561150, 35.688210, 51.703140> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225322, -0.537824, -0.812389,
		-0.499700, 0.779600, -0.377522,
		0.836379, 0.320887, -0.444412,
		38.812065, 35.784477, 51.569817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950096, 35.484692, 51.283924>,  <38.226597, 35.559856, 51.880905>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950096, 35.484692, 51.283924> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.326355, 35.589333, 51.197441>,  <38.552109, 35.652119, 51.145550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.326355, 35.589333, 51.197441>,  <37.950096, 35.484692, 51.283924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326355, 35.589333, 51.197441> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090752, -0.419982, -0.902984,
		-0.327026, 0.869011, -0.371314,
		0.940648, 0.261602, -0.216209,
		38.608551, 35.667812, 51.132580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969952, 35.875912, 50.687408>,  <37.950096, 35.484692, 51.283924>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969952, 35.875912, 50.687408> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.309074, 35.672050, 50.746033>,  <38.512547, 35.549736, 50.781208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.309074, 35.672050, 50.746033>,  <37.969952, 35.875912, 50.687408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309074, 35.672050, 50.746033> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130812, -0.468823, -0.873552,
		0.513918, 0.721431, -0.464140,
		0.847807, -0.509649, 0.146564,
		38.563416, 35.519157, 50.790001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267406, 35.960831, 50.121544>,  <37.969952, 35.875912, 50.687408>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267406, 35.960831, 50.121544> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.478477, 35.650024, 50.258835>,  <38.605118, 35.463539, 50.341209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.478477, 35.650024, 50.258835>,  <38.267406, 35.960831, 50.121544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478477, 35.650024, 50.258835> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006062, -0.400602, -0.916232,
		0.849426, 0.485552, -0.206677,
		0.527673, -0.777018, 0.343225,
		38.636780, 35.416920, 50.361801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802696, 35.901768, 49.662586>,  <38.267406, 35.960831, 50.121544>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802696, 35.901768, 49.662586> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.769886, 35.543423, 49.837261>,  <38.750202, 35.328415, 49.942066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.769886, 35.543423, 49.837261>,  <38.802696, 35.901768, 49.662586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769886, 35.543423, 49.837261> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043132, -0.440942, -0.896499,
		0.995697, -0.054697, 0.074807,
		-0.082022, -0.895867, 0.436686,
		38.745281, 35.274662, 49.968266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303288, 35.468487, 49.249542>,  <38.802696, 35.901768, 49.662586>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303288, 35.468487, 49.249542> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.104923, 35.201965, 49.472294>,  <38.985905, 35.042053, 49.605946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.104923, 35.201965, 49.472294>,  <39.303288, 35.468487, 49.249542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104923, 35.201965, 49.472294> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148196, -0.696823, -0.701766,
		0.855633, -0.265487, 0.444306,
		-0.495913, -0.666299, 0.556881,
		38.956150, 35.002075, 49.639359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716553, 34.896130, 49.197876>,  <39.303288, 35.468487, 49.249542>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716553, 34.896130, 49.197876> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.356358, 34.758175, 49.303833>,  <39.140240, 34.675404, 49.367409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.356358, 34.758175, 49.303833>,  <39.716553, 34.896130, 49.197876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356358, 34.758175, 49.303833> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030249, -0.657325, -0.752999,
		0.433819, -0.670058, 0.602349,
		-0.900492, -0.344886, 0.264891,
		39.086208, 34.654709, 49.383301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685741, 34.051960, 49.206528>,  <39.716553, 34.896130, 49.197876>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685741, 34.051960, 49.206528> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.310139, 34.185501, 49.173523>,  <39.084778, 34.265625, 49.153721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.310139, 34.185501, 49.173523>,  <39.685741, 34.051960, 49.206528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310139, 34.185501, 49.173523> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161920, -0.640891, -0.750360,
		-0.303391, -0.691233, 0.655859,
		-0.939008, 0.333849, -0.082516,
		39.028435, 34.285656, 49.148769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343769, 33.496159, 49.271603>,  <39.685741, 34.051960, 49.206528>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343769, 33.496159, 49.271603> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.070980, 33.734962, 49.102608>,  <38.907307, 33.878246, 49.001209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.070980, 33.734962, 49.102608>,  <39.343769, 33.496159, 49.271603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070980, 33.734962, 49.102608> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233220, -0.725014, -0.648046,
		-0.693197, -0.343417, 0.633674,
		-0.681972, 0.597009, -0.422485,
		38.866390, 33.914066, 48.975861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801815, 32.991058, 49.002529>,  <39.343769, 33.496159, 49.271603>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801815, 32.991058, 49.002529> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.756119, 33.339893, 48.812195>,  <38.728703, 33.549194, 48.697994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.756119, 33.339893, 48.812195>,  <38.801815, 32.991058, 49.002529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756119, 33.339893, 48.812195> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273457, -0.488072, -0.828859,
		-0.955076, 0.035430, 0.294236,
		-0.114241, 0.872084, -0.475834,
		38.721848, 33.601517, 48.669445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205917, 32.895592, 48.528946>,  <38.801815, 32.991058, 49.002529>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205917, 32.895592, 48.528946> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.393604, 33.220482, 48.390308>,  <38.506218, 33.415417, 48.307125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.393604, 33.220482, 48.390308>,  <38.205917, 32.895592, 48.528946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393604, 33.220482, 48.390308> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117369, -0.331645, -0.936075,
		-0.875248, 0.479904, -0.060284,
		0.469219, 0.812222, -0.346598,
		38.534370, 33.464149, 48.286327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841309, 33.163147, 48.000637>,  <38.205917, 32.895592, 48.528946>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841309, 33.163147, 48.000637> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.194321, 33.328766, 47.911461>,  <38.406128, 33.428139, 47.857956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.194321, 33.328766, 47.911461>,  <37.841309, 33.163147, 48.000637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194321, 33.328766, 47.911461> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077672, -0.339227, -0.937492,
		-0.463793, 0.844683, -0.267219,
		0.882532, 0.414047, -0.222939,
		38.459080, 33.452980, 47.844578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459900, 33.792152, 47.977978>,  <37.841309, 33.163147, 48.000637>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459900, 33.792152, 47.977978> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.069851, 33.869419, 47.934479>,  <36.835823, 33.915779, 47.908379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.069851, 33.869419, 47.934479>,  <37.459900, 33.792152, 47.977978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069851, 33.869419, 47.934479> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073320, 0.181916, 0.980577,
		0.209196, 0.964155, -0.163227,
		-0.975121, 0.193165, -0.108748,
		36.777313, 33.927368, 47.901855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360645, 34.336555, 48.246109>,  <37.459900, 33.792152, 47.977978>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360645, 34.336555, 48.246109> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.991154, 34.184437, 48.264454>,  <36.769459, 34.093166, 48.275459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.991154, 34.184437, 48.264454>,  <37.360645, 34.336555, 48.246109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991154, 34.184437, 48.264454> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046946, 0.231219, 0.971768,
		-0.380164, 0.895496, -0.231436,
		-0.923727, -0.380296, 0.045861,
		36.714035, 34.070347, 48.278214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005432, 34.811283, 48.655315>,  <37.360645, 34.336555, 48.246109>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005432, 34.811283, 48.655315> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.787960, 34.475567, 48.654987>,  <36.657478, 34.274136, 48.654789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.787960, 34.475567, 48.654987>,  <37.005432, 34.811283, 48.655315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787960, 34.475567, 48.654987> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273659, 0.176344, 0.945523,
		-0.793426, 0.514285, -0.325555,
		-0.543678, -0.839294, -0.000823,
		36.624855, 34.223778, 48.654739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454353, 34.967556, 48.958584>,  <37.005432, 34.811283, 48.655315>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454353, 34.967556, 48.958584> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.413383, 34.569733, 48.966270>,  <36.388802, 34.331039, 48.970882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.413383, 34.569733, 48.966270>,  <36.454353, 34.967556, 48.958584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413383, 34.569733, 48.966270> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311688, 0.050434, 0.948845,
		-0.944648, 0.091198, -0.315156,
		-0.102427, -0.994555, 0.019217,
		36.382656, 34.271366, 48.972034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873058, 34.771187, 49.208607>,  <36.454353, 34.967556, 48.958584>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873058, 34.771187, 49.208607> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.081577, 34.438843, 49.286495>,  <36.206688, 34.239437, 49.333229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.081577, 34.438843, 49.286495>,  <35.873058, 34.771187, 49.208607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081577, 34.438843, 49.286495> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270813, 0.055322, 0.961041,
		-0.809264, -0.553723, -0.196169,
		0.521298, -0.830861, 0.194726,
		36.237968, 34.189583, 49.344913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388302, 34.288574, 49.560989>,  <35.873058, 34.771187, 49.208607>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388302, 34.288574, 49.560989> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.771633, 34.208549, 49.642563>,  <36.001633, 34.160534, 49.691505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.771633, 34.208549, 49.642563>,  <35.388302, 34.288574, 49.560989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771633, 34.208549, 49.642563> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212329, -0.021210, 0.976968,
		-0.191135, -0.979552, -0.062806,
		0.958323, -0.200069, 0.203933,
		36.059132, 34.148529, 49.703743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378178, 33.722157, 50.126717>,  <35.388302, 34.288574, 49.560989>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378178, 33.722157, 50.126717> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.746300, 33.878616, 50.129227>,  <35.967175, 33.972492, 50.130733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.746300, 33.878616, 50.129227>,  <35.378178, 33.722157, 50.126717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746300, 33.878616, 50.129227> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120673, 0.268585, 0.955667,
		0.372123, -0.880264, 0.294382,
		0.920306, 0.391149, 0.006277,
		36.022392, 33.995960, 50.131111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676380, 33.405003, 50.725040>,  <35.378178, 33.722157, 50.126717>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676380, 33.405003, 50.725040> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.861191, 33.747963, 50.634365>,  <35.972076, 33.953739, 50.579960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.861191, 33.747963, 50.634365>,  <35.676380, 33.405003, 50.725040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861191, 33.747963, 50.634365> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000522, 0.255866, 0.966712,
		0.886865, -0.446531, 0.118666,
		0.462029, 0.857405, -0.226685,
		35.999798, 34.005184, 50.566360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136456, 33.429768, 51.274193>,  <35.676380, 33.405003, 50.725040>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136456, 33.429768, 51.274193> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.077045, 33.795498, 51.123486>,  <36.041401, 34.014935, 51.033062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.077045, 33.795498, 51.123486>,  <36.136456, 33.429768, 51.274193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077045, 33.795498, 51.123486> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169339, 0.351854, 0.920610,
		0.974302, 0.200535, 0.102572,
		-0.148525, 0.914322, -0.376770,
		36.032490, 34.069794, 51.010456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328709, 33.802734, 51.868092>,  <36.136456, 33.429768, 51.274193>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328709, 33.802734, 51.868092> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.152210, 34.075119, 51.634312>,  <36.046310, 34.238552, 51.494041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.152210, 34.075119, 51.634312>,  <36.328709, 33.802734, 51.868092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152210, 34.075119, 51.634312> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113620, 0.603650, 0.789112,
		0.890163, 0.414601, -0.188989,
		-0.441249, 0.680965, -0.584454,
		36.019836, 34.279408, 51.458977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699871, 34.432632, 52.047245>,  <36.328709, 33.802734, 51.868092>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699871, 34.432632, 52.047245> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.357925, 34.549091, 51.875462>,  <36.152756, 34.618965, 51.772392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.357925, 34.549091, 51.875462>,  <36.699871, 34.432632, 52.047245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357925, 34.549091, 51.875462> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051793, 0.775704, 0.628968,
		0.516258, 0.559927, -0.648044,
		-0.854866, 0.291145, -0.429463,
		36.101467, 34.636436, 51.746624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840717, 35.089748, 51.881176>,  <36.699871, 34.432632, 52.047245>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840717, 35.089748, 51.881176> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.441654, 35.073322, 51.903091>,  <36.202217, 35.063465, 51.916241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.441654, 35.073322, 51.903091>,  <36.840717, 35.089748, 51.881176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441654, 35.073322, 51.903091> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006149, 0.850676, 0.525654,
		-0.068195, 0.524084, -0.848932,
		-0.997653, -0.041067, 0.054789,
		36.142357, 35.061001, 51.919529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665588, 35.821243, 51.913967>,  <36.840717, 35.089748, 51.881176>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665588, 35.821243, 51.913967> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.356213, 35.616272, 52.063210>,  <36.170586, 35.493290, 52.152756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.356213, 35.616272, 52.063210>,  <36.665588, 35.821243, 51.913967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356213, 35.616272, 52.063210> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074635, 0.658146, 0.749182,
		-0.629460, 0.551601, -0.547281,
		-0.773441, -0.512427, 0.373107,
		36.124180, 35.462543, 52.175140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057053, 36.237087, 52.054317>,  <36.665588, 35.821243, 51.913967>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057053, 36.237087, 52.054317> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.010029, 35.917496, 52.290218>,  <35.981815, 35.725739, 52.431759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.010029, 35.917496, 52.290218>,  <36.057053, 36.237087, 52.054317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010029, 35.917496, 52.290218> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067780, 0.598942, 0.797918,
		-0.990750, 0.053827, -0.124565,
		-0.117557, -0.798981, 0.589754,
		35.974762, 35.677803, 52.467144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269039, 36.198437, 52.257973>,  <36.057053, 36.237087, 52.054317>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269039, 36.198437, 52.257973> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.197250, 36.591461, 52.238525>,  <35.154179, 36.827274, 52.226856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.197250, 36.591461, 52.238525>,  <35.269039, 36.198437, 52.257973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197250, 36.591461, 52.238525> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396721, -0.117513, -0.910386,
		-0.900224, -0.144095, 0.410892,
		-0.179467, 0.982562, -0.048622,
		35.143410, 36.886230, 52.223938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530071, 36.294083, 52.017273>,  <35.269039, 36.198437, 52.257973>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530071, 36.294083, 52.017273> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.691288, 36.652718, 51.943844>,  <34.788017, 36.867897, 51.899788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.691288, 36.652718, 51.943844>,  <34.530071, 36.294083, 52.017273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691288, 36.652718, 51.943844> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512184, 0.054745, -0.857129,
		-0.758438, 0.439480, 0.481279,
		0.403038, 0.896583, -0.183574,
		34.812199, 36.921692, 51.888771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996643, 36.651131, 51.677879>,  <34.530071, 36.294083, 52.017273>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996643, 36.651131, 51.677879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.325130, 36.858910, 51.583408>,  <34.522221, 36.983578, 51.526726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.325130, 36.858910, 51.583408>,  <33.996643, 36.651131, 51.677879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325130, 36.858910, 51.583408> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298525, 0.038360, -0.953631,
		-0.486299, 0.853642, 0.186569,
		0.821216, 0.519445, -0.236179,
		34.571495, 37.014744, 51.512554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734032, 37.219711, 51.209034>,  <33.996643, 36.651131, 51.677879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734032, 37.219711, 51.209034> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.122837, 37.152931, 51.142918>,  <34.356121, 37.112865, 51.103249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.122837, 37.152931, 51.142918>,  <33.734032, 37.219711, 51.209034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122837, 37.152931, 51.142918> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146133, 0.121231, -0.981809,
		0.183950, 0.978484, 0.093441,
		0.972012, -0.166949, -0.165290,
		34.414440, 37.102848, 51.093330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.930210, 37.711201, 50.710533>,  <33.734032, 37.219711, 51.209034>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.930210, 37.711201, 50.710533> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.243053, 37.463177, 50.685776>,  <34.430759, 37.314362, 50.670921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.243053, 37.463177, 50.685776>,  <33.930210, 37.711201, 50.710533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243053, 37.463177, 50.685776> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045320, 0.042463, -0.998070,
		0.621491, 0.783405, 0.005110,
		0.782110, -0.620059, -0.061894,
		34.477688, 37.277161, 50.667206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367283, 38.054527, 50.149685>,  <33.930210, 37.711201, 50.710533>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367283, 38.054527, 50.149685> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.507729, 37.680344, 50.165867>,  <34.591995, 37.455833, 50.175575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.507729, 37.680344, 50.165867>,  <34.367283, 38.054527, 50.149685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507729, 37.680344, 50.165867> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110583, -0.001471, -0.993866,
		0.929779, 0.353437, 0.102929,
		0.351117, -0.935457, 0.040451,
		34.613064, 37.399708, 50.178001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883602, 38.119427, 49.637081>,  <34.367283, 38.054527, 50.149685>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883602, 38.119427, 49.637081> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.738770, 37.751083, 49.694931>,  <34.651871, 37.530075, 49.729641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.738770, 37.751083, 49.694931>,  <34.883602, 38.119427, 49.637081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738770, 37.751083, 49.694931> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068310, -0.128518, -0.989352,
		0.929641, -0.368103, -0.016370,
		-0.362079, -0.920860, 0.144621,
		34.630146, 37.474827, 49.738316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635067, 38.313141, 49.371105>,  <34.883602, 38.119427, 49.637081>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635067, 38.313141, 49.371105> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.603672, 38.700863, 49.277908>,  <35.584835, 38.933498, 49.221992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.603672, 38.700863, 49.277908>,  <35.635067, 38.313141, 49.371105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603672, 38.700863, 49.277908> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085187, 0.239375, 0.967183,
		0.993269, 0.056064, -0.101360,
		-0.078487, 0.969307, -0.232988,
		35.580128, 38.991653, 49.208012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033344, 38.590187, 49.814102>,  <35.635067, 38.313141, 49.371105>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033344, 38.590187, 49.814102> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.840237, 38.921928, 49.701595>,  <35.724373, 39.120972, 49.634090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.840237, 38.921928, 49.701595>,  <36.033344, 38.590187, 49.814102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840237, 38.921928, 49.701595> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109748, 0.375935, 0.920124,
		0.868842, 0.413342, -0.272511,
		-0.482772, 0.829350, -0.281265,
		35.695404, 39.170734, 49.617214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356232, 39.167023, 50.138008>,  <36.033344, 38.590187, 49.814102>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356232, 39.167023, 50.138008> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.984081, 39.291931, 50.061176>,  <35.760792, 39.366875, 50.015076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.984081, 39.291931, 50.061176>,  <36.356232, 39.167023, 50.138008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984081, 39.291931, 50.061176> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106125, 0.272111, 0.956396,
		0.350920, 0.910189, -0.220025,
		-0.930372, 0.312268, -0.192083,
		35.704971, 39.385612, 50.003551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264656, 39.705711, 50.593185>,  <36.356232, 39.167023, 50.138008>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264656, 39.705711, 50.593185> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.885391, 39.652004, 50.477978>,  <35.657833, 39.619781, 50.408852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.885391, 39.652004, 50.477978>,  <36.264656, 39.705711, 50.593185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885391, 39.652004, 50.477978> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317324, 0.351673, 0.880699,
		-0.016962, 0.926444, -0.376051,
		-0.948165, -0.134268, -0.288018,
		35.600941, 39.611725, 50.391571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824486, 40.322399, 50.787601>,  <36.264656, 39.705711, 50.593185>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824486, 40.322399, 50.787601> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.572865, 40.013962, 50.748180>,  <35.421890, 39.828899, 50.724529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.572865, 40.013962, 50.748180>,  <35.824486, 40.322399, 50.787601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572865, 40.013962, 50.748180> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376078, 0.190921, 0.906705,
		-0.680337, 0.607426, -0.410090,
		-0.629052, -0.771091, -0.098549,
		35.384148, 39.782635, 50.718616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192856, 40.615204, 51.057991>,  <35.824486, 40.322399, 50.787601>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192856, 40.615204, 51.057991> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.186356, 40.216713, 51.092094>,  <35.182457, 39.977619, 51.112556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.186356, 40.216713, 51.092094>,  <35.192856, 40.615204, 51.057991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186356, 40.216713, 51.092094> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422699, 0.084120, 0.902358,
		-0.906124, -0.021377, -0.422471,
		-0.016248, -0.996226, 0.085259,
		35.181480, 39.917847, 51.117672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529560, 40.433002, 51.421925>,  <35.192856, 40.615204, 51.057991>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529560, 40.433002, 51.421925> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.792973, 40.133286, 51.449898>,  <34.951019, 39.953453, 51.466682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.792973, 40.133286, 51.449898>,  <34.529560, 40.433002, 51.421925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792973, 40.133286, 51.449898> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257086, -0.136656, 0.956677,
		-0.707277, -0.647983, -0.282626,
		0.658533, -0.749295, 0.069934,
		34.990532, 39.908497, 51.470879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145206, 39.931751, 51.741302>,  <34.529560, 40.433002, 51.421925>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145206, 39.931751, 51.741302> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.517700, 39.817677, 51.832054>,  <34.741196, 39.749229, 51.886505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.517700, 39.817677, 51.832054>,  <34.145206, 39.931751, 51.741302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517700, 39.817677, 51.832054> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271126, -0.126166, 0.954239,
		-0.243518, -0.950130, -0.194813,
		0.931230, -0.285193, 0.226881,
		34.797070, 39.732121, 51.900120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161388, 39.304688, 52.010513>,  <34.145206, 39.931751, 51.741302>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161388, 39.304688, 52.010513> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.517712, 39.417362, 52.153130>,  <34.731506, 39.484966, 52.238697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.517712, 39.417362, 52.153130>,  <34.161388, 39.304688, 52.010513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517712, 39.417362, 52.153130> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258965, -0.330016, 0.907759,
		0.373367, -0.900967, -0.221033,
		0.890805, 0.281687, 0.356536,
		34.784954, 39.501869, 52.260090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<38.934532, 36.353092, 36.899296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209148, 36.403976, 37.185646>,  <39.373920, 36.434505, 37.357456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209148, 36.403976, 37.185646>,  <38.934532, 36.353092, 36.899296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209148, 36.403976, 37.185646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714404, 0.301133, 0.631622,
		-0.135224, -0.945059, 0.297621,
		0.686543, 0.127211, 0.715874,
		39.415112, 36.442139, 37.400410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762478, 35.981056, 37.488087>,  <38.934532, 36.353092, 36.899296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762478, 35.981056, 37.488087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979725, 36.300270, 37.592518>,  <39.110073, 36.491798, 37.655178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979725, 36.300270, 37.592518>,  <38.762478, 35.981056, 37.488087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979725, 36.300270, 37.592518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688709, 0.245534, 0.682197,
		0.480314, -0.550320, 0.682969,
		0.543119, 0.798036, 0.261077,
		39.142662, 36.539680, 37.670841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872135, 35.916317, 38.248642>,  <38.762478, 35.981056, 37.488087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872135, 35.916317, 38.248642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.911148, 36.297470, 38.133755>,  <38.934555, 36.526161, 38.064823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.911148, 36.297470, 38.133755>,  <38.872135, 35.916317, 38.248642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911148, 36.297470, 38.133755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583846, 0.288504, 0.758874,
		0.805984, 0.093676, 0.584478,
		0.097536, 0.952885, -0.287222,
		38.940411, 36.583336, 38.047588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045574, 36.231556, 38.769218>,  <38.872135, 35.916317, 38.248642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045574, 36.231556, 38.769218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901901, 36.562580, 38.596649>,  <38.815697, 36.761196, 38.493107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901901, 36.562580, 38.596649>,  <39.045574, 36.231556, 38.769218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901901, 36.562580, 38.596649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506748, 0.215253, 0.834789,
		0.783706, 0.518465, 0.342051,
		-0.359181, 0.827563, -0.431426,
		38.794147, 36.810848, 38.467220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219845, 36.861923, 39.246559>,  <39.045574, 36.231556, 38.769218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219845, 36.861923, 39.246559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.898121, 36.942406, 39.022915>,  <38.705086, 36.990696, 38.888729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.898121, 36.942406, 39.022915>,  <39.219845, 36.861923, 39.246559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898121, 36.942406, 39.022915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519125, 0.219900, 0.825925,
		0.289129, 0.954547, -0.072417,
		-0.804309, 0.201206, -0.559109,
		38.656830, 37.002766, 38.855183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993988, 37.562077, 39.398224>,  <39.219845, 36.861923, 39.246559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993988, 37.562077, 39.398224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.680115, 37.372532, 39.238361>,  <38.491791, 37.258804, 39.142445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.680115, 37.372532, 39.238361>,  <38.993988, 37.562077, 39.398224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680115, 37.372532, 39.238361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572414, 0.306428, 0.760555,
		-0.237933, 0.825564, -0.511695,
		-0.784685, -0.473862, -0.399655,
		38.444710, 37.230373, 39.118465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485176, 37.985600, 39.599926>,  <38.993988, 37.562077, 39.398224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485176, 37.985600, 39.599926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.283173, 37.662830, 39.477394>,  <38.161972, 37.469170, 39.403873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.283173, 37.662830, 39.477394>,  <38.485176, 37.985600, 39.599926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283173, 37.662830, 39.477394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770233, 0.261165, 0.581836,
		-0.389496, 0.529778, -0.753411,
		-0.505009, -0.806925, -0.306329,
		38.131668, 37.420753, 39.385494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902748, 38.205120, 39.096325>,  <38.485176, 37.985600, 39.599926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902748, 38.205120, 39.096325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.795235, 37.863140, 39.273777>,  <37.730724, 37.657951, 39.380249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.795235, 37.863140, 39.273777>,  <37.902748, 38.205120, 39.096325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795235, 37.863140, 39.273777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795008, 0.456950, 0.398948,
		-0.543799, -0.245457, -0.802517,
		-0.268786, -0.854955, 0.443629,
		37.714600, 37.606655, 39.406864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255974, 38.282497, 39.154518>,  <37.902748, 38.205120, 39.096325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255974, 38.282497, 39.154518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317116, 37.986408, 39.416420>,  <37.353802, 37.808754, 39.573563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317116, 37.986408, 39.416420>,  <37.255974, 38.282497, 39.154518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317116, 37.986408, 39.416420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695131, 0.390396, 0.603642,
		-0.702444, -0.547412, -0.454877,
		0.152859, -0.740224, 0.654754,
		37.362972, 37.764339, 39.612846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577766, 38.018208, 39.441154>,  <37.255974, 38.282497, 39.154518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577766, 38.018208, 39.441154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824287, 37.866570, 39.717258>,  <36.972202, 37.775585, 39.882919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824287, 37.866570, 39.717258>,  <36.577766, 38.018208, 39.441154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824287, 37.866570, 39.717258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678123, 0.190173, 0.709918,
		-0.400397, -0.905604, -0.139871,
		0.616305, -0.379099, 0.690255,
		37.009178, 37.752842, 39.924335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133018, 37.694958, 39.833244>,  <36.577766, 38.018208, 39.441154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133018, 37.694958, 39.833244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457241, 37.732231, 40.064526>,  <36.651775, 37.754597, 40.203293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457241, 37.732231, 40.064526>,  <36.133018, 37.694958, 39.833244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457241, 37.732231, 40.064526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583635, 0.210577, 0.784237,
		-0.048674, -0.973125, 0.225073,
		0.810556, 0.093188, 0.578200,
		36.700409, 37.760189, 40.237984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117245, 37.245743, 40.428650>,  <36.133018, 37.694958, 39.833244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117245, 37.245743, 40.428650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355297, 37.551483, 40.527908>,  <36.498131, 37.734928, 40.587463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355297, 37.551483, 40.527908>,  <36.117245, 37.245743, 40.428650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355297, 37.551483, 40.527908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497136, 0.107564, 0.860980,
		0.631403, -0.635760, 0.444003,
		0.595135, 0.764355, 0.248143,
		36.533836, 37.780788, 40.602352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796730, 36.616932, 40.494476>,  <36.117245, 37.245743, 40.428650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796730, 36.616932, 40.494476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444664, 36.473885, 40.619320>,  <35.233425, 36.388058, 40.694225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444664, 36.473885, 40.619320>,  <35.796730, 36.616932, 40.494476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444664, 36.473885, 40.619320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242482, -0.226508, -0.943343,
		0.408050, -0.905983, 0.112649,
		-0.880169, -0.357616, 0.312111,
		35.180614, 36.366600, 40.712952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688095, 35.960651, 40.212349>,  <35.796730, 36.616932, 40.494476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688095, 35.960651, 40.212349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315414, 36.056175, 40.321823>,  <35.091805, 36.113491, 40.387508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315414, 36.056175, 40.321823>,  <35.688095, 35.960651, 40.212349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315414, 36.056175, 40.321823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335225, -0.275238, -0.901037,
		-0.139852, -0.931242, 0.336496,
		-0.931701, 0.238814, 0.273683,
		35.035904, 36.127819, 40.403927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290890, 35.362091, 39.934563>,  <35.688095, 35.960651, 40.212349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290890, 35.362091, 39.934563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.024700, 35.652786, 40.002674>,  <34.864986, 35.827206, 40.043541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.024700, 35.652786, 40.002674>,  <35.290890, 35.362091, 39.934563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.024700, 35.652786, 40.002674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542110, -0.313762, -0.779532,
		-0.513091, -0.611065, 0.602774,
		-0.665473, 0.726741, 0.170276,
		34.825058, 35.870808, 40.053757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696709, 34.984039, 39.829082>,  <35.290890, 35.362091, 39.934563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696709, 34.984039, 39.829082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631927, 35.377811, 39.801781>,  <34.593060, 35.614075, 39.785400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631927, 35.377811, 39.801781>,  <34.696709, 34.984039, 39.829082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631927, 35.377811, 39.801781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549761, -0.147453, -0.822204,
		-0.819471, -0.095637, 0.565085,
		-0.161957, 0.984434, -0.068257,
		34.583340, 35.673141, 39.781303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970192, 35.011246, 39.442585>,  <34.696709, 34.984039, 39.829082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970192, 35.011246, 39.442585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140099, 35.367378, 39.377003>,  <34.242043, 35.581059, 39.337654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140099, 35.367378, 39.377003>,  <33.970192, 35.011246, 39.442585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140099, 35.367378, 39.377003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397223, 0.020558, -0.917492,
		-0.813501, 0.454849, 0.362392,
		0.424770, 0.890331, -0.163952,
		34.267529, 35.634480, 39.327816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466892, 35.529594, 39.181095>,  <33.970192, 35.011246, 39.442585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466892, 35.529594, 39.181095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818100, 35.666401, 39.047165>,  <34.028824, 35.748486, 38.966805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818100, 35.666401, 39.047165>,  <33.466892, 35.529594, 39.181095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818100, 35.666401, 39.047165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445524, 0.328371, -0.832875,
		-0.174905, 0.880454, 0.440691,
		0.878018, 0.342013, -0.334830,
		34.081505, 35.769005, 38.946716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315319, 36.233276, 38.983414>,  <33.466892, 35.529594, 39.181095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315319, 36.233276, 38.983414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645908, 36.097290, 38.803921>,  <33.844261, 36.015697, 38.696224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645908, 36.097290, 38.803921>,  <33.315319, 36.233276, 38.983414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645908, 36.097290, 38.803921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394106, 0.219808, -0.892393,
		0.402020, 0.914388, 0.047682,
		0.826475, -0.339968, -0.448733,
		33.893852, 35.995300, 38.669300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431995, 36.748455, 38.505981>,  <33.315319, 36.233276, 38.983414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431995, 36.748455, 38.505981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650661, 36.433220, 38.392799>,  <33.781860, 36.244080, 38.324890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650661, 36.433220, 38.392799>,  <33.431995, 36.748455, 38.505981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650661, 36.433220, 38.392799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373727, 0.072758, -0.924680,
		0.749321, 0.611243, -0.254757,
		0.546668, -0.788092, -0.282957,
		33.814663, 36.196793, 38.307911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758057, 37.019020, 37.978031>,  <33.431995, 36.748455, 38.505981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758057, 37.019020, 37.978031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787575, 36.624287, 37.920456>,  <33.805286, 36.387447, 37.885910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787575, 36.624287, 37.920456>,  <33.758057, 37.019020, 37.978031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787575, 36.624287, 37.920456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434017, 0.098163, -0.895541,
		0.897877, 0.128562, -0.421057,
		0.073800, -0.986831, -0.143936,
		33.809715, 36.328236, 37.877274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047455, 36.958935, 37.330814>,  <33.758057, 37.019020, 37.978031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047455, 36.958935, 37.330814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859413, 36.614765, 37.409481>,  <33.746586, 36.408264, 37.456680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859413, 36.614765, 37.409481>,  <34.047455, 36.958935, 37.330814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859413, 36.614765, 37.409481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402916, 0.010962, -0.915171,
		0.785276, -0.509467, -0.351830,
		-0.470107, -0.860420, 0.196665,
		33.718380, 36.356640, 37.468479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206154, 36.501499, 36.741829>,  <34.047455, 36.958935, 37.330814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206154, 36.501499, 36.741829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870743, 36.349880, 36.898392>,  <33.669498, 36.258907, 36.992329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870743, 36.349880, 36.898392>,  <34.206154, 36.501499, 36.741829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870743, 36.349880, 36.898392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357304, -0.159795, -0.920217,
		0.411355, -0.911474, -0.001446,
		-0.838523, -0.379052, 0.391406,
		33.619186, 36.236164, 37.015812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154037, 35.798264, 36.376274>,  <34.206154, 36.501499, 36.741829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154037, 35.798264, 36.376274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789936, 35.874493, 36.523312>,  <33.571476, 35.920231, 36.611534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789936, 35.874493, 36.523312>,  <34.154037, 35.798264, 36.376274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789936, 35.874493, 36.523312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413253, -0.362882, -0.835188,
		-0.025776, -0.912139, 0.409071,
		-0.910251, 0.190577, 0.367591,
		33.516861, 35.931667, 36.633591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827309, 35.235939, 36.212910>,  <34.154037, 35.798264, 36.376274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827309, 35.235939, 36.212910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527943, 35.497528, 36.257076>,  <33.348324, 35.654480, 36.283577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527943, 35.497528, 36.257076>,  <33.827309, 35.235939, 36.212910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527943, 35.497528, 36.257076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433066, -0.355777, -0.828177,
		-0.502319, -0.667642, 0.549482,
		-0.748418, 0.653971, 0.110420,
		33.303417, 35.693718, 36.290203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218033, 34.960365, 36.426098>,  <33.827309, 35.235939, 36.212910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218033, 34.960365, 36.426098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158718, 35.288799, 36.205616>,  <33.123131, 35.485859, 36.073326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158718, 35.288799, 36.205616>,  <33.218033, 34.960365, 36.426098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158718, 35.288799, 36.205616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131743, -0.568797, -0.811858,
		-0.980131, -0.047768, 0.192516,
		-0.148284, 0.821089, -0.551203,
		33.114231, 35.535126, 36.040257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893871, 34.622166, 36.730347>,  <33.218033, 34.960365, 36.426098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893871, 34.622166, 36.730347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090424, 34.635162, 37.078484>,  <34.208355, 34.642960, 37.287365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090424, 34.635162, 37.078484>,  <33.893871, 34.622166, 36.730347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090424, 34.635162, 37.078484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472026, -0.829879, 0.297476,
		0.731941, -0.556996, -0.392451,
		0.491380, 0.032488, 0.870339,
		34.237839, 34.644909, 37.339584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110401, 33.967537, 36.984295>,  <33.893871, 34.622166, 36.730347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110401, 33.967537, 36.984295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145596, 34.129253, 37.348450>,  <34.166710, 34.226284, 37.566944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145596, 34.129253, 37.348450>,  <34.110401, 33.967537, 36.984295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145596, 34.129253, 37.348450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455822, -0.796292, 0.397674,
		0.885712, -0.449964, 0.114224,
		0.087984, 0.404290, 0.910389,
		34.171989, 34.250542, 37.621567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596180, 33.648758, 37.492435>,  <34.110401, 33.967537, 36.984295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596180, 33.648758, 37.492435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990482, 33.583317, 37.476795>,  <35.227062, 33.544052, 37.467411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990482, 33.583317, 37.476795>,  <34.596180, 33.648758, 37.492435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990482, 33.583317, 37.476795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038279, -0.008200, 0.999233,
		-0.163795, -0.986493, -0.001820,
		0.985751, -0.163600, -0.039105,
		35.286209, 33.534237, 37.465065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766472, 33.128750, 37.988892>,  <34.596180, 33.648758, 37.492435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766472, 33.128750, 37.988892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107155, 33.325005, 37.915272>,  <35.311565, 33.442757, 37.871098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107155, 33.325005, 37.915272>,  <34.766472, 33.128750, 37.988892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107155, 33.325005, 37.915272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167137, 0.078543, 0.982800,
		0.496656, -0.867816, -0.015109,
		0.851703, 0.490639, -0.184052,
		35.362667, 33.472195, 37.860058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218281, 32.807320, 38.459797>,  <34.766472, 33.128750, 37.988892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218281, 32.807320, 38.459797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366982, 33.162731, 38.352226>,  <35.456203, 33.375977, 38.287682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366982, 33.162731, 38.352226>,  <35.218281, 32.807320, 38.459797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366982, 33.162731, 38.352226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226958, 0.193912, 0.954405,
		0.900161, -0.415838, -0.129570,
		0.371753, 0.888525, -0.268930,
		35.478508, 33.429287, 38.271545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879242, 32.785397, 38.799652>,  <35.218281, 32.807320, 38.459797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879242, 32.785397, 38.799652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773205, 33.163857, 38.725327>,  <35.709583, 33.390934, 38.680733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773205, 33.163857, 38.725327>,  <35.879242, 32.785397, 38.799652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773205, 33.163857, 38.725327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124727, 0.224737, 0.966404,
		0.956123, 0.233007, -0.177586,
		-0.265090, 0.946150, -0.185814,
		35.693680, 33.447701, 38.669582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421909, 33.196938, 39.073849>,  <35.879242, 32.785397, 38.799652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421909, 33.196938, 39.073849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103848, 33.436909, 39.038471>,  <35.913010, 33.580891, 39.017242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103848, 33.436909, 39.038471>,  <36.421909, 33.196938, 39.073849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103848, 33.436909, 39.038471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070556, 0.236389, 0.969093,
		0.602291, 0.764336, -0.230294,
		-0.795152, 0.599925, -0.088447,
		35.865303, 33.616886, 39.011936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706776, 33.731155, 39.336346>,  <36.421909, 33.196938, 39.073849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706776, 33.731155, 39.336346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312119, 33.791061, 39.361969>,  <36.075325, 33.827007, 39.377342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312119, 33.791061, 39.361969>,  <36.706776, 33.731155, 39.336346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312119, 33.791061, 39.361969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103931, 0.276005, 0.955521,
		0.125427, 0.949416, -0.287884,
		-0.986644, 0.149769, 0.064055,
		36.016125, 33.835991, 39.381187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644962, 34.345909, 39.660084>,  <36.706776, 33.731155, 39.336346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644962, 34.345909, 39.660084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292347, 34.166634, 39.719437>,  <36.080776, 34.059067, 39.755051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292347, 34.166634, 39.719437>,  <36.644962, 34.345909, 39.660084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292347, 34.166634, 39.719437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021266, 0.351676, 0.935880,
		-0.471636, 0.821857, -0.319547,
		-0.881537, -0.448190, 0.148386,
		36.027885, 34.032177, 39.763954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361698, 34.729908, 40.121353>,  <36.644962, 34.345909, 39.660084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361698, 34.729908, 40.121353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148254, 34.392467, 40.145336>,  <36.020187, 34.190002, 40.159725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148254, 34.392467, 40.145336>,  <36.361698, 34.729908, 40.121353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148254, 34.392467, 40.145336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071379, 0.115561, 0.990732,
		-0.842711, 0.524388, -0.121880,
		-0.533613, -0.843601, 0.059954,
		35.988171, 34.139389, 40.163322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727463, 34.896740, 40.575108>,  <36.361698, 34.729908, 40.121353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727463, 34.896740, 40.575108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776192, 34.499722, 40.576321>,  <35.805431, 34.261509, 40.577049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776192, 34.499722, 40.576321>,  <35.727463, 34.896740, 40.575108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776192, 34.499722, 40.576321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076661, -0.006359, 0.997037,
		-0.989587, -0.121696, -0.076864,
		0.121824, -0.992547, 0.003037,
		35.812740, 34.201958, 40.577232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286057, 34.645416, 41.054047>,  <35.727463, 34.896740, 40.575108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286057, 34.645416, 41.054047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543621, 34.341862, 41.015118>,  <35.698162, 34.159729, 40.991760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543621, 34.341862, 41.015118>,  <35.286057, 34.645416, 41.054047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543621, 34.341862, 41.015118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068034, -0.069904, 0.995231,
		-0.762067, -0.647464, 0.006617,
		0.643914, -0.758883, -0.097321,
		35.736794, 34.114197, 40.985920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034126, 34.123425, 41.426842>,  <35.286057, 34.645416, 41.054047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034126, 34.123425, 41.426842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413818, 34.007820, 41.377132>,  <35.641632, 33.938457, 41.347305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413818, 34.007820, 41.377132>,  <35.034126, 34.123425, 41.426842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413818, 34.007820, 41.377132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028898, -0.313266, 0.949226,
		-0.313266, -0.904621, -0.289008,
		-0.949226, 0.289008, 0.124277,
		35.698586, 33.921116, 41.339848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183456, 33.463783, 41.815620>,  <35.034126, 34.123425, 41.426842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183456, 33.463783, 41.815620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551136, 33.609699, 41.756279>,  <35.771744, 33.697250, 41.720676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551136, 33.609699, 41.756279>,  <35.183456, 33.463783, 41.815620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551136, 33.609699, 41.756279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244707, -0.233949, 0.940949,
		0.308545, -0.901218, -0.304312,
		0.919194, 0.364793, -0.148351,
		35.826893, 33.719135, 41.711773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579960, 33.047916, 42.285721>,  <35.183456, 33.463783, 41.815620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579960, 33.047916, 42.285721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833805, 33.346104, 42.204201>,  <35.986115, 33.525017, 42.155289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833805, 33.346104, 42.204201>,  <35.579960, 33.047916, 42.285721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833805, 33.346104, 42.204201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386394, -0.077681, 0.919057,
		0.669300, -0.661995, -0.337343,
		0.634617, 0.745472, -0.203799,
		36.024189, 33.569744, 42.143063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368336, 32.882736, 42.428539>,  <35.579960, 33.047916, 42.285721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368336, 32.882736, 42.428539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280262, 33.271561, 42.461082>,  <36.227417, 33.504856, 42.480606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280262, 33.271561, 42.461082>,  <36.368336, 32.882736, 42.428539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280262, 33.271561, 42.461082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241021, -0.026599, 0.970155,
		0.945212, 0.233225, -0.228429,
		-0.220188, 0.972059, 0.081354,
		36.214207, 33.563179, 42.485489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974091, 33.221901, 42.686363>,  <36.368336, 32.882736, 42.428539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974091, 33.221901, 42.686363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655132, 33.448643, 42.769150>,  <36.463757, 33.584690, 42.818821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655132, 33.448643, 42.769150>,  <36.974091, 33.221901, 42.686363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655132, 33.448643, 42.769150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226892, -0.036181, 0.973248,
		0.559181, 0.823021, -0.099765,
		-0.797394, 0.566857, 0.206969,
		36.415913, 33.618698, 42.831242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177017, 33.530613, 43.283424>,  <36.974091, 33.221901, 42.686363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177017, 33.530613, 43.283424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795357, 33.649830, 43.294453>,  <36.566360, 33.721359, 43.301071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795357, 33.649830, 43.294453>,  <37.177017, 33.530613, 43.283424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795357, 33.649830, 43.294453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044124, 0.048945, 0.997826,
		0.296044, 0.953297, -0.059852,
		-0.954155, 0.298041, 0.027573,
		36.509109, 33.739243, 43.302723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165176, 34.205498, 43.581394>,  <37.177017, 33.530613, 43.283424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165176, 34.205498, 43.581394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796104, 34.061432, 43.636444>,  <36.574661, 33.974991, 43.669476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796104, 34.061432, 43.636444>,  <37.165176, 34.205498, 43.581394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796104, 34.061432, 43.636444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083993, 0.160617, 0.983436,
		-0.376307, 0.918957, -0.117947,
		-0.922680, -0.360167, 0.137628,
		36.519299, 33.953381, 43.677731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754608, 34.684082, 43.995182>,  <37.165176, 34.205498, 43.581394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754608, 34.684082, 43.995182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541061, 34.349747, 44.046360>,  <36.412933, 34.149147, 44.077068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541061, 34.349747, 44.046360>,  <36.754608, 34.684082, 43.995182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541061, 34.349747, 44.046360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008037, 0.156320, 0.987674,
		-0.845532, 0.526256, -0.090171,
		-0.533865, -0.835834, 0.127944,
		36.380901, 34.098995, 44.084743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443981, 34.881565, 44.609146>,  <36.754608, 34.684082, 43.995182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443981, 34.881565, 44.609146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345798, 34.493847, 44.603260>,  <36.286888, 34.261215, 44.599728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345798, 34.493847, 44.603260>,  <36.443981, 34.881565, 44.609146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345798, 34.493847, 44.603260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012420, -0.012033, 0.999850,
		-0.969328, 0.245605, -0.009085,
		-0.245459, -0.969295, -0.014714,
		36.272160, 34.203060, 44.598846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790401, 34.788158, 44.974812>,  <36.443981, 34.881565, 44.609146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790401, 34.788158, 44.974812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972355, 34.431953, 44.978302>,  <36.081528, 34.218231, 44.980396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972355, 34.431953, 44.978302>,  <35.790401, 34.788158, 44.974812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972355, 34.431953, 44.978302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172208, -0.078346, 0.981940,
		-0.873744, -0.448167, -0.188991,
		0.454880, -0.890510, 0.008724,
		36.108818, 34.164799, 44.980919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352573, 34.275978, 45.361492>,  <35.790401, 34.788158, 44.974812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352573, 34.275978, 45.361492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713135, 34.103352, 45.375523>,  <35.929470, 33.999775, 45.383942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713135, 34.103352, 45.375523>,  <35.352573, 34.275978, 45.361492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713135, 34.103352, 45.375523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147701, -0.230333, 0.961837,
		-0.407014, -0.872182, -0.271365,
		0.901401, -0.431562, 0.035074,
		35.983555, 33.973885, 45.386044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312260, 33.721420, 45.887676>,  <35.352573, 34.275978, 45.361492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312260, 33.721420, 45.887676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707939, 33.772026, 45.858059>,  <35.945347, 33.802387, 45.840290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707939, 33.772026, 45.858059>,  <35.312260, 33.721420, 45.887676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707939, 33.772026, 45.858059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095428, -0.172381, 0.980397,
		0.111269, -0.976872, -0.182591,
		0.989198, 0.126512, -0.074040,
		36.004700, 33.809978, 45.835846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644161, 33.180283, 46.266827>,  <35.312260, 33.721420, 45.887676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644161, 33.180283, 46.266827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940693, 33.442474, 46.209175>,  <36.118614, 33.599789, 46.174583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940693, 33.442474, 46.209175>,  <35.644161, 33.180283, 46.266827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940693, 33.442474, 46.209175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261791, -0.084684, 0.961402,
		0.617974, -0.750450, -0.234378,
		0.741332, 0.655480, -0.144129,
		36.163094, 33.639118, 46.165936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253246, 32.914639, 46.599564>,  <35.644161, 33.180283, 46.266827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253246, 32.914639, 46.599564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326988, 33.307777, 46.601665>,  <36.371235, 33.543659, 46.602928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326988, 33.307777, 46.601665>,  <36.253246, 32.914639, 46.599564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326988, 33.307777, 46.601665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354230, -0.071433, 0.932426,
		0.916806, -0.170037, -0.361322,
		0.184357, 0.982845, 0.005258,
		36.382294, 33.602631, 46.603241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809788, 32.986504, 46.937794>,  <36.253246, 32.914639, 46.599564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809788, 32.986504, 46.937794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651009, 33.352463, 46.967144>,  <36.555740, 33.572041, 46.984756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651009, 33.352463, 46.967144>,  <36.809788, 32.986504, 46.937794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651009, 33.352463, 46.967144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358682, 0.081039, 0.929936,
		0.844853, 0.395459, -0.360327,
		-0.396952, 0.914901, 0.073378,
		36.531921, 33.626934, 46.989159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223747, 33.304165, 47.481937>,  <36.809788, 32.986504, 46.937794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223747, 33.304165, 47.481937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930630, 33.572681, 47.437416>,  <36.754761, 33.733791, 47.410702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930630, 33.572681, 47.437416>,  <37.223747, 33.304165, 47.481937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930630, 33.572681, 47.437416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093947, 0.261815, 0.960534,
		0.673935, 0.693416, -0.254922,
		-0.732793, 0.671287, -0.111302,
		36.710793, 33.774067, 47.404026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877094, 33.561073, 47.249340>,  <37.223747, 33.304165, 47.481937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877094, 33.561073, 47.249340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255424, 33.454315, 47.323284>,  <38.482422, 33.390263, 47.367649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255424, 33.454315, 47.323284>,  <37.877094, 33.561073, 47.249340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255424, 33.454315, 47.323284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142395, -0.170682, -0.974983,
		0.291768, 0.948491, -0.123432,
		0.945830, -0.266893, 0.184860,
		38.539173, 33.374249, 47.378742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292099, 33.830025, 46.706940>,  <37.877094, 33.561073, 47.249340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292099, 33.830025, 46.706940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518787, 33.554668, 46.888027>,  <38.654800, 33.389454, 46.996681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518787, 33.554668, 46.888027>,  <38.292099, 33.830025, 46.706940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518787, 33.554668, 46.888027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345035, -0.300681, -0.889124,
		0.748185, 0.660087, 0.067115,
		0.566719, -0.688386, 0.452718,
		38.688805, 33.348152, 47.023842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980042, 33.935204, 46.408302>,  <38.292099, 33.830025, 46.706940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980042, 33.935204, 46.408302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.939793, 33.558681, 46.537186>,  <38.915642, 33.332767, 46.614513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.939793, 33.558681, 46.537186>,  <38.980042, 33.935204, 46.408302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939793, 33.558681, 46.537186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533710, -0.324378, -0.780982,
		0.839660, 0.093381, 0.535024,
		-0.100621, -0.941307, 0.322205,
		38.909607, 33.276291, 46.633846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566425, 33.657490, 46.244068>,  <38.980042, 33.935204, 46.408302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566425, 33.657490, 46.244068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367531, 33.322693, 46.335449>,  <39.248192, 33.121815, 46.390278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367531, 33.322693, 46.335449>,  <39.566425, 33.657490, 46.244068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367531, 33.322693, 46.335449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498859, -0.491250, -0.714012,
		0.709854, -0.241067, 0.661811,
		-0.497240, -0.836995, 0.228457,
		39.218357, 33.071594, 46.403988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122643, 33.050442, 46.217159>,  <39.566425, 33.657490, 46.244068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122643, 33.050442, 46.217159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746777, 32.934242, 46.144886>,  <39.521259, 32.864521, 46.101521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746777, 32.934242, 46.144886>,  <40.122643, 33.050442, 46.217159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.746777, 32.934242, 46.144886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301958, -0.456009, -0.837184,
		0.160805, -0.841229, 0.516212,
		-0.939661, -0.290498, -0.180687,
		39.464878, 32.847092, 46.090679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
