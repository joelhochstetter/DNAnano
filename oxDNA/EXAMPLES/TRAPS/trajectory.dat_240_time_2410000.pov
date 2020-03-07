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
	<36.667980, 53.360870, 49.618942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507317, 53.202091, 49.949059>,  <36.410919, 53.106823, 50.147129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507317, 53.202091, 49.949059>,  <36.667980, 53.360870, 49.618942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507317, 53.202091, 49.949059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083870, -0.913334, -0.398479,
		0.911942, -0.090834, 0.400139,
		-0.401656, -0.396950, 0.825290,
		36.386818, 53.083008, 50.196644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103638, 52.938541, 50.146164>,  <36.667980, 53.360870, 49.618942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103638, 52.938541, 50.146164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.720722, 52.846493, 50.076141>,  <36.490974, 52.791264, 50.034126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.720722, 52.846493, 50.076141>,  <37.103638, 52.938541, 50.146164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720722, 52.846493, 50.076141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289117, -0.754158, -0.589624,
		0.003661, -0.615052, 0.788478,
		-0.957287, -0.230121, -0.175060,
		36.433537, 52.777458, 50.023624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905815, 52.636555, 50.800186>,  <37.103638, 52.938541, 50.146164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905815, 52.636555, 50.800186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.956989, 53.011768, 50.929016>,  <36.987694, 53.236897, 51.006313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.956989, 53.011768, 50.929016>,  <36.905815, 52.636555, 50.800186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956989, 53.011768, 50.929016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766922, -0.299477, 0.567577,
		0.628859, 0.174396, -0.757708,
		0.127933, 0.938029, 0.322077,
		36.995369, 53.293179, 51.025639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698734, 52.838760, 50.800709>,  <36.905815, 52.636555, 50.800186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698734, 52.838760, 50.800709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.479244, 53.044357, 51.064438>,  <37.347549, 53.167717, 51.222675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.479244, 53.044357, 51.064438>,  <37.698734, 52.838760, 50.800709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479244, 53.044357, 51.064438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645532, -0.240621, 0.724838,
		0.531210, 0.823352, -0.199766,
		-0.548729, 0.513997, 0.659321,
		37.314625, 53.198555, 51.262234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070992, 53.532448, 51.079422>,  <37.698734, 52.838760, 50.800709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070992, 53.532448, 51.079422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823601, 53.333702, 51.322933>,  <37.675167, 53.214455, 51.469040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823601, 53.333702, 51.322933>,  <38.070992, 53.532448, 51.079422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823601, 53.333702, 51.322933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751007, -0.145747, 0.644008,
		-0.231258, 0.855501, 0.463291,
		-0.618473, -0.496866, 0.608782,
		37.638058, 53.184643, 51.505569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247787, 53.798306, 51.779320>,  <38.070992, 53.532448, 51.079422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247787, 53.798306, 51.779320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043179, 53.458820, 51.833019>,  <37.920414, 53.255127, 51.865238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043179, 53.458820, 51.833019>,  <38.247787, 53.798306, 51.779320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043179, 53.458820, 51.833019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566633, -0.215728, 0.795228,
		-0.645964, 0.482846, 0.591262,
		-0.511524, -0.848718, 0.134244,
		37.889721, 53.204205, 51.873291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755829, 54.386093, 52.034927>,  <38.247787, 53.798306, 51.779320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755829, 54.386093, 52.034927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721943, 54.320644, 51.641777>,  <38.701611, 54.281376, 51.405888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721943, 54.320644, 51.641777>,  <38.755829, 54.386093, 52.034927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721943, 54.320644, 51.641777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994703, 0.043757, -0.093016,
		0.058228, -0.985552, 0.159050,
		-0.084713, -0.163624, -0.982879,
		38.696529, 54.271557, 51.346912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123432, 53.728493, 51.664284>,  <38.755829, 54.386093, 52.034927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123432, 53.728493, 51.664284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.105869, 54.072479, 51.460899>,  <39.095333, 54.278870, 51.338867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.105869, 54.072479, 51.460899>,  <39.123432, 53.728493, 51.664284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105869, 54.072479, 51.460899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999014, 0.034416, -0.028059,
		-0.006630, -0.509194, -0.860626,
		-0.043907, 0.859963, -0.508464,
		39.092697, 54.330467, 51.308361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519348, 53.693813, 51.031410>,  <39.123432, 53.728493, 51.664284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519348, 53.693813, 51.031410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.512787, 54.071918, 51.161766>,  <39.508850, 54.298782, 51.239979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.512787, 54.071918, 51.161766>,  <39.519348, 53.693813, 51.031410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512787, 54.071918, 51.161766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987945, 0.065501, -0.140264,
		-0.153933, 0.319663, -0.934944,
		-0.016403, 0.945265, 0.325892,
		39.507866, 54.355499, 51.259533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792282, 54.128429, 50.545261>,  <39.519348, 53.693813, 51.031410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.792282, 54.128429, 50.545261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.867184, 54.292118, 50.902466>,  <39.912125, 54.390331, 51.116787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.867184, 54.292118, 50.902466>,  <39.792282, 54.128429, 50.545261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867184, 54.292118, 50.902466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973433, 0.044644, -0.224579,
		-0.131771, 0.911341, -0.389991,
		0.187258, 0.409223, 0.893012,
		39.923363, 54.414886, 51.170368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133965, 54.846466, 50.515690>,  <39.792282, 54.128429, 50.545261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.133965, 54.846466, 50.515690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.240364, 54.605507, 50.816719>,  <40.304203, 54.460930, 50.997337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.240364, 54.605507, 50.816719>,  <40.133965, 54.846466, 50.515690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.240364, 54.605507, 50.816719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962443, 0.209942, -0.172126,
		-0.054308, 0.770093, 0.635616,
		0.265995, -0.602397, 0.752572,
		40.320164, 54.424789, 51.042492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471619, 55.201561, 51.011829>,  <40.133965, 54.846466, 50.515690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471619, 55.201561, 51.011829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.599705, 54.826069, 51.062813>,  <40.676556, 54.600773, 51.093403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.599705, 54.826069, 51.062813>,  <40.471619, 55.201561, 51.011829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.599705, 54.826069, 51.062813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940729, 0.330963, 0.074105,
		-0.111749, 0.096173, 0.989072,
		0.320220, -0.938730, 0.127458,
		40.695770, 54.544449, 51.101051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833084, 55.123291, 51.685776>,  <40.471619, 55.201561, 51.011829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833084, 55.123291, 51.685776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.985386, 54.901539, 51.389751>,  <41.076767, 54.768486, 51.212135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.985386, 54.901539, 51.389751>,  <40.833084, 55.123291, 51.685776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.985386, 54.901539, 51.389751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894228, 0.424453, 0.142112,
		0.235337, -0.715893, 0.657354,
		0.380753, -0.554380, -0.740061,
		41.099613, 54.735226, 51.167732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508202, 54.948391, 51.926910>,  <40.833084, 55.123291, 51.685776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.508202, 54.948391, 51.926910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.565495, 54.880478, 51.536903>,  <41.599869, 54.839729, 51.302898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.565495, 54.880478, 51.536903>,  <41.508202, 54.948391, 51.926910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.565495, 54.880478, 51.536903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981758, 0.148854, 0.118298,
		0.125050, -0.974175, 0.188007,
		0.143228, -0.169784, -0.975017,
		41.608463, 54.829544, 51.244400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.936085, 54.314884, 51.773083>,  <41.508202, 54.948391, 51.926910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.936085, 54.314884, 51.773083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.975681, 54.561218, 51.460430>,  <41.999439, 54.709019, 51.272839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.975681, 54.561218, 51.460430>,  <41.936085, 54.314884, 51.773083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.975681, 54.561218, 51.460430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985934, 0.045600, 0.160794,
		0.134665, -0.786553, -0.602660,
		0.098992, 0.615837, -0.781630,
		42.005379, 54.745968, 51.225941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.534142, 54.048439, 51.243568>,  <41.936085, 54.314884, 51.773083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.534142, 54.048439, 51.243568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.464882, 54.441914, 51.263100>,  <42.423328, 54.677998, 51.274818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.464882, 54.441914, 51.263100>,  <42.534142, 54.048439, 51.243568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.464882, 54.441914, 51.263100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927099, 0.146053, 0.345189,
		0.332427, 0.105033, -0.937262,
		-0.173146, 0.983685, 0.048824,
		42.412937, 54.737019, 51.277748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.990868, 54.176594, 50.711304>,  <42.534142, 54.048439, 51.243568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.990868, 54.176594, 50.711304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.370110, 54.211754, 50.589073>,  <43.597652, 54.232849, 50.515736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.370110, 54.211754, 50.589073>,  <42.990868, 54.176594, 50.711304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.370110, 54.211754, 50.589073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239291, 0.830104, -0.503654,
		0.209392, 0.550638, 0.808055,
		0.948101, 0.087899, -0.305580,
		43.654541, 54.238125, 50.497398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.224522, 54.816387, 51.017330>,  <42.990868, 54.176594, 50.711304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.224522, 54.816387, 51.017330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.332382, 54.722145, 50.643852>,  <43.397099, 54.665600, 50.419765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.332382, 54.722145, 50.643852>,  <43.224522, 54.816387, 51.017330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.332382, 54.722145, 50.643852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348104, 0.880187, -0.322637,
		0.897838, 0.412020, 0.155327,
		0.269650, -0.235606, -0.933691,
		43.413277, 54.651463, 50.363747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.513241, 55.322598, 51.414364>,  <43.224522, 54.816387, 51.017330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.513241, 55.322598, 51.414364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.382446, 55.691093, 51.330086>,  <43.303970, 55.912193, 51.279518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.382446, 55.691093, 51.330086>,  <43.513241, 55.322598, 51.414364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.382446, 55.691093, 51.330086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908042, -0.244514, 0.340106,
		0.261803, 0.302528, 0.916480,
		-0.326984, 0.921244, -0.210693,
		43.284351, 55.967468, 51.266876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.311924, 55.701473, 52.091423>,  <43.513241, 55.322598, 51.414364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.311924, 55.701473, 52.091423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.128880, 55.731461, 51.737030>,  <43.019051, 55.749454, 51.524395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.128880, 55.731461, 51.737030>,  <43.311924, 55.701473, 52.091423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.128880, 55.731461, 51.737030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747945, -0.571272, 0.337974,
		-0.480800, 0.817330, 0.317496,
		-0.457613, 0.074971, -0.885985,
		42.991596, 55.753952, 51.471233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.787777, 55.279163, 52.530823>,  <43.311924, 55.701473, 52.091423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.787777, 55.279163, 52.530823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.595390, 54.951038, 52.654598>,  <43.479958, 54.754162, 52.728863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.595390, 54.951038, 52.654598>,  <43.787777, 55.279163, 52.530823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.595390, 54.951038, 52.654598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682428, -0.571858, -0.455270,
		0.550421, -0.007799, 0.834851,
		-0.480967, -0.820315, 0.309440,
		43.451099, 54.704945, 52.747429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.256199, 54.839176, 52.835407>,  <43.787777, 55.279163, 52.530823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.256199, 54.839176, 52.835407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.944813, 54.618252, 52.716114>,  <43.757980, 54.485695, 52.644539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.944813, 54.618252, 52.716114>,  <44.256199, 54.839176, 52.835407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.944813, 54.618252, 52.716114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625598, -0.643957, -0.440392,
		0.051187, -0.529403, 0.846825,
		-0.778464, -0.552315, -0.298231,
		43.711273, 54.452557, 52.626644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.367580, 54.193726, 53.009815>,  <44.256199, 54.839176, 52.835407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.367580, 54.193726, 53.009815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.176121, 54.230759, 52.660572>,  <44.061245, 54.252979, 52.451027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.176121, 54.230759, 52.660572>,  <44.367580, 54.193726, 53.009815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.176121, 54.230759, 52.660572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742213, -0.488583, -0.458701,
		-0.469054, -0.867592, 0.165146,
		-0.478653, 0.092582, -0.873109,
		44.032524, 54.258533, 52.398640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.844063, 54.094032, 53.484463>,  <44.367580, 54.193726, 53.009815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.844063, 54.094032, 53.484463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.020649, 54.149994, 53.129940>,  <45.126598, 54.183571, 52.917225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.020649, 54.149994, 53.129940>,  <44.844063, 54.094032, 53.484463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.020649, 54.149994, 53.129940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709549, 0.550190, 0.440263,
		0.549242, -0.823233, 0.143597,
		0.441444, 0.139922, -0.886312,
		45.153088, 54.191967, 52.864048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.610443, 53.928406, 53.550858>,  <44.844063, 54.094032, 53.484463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.610443, 53.928406, 53.550858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.501511, 54.196236, 53.274452>,  <45.436150, 54.356934, 53.108608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.501511, 54.196236, 53.274452>,  <45.610443, 53.928406, 53.550858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.501511, 54.196236, 53.274452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683950, 0.639844, 0.350446,
		0.676793, -0.377183, -0.632206,
		-0.272331, 0.669577, -0.691016,
		45.419811, 54.397110, 53.067146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.244247, 54.203869, 54.110523>,  <45.610443, 53.928406, 53.550858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.244247, 54.203869, 54.110523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.005112, 54.402790, 54.362003>,  <44.861629, 54.522144, 54.512894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.005112, 54.402790, 54.362003>,  <45.244247, 54.203869, 54.110523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.005112, 54.402790, 54.362003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699130, 0.707179, 0.105431,
		-0.392174, 0.502577, -0.770464,
		-0.597843, 0.497307, 0.628704,
		44.825760, 54.551983, 54.550613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.246693, 54.989582, 53.945038>,  <45.244247, 54.203869, 54.110523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.246693, 54.989582, 53.945038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.158680, 54.963913, 54.334389>,  <45.105873, 54.948513, 54.568001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.158680, 54.963913, 54.334389>,  <45.246693, 54.989582, 53.945038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.158680, 54.963913, 54.334389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813048, 0.539298, 0.219343,
		-0.539018, 0.839666, -0.066487,
		-0.220031, -0.064172, 0.973380,
		45.092670, 54.944660, 54.626404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.126053, 55.665474, 54.203255>,  <45.246693, 54.989582, 53.945038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.126053, 55.665474, 54.203255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.255390, 55.422691, 54.493645>,  <45.332993, 55.277020, 54.667881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.255390, 55.422691, 54.493645>,  <45.126053, 55.665474, 54.203255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.255390, 55.422691, 54.493645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813896, 0.569749, 0.113837,
		-0.482720, 0.554062, 0.678230,
		0.323348, -0.606961, 0.725979,
		45.352394, 55.240604, 54.711437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.400795, 55.975559, 54.799946>,  <45.126053, 55.665474, 54.203255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.400795, 55.975559, 54.799946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.622818, 55.644676, 54.834911>,  <45.756031, 55.446148, 54.855892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.622818, 55.644676, 54.834911>,  <45.400795, 55.975559, 54.799946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.622818, 55.644676, 54.834911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810644, 0.561497, 0.166066,
		-0.186455, -0.021311, 0.982232,
		0.555059, -0.827204, 0.087418,
		45.789337, 55.396515, 54.861137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.738010, 55.703445, 55.455524>,  <45.400795, 55.975559, 54.799946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.738010, 55.703445, 55.455524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.985668, 55.623501, 55.151756>,  <46.134262, 55.575535, 54.969498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.985668, 55.623501, 55.151756>,  <45.738010, 55.703445, 55.455524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.985668, 55.623501, 55.151756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702713, 0.572658, 0.422205,
		0.350504, -0.795059, 0.495002,
		0.619145, -0.199860, -0.759418,
		46.171413, 55.563541, 54.923931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.405334, 55.386433, 55.739841>,  <45.738010, 55.703445, 55.455524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.405334, 55.386433, 55.739841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.451530, 55.588974, 55.398018>,  <46.479248, 55.710499, 55.192924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.451530, 55.588974, 55.398018>,  <46.405334, 55.386433, 55.739841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.451530, 55.588974, 55.398018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665142, 0.599534, 0.445136,
		0.737732, -0.619808, -0.267562,
		0.115486, 0.506358, -0.854555,
		46.486176, 55.740883, 55.141651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.069725, 55.333313, 55.396202>,  <46.405334, 55.386433, 55.739841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.069725, 55.333313, 55.396202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.879189, 55.683990, 55.369339>,  <46.764866, 55.894398, 55.353222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.879189, 55.683990, 55.369339>,  <47.069725, 55.333313, 55.396202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.879189, 55.683990, 55.369339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737910, 0.440131, 0.511638,
		0.478104, 0.194164, -0.856573,
		-0.476346, 0.876690, -0.067154,
		46.736286, 55.946999, 55.349194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.703934, 55.852154, 55.379726>,  <47.069725, 55.333313, 55.396202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.703934, 55.852154, 55.379726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.365131, 56.006824, 55.525635>,  <47.161850, 56.099628, 55.613178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.365131, 56.006824, 55.525635>,  <47.703934, 55.852154, 55.379726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.365131, 56.006824, 55.525635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507245, 0.382697, 0.772169,
		0.158983, 0.839062, -0.520288,
		-0.847010, 0.386676, 0.364768,
		47.111027, 56.122826, 55.635063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.768253, 56.595253, 55.516663>,  <47.703934, 55.852154, 55.379726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.768253, 56.595253, 55.516663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.526798, 56.388996, 55.759888>,  <47.381927, 56.265244, 55.905823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.526798, 56.388996, 55.759888>,  <47.768253, 56.595253, 55.516663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.526798, 56.388996, 55.759888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519700, 0.323890, 0.790574,
		-0.604598, 0.793227, 0.072467,
		-0.603634, -0.515640, 0.608064,
		47.345707, 56.234303, 55.942307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.837162, 56.860386, 54.854183>,  <47.768253, 56.595253, 55.516663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.837162, 56.860386, 54.854183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.873878, 57.021572, 54.489944>,  <47.895908, 57.118286, 54.271400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.873878, 57.021572, 54.489944>,  <47.837162, 56.860386, 54.854183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.873878, 57.021572, 54.489944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818638, -0.551167, -0.161390,
		-0.566928, -0.730637, -0.380476,
		0.091788, 0.402968, -0.910600,
		47.901417, 57.142464, 54.216766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.831409, 56.383152, 54.374920>,  <47.837162, 56.860386, 54.854183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.831409, 56.383152, 54.374920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.051083, 56.693451, 54.250591>,  <48.182888, 56.879631, 54.175995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.051083, 56.693451, 54.250591>,  <47.831409, 56.383152, 54.374920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.051083, 56.693451, 54.250591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808433, -0.587387, -0.037594,
		-0.211737, -0.230634, -0.949724,
		0.549185, 0.775748, -0.310823,
		48.215839, 56.926174, 54.157345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.299515, 56.113293, 53.884232>,  <47.831409, 56.383152, 54.374920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.299515, 56.113293, 53.884232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.469334, 56.434742, 54.051064>,  <48.571224, 56.627609, 54.151161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.469334, 56.434742, 54.051064>,  <48.299515, 56.113293, 53.884232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.469334, 56.434742, 54.051064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844923, -0.517188, 0.136460,
		0.325370, 0.294465, -0.898568,
		0.424546, 0.803621, 0.417078,
		48.596699, 56.675827, 54.176186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.968452, 56.408905, 53.546120>,  <48.299515, 56.113293, 53.884232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.968452, 56.408905, 53.546120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.969257, 56.405613, 53.946106>,  <48.969742, 56.403637, 54.186096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.969257, 56.405613, 53.946106>,  <48.968452, 56.408905, 53.546120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.969257, 56.405613, 53.946106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811770, -0.583942, -0.006440,
		0.583974, 0.811754, 0.005503,
		0.002015, -0.008228, 0.999964,
		48.969860, 56.403145, 54.246094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.610218, 56.526524, 53.761307>,  <48.968452, 56.408905, 53.546120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.610218, 56.526524, 53.761307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.433949, 56.352486, 54.075375>,  <49.328186, 56.248062, 54.263817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.433949, 56.352486, 54.075375>,  <49.610218, 56.526524, 53.761307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.433949, 56.352486, 54.075375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737521, -0.674117, 0.040370,
		0.511734, 0.596872, 0.617958,
		-0.440672, -0.435098, 0.785174,
		49.301746, 56.221958, 54.310928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.193363, 56.333656, 54.239140>,  <49.610218, 56.526524, 53.761307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.193363, 56.333656, 54.239140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.868935, 56.107582, 54.299438>,  <49.674278, 55.971935, 54.335617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.868935, 56.107582, 54.299438>,  <50.193363, 56.333656, 54.239140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.868935, 56.107582, 54.299438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582579, -0.803671, 0.121307,
		0.052593, 0.186213, 0.981101,
		-0.811071, -0.565189, 0.150751,
		49.625614, 55.938026, 54.344666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.228603, 56.138706, 54.890560>,  <50.193363, 56.333656, 54.239140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.228603, 56.138706, 54.890560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.042702, 55.879654, 54.649040>,  <49.931160, 55.724224, 54.504128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.042702, 55.879654, 54.649040>,  <50.228603, 56.138706, 54.890560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.042702, 55.879654, 54.649040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578053, -0.738477, 0.347139,
		-0.670713, -0.187696, 0.717576,
		-0.464757, -0.647628, -0.603804,
		49.903275, 55.685364, 54.467899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.689163, 55.640366, 55.200855>,  <50.228603, 56.138706, 54.890560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.689163, 55.640366, 55.200855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.983570, 55.659935, 55.470932>,  <51.160213, 55.671677, 55.632980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.983570, 55.659935, 55.470932>,  <50.689163, 55.640366, 55.200855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.983570, 55.659935, 55.470932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293312, -0.875859, 0.383196,
		0.610123, -0.480081, -0.630296,
		0.736015, 0.048923, 0.675195,
		51.204376, 55.674610, 55.673489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.118851, 55.222599, 54.871235>,  <50.689163, 55.640366, 55.200855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.118851, 55.222599, 54.871235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.126278, 55.237877, 55.270874>,  <51.130733, 55.247044, 55.510658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.126278, 55.237877, 55.270874>,  <51.118851, 55.222599, 54.871235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.126278, 55.237877, 55.270874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076777, -0.996265, 0.039514,
		0.996875, -0.077442, -0.015567,
		0.018569, 0.038195, 0.999098,
		51.131847, 55.249336, 55.570602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.569897, 54.707405, 55.003853>,  <51.118851, 55.222599, 54.871235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.569897, 54.707405, 55.003853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.338993, 54.797623, 55.317772>,  <51.200451, 54.851753, 55.506123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.338993, 54.797623, 55.317772>,  <51.569897, 54.707405, 55.003853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.338993, 54.797623, 55.317772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017221, -0.964245, 0.264453,
		0.816381, 0.139142, 0.560501,
		-0.577257, 0.225547, 0.784795,
		51.165817, 54.865288, 55.553211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.884205, 54.393936, 55.651363>,  <51.569897, 54.707405, 55.003853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.884205, 54.393936, 55.651363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.490757, 54.436897, 55.709274>,  <51.254688, 54.462673, 55.744022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.490757, 54.436897, 55.709274>,  <51.884205, 54.393936, 55.651363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.490757, 54.436897, 55.709274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036519, -0.905195, 0.423425,
		0.176530, 0.411201, 0.894288,
		-0.983617, 0.107406, 0.144777,
		51.195671, 54.469120, 55.752708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.591034, 54.542156, 55.985950>,  <51.884205, 54.393936, 55.651363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.591034, 54.542156, 55.985950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.751907, 54.329933, 55.687485>,  <52.848431, 54.202599, 55.508404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.751907, 54.329933, 55.687485>,  <52.591034, 54.542156, 55.985950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.751907, 54.329933, 55.687485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124577, 0.839114, -0.529498,
		0.907046, 0.119998, 0.403569,
		0.402179, -0.530554, -0.746166,
		52.872562, 54.170765, 55.463634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.218563, 54.807289, 55.853848>,  <52.591034, 54.542156, 55.985950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.218563, 54.807289, 55.853848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.062637, 54.645660, 55.522842>,  <52.969082, 54.548683, 55.324242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.062637, 54.645660, 55.522842>,  <53.218563, 54.807289, 55.853848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.062637, 54.645660, 55.522842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076772, 0.909725, -0.408052,
		0.917688, -0.095535, -0.385646,
		-0.389815, -0.404070, -0.827509,
		52.945694, 54.524441, 55.274590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.638092, 55.175297, 55.259342>,  <53.218563, 54.807289, 55.853848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.638092, 55.175297, 55.259342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.639194, 55.574585, 55.235519>,  <53.639854, 55.814159, 55.221226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.639194, 55.574585, 55.235519>,  <53.638092, 55.175297, 55.259342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.639194, 55.574585, 55.235519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169490, 0.058227, 0.983810,
		0.985528, -0.012806, -0.169028,
		0.002756, 0.998221, -0.059555,
		53.640022, 55.874050, 55.217651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.274460, 55.378784, 55.512543>,  <53.638092, 55.175297, 55.259342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.274460, 55.378784, 55.512543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.987381, 55.649490, 55.578148>,  <53.815136, 55.811916, 55.617512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.987381, 55.649490, 55.578148>,  <54.274460, 55.378784, 55.512543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.987381, 55.649490, 55.578148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150670, -0.079029, 0.985420,
		0.679862, 0.731943, -0.045249,
		-0.717695, 0.676768, 0.164010,
		53.772072, 55.852520, 55.627350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.583340, 55.915737, 55.916431>,  <54.274460, 55.378784, 55.512543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.583340, 55.915737, 55.916431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.197319, 55.834156, 55.982262>,  <53.965706, 55.785210, 56.021759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.197319, 55.834156, 55.982262>,  <54.583340, 55.915737, 55.916431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.197319, 55.834156, 55.982262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208902, -0.219458, 0.952994,
		-0.158243, 0.954067, 0.254392,
		-0.965049, -0.203948, 0.164579,
		53.907803, 55.772972, 56.031635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.257912, 56.143860, 55.594944>,  <54.583340, 55.915737, 55.916431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.257912, 56.143860, 55.594944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.655777, 56.108475, 55.616180>,  <55.894497, 56.087242, 55.628922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.655777, 56.108475, 55.616180>,  <55.257912, 56.143860, 55.594944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.655777, 56.108475, 55.616180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101644, 0.928463, -0.357247,
		-0.017686, 0.360736, 0.932500,
		0.994664, -0.088465, 0.053088,
		55.954178, 56.081936, 55.632107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.603409, 56.689754, 55.979824>,  <55.257912, 56.143860, 55.594944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.603409, 56.689754, 55.979824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.867569, 56.553734, 55.712021>,  <56.026066, 56.472122, 55.551338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.867569, 56.553734, 55.712021>,  <55.603409, 56.689754, 55.979824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.867569, 56.553734, 55.712021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065527, 0.914284, -0.399740,
		0.748052, 0.220116, 0.626073,
		0.660398, -0.340050, -0.669508,
		56.065689, 56.451717, 55.511169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.752960, 57.209778, 56.551651>,  <55.603409, 56.689754, 55.979824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.752960, 57.209778, 56.551651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.916862, 57.106121, 56.901497>,  <56.015202, 57.043926, 57.111404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.916862, 57.106121, 56.901497>,  <55.752960, 57.209778, 56.551651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.916862, 57.106121, 56.901497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609116, -0.635990, -0.473809,
		0.679028, 0.726885, -0.102752,
		0.409754, -0.259142, 0.874613,
		56.039787, 57.028378, 57.163879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.531593, 57.035854, 56.433384>,  <55.752960, 57.209778, 56.551651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.531593, 57.035854, 56.433384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.516144, 56.909630, 56.812630>,  <56.506874, 56.833893, 57.040176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.516144, 56.909630, 56.812630>,  <56.531593, 57.035854, 56.433384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.516144, 56.909630, 56.812630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688885, -0.695720, -0.203495,
		0.723841, 0.645284, 0.244260,
		-0.038624, -0.315565, 0.948118,
		56.504555, 56.814960, 57.097065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.263374, 57.143826, 56.696838>,  <56.531593, 57.035854, 56.433384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.263374, 57.143826, 56.696838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.047401, 56.853653, 56.867584>,  <56.917816, 56.679550, 56.970032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.047401, 56.853653, 56.867584>,  <57.263374, 57.143826, 56.696838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.047401, 56.853653, 56.867584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711537, -0.664305, -0.228938,
		0.449650, 0.180121, 0.874855,
		-0.539935, -0.725434, 0.426867,
		56.885422, 56.636024, 56.995644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.693878, 56.691818, 57.191185>,  <57.263374, 57.143826, 56.696838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.693878, 56.691818, 57.191185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.387306, 56.486988, 57.036072>,  <57.203365, 56.364090, 56.943005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.387306, 56.486988, 57.036072>,  <57.693878, 56.691818, 57.191185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.387306, 56.486988, 57.036072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640109, -0.659075, -0.394817,
		-0.053400, -0.550818, 0.832915,
		-0.766426, -0.512073, -0.387778,
		57.157379, 56.333366, 56.919739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.406029, 56.304768, 56.976002>,  <57.693878, 56.691818, 57.191185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.406029, 56.304768, 56.976002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.649864, 56.372829, 56.666306>,  <58.796165, 56.413666, 56.480488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.649864, 56.372829, 56.666306>,  <58.406029, 56.304768, 56.976002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.649864, 56.372829, 56.666306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106272, 0.950332, 0.292532,
		0.785560, -0.260605, 0.561232,
		0.609592, 0.170158, -0.774238,
		58.832741, 56.423878, 56.434032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.147671, 56.472092, 57.129574>,  <58.406029, 56.304768, 56.976002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.147671, 56.472092, 57.129574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.984222, 56.655800, 56.814079>,  <58.886154, 56.766026, 56.624783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.984222, 56.655800, 56.814079>,  <59.147671, 56.472092, 57.129574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.984222, 56.655800, 56.814079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300663, 0.748202, 0.591436,
		0.861760, 0.478816, -0.167646,
		-0.408622, 0.459271, -0.788732,
		58.861637, 56.793583, 56.577461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.277935, 57.184677, 56.999294>,  <59.147671, 56.472092, 57.129574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.277935, 57.184677, 56.999294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.903526, 57.144581, 56.864349>,  <58.678879, 57.120522, 56.783382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.903526, 57.144581, 56.864349>,  <59.277935, 57.184677, 56.999294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.903526, 57.144581, 56.864349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244482, 0.874729, 0.418423,
		0.253155, 0.474132, -0.843274,
		-0.936024, -0.100239, -0.337359,
		58.622719, 57.114510, 56.763142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.021442, 57.774979, 56.489414>,  <59.277935, 57.184677, 56.999294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.021442, 57.774979, 56.489414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.737106, 57.601513, 56.710915>,  <58.566505, 57.497433, 56.843815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.737106, 57.601513, 56.710915>,  <59.021442, 57.774979, 56.489414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.737106, 57.601513, 56.710915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233235, 0.888088, 0.396107,
		-0.663555, 0.152417, -0.732437,
		-0.710842, -0.433668, 0.553746,
		58.523853, 57.471413, 56.877037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.581211, 58.262714, 56.542416>,  <59.021442, 57.774979, 56.489414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.581211, 58.262714, 56.542416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.475647, 58.042564, 56.859261>,  <58.412308, 57.910473, 57.049366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.475647, 58.042564, 56.859261>,  <58.581211, 58.262714, 56.542416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.475647, 58.042564, 56.859261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011993, 0.819290, 0.573254,
		-0.964473, 0.160788, -0.209618,
		-0.263911, -0.550374, 0.792111,
		58.396473, 57.877453, 57.096893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.442776, 58.392860, 56.408360>,  <58.581211, 58.262714, 56.542416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.442776, 58.392860, 56.408360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.328026, 58.434711, 56.789253>,  <59.259174, 58.459824, 57.017792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.328026, 58.434711, 56.789253>,  <59.442776, 58.392860, 56.408360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.328026, 58.434711, 56.789253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875479, 0.432164, 0.216267,
		-0.388895, 0.895705, -0.215575,
		-0.286875, 0.104626, 0.952237,
		59.241962, 58.466099, 57.074924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.599140, 59.023800, 56.524441>,  <59.442776, 58.392860, 56.408360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.599140, 59.023800, 56.524441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.593437, 58.851418, 56.885345>,  <59.590015, 58.747986, 57.101887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.593437, 58.851418, 56.885345>,  <59.599140, 59.023800, 56.524441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.593437, 58.851418, 56.885345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873941, 0.433055, 0.220657,
		-0.485822, 0.791668, 0.370456,
		-0.014259, -0.430957, 0.902260,
		59.589161, 58.722130, 57.156025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.980358, 59.414482, 57.008278>,  <59.599140, 59.023800, 56.524441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.980358, 59.414482, 57.008278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.964958, 59.113335, 57.271095>,  <59.955719, 58.932644, 57.428783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.964958, 59.113335, 57.271095>,  <59.980358, 59.414482, 57.008278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.964958, 59.113335, 57.271095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818283, 0.353634, 0.453162,
		-0.573525, 0.555094, 0.602446,
		-0.038503, -0.752871, 0.657041,
		59.953407, 58.887474, 57.468208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.385658, 59.508541, 57.673508>,  <59.980358, 59.414482, 57.008278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.385658, 59.508541, 57.673508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.629707, 59.824722, 57.651833>,  <60.776138, 60.014431, 57.638828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.629707, 59.824722, 57.651833>,  <60.385658, 59.508541, 57.673508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.629707, 59.824722, 57.651833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401199, -0.249246, 0.881428,
		0.683221, -0.559518, -0.469199,
		0.610121, 0.790453, -0.054188,
		60.812744, 60.061859, 57.635574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.181435, 60.107834, 57.148140>,  <60.385658, 59.508541, 57.673508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.181435, 60.107834, 57.148140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.313805, 60.484985, 57.163513>,  <60.393227, 60.711277, 57.172737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.313805, 60.484985, 57.163513>,  <60.181435, 60.107834, 57.148140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.313805, 60.484985, 57.163513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628992, 0.190029, 0.753829,
		0.703462, -0.273636, 0.655946,
		0.330923, 0.942875, 0.038437,
		60.413082, 60.767849, 57.175045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.393906, 60.273209, 57.959423>,  <60.181435, 60.107834, 57.148140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.393906, 60.273209, 57.959423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.279045, 60.576210, 57.724907>,  <60.210129, 60.758011, 57.584198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.279045, 60.576210, 57.724907>,  <60.393906, 60.273209, 57.959423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.279045, 60.576210, 57.724907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786262, 0.163205, 0.595950,
		0.547118, 0.632107, 0.548728,
		-0.287149, 0.757499, -0.586294,
		60.192902, 60.803459, 57.549019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.161259, 60.907154, 58.361443>,  <60.393906, 60.273209, 57.959423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.161259, 60.907154, 58.361443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.911583, 60.815033, 58.660065>,  <59.761776, 60.759758, 58.839237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.911583, 60.815033, 58.660065>,  <60.161259, 60.907154, 58.361443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.911583, 60.815033, 58.660065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605183, -0.461810, -0.648449,
		0.494108, -0.856558, 0.148880,
		-0.624188, -0.230304, 0.746558,
		59.724327, 60.745941, 58.884033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.728363, 61.295448, 58.193432>,  <60.161259, 60.907154, 58.361443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.728363, 61.295448, 58.193432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.780357, 61.408470, 57.813271>,  <60.811554, 61.476284, 57.585175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.780357, 61.408470, 57.813271>,  <60.728363, 61.295448, 58.193432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.780357, 61.408470, 57.813271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429374, 0.847955, 0.310823,
		0.893724, -0.448480, -0.011101,
		0.129985, 0.282556, -0.950403,
		60.819351, 61.493237, 57.528149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.324459, 61.868610, 58.107193>,  <60.728363, 61.295448, 58.193432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.324459, 61.868610, 58.107193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.048264, 61.939632, 57.826706>,  <60.882545, 61.982246, 57.658413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.048264, 61.939632, 57.826706>,  <61.324459, 61.868610, 58.107193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.048264, 61.939632, 57.826706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132729, 0.984047, 0.118466,
		0.711064, -0.011272, -0.703038,
		-0.690487, 0.177550, -0.701216,
		60.841118, 61.992897, 57.616341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.602089, 61.257786, 57.712719>,  <61.324459, 61.868610, 58.107193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.602089, 61.257786, 57.712719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.822067, 61.448280, 57.438271>,  <61.954056, 61.562576, 57.273602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.822067, 61.448280, 57.438271>,  <61.602089, 61.257786, 57.712719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.822067, 61.448280, 57.438271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821700, -0.161418, 0.546584,
		0.149551, -0.864376, -0.480093,
		0.549949, 0.476234, -0.686117,
		61.987053, 61.591152, 57.232437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.920891, 60.593136, 57.917648>,  <61.602089, 61.257786, 57.712719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.920891, 60.593136, 57.917648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.050896, 60.938766, 58.071396>,  <62.128899, 61.146145, 58.163647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.050896, 60.938766, 58.071396>,  <61.920891, 60.593136, 57.917648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.050896, 60.938766, 58.071396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943173, -0.325910, -0.064861,
		0.069226, 0.383611, -0.920896,
		0.325011, 0.864075, 0.384374,
		62.148399, 61.197990, 58.186707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.565666, 60.709839, 57.668621>,  <61.920891, 60.593136, 57.917648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.565666, 60.709839, 57.668621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.546135, 60.930374, 58.001762>,  <62.534416, 61.062695, 58.201645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.546135, 60.930374, 58.001762>,  <62.565666, 60.709839, 57.668621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.546135, 60.930374, 58.001762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957825, -0.210557, 0.195543,
		0.283173, 0.807271, -0.517809,
		-0.048828, 0.551343, 0.832849,
		62.531487, 61.095776, 58.251617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.001713, 61.340908, 57.761883>,  <62.565666, 60.709839, 57.668621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.001713, 61.340908, 57.761883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.952423, 61.209846, 58.136574>,  <62.922848, 61.131210, 58.361389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.952423, 61.209846, 58.136574>,  <63.001713, 61.340908, 57.761883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.952423, 61.209846, 58.136574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977989, 0.120061, 0.170652,
		-0.168380, 0.937137, 0.305651,
		-0.123227, -0.327658, 0.936726,
		62.915455, 61.111549, 58.417591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.604801, 61.564354, 57.395798>,  <63.001713, 61.340908, 57.761883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.604801, 61.564354, 57.395798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.574455, 61.630852, 57.789062>,  <63.556248, 61.670750, 58.025021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.574455, 61.630852, 57.789062>,  <63.604801, 61.564354, 57.395798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.574455, 61.630852, 57.789062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094704, -0.982748, 0.158864,
		0.992611, -0.081057, 0.090300,
		-0.075865, 0.166242, 0.983163,
		63.551697, 61.680725, 58.084011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.328239, 61.641628, 57.372402>,  <63.604801, 61.564354, 57.395798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.328239, 61.641628, 57.372402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.610695, 61.596802, 57.652061>,  <64.780167, 61.569908, 57.819859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.610695, 61.596802, 57.652061>,  <64.328239, 61.641628, 57.372402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.610695, 61.596802, 57.652061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446052, -0.696445, -0.562140,
		0.549915, 0.708806, -0.441801,
		0.706138, -0.112063, 0.699150,
		64.822533, 61.563183, 57.861805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.830200, 61.859203, 57.103733>,  <64.328239, 61.641628, 57.372402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.830200, 61.859203, 57.103733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.934433, 61.588608, 57.379257>,  <64.996971, 61.426250, 57.544571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.934433, 61.588608, 57.379257>,  <64.830200, 61.859203, 57.103733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.934433, 61.588608, 57.379257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224377, -0.651485, -0.724722,
		0.939016, 0.343404, -0.017978,
		0.260585, -0.676491, 0.688807,
		65.012611, 61.385662, 57.585899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.565315, 61.695621, 56.938648>,  <64.830200, 61.859203, 57.103733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.565315, 61.695621, 56.938648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.320221, 61.434303, 57.116524>,  <65.173164, 61.277512, 57.223248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.320221, 61.434303, 57.116524>,  <65.565315, 61.695621, 56.938648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.320221, 61.434303, 57.116524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352560, -0.729573, -0.586025,
		0.707282, -0.202303, 0.677367,
		-0.612743, -0.653297, 0.444689,
		65.136398, 61.238316, 57.249931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.185020, 61.443859, 57.121315>,  <65.565315, 61.695621, 56.938648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.185020, 61.443859, 57.121315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.474876, 61.416508, 56.847023>,  <66.648788, 61.400097, 56.682449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.474876, 61.416508, 56.847023>,  <66.185020, 61.443859, 57.121315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.474876, 61.416508, 56.847023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315095, -0.917831, -0.241458,
		-0.612870, 0.391039, -0.686643,
		0.724641, -0.068376, -0.685726,
		66.692268, 61.395996, 56.641304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.997208, 61.243271, 56.456291>,  <66.185020, 61.443859, 57.121315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.997208, 61.243271, 56.456291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.367943, 61.093155, 56.460670>,  <66.590385, 61.003086, 56.463299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.367943, 61.093155, 56.460670>,  <65.997208, 61.243271, 56.456291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.367943, 61.093155, 56.460670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372905, -0.923550, -0.089427,
		0.043669, 0.078803, -0.995933,
		0.926841, -0.375294, 0.010945,
		66.645996, 60.980568, 56.463955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.005730, 60.800526, 55.991520>,  <65.997208, 61.243271, 56.456291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.005730, 60.800526, 55.991520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.270004, 60.690498, 56.270897>,  <66.428574, 60.624481, 56.438522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.270004, 60.690498, 56.270897>,  <66.005730, 60.800526, 55.991520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.270004, 60.690498, 56.270897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438234, -0.896763, 0.061375,
		0.609453, -0.346631, -0.713031,
		0.660695, -0.275069, 0.698441,
		66.468216, 60.607979, 56.480431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.786232, 60.674213, 55.780056>,  <66.005730, 60.800526, 55.991520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.786232, 60.674213, 55.780056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.979813, 60.342468, 55.891731>,  <67.095963, 60.143421, 55.958736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.979813, 60.342468, 55.891731>,  <66.786232, 60.674213, 55.780056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.979813, 60.342468, 55.891731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487191, -0.009675, -0.873242,
		0.726934, 0.558628, 0.399375,
		0.483954, -0.829362, 0.279192,
		67.125000, 60.093658, 55.975491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.500427, 60.847511, 55.729706>,  <66.786232, 60.674213, 55.780056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.500427, 60.847511, 55.729706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.399994, 60.467571, 55.655136>,  <67.339737, 60.239609, 55.610394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.399994, 60.467571, 55.655136>,  <67.500427, 60.847511, 55.729706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.399994, 60.467571, 55.655136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370362, 0.083668, -0.925111,
		0.894311, -0.301319, 0.330780,
		-0.251078, -0.949845, -0.186422,
		67.324669, 60.182617, 55.599209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.104866, 60.414364, 55.754601>,  <67.500427, 60.847511, 55.729706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.104866, 60.414364, 55.754601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.793442, 60.336327, 55.516014>,  <67.606583, 60.289505, 55.372864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.793442, 60.336327, 55.516014>,  <68.104866, 60.414364, 55.754601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.793442, 60.336327, 55.516014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490323, 0.404103, -0.772195,
		0.391677, -0.893668, -0.218968,
		-0.778571, -0.195086, -0.596464,
		67.559868, 60.277798, 55.337074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.247375, 59.882252, 55.210640>,  <68.104866, 60.414364, 55.754601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.247375, 59.882252, 55.210640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.980186, 60.128944, 55.044052>,  <67.819870, 60.276958, 54.944099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.980186, 60.128944, 55.044052>,  <68.247375, 59.882252, 55.210640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.980186, 60.128944, 55.044052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574511, 0.071659, -0.815354,
		-0.473009, -0.783907, -0.402184,
		-0.667982, 0.616729, -0.416468,
		67.779793, 60.313965, 54.919113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.120392, 59.550663, 54.611214>,  <68.247375, 59.882252, 55.210640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.120392, 59.550663, 54.611214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.070335, 59.947357, 54.599957>,  <68.040298, 60.185375, 54.593201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.070335, 59.947357, 54.599957>,  <68.120392, 59.550663, 54.611214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.070335, 59.947357, 54.599957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565203, 0.047954, -0.823556,
		-0.815403, -0.118974, -0.566536,
		-0.125150, 0.991739, -0.028143,
		68.032791, 60.244881, 54.591515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.179703, 58.805672, 54.511871>,  <68.120392, 59.550663, 54.611214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.179703, 58.805672, 54.511871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.959709, 58.476395, 54.568237>,  <67.827713, 58.278828, 54.602058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.959709, 58.476395, 54.568237>,  <68.179703, 58.805672, 54.511871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.959709, 58.476395, 54.568237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805163, -0.477811, 0.351296,
		-0.221855, 0.306670, 0.925599,
		-0.549993, -0.823195, 0.140914,
		67.794708, 58.229435, 54.610512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.333794, 58.622326, 55.137482>,  <68.179703, 58.805672, 54.511871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.333794, 58.622326, 55.137482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.200607, 58.303467, 54.936012>,  <68.120697, 58.112152, 54.815132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.200607, 58.303467, 54.936012>,  <68.333794, 58.622326, 55.137482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.200607, 58.303467, 54.936012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808826, -0.516022, 0.281997,
		-0.484701, -0.313490, 0.816572,
		-0.332966, -0.797148, -0.503675,
		68.100716, 58.064323, 54.784908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.236954, 58.164314, 55.650482>,  <68.333794, 58.622326, 55.137482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.236954, 58.164314, 55.650482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.329292, 58.027283, 55.286209>,  <68.384697, 57.945065, 55.067646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.329292, 58.027283, 55.286209>,  <68.236954, 58.164314, 55.650482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.329292, 58.027283, 55.286209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823270, -0.430086, 0.370475,
		-0.518590, -0.835265, 0.182749,
		0.230847, -0.342577, -0.910687,
		68.398544, 57.924511, 55.013004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.695633, 57.646084, 55.673862>,  <68.236954, 58.164314, 55.650482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.695633, 57.646084, 55.673862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.770699, 57.641899, 55.280991>,  <68.815735, 57.639389, 55.045269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.770699, 57.641899, 55.280991>,  <68.695633, 57.646084, 55.673862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.770699, 57.641899, 55.280991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581032, -0.805047, 0.119585,
		-0.791951, -0.593118, -0.144995,
		0.187656, -0.010458, -0.982179,
		68.826996, 57.638763, 54.986336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.536415, 57.600994, 56.442390>,  <68.695633, 57.646084, 55.673862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.536415, 57.600994, 56.442390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.885147, 57.738899, 56.303215>,  <69.094383, 57.821644, 56.219711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.885147, 57.738899, 56.303215>,  <68.536415, 57.600994, 56.442390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.885147, 57.738899, 56.303215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123687, 0.532368, 0.837428,
		0.473946, -0.773125, 0.421488,
		0.871824, 0.344763, -0.347940,
		69.146690, 57.842327, 56.198833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.076897, 57.400383, 56.836071>,  <68.536415, 57.600994, 56.442390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.076897, 57.400383, 56.836071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.191650, 57.741283, 56.661095>,  <69.260506, 57.945824, 56.556107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.191650, 57.741283, 56.661095>,  <69.076897, 57.400383, 56.836071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.191650, 57.741283, 56.661095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101798, 0.426931, 0.898536,
		0.952540, -0.302312, 0.035724,
		0.286890, 0.852255, -0.437443,
		69.277718, 57.996960, 56.529861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.742943, 57.747173, 57.128208>,  <69.076897, 57.400383, 56.836071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.742943, 57.747173, 57.128208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.549919, 58.041401, 56.938019>,  <69.434105, 58.217937, 56.823906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.549919, 58.041401, 56.938019>,  <69.742943, 57.747173, 57.128208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.549919, 58.041401, 56.938019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019987, 0.551970, 0.833624,
		0.875633, 0.392772, -0.281062,
		-0.482562, 0.735567, -0.475473,
		69.405151, 58.262070, 56.795376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.086983, 58.257740, 57.449341>,  <69.742943, 57.747173, 57.128208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.086983, 58.257740, 57.449341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.755592, 58.429039, 57.304985>,  <69.556763, 58.531818, 57.218372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.755592, 58.429039, 57.304985>,  <70.086983, 58.257740, 57.449341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.755592, 58.429039, 57.304985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123027, 0.489495, 0.863284,
		0.546353, 0.759604, -0.352846,
		-0.828470, 0.428248, -0.360889,
		69.507050, 58.557514, 57.196720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.820457, 58.320095, 57.784534>,  <70.086983, 58.257740, 57.449341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.820457, 58.320095, 57.784534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.599335, 58.567253, 58.008179>,  <70.466660, 58.715546, 58.142365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.599335, 58.567253, 58.008179>,  <70.820457, 58.320095, 57.784534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.599335, 58.567253, 58.008179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258494, -0.765014, 0.589860,
		0.792198, 0.181556, 0.582632,
		-0.552814, 0.617893, 0.559111,
		70.433487, 58.752621, 58.175911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.138512, 58.514339, 58.510773>,  <70.820457, 58.320095, 57.784534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.138512, 58.514339, 58.510773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.750374, 58.423286, 58.478271>,  <70.517487, 58.368652, 58.458771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.750374, 58.423286, 58.478271>,  <71.138512, 58.514339, 58.510773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.750374, 58.423286, 58.478271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099392, -0.682225, 0.724355,
		-0.220321, 0.694802, 0.684623,
		-0.970350, -0.227637, -0.081250,
		70.459267, 58.354996, 58.453896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.747238, 58.603081, 59.004032>,  <71.138512, 58.514339, 58.510773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.747238, 58.603081, 59.004032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.770203, 58.517693, 59.394135>,  <71.783981, 58.466457, 59.628197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.770203, 58.517693, 59.394135>,  <71.747238, 58.603081, 59.004032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.770203, 58.517693, 59.394135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591387, -0.779765, -0.205495,
		0.804342, 0.588554, 0.081479,
		0.057410, -0.213474, 0.975260,
		71.787422, 58.453651, 59.686714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.442101, 58.667236, 59.179482>,  <71.747238, 58.603081, 59.004032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.442101, 58.667236, 59.179482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.271950, 58.413757, 59.437935>,  <72.169861, 58.261669, 59.593006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.271950, 58.413757, 59.437935>,  <72.442101, 58.667236, 59.179482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.271950, 58.413757, 59.437935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611071, -0.727734, -0.311440,
		0.667573, 0.262357, 0.696789,
		-0.425369, -0.633697, 0.646134,
		72.144341, 58.223648, 59.631775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.937836, 58.341446, 59.503700>,  <72.442101, 58.667236, 59.179482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.937836, 58.341446, 59.503700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.600746, 58.128471, 59.471893>,  <72.398491, 58.000687, 59.452808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.600746, 58.128471, 59.471893>,  <72.937836, 58.341446, 59.503700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.600746, 58.128471, 59.471893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492874, -0.703687, -0.511761,
		0.216522, -0.470468, 0.855440,
		-0.842729, -0.532432, -0.079518,
		72.347931, 57.968742, 59.448036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.933769, 58.145081, 60.269897>,  <72.937836, 58.341446, 59.503700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.933769, 58.145081, 60.269897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.088272, 57.802124, 60.405945>,  <73.180977, 57.596348, 60.487576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.088272, 57.802124, 60.405945>,  <72.933769, 58.145081, 60.269897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.088272, 57.802124, 60.405945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806223, -0.492962, -0.327098,
		0.448119, -0.147871, -0.881659,
		0.386256, -0.857393, 0.340123,
		73.204147, 57.544907, 60.507980>
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
