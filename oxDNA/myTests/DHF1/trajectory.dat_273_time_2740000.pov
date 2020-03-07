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
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<1.627031, 3.830073, 1.358273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.978447, 3.639511, 1.372169>,  <2.189296, 3.525174, 1.380508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.978447, 3.639511, 1.372169>,  <1.627031, 3.830073, 1.358273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.978447, 3.639511, 1.372169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424417, 0.811900, 0.400859,
		-0.219179, -0.337425, 0.915481,
		0.878539, -0.476406, 0.034743,
		2.242009, 3.496589, 1.382592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.984102, 3.969561, 2.069040>,  <1.627031, 3.830073, 1.358273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.984102, 3.969561, 2.069040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.209667, 3.924911, 1.741737>,  <2.345006, 3.898122, 1.545356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.209667, 3.924911, 1.741737>,  <1.984102, 3.969561, 2.069040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.209667, 3.924911, 1.741737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430073, 0.885554, 0.175587,
		0.705011, -0.450926, 0.547381,
		0.563912, -0.111623, -0.818256,
		2.378841, 3.891425, 1.496260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.736337, 4.020975, 2.225874>,  <1.984102, 3.969561, 2.069040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.736337, 4.020975, 2.225874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.616131, 4.128616, 1.859863>,  <2.544007, 4.193201, 1.640257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.616131, 4.128616, 1.859863>,  <2.736337, 4.020975, 2.225874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.616131, 4.128616, 1.859863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235216, 0.950651, 0.202329,
		0.924318, -0.154425, -0.348982,
		-0.300515, 0.269102, -0.915027,
		2.525976, 4.209347, 1.585355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.354670, 4.248151, 1.879526>,  <2.736337, 4.020975, 2.225874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.354670, 4.248151, 1.879526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.015583, 4.409424, 1.741646>,  <2.812131, 4.506187, 1.658917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.015583, 4.409424, 1.741646>,  <3.354670, 4.248151, 1.879526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.015583, 4.409424, 1.741646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279856, 0.891972, 0.355058,
		0.450617, 0.204522, -0.868973,
		-0.847717, 0.403183, -0.344702,
		2.761268, 4.530379, 1.638235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.481439, 4.780815, 1.438518>,  <3.354670, 4.248151, 1.879526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.481439, 4.780815, 1.438518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.113911, 4.855042, 1.577850>,  <2.893394, 4.899577, 1.661450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.113911, 4.855042, 1.577850>,  <3.481439, 4.780815, 1.438518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.113911, 4.855042, 1.577850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344713, 0.807120, 0.479301,
		-0.192204, 0.560466, -0.805565,
		-0.918820, 0.185566, 0.348332,
		2.838265, 4.910711, 1.682350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.329161, 5.483314, 1.227789>,  <3.481439, 4.780815, 1.438518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.329161, 5.483314, 1.227789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.087719, 5.405319, 1.537018>,  <2.942853, 5.358522, 1.722555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.087719, 5.405319, 1.537018>,  <3.329161, 5.483314, 1.227789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.087719, 5.405319, 1.537018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289510, 0.849845, 0.440396,
		-0.742862, 0.489637, -0.456521,
		-0.603606, -0.194986, 0.773072,
		2.906637, 5.346824, 1.768939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.935929, 6.180099, 1.412718>,  <3.329161, 5.483314, 1.227789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.935929, 6.180099, 1.412718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.922874, 5.959106, 1.745872>,  <2.915042, 5.826511, 1.945765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.922874, 5.959106, 1.745872>,  <2.935929, 6.180099, 1.412718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.922874, 5.959106, 1.745872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023919, 0.833523, 0.551967,
		-0.999181, -0.001907, -0.040418,
		-0.032637, -0.552481, 0.832886,
		2.913083, 5.793362, 1.995738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.346978, 6.472673, 1.773125>,  <2.935929, 6.180099, 1.412718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.346978, 6.472673, 1.773125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.629051, 6.302765, 2.000206>,  <2.798295, 6.200819, 2.136455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.629051, 6.302765, 2.000206>,  <2.346978, 6.472673, 1.773125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.629051, 6.302765, 2.000206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050689, 0.828835, 0.557193,
		-0.707212, -0.364146, 0.606011,
		0.705182, -0.424772, 0.567703,
		2.840606, 6.175333, 2.170517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.075586, 1.098280, 3.567682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.692899, 1.198181, 3.627434>,  <3.463286, 1.258122, 3.663285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.692899, 1.198181, 3.627434>,  <4.075586, 1.098280, 3.567682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.692899, 1.198181, 3.627434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288684, 0.879349, 0.378690,
		-0.036778, 0.405423, -0.913389,
		-0.956718, 0.249754, 0.149380,
		3.405883, 1.273107, 3.672248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.907769, 1.621065, 3.103878>,  <4.075586, 1.098280, 3.567682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.907769, 1.621065, 3.103878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.691400, 1.666550, 3.437218>,  <3.561578, 1.693840, 3.637222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.691400, 1.666550, 3.437218>,  <3.907769, 1.621065, 3.103878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.691400, 1.666550, 3.437218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370999, 0.921475, 0.115078,
		-0.754826, 0.371420, -0.540634,
		-0.540923, 0.113711, 0.833350,
		3.529123, 1.700663, 3.687223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.947899, 1.510241, 2.326076>,  <3.907769, 1.621065, 3.103878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.947899, 1.510241, 2.326076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.719778, 1.417938, 2.641418>,  <3.582905, 1.362556, 2.830624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.719778, 1.417938, 2.641418>,  <3.947899, 1.510241, 2.326076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.719778, 1.417938, 2.641418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655831, -0.449973, -0.606144,
		0.494611, -0.862714, 0.105284,
		-0.570303, -0.230757, 0.788356,
		3.548687, 1.348711, 2.877925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.927033, 0.795682, 2.526299>,  <3.947899, 1.510241, 2.326076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.927033, 0.795682, 2.526299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.583166, 0.962830, 2.643845>,  <3.376845, 1.063118, 2.714372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.583166, 0.962830, 2.643845>,  <3.927033, 0.795682, 2.526299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.583166, 0.962830, 2.643845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510818, -0.709852, -0.484949,
		0.005956, -0.567007, 0.823691,
		-0.859668, 0.417868, 0.293865,
		3.325265, 1.088190, 2.732004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.475178, 0.282398, 2.959245>,  <3.927033, 0.795682, 2.526299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.475178, 0.282398, 2.959245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.243332, 0.567307, 2.800896>,  <3.104225, 0.738252, 2.705886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.243332, 0.567307, 2.800896>,  <3.475178, 0.282398, 2.959245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.243332, 0.567307, 2.800896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539132, -0.699463, -0.469136,
		-0.611050, -0.058491, 0.789428,
		-0.579616, 0.712271, -0.395873,
		3.069448, 0.780988, 2.682133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.867249, 0.028581, 3.005510>,  <3.475178, 0.282398, 2.959245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.867249, 0.028581, 3.005510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.862830, 0.280746, 2.695038>,  <2.860179, 0.432046, 2.508754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.862830, 0.280746, 2.695038>,  <2.867249, 0.028581, 3.005510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.862830, 0.280746, 2.695038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443273, -0.698878, -0.561319,
		-0.896319, 0.337860, 0.287165,
		-0.011045, 0.630413, -0.776181,
		2.859516, 0.469870, 2.462183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.179314, 0.101694, 2.797415>,  <2.867249, 0.028581, 3.005510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.179314, 0.101694, 2.797415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.403077, 0.159821, 2.470993>,  <2.537335, 0.194696, 2.275140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.403077, 0.159821, 2.470993>,  <2.179314, 0.101694, 2.797415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.403077, 0.159821, 2.470993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593033, -0.617675, -0.516516,
		-0.579115, 0.772891, -0.259356,
		0.559408, 0.145315, -0.816055,
		2.570899, 0.203415, 2.226177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.743563, 0.045002, 2.316937>,  <2.179314, 0.101694, 2.797415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.743563, 0.045002, 2.316937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.091326, -0.015656, 2.128838>,  <2.299983, -0.052050, 2.015978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.091326, -0.015656, 2.128838>,  <1.743563, 0.045002, 2.316937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.091326, -0.015656, 2.128838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424811, -0.715445, -0.554684,
		-0.252323, 0.682013, -0.686434,
		0.869407, -0.151645, -0.470250,
		2.352148, -0.061149, 1.987763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
