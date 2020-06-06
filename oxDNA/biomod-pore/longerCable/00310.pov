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
	<23.907324, 34.855114, 35.074669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.239286, 35.072784, 35.025475>,  <24.438465, 35.203384, 34.995956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.239286, 35.072784, 35.025475>,  <23.907324, 34.855114, 35.074669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.239286, 35.072784, 35.025475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493610, -0.818948, -0.292701,
		-0.260003, 0.182206, -0.948261,
		0.829909, 0.544174, -0.122990,
		24.488258, 35.236038, 34.988579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.208492, 34.609192, 34.441151>,  <23.907324, 34.855114, 35.074669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.208492, 34.609192, 34.441151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.506638, 34.783581, 34.642887>,  <24.685524, 34.888214, 34.763927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.506638, 34.783581, 34.642887>,  <24.208492, 34.609192, 34.441151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.506638, 34.783581, 34.642887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595455, -0.775570, -0.209582,
		0.299778, 0.456526, -0.837685,
		0.745363, 0.435976, 0.504340,
		24.730246, 34.914375, 34.794189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.959558, 34.532375, 34.064938>,  <24.208492, 34.609192, 34.441151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.959558, 34.532375, 34.064938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.990726, 34.567196, 34.462200>,  <25.009428, 34.588089, 34.700558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.990726, 34.567196, 34.462200>,  <24.959558, 34.532375, 34.064938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.990726, 34.567196, 34.462200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694402, -0.719536, 0.008585,
		0.715356, 0.688978, -0.116512,
		0.077919, 0.087047, 0.993152,
		25.014103, 34.593311, 34.760147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.630600, 34.593666, 34.148899>,  <24.959558, 34.532375, 34.064938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.630600, 34.593666, 34.148899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.495098, 34.468590, 34.503857>,  <25.413797, 34.393543, 34.716831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.495098, 34.468590, 34.503857>,  <25.630600, 34.593666, 34.148899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.495098, 34.468590, 34.503857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631305, -0.774872, -0.032044,
		0.697639, 0.549363, 0.459892,
		-0.338754, -0.312687, 0.887396,
		25.393473, 34.374783, 34.770077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.110662, 34.376743, 34.473763>,  <25.630600, 34.593666, 34.148899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.110662, 34.376743, 34.473763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.823595, 34.182327, 34.673248>,  <25.651354, 34.065678, 34.792938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.823595, 34.182327, 34.673248>,  <26.110662, 34.376743, 34.473763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.823595, 34.182327, 34.673248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547350, -0.836451, -0.027539,
		0.430533, 0.253205, 0.866330,
		-0.717670, -0.486042, 0.498712,
		25.608294, 34.036514, 34.822861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.431740, 34.031193, 34.998024>,  <26.110662, 34.376743, 34.473763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.431740, 34.031193, 34.998024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.090477, 33.847713, 34.898647>,  <25.885719, 33.737625, 34.839020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.090477, 33.847713, 34.898647>,  <26.431740, 34.031193, 34.998024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.090477, 33.847713, 34.898647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489254, -0.868822, -0.076015,
		-0.180986, -0.186404, 0.965659,
		-0.853156, -0.458695, -0.248443,
		25.834530, 33.710106, 34.824116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.291327, 33.498146, 35.539478>,  <26.431740, 34.031193, 34.998024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.291327, 33.498146, 35.539478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.139936, 33.423088, 35.176922>,  <26.049103, 33.378052, 34.959389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.139936, 33.423088, 35.176922>,  <26.291327, 33.498146, 35.539478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.139936, 33.423088, 35.176922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552360, -0.831551, -0.058490,
		-0.742735, -0.522791, 0.418371,
		-0.378475, -0.187648, -0.906391,
		26.026394, 33.366795, 34.905006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.009979, 32.913277, 35.593143>,  <26.291327, 33.498146, 35.539478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.009979, 32.913277, 35.593143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.067123, 32.965046, 35.200645>,  <26.101410, 32.996109, 34.965145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.067123, 32.965046, 35.200645>,  <26.009979, 32.913277, 35.593143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.067123, 32.965046, 35.200645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475711, -0.878366, -0.046595,
		-0.867922, -0.460132, -0.187053,
		0.142862, 0.129425, -0.981244,
		26.109982, 33.003872, 34.906273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.939377, 32.191662, 35.165226>,  <26.009979, 32.913277, 35.593143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.939377, 32.191662, 35.165226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.129208, 32.408695, 34.887985>,  <26.243107, 32.538914, 34.721642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.129208, 32.408695, 34.887985>,  <25.939377, 32.191662, 35.165226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.129208, 32.408695, 34.887985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674040, -0.730419, -0.110267,
		-0.566080, -0.414845, -0.712360,
		0.474578, 0.542579, -0.693097,
		26.271582, 32.571468, 34.680058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.823587, 31.896475, 34.530079>,  <25.939377, 32.191662, 35.165226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.823587, 31.896475, 34.530079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.177145, 32.083546, 34.531277>,  <26.389280, 32.195789, 34.531994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.177145, 32.083546, 34.531277>,  <25.823587, 31.896475, 34.530079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.177145, 32.083546, 34.531277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441431, -0.832139, -0.335685,
		-0.154503, 0.298030, -0.941970,
		0.883894, 0.467679, 0.002992,
		26.442312, 32.223850, 34.532173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.186367, 31.612921, 33.882549>,  <25.823587, 31.896475, 34.530079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.186367, 31.612921, 33.882549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.452509, 31.786850, 34.125278>,  <26.612194, 31.891207, 34.270916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.452509, 31.786850, 34.125278>,  <26.186367, 31.612921, 33.882549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.452509, 31.786850, 34.125278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573138, -0.818382, -0.042006,
		0.478345, 0.375741, -0.793728,
		0.665356, 0.434823, 0.606820,
		26.652115, 31.917297, 34.307323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.833830, 31.473820, 33.636879>,  <26.186367, 31.612921, 33.882549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.833830, 31.473820, 33.636879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.829006, 31.530933, 34.032753>,  <26.826113, 31.565201, 34.270275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.829006, 31.530933, 34.032753>,  <26.833830, 31.473820, 33.636879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.829006, 31.530933, 34.032753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453868, -0.881140, 0.132653,
		0.890987, 0.450784, -0.054179,
		-0.012058, 0.142783, 0.989680,
		26.825388, 31.573769, 34.329659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.950712, 30.767546, 33.901131>,  <26.833830, 31.473820, 33.636879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.950712, 30.767546, 33.901131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.350492, 30.770027, 33.888107>,  <27.590361, 30.771517, 33.880295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.350492, 30.770027, 33.888107>,  <26.950712, 30.767546, 33.901131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.350492, 30.770027, 33.888107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012025, 0.847495, 0.530668,
		0.030885, -0.530768, 0.846955,
		0.999451, 0.006205, -0.032558,
		27.650328, 30.771889, 33.878342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.264681, 30.690353, 34.539452>,  <26.950712, 30.767546, 33.901131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.264681, 30.690353, 34.539452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.449455, 30.927137, 34.275272>,  <27.560320, 31.069208, 34.116764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.449455, 30.927137, 34.275272>,  <27.264681, 30.690353, 34.539452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.449455, 30.927137, 34.275272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286153, 0.804314, 0.520764,
		0.839483, -0.051570, 0.540934,
		0.461937, 0.591962, -0.660451,
		27.588037, 31.104727, 34.077137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.660427, 31.202751, 34.933586>,  <27.264681, 30.690353, 34.539452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.660427, 31.202751, 34.933586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.525440, 31.353014, 34.588333>,  <27.444448, 31.443171, 34.381180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.525440, 31.353014, 34.588333>,  <27.660427, 31.202751, 34.933586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.525440, 31.353014, 34.588333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290199, 0.830747, 0.475021,
		0.895490, 0.410783, -0.171334,
		-0.337466, 0.375655, -0.863134,
		27.424200, 31.465710, 34.329391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.760414, 31.894411, 35.104797>,  <27.660427, 31.202751, 34.933586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.760414, 31.894411, 35.104797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.538681, 31.891630, 34.771893>,  <27.405642, 31.889961, 34.572147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.538681, 31.891630, 34.771893>,  <27.760414, 31.894411, 35.104797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.538681, 31.891630, 34.771893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287844, 0.939860, 0.183871,
		0.780935, 0.341488, -0.522997,
		-0.554334, -0.006950, -0.832265,
		27.372381, 31.889545, 34.522213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.720041, 32.547062, 34.922207>,  <27.760414, 31.894411, 35.104797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.720041, 32.547062, 34.922207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.417875, 32.371166, 34.727901>,  <27.236576, 32.265629, 34.611317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.417875, 32.371166, 34.727901>,  <27.720041, 32.547062, 34.922207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.417875, 32.371166, 34.727901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473827, 0.878668, -0.058571,
		0.452585, 0.185925, -0.872123,
		-0.755417, -0.439744, -0.485768,
		27.191250, 32.239243, 34.582172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.542181, 32.904327, 34.316654>,  <27.720041, 32.547062, 34.922207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.542181, 32.904327, 34.316654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.204092, 32.710163, 34.406071>,  <27.001238, 32.593662, 34.459721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.204092, 32.710163, 34.406071>,  <27.542181, 32.904327, 34.316654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.204092, 32.710163, 34.406071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529097, 0.818940, -0.222247,
		-0.075187, -0.306125, -0.949018,
		-0.845223, -0.485413, 0.223544,
		26.950525, 32.564541, 34.473133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.962957, 33.151703, 33.771534>,  <27.542181, 32.904327, 34.316654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.962957, 33.151703, 33.771534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.760860, 32.964500, 34.061554>,  <26.639603, 32.852177, 34.235565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.760860, 32.964500, 34.061554>,  <26.962957, 33.151703, 33.771534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.760860, 32.964500, 34.061554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675955, 0.736929, 0.004647,
		-0.536486, -0.487754, -0.688679,
		-0.505241, -0.468009, 0.725051,
		26.609287, 32.824097, 34.279068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.295868, 33.017097, 33.646034>,  <26.962957, 33.151703, 33.771534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.295868, 33.017097, 33.646034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.245342, 33.019794, 34.042820>,  <26.215027, 33.021412, 34.280891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.245342, 33.019794, 34.042820>,  <26.295868, 33.017097, 33.646034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.245342, 33.019794, 34.042820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591737, 0.802072, -0.080799,
		-0.796174, -0.597190, -0.097323,
		-0.126313, 0.006741, 0.991968,
		26.207449, 33.021816, 34.340412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.580942, 33.037449, 33.871487>,  <26.295868, 33.017097, 33.646034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.580942, 33.037449, 33.871487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.805201, 33.223988, 34.145187>,  <25.939756, 33.335911, 34.309406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.805201, 33.223988, 34.145187>,  <25.580942, 33.037449, 33.871487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.805201, 33.223988, 34.145187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575514, 0.813576, -0.082935,
		-0.595366, -0.347299, 0.724516,
		0.560646, 0.466346, 0.684250,
		25.973394, 33.363892, 34.350464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.098213, 33.555222, 34.171429>,  <25.580942, 33.037449, 33.871487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.098213, 33.555222, 34.171429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.477753, 33.674076, 34.214115>,  <25.705477, 33.745388, 34.239727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.477753, 33.674076, 34.214115>,  <25.098213, 33.555222, 34.171429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.477753, 33.674076, 34.214115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283754, 0.950791, -0.124421,
		-0.138438, 0.087775, 0.986474,
		0.948851, 0.297141, 0.106719,
		25.762407, 33.763218, 34.246132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.456036, 33.124538, 34.082623>,  <25.098213, 33.555222, 34.171429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.456036, 33.124538, 34.082623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.302402, 33.135426, 33.713463>,  <24.210222, 33.141960, 33.491966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.302402, 33.135426, 33.713463>,  <24.456036, 33.124538, 34.082623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.302402, 33.135426, 33.713463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723762, 0.629509, -0.282642,
		0.573278, -0.776516, -0.261487,
		-0.384085, 0.027222, -0.922897,
		24.187178, 33.143593, 33.436592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.668272, 33.239513, 34.773510>,  <24.456036, 33.124538, 34.082623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.668272, 33.239513, 34.773510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.034742, 33.361069, 34.878029>,  <25.254623, 33.434002, 34.940742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.034742, 33.361069, 34.878029>,  <24.668272, 33.239513, 34.773510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.034742, 33.361069, 34.878029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392850, 0.809990, 0.435414,
		-0.079335, -0.501568, 0.861473,
		0.916174, 0.303886, 0.261302,
		25.309595, 33.452236, 34.956421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.725899, 33.328838, 35.519398>,  <24.668272, 33.239513, 34.773510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.725899, 33.328838, 35.519398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.977581, 33.556976, 35.308189>,  <25.128590, 33.693859, 35.181465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.977581, 33.556976, 35.308189>,  <24.725899, 33.328838, 35.519398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.977581, 33.556976, 35.308189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365299, 0.816649, 0.446812,
		0.686044, -0.088251, 0.722188,
		0.629205, 0.570347, -0.528019,
		25.166342, 33.728081, 35.149784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.802219, 33.998753, 35.875187>,  <24.725899, 33.328838, 35.519398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.802219, 33.998753, 35.875187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.999401, 34.108097, 35.544788>,  <25.117710, 34.173706, 35.346550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.999401, 34.108097, 35.544788>,  <24.802219, 33.998753, 35.875187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.999401, 34.108097, 35.544788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277381, 0.949199, 0.148597,
		0.824656, 0.155864, 0.543736,
		0.492952, 0.273364, -0.825996,
		25.147287, 34.190105, 35.296989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.154413, 34.579453, 36.014614>,  <24.802219, 33.998753, 35.875187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.154413, 34.579453, 36.014614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.093950, 34.597736, 35.619633>,  <25.057673, 34.608707, 35.382645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.093950, 34.597736, 35.619633>,  <25.154413, 34.579453, 36.014614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.093950, 34.597736, 35.619633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368487, 0.924326, 0.099190,
		0.917262, 0.378857, -0.122875,
		-0.151155, 0.045705, -0.987453,
		25.048603, 34.611446, 35.323399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.497374, 35.246132, 35.713253>,  <25.154413, 34.579453, 36.014614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.497374, 35.246132, 35.713253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.176733, 35.112808, 35.514721>,  <24.984348, 35.032814, 35.395599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.176733, 35.112808, 35.514721>,  <25.497374, 35.246132, 35.713253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.176733, 35.112808, 35.514721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439653, 0.891210, 0.111579,
		0.405147, 0.307656, -0.860932,
		-0.801600, -0.333305, -0.496332,
		24.936253, 35.012817, 35.365822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.794687, 34.916725, 36.368465>,  <25.497374, 35.246132, 35.713253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.794687, 34.916725, 36.368465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.145885, 34.822845, 36.201595>,  <26.356606, 34.766518, 36.101471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.145885, 34.822845, 36.201595>,  <25.794687, 34.916725, 36.368465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.145885, 34.822845, 36.201595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223427, -0.569831, 0.790805,
		-0.423320, -0.787534, -0.447873,
		0.877998, -0.234697, -0.417177,
		26.409285, 34.752438, 36.076443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.896769, 34.129158, 36.411854>,  <25.794687, 34.916725, 36.368465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.896769, 34.129158, 36.411854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.249493, 34.311752, 36.364468>,  <26.461126, 34.421310, 36.336037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.249493, 34.311752, 36.364468>,  <25.896769, 34.129158, 36.411854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.249493, 34.311752, 36.364468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347747, -0.459693, 0.817162,
		0.318565, -0.761777, -0.564103,
		0.881809, 0.456484, -0.118464,
		26.514036, 34.448696, 36.328930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.378576, 33.656425, 36.535908>,  <25.896769, 34.129158, 36.411854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.378576, 33.656425, 36.535908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.599806, 33.988941, 36.558056>,  <26.732544, 34.188450, 36.571342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.599806, 33.988941, 36.558056>,  <26.378576, 33.656425, 36.535908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.599806, 33.988941, 36.558056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487184, -0.376612, 0.787918,
		0.675841, -0.408804, -0.613285,
		0.553075, 0.831290, 0.055368,
		26.765728, 34.238327, 36.574665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.082674, 33.478661, 36.604023>,  <26.378576, 33.656425, 36.535908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.082674, 33.478661, 36.604023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.063492, 33.826500, 36.800591>,  <27.051983, 34.035206, 36.918530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.063492, 33.826500, 36.800591>,  <27.082674, 33.478661, 36.604023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.063492, 33.826500, 36.800591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433834, -0.425024, 0.794445,
		0.899716, 0.251293, -0.356881,
		-0.047956, 0.869601, 0.491420,
		27.049105, 34.087379, 36.948017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.606689, 33.366093, 37.035065>,  <27.082674, 33.478661, 36.604023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.606689, 33.366093, 37.035065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.436653, 33.699146, 37.177059>,  <27.334631, 33.898979, 37.262257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.436653, 33.699146, 37.177059>,  <27.606689, 33.366093, 37.035065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.436653, 33.699146, 37.177059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325662, -0.225232, 0.918267,
		0.844536, 0.505955, -0.175413,
		-0.425093, 0.832635, 0.354986,
		27.309126, 33.948936, 37.283554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.101950, 33.668304, 37.323463>,  <27.606689, 33.366093, 37.035065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.101950, 33.668304, 37.323463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.757372, 33.786892, 37.488400>,  <27.550625, 33.858044, 37.587360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.757372, 33.786892, 37.488400>,  <28.101950, 33.668304, 37.323463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.757372, 33.786892, 37.488400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312321, -0.330972, 0.890457,
		0.400464, 0.895860, 0.192520,
		-0.861443, 0.296468, 0.412338,
		27.498940, 33.875832, 37.612103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.262131, 34.123077, 37.854851>,  <28.101950, 33.668304, 37.323463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.262131, 34.123077, 37.854851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.907909, 33.954571, 37.933163>,  <27.695377, 33.853466, 37.980148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.907909, 33.954571, 37.933163>,  <28.262131, 34.123077, 37.854851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.907909, 33.954571, 37.933163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232109, -0.036187, 0.972016,
		-0.402393, 0.906215, 0.129826,
		-0.885554, -0.421266, 0.195779,
		27.642242, 33.828190, 37.991898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175665, 34.028320, 38.587215>,  <28.262131, 34.123077, 37.854851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.175665, 34.028320, 38.587215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.787067, 34.005543, 38.495167>,  <27.553909, 33.991875, 38.439938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.787067, 34.005543, 38.495167>,  <28.175665, 34.028320, 38.587215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.787067, 34.005543, 38.495167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222365, -0.117621, 0.967843,
		-0.082183, 0.991424, 0.101605,
		-0.971494, -0.056947, -0.230124,
		27.495619, 33.988461, 38.426128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.789080, 34.386448, 38.978539>,  <28.175665, 34.028320, 38.587215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.789080, 34.386448, 38.978539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.545944, 34.099712, 38.841908>,  <27.400063, 33.927670, 38.759930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.545944, 34.099712, 38.841908>,  <27.789080, 34.386448, 38.978539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.545944, 34.099712, 38.841908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197800, -0.279916, 0.939427,
		-0.769030, 0.638583, 0.028352,
		-0.607838, -0.716839, -0.341575,
		27.363592, 33.884659, 38.739433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.172499, 34.531467, 39.317333>,  <27.789080, 34.386448, 38.978539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.172499, 34.531467, 39.317333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.181463, 34.148117, 39.203480>,  <27.186842, 33.918106, 39.135166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.181463, 34.148117, 39.203480>,  <27.172499, 34.531467, 39.317333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.181463, 34.148117, 39.203480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252017, -0.280927, 0.926049,
		-0.967463, 0.050978, -0.247823,
		0.022412, -0.958374, -0.284634,
		27.188187, 33.860603, 39.118088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.545101, 34.364395, 39.439545>,  <27.172499, 34.531467, 39.317333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.545101, 34.364395, 39.439545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794950, 34.052567, 39.457951>,  <26.944860, 33.865471, 39.468994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794950, 34.052567, 39.457951>,  <26.545101, 34.364395, 39.439545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.794950, 34.052567, 39.457951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261741, -0.153478, 0.952857,
		-0.735756, -0.607220, -0.299911,
		0.624624, -0.779569, 0.046012,
		26.982338, 33.818695, 39.471752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.290724, 33.696415, 39.693470>,  <26.545101, 34.364395, 39.439545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.290724, 33.696415, 39.693470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.670298, 33.759331, 39.802856>,  <26.898043, 33.797081, 39.868488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.670298, 33.759331, 39.802856>,  <26.290724, 33.696415, 39.693470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.670298, 33.759331, 39.802856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298343, 0.165649, 0.939974,
		0.102540, -0.973562, 0.204114,
		0.948935, 0.157281, 0.273469,
		26.954977, 33.806519, 39.884895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.481983, 33.438694, 40.452930>,  <26.290724, 33.696415, 39.693470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.481983, 33.438694, 40.452930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.742464, 33.727669, 40.359966>,  <26.898752, 33.901054, 40.304188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.742464, 33.727669, 40.359966>,  <26.481983, 33.438694, 40.452930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.742464, 33.727669, 40.359966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171711, 0.438564, 0.882143,
		0.739222, -0.534547, 0.409646,
		0.651203, 0.722441, -0.232409,
		26.937824, 33.944401, 40.290245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.743124, 32.934963, 39.799831>,  <26.481983, 33.438694, 40.452930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.743124, 32.934963, 39.799831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.530718, 33.141373, 39.530987>,  <26.403275, 33.265221, 39.369678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.530718, 33.141373, 39.530987>,  <26.743124, 32.934963, 39.799831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.530718, 33.141373, 39.530987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017687, 0.786261, 0.617641,
		0.847177, 0.339865, -0.408391,
		-0.531017, 0.516028, -0.672113,
		26.371412, 33.296181, 39.329353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.429533, 32.836910, 39.311016>,  <26.743124, 32.934963, 39.799831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.429533, 32.836910, 39.311016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.092264, 33.050838, 39.289021>,  <26.889902, 33.179195, 39.275822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.092264, 33.050838, 39.289021>,  <27.429533, 32.836910, 39.311016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.092264, 33.050838, 39.289021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297745, 0.379335, -0.876044,
		-0.447669, -0.755029, -0.479086,
		-0.843173, 0.534823, -0.054989,
		26.839312, 33.211285, 39.272522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.994345, 32.678310, 38.739819>,  <27.429533, 32.836910, 39.311016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.994345, 32.678310, 38.739819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.983776, 33.071259, 38.813850>,  <26.977436, 33.307026, 38.858269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.983776, 33.071259, 38.813850>,  <26.994345, 32.678310, 38.739819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.983776, 33.071259, 38.813850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319693, 0.183723, -0.929539,
		-0.947153, 0.034610, -0.318910,
		-0.026419, 0.982369, 0.185078,
		26.975851, 33.365971, 38.869373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.618795, 32.932518, 38.254684>,  <26.994345, 32.678310, 38.739819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.618795, 32.932518, 38.254684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.838650, 33.237816, 38.390545>,  <26.970562, 33.420994, 38.472061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.838650, 33.237816, 38.390545>,  <26.618795, 32.932518, 38.254684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.838650, 33.237816, 38.390545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187118, 0.283764, -0.940460,
		-0.814180, 0.580463, 0.013150,
		0.549634, 0.763244, 0.339650,
		27.003540, 33.466789, 38.492439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.406744, 33.614204, 38.094818>,  <26.618795, 32.932518, 38.254684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.406744, 33.614204, 38.094818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794853, 33.708607, 38.116268>,  <27.027718, 33.765247, 38.129139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794853, 33.708607, 38.116268>,  <26.406744, 33.614204, 38.094818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.794853, 33.708607, 38.116268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092272, 0.565550, -0.819536,
		-0.223739, 0.790225, 0.570513,
		0.970271, 0.236005, 0.053621,
		27.085934, 33.779408, 38.132355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.382057, 34.305817, 38.073811>,  <26.406744, 33.614204, 38.094818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.382057, 34.305817, 38.073811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.737473, 34.177185, 37.942913>,  <26.950722, 34.100006, 37.864372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.737473, 34.177185, 37.942913>,  <26.382057, 34.305817, 38.073811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.737473, 34.177185, 37.942913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094090, 0.570384, -0.815971,
		0.449052, 0.755812, 0.476551,
		0.888538, -0.321575, -0.327247,
		27.004034, 34.080711, 37.844738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.617714, 34.889515, 37.800686>,  <26.382057, 34.305817, 38.073811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.617714, 34.889515, 37.800686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.832075, 34.600559, 37.625889>,  <26.960691, 34.427185, 37.521011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.832075, 34.600559, 37.625889>,  <26.617714, 34.889515, 37.800686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.832075, 34.600559, 37.625889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110646, 0.573225, -0.811893,
		0.836999, 0.386743, 0.387122,
		0.535902, -0.722387, -0.436997,
		26.992846, 34.383842, 37.494789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.076254, 35.257332, 37.527649>,  <26.617714, 34.889515, 37.800686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.076254, 35.257332, 37.527649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.033047, 34.904583, 37.344070>,  <27.007122, 34.692932, 37.233921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.033047, 34.904583, 37.344070>,  <27.076254, 35.257332, 37.527649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.033047, 34.904583, 37.344070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030683, 0.464386, -0.885101,
		0.993676, -0.081523, -0.077219,
		-0.108015, -0.881873, -0.458948,
		27.000643, 34.640022, 37.206387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.506876, 35.198654, 36.945156>,  <27.076254, 35.257332, 37.527649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.506876, 35.198654, 36.945156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.221210, 34.931572, 36.861118>,  <27.049810, 34.771324, 36.810696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.221210, 34.931572, 36.861118>,  <27.506876, 35.198654, 36.945156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.221210, 34.931572, 36.861118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094793, 0.389641, -0.916076,
		0.693529, -0.634313, -0.341561,
		-0.714165, -0.667703, -0.210099,
		27.006962, 34.731262, 36.798088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.715269, 34.933014, 36.368668>,  <27.506876, 35.198654, 36.945156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.715269, 34.933014, 36.368668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.331236, 34.821213, 36.364311>,  <27.100815, 34.754131, 36.361698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.331236, 34.821213, 36.364311>,  <27.715269, 34.933014, 36.368668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.331236, 34.821213, 36.364311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061559, 0.249134, -0.966511,
		0.272861, -0.927259, -0.256395,
		-0.960082, -0.279506, -0.010897,
		27.043211, 34.737362, 36.361042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.592648, 34.333092, 35.902916>,  <27.715269, 34.933014, 36.368668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.592648, 34.333092, 35.902916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.292688, 34.593613, 35.949318>,  <27.112713, 34.749924, 35.977161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.292688, 34.593613, 35.949318>,  <27.592648, 34.333092, 35.902916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.292688, 34.593613, 35.949318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070700, 0.253252, -0.964813,
		-0.657765, -0.715310, -0.235960,
		-0.749898, 0.651303, 0.116008,
		27.067719, 34.789005, 35.984119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.050583, 34.284927, 35.263298>,  <27.592648, 34.333092, 35.902916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.050583, 34.284927, 35.263298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.119425, 34.630547, 35.452526>,  <27.160730, 34.837917, 35.566063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.119425, 34.630547, 35.452526>,  <27.050583, 34.284927, 35.263298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.119425, 34.630547, 35.452526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226821, 0.432573, -0.872601,
		-0.958609, 0.257481, -0.121537,
		0.172104, 0.864051, 0.473071,
		27.171057, 34.889763, 35.594448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.636732, 34.880234, 34.992821>,  <27.050583, 34.284927, 35.263298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.636732, 34.880234, 34.992821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.011175, 34.972385, 35.099121>,  <27.235842, 35.027676, 35.162903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.011175, 34.972385, 35.099121>,  <26.636732, 34.880234, 34.992821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.011175, 34.972385, 35.099121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176127, 0.346976, -0.921188,
		-0.304432, 0.909139, 0.284232,
		0.936109, 0.230378, 0.265755,
		27.292007, 35.041500, 35.178848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.815538, 35.533527, 34.882652>,  <26.636732, 34.880234, 34.992821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.815538, 35.533527, 34.882652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.175781, 35.359856, 34.874672>,  <27.391926, 35.255653, 34.869884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.175781, 35.359856, 34.874672>,  <26.815538, 35.533527, 34.882652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.175781, 35.359856, 34.874672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258445, 0.571870, -0.778569,
		0.349449, 0.696027, 0.627241,
		0.900606, -0.434178, -0.019955,
		27.445963, 35.229603, 34.868687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.388048, 35.980045, 34.802948>,  <26.815538, 35.533527, 34.882652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.388048, 35.980045, 34.802948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.535891, 35.636654, 34.660736>,  <27.624596, 35.430618, 34.575409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.535891, 35.636654, 34.660736>,  <27.388048, 35.980045, 34.802948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.535891, 35.636654, 34.660736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260713, 0.463069, -0.847110,
		0.891864, 0.220404, 0.394970,
		0.369604, -0.858481, -0.355532,
		27.646772, 35.379108, 34.554077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.054361, 36.117962, 34.573425>,  <27.388048, 35.980045, 34.802948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.054361, 36.117962, 34.573425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.897358, 35.805492, 34.379227>,  <27.803156, 35.618011, 34.262707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.897358, 35.805492, 34.379227>,  <28.054361, 36.117962, 34.573425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.897358, 35.805492, 34.379227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195301, 0.445033, -0.873958,
		0.898773, -0.437856, -0.022116,
		-0.392510, -0.781171, -0.485497,
		27.779604, 35.571140, 34.233578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.718975, 36.524723, 34.403572>,  <28.054361, 36.117962, 34.573425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.718975, 36.524723, 34.403572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.431009, 36.747093, 34.569786>,  <28.258230, 36.880516, 34.669514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.431009, 36.747093, 34.569786>,  <28.718975, 36.524723, 34.403572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.431009, 36.747093, 34.569786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392353, -0.167882, 0.904364,
		0.572522, 0.814100, -0.097259,
		-0.719915, 0.555928, 0.415531,
		28.215034, 36.913872, 34.694447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.979864, 37.101746, 34.817776>,  <28.718975, 36.524723, 34.403572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.979864, 37.101746, 34.817776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.656195, 36.891846, 34.923512>,  <28.461994, 36.765903, 34.986954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.656195, 36.891846, 34.923512>,  <28.979864, 37.101746, 34.817776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.656195, 36.891846, 34.923512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492636, -0.360708, 0.791959,
		-0.320236, 0.771053, 0.550388,
		-0.809172, -0.524754, 0.264337,
		28.413443, 36.734421, 35.002811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.782127, 37.282261, 35.499470>,  <28.979864, 37.101746, 34.817776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.782127, 37.282261, 35.499470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.704275, 36.901505, 35.404789>,  <28.657564, 36.673050, 35.347980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.704275, 36.901505, 35.404789>,  <28.782127, 37.282261, 35.499470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.704275, 36.901505, 35.404789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546669, -0.305631, 0.779579,
		-0.814416, 0.022330, 0.579852,
		-0.194629, -0.951888, -0.236704,
		28.645885, 36.615936, 35.333778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.222456, 37.647518, 36.077488>,  <28.782127, 37.282261, 35.499470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.222456, 37.647518, 36.077488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.477673, 37.783932, 36.353634>,  <29.630802, 37.865780, 36.519321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.477673, 37.783932, 36.353634>,  <29.222456, 37.647518, 36.077488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.477673, 37.783932, 36.353634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738575, -0.524588, -0.423456,
		0.217742, 0.780065, -0.586589,
		0.638041, 0.341036, 0.690361,
		29.669085, 37.886242, 36.560741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.841431, 38.047672, 35.738644>,  <29.222456, 37.647518, 36.077488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.841431, 38.047672, 35.738644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.954807, 37.875961, 36.081661>,  <30.022833, 37.772934, 36.287472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.954807, 37.875961, 36.081661>,  <29.841431, 38.047672, 35.738644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.954807, 37.875961, 36.081661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641164, -0.580142, -0.502338,
		0.713140, 0.692210, 0.110802,
		0.283442, -0.429279, 0.857543,
		30.039841, 37.747177, 36.338924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501003, 38.193306, 35.646145>,  <29.841431, 38.047672, 35.738644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.501003, 38.193306, 35.646145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.450823, 37.869919, 35.876152>,  <30.420713, 37.675888, 36.014156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.450823, 37.869919, 35.876152>,  <30.501003, 38.193306, 35.646145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.450823, 37.869919, 35.876152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566760, -0.534110, -0.627304,
		0.814276, 0.247198, 0.525213,
		-0.125453, -0.808468, 0.575015,
		30.413187, 37.627380, 36.048656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155268, 37.943340, 35.861557>,  <30.501003, 38.193306, 35.646145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.155268, 37.943340, 35.861557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899399, 37.636589, 35.840721>,  <30.745876, 37.452538, 35.828220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899399, 37.636589, 35.840721>,  <31.155268, 37.943340, 35.861557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899399, 37.636589, 35.840721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610778, -0.465986, -0.640162,
		0.466655, -0.441308, 0.766472,
		-0.639674, -0.766879, -0.052087,
		30.707497, 37.406525, 35.825096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.498919, 37.249256, 36.088299>,  <31.155268, 37.943340, 35.861557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.498919, 37.249256, 36.088299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.200214, 37.186928, 35.829666>,  <31.020992, 37.149532, 35.674484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.200214, 37.186928, 35.829666>,  <31.498919, 37.249256, 36.088299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.200214, 37.186928, 35.829666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640754, -0.429149, -0.636604,
		-0.178285, -0.889692, 0.420313,
		-0.746758, -0.155820, -0.646585,
		30.976187, 37.140182, 35.635689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.707333, 36.678806, 35.767239>,  <31.498919, 37.249256, 36.088299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.707333, 36.678806, 35.767239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.419374, 36.837513, 35.539440>,  <31.246599, 36.932735, 35.402760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.419374, 36.837513, 35.539440>,  <31.707333, 36.678806, 35.767239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.419374, 36.837513, 35.539440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333521, -0.521823, -0.785153,
		-0.608701, -0.755166, 0.243327,
		-0.719894, 0.396769, -0.569497,
		31.203405, 36.956543, 35.368591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194052, 36.239716, 35.593014>,  <31.707333, 36.678806, 35.767239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194052, 36.239716, 35.593014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275623, 36.510242, 35.309887>,  <31.324566, 36.672558, 35.140011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275623, 36.510242, 35.309887>,  <31.194052, 36.239716, 35.593014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.275623, 36.510242, 35.309887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401174, -0.717247, -0.569751,
		-0.893013, -0.167767, -0.417591,
		0.203930, 0.676322, -0.707815,
		31.336802, 36.713139, 35.097542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.867872, 35.989944, 35.098984>,  <31.194052, 36.239716, 35.593014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.867872, 35.989944, 35.098984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.173891, 36.207989, 34.961838>,  <31.357502, 36.338818, 34.879551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.173891, 36.207989, 34.961838>,  <30.867872, 35.989944, 35.098984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.173891, 36.207989, 34.961838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214155, -0.717476, -0.662846,
		-0.607324, 0.433681, -0.665641,
		0.765046, 0.545113, -0.342866,
		31.403404, 36.371521, 34.858978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752731, 35.915611, 34.444122>,  <30.867872, 35.989944, 35.098984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752731, 35.915611, 34.444122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139498, 36.009476, 34.484135>,  <31.371557, 36.065796, 34.508144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139498, 36.009476, 34.484135>,  <30.752731, 35.915611, 34.444122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.139498, 36.009476, 34.484135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246654, -0.759966, -0.601343,
		-0.065091, 0.606122, -0.792704,
		0.966915, 0.234666, 0.100036,
		31.429573, 36.079876, 34.514145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.945215, 36.054913, 33.760429>,  <30.752731, 35.915611, 34.444122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.945215, 36.054913, 33.760429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.271725, 35.961494, 33.971771>,  <31.467630, 35.905445, 34.098576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.271725, 35.961494, 33.971771>,  <30.945215, 36.054913, 33.760429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.271725, 35.961494, 33.971771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311374, -0.592504, -0.742957,
		0.486564, 0.770971, -0.410925,
		0.816273, -0.233545, 0.528351,
		31.516607, 35.891430, 34.130276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379763, 35.945427, 33.319263>,  <30.945215, 36.054913, 33.760429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379763, 35.945427, 33.319263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.598206, 35.779072, 33.610138>,  <31.729271, 35.679260, 33.784664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.598206, 35.779072, 33.610138>,  <31.379763, 35.945427, 33.319263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.598206, 35.779072, 33.610138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226020, -0.762722, -0.605945,
		0.806650, 0.495269, -0.322528,
		0.546105, -0.415888, 0.727191,
		31.762037, 35.654305, 33.828297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001728, 35.695770, 33.004250>,  <31.379763, 35.945427, 33.319263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001728, 35.695770, 33.004250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002804, 35.499596, 33.352837>,  <32.003448, 35.381889, 33.561989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002804, 35.499596, 33.352837>,  <32.001728, 35.695770, 33.004250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002804, 35.499596, 33.352837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133042, -0.863551, -0.486394,
		0.991107, 0.117249, 0.062929,
		0.002687, -0.490440, 0.871471,
		32.003609, 35.352463, 33.614277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671154, 35.216949, 33.138958>,  <32.001728, 35.695770, 33.004250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671154, 35.216949, 33.138958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352303, 35.073555, 33.333313>,  <32.160992, 34.987518, 33.449924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352303, 35.073555, 33.333313>,  <32.671154, 35.216949, 33.138958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.352303, 35.073555, 33.333313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138973, -0.892008, -0.430126,
		0.587605, -0.275339, 0.760861,
		-0.797124, -0.358483, 0.485884,
		32.113167, 34.966011, 33.479076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693043, 34.508690, 33.228958>,  <32.671154, 35.216949, 33.138958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693043, 34.508690, 33.228958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.303867, 34.539749, 33.316010>,  <32.070362, 34.558384, 33.368240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.303867, 34.539749, 33.316010>,  <32.693043, 34.508690, 33.228958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303867, 34.539749, 33.316010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200737, -0.750503, -0.629643,
		0.114437, -0.656290, 0.745780,
		-0.972938, 0.077651, 0.217627,
		32.011986, 34.563046, 33.381298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505875, 33.929325, 33.312336>,  <32.693043, 34.508690, 33.228958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505875, 33.929325, 33.312336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.148884, 34.087440, 33.225407>,  <31.934689, 34.182308, 33.173248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.148884, 34.087440, 33.225407>,  <32.505875, 33.929325, 33.312336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.148884, 34.087440, 33.225407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150549, -0.715157, -0.682558,
		-0.425225, -0.576452, 0.697773,
		-0.892479, 0.395289, -0.217318,
		31.881140, 34.206028, 33.160210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972605, 33.439533, 33.220486>,  <32.505875, 33.929325, 33.312336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972605, 33.439533, 33.220486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814428, 33.746651, 33.018845>,  <31.719522, 33.930923, 32.897861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814428, 33.746651, 33.018845>,  <31.972605, 33.439533, 33.220486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.814428, 33.746651, 33.018845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143713, -0.593796, -0.791678,
		-0.907178, -0.240618, 0.345154,
		-0.395443, 0.767796, -0.504099,
		31.695795, 33.976990, 32.867615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399395, 33.185719, 32.945866>,  <31.972605, 33.439533, 33.220486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.399395, 33.185719, 32.945866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.482103, 33.502888, 32.716599>,  <31.531729, 33.693188, 32.579037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.482103, 33.502888, 32.716599>,  <31.399395, 33.185719, 32.945866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482103, 33.502888, 32.716599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119440, -0.560990, -0.819160,
		-0.971071, 0.237838, -0.021290,
		0.206771, 0.792920, -0.573169,
		31.544134, 33.740765, 32.544647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883215, 33.084541, 32.415943>,  <31.399395, 33.185719, 32.945866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883215, 33.084541, 32.415943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147907, 33.342262, 32.262589>,  <31.306723, 33.496895, 32.170574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147907, 33.342262, 32.262589>,  <30.883215, 33.084541, 32.415943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147907, 33.342262, 32.262589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147944, -0.389094, -0.909241,
		-0.734999, 0.658393, -0.162155,
		0.661732, 0.644301, -0.383389,
		31.346426, 33.535553, 32.147572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.601824, 33.254932, 31.872908>,  <30.883215, 33.084541, 32.415943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.601824, 33.254932, 31.872908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.977205, 33.359966, 31.783148>,  <31.202435, 33.422985, 31.729292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.977205, 33.359966, 31.783148>,  <30.601824, 33.254932, 31.872908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.977205, 33.359966, 31.783148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127059, -0.341679, -0.931188,
		-0.321187, 0.902389, -0.287287,
		0.938453, 0.262583, -0.224400,
		31.258741, 33.438740, 31.715828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.594946, 33.533417, 31.240704>,  <30.601824, 33.254932, 31.872908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.594946, 33.533417, 31.240704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987116, 33.454693, 31.238319>,  <31.222418, 33.407459, 31.236889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987116, 33.454693, 31.238319>,  <30.594946, 33.533417, 31.240704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.987116, 33.454693, 31.238319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033599, -0.137398, -0.989946,
		0.194016, 0.970766, -0.141321,
		0.980423, -0.196813, -0.005960,
		31.281242, 33.395649, 31.236532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.844074, 33.816555, 30.629000>,  <30.594946, 33.533417, 31.240704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.844074, 33.816555, 30.629000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.134539, 33.557373, 30.720951>,  <31.308817, 33.401863, 30.776121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.134539, 33.557373, 30.720951>,  <30.844074, 33.816555, 30.629000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.134539, 33.557373, 30.720951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062030, -0.271247, -0.960509,
		0.684723, 0.711742, -0.156775,
		0.726159, -0.647958, 0.229878,
		31.352386, 33.362988, 30.789915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.553608, 34.007248, 30.357950>,  <30.844074, 33.816555, 30.629000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.553608, 34.007248, 30.357950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.538158, 33.608948, 30.391382>,  <31.528889, 33.369968, 30.411442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.538158, 33.608948, 30.391382>,  <31.553608, 34.007248, 30.357950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.538158, 33.608948, 30.391382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373444, -0.091965, -0.923083,
		0.926849, -0.004438, 0.375409,
		-0.038622, -0.995752, 0.083580,
		31.526571, 33.310223, 30.416456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027519, 33.731068, 29.840033>,  <31.553608, 34.007248, 30.357950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027519, 33.731068, 29.840033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851521, 33.378601, 29.909252>,  <31.745922, 33.167122, 29.950785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851521, 33.378601, 29.909252>,  <32.027519, 33.731068, 29.840033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.851521, 33.378601, 29.909252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341936, -0.342587, -0.875051,
		0.830352, -0.325846, 0.452039,
		-0.439994, -0.881169, 0.173049,
		31.719522, 33.114250, 29.961166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439617, 33.328300, 29.445267>,  <32.027519, 33.731068, 29.840033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439617, 33.328300, 29.445267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106697, 33.120300, 29.522081>,  <31.906946, 32.995499, 29.568171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106697, 33.120300, 29.522081>,  <32.439617, 33.328300, 29.445267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106697, 33.120300, 29.522081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121429, -0.509046, -0.852131,
		0.540869, -0.685906, 0.486820,
		-0.832296, -0.520005, 0.192038,
		31.857008, 32.964298, 29.579693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624481, 32.711845, 29.186636>,  <32.439617, 33.328300, 29.445267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624481, 32.711845, 29.186636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224522, 32.709587, 29.191778>,  <31.984545, 32.708233, 29.194864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224522, 32.709587, 29.191778>,  <32.624481, 32.711845, 29.186636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224522, 32.709587, 29.191778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008099, -0.516145, -0.856463,
		0.011468, -0.856483, 0.516049,
		-0.999901, -0.005643, 0.012856,
		31.924551, 32.707893, 29.195635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504227, 32.091793, 28.922558>,  <32.624481, 32.711845, 29.186636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504227, 32.091793, 28.922558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163029, 32.298485, 28.893177>,  <31.958309, 32.422501, 28.875549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163029, 32.298485, 28.893177>,  <32.504227, 32.091793, 28.922558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.163029, 32.298485, 28.893177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187471, -0.434682, -0.880855,
		-0.487089, -0.737594, 0.467652,
		-0.852994, 0.516726, -0.073451,
		31.907131, 32.453503, 28.871141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100647, 31.600079, 28.755535>,  <32.504227, 32.091793, 28.922558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100647, 31.600079, 28.755535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.901937, 31.923840, 28.630264>,  <31.782711, 32.118095, 28.555101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.901937, 31.923840, 28.630264>,  <32.100647, 31.600079, 28.755535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901937, 31.923840, 28.630264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423894, -0.541170, -0.726256,
		-0.757317, -0.228032, 0.611941,
		-0.496774, 0.809404, -0.313176,
		31.752905, 32.166660, 28.536312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.436975, 31.441223, 28.686678>,  <32.100647, 31.600079, 28.755535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.436975, 31.441223, 28.686678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485079, 31.755581, 28.444056>,  <31.513941, 31.944195, 28.298483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485079, 31.755581, 28.444056>,  <31.436975, 31.441223, 28.686678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.485079, 31.755581, 28.444056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327040, -0.545523, -0.771654,
		-0.937328, 0.291164, 0.191416,
		0.120256, 0.785893, -0.606556,
		31.521156, 31.991348, 28.262089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.775702, 31.381590, 28.263330>,  <31.436975, 31.441223, 28.686678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.775702, 31.381590, 28.263330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.026220, 31.629154, 28.073721>,  <31.176531, 31.777693, 27.959955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.026220, 31.629154, 28.073721>,  <30.775702, 31.381590, 28.263330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026220, 31.629154, 28.073721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152740, -0.498847, -0.853125,
		-0.764477, 0.606711, -0.217893,
		0.626295, 0.618913, -0.474026,
		31.214109, 31.814829, 27.931513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467495, 31.626705, 27.665796>,  <30.775702, 31.381590, 28.263330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467495, 31.626705, 27.665796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.845634, 31.722227, 27.576992>,  <31.072517, 31.779541, 27.523710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.845634, 31.722227, 27.576992>,  <30.467495, 31.626705, 27.665796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.845634, 31.722227, 27.576992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154621, -0.271135, -0.950041,
		-0.287071, 0.932447, -0.219392,
		0.945348, 0.238807, -0.222011,
		31.129238, 31.793869, 27.510389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.569555, 32.050957, 26.944258>,  <30.467495, 31.626705, 27.665796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.569555, 32.050957, 26.944258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.934879, 31.893356, 26.985502>,  <31.154074, 31.798798, 27.010248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.934879, 31.893356, 26.985502>,  <30.569555, 32.050957, 26.944258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.934879, 31.893356, 26.985502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016888, -0.216318, -0.976177,
		0.406916, 0.893293, -0.190911,
		0.913310, -0.393997, 0.103109,
		31.208872, 31.775158, 27.016436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970701, 32.440319, 26.420078>,  <30.569555, 32.050957, 26.944258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970701, 32.440319, 26.420078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.115957, 32.082527, 26.524408>,  <31.203112, 31.867851, 26.587008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.115957, 32.082527, 26.524408>,  <30.970701, 32.440319, 26.420078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.115957, 32.082527, 26.524408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087836, -0.245825, -0.965326,
		0.927585, 0.373459, -0.010702,
		0.363141, -0.894482, 0.260827,
		31.224899, 31.814182, 26.602657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608860, 32.250317, 25.979534>,  <30.970701, 32.440319, 26.420078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608860, 32.250317, 25.979534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.521732, 31.901512, 26.154877>,  <31.469456, 31.692230, 26.260082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.521732, 31.901512, 26.154877>,  <31.608860, 32.250317, 25.979534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521732, 31.901512, 26.154877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161786, -0.475187, -0.864883,
		0.962487, -0.117468, 0.244583,
		-0.217819, -0.872008, 0.438357,
		31.456387, 31.639910, 26.286385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.228348, 31.813988, 25.863535>,  <31.608860, 32.250317, 25.979534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.228348, 31.813988, 25.863535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906431, 31.585012, 25.926306>,  <31.713282, 31.447626, 25.963968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906431, 31.585012, 25.926306>,  <32.228348, 31.813988, 25.863535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906431, 31.585012, 25.926306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028264, -0.301041, -0.953192,
		0.592887, -0.762684, 0.258454,
		-0.804789, -0.572440, 0.156927,
		31.664995, 31.413280, 25.973385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429127, 31.061728, 25.690668>,  <32.228348, 31.813988, 25.863535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429127, 31.061728, 25.690668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032986, 31.101574, 25.652124>,  <31.795301, 31.125483, 25.628998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032986, 31.101574, 25.652124>,  <32.429127, 31.061728, 25.690668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.032986, 31.101574, 25.652124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040585, -0.456332, -0.888884,
		-0.132520, -0.884216, 0.447885,
		-0.990349, 0.099618, -0.096359,
		31.735882, 31.131460, 25.623217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261673, 30.405678, 25.438726>,  <32.429127, 31.061728, 25.690668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261673, 30.405678, 25.438726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933538, 30.627447, 25.382627>,  <31.736658, 30.760509, 25.348969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933538, 30.627447, 25.382627>,  <32.261673, 30.405678, 25.438726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.933538, 30.627447, 25.382627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166750, -0.466468, -0.868678,
		-0.547037, -0.689218, 0.475109,
		-0.820332, 0.554424, -0.140249,
		31.687439, 30.793774, 25.340553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897327, 29.978592, 25.119259>,  <32.261673, 30.405678, 25.438726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897327, 29.978592, 25.119259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.698650, 30.317234, 25.042782>,  <31.579445, 30.520420, 24.996895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.698650, 30.317234, 25.042782>,  <31.897327, 29.978592, 25.119259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.698650, 30.317234, 25.042782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197279, -0.324645, -0.925033,
		-0.845210, -0.421736, 0.328266,
		-0.496690, 0.846607, -0.191194,
		31.549643, 30.571217, 24.985424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271379, 29.725834, 24.860214>,  <31.897327, 29.978592, 25.119259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271379, 29.725834, 24.860214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303894, 30.105299, 24.737946>,  <31.323402, 30.332977, 24.664585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303894, 30.105299, 24.737946>,  <31.271379, 29.725834, 24.860214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303894, 30.105299, 24.737946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151269, -0.291391, -0.944568,
		-0.985145, 0.123018, 0.119817,
		0.081286, 0.948661, -0.305672,
		31.328279, 30.389896, 24.646244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.861355, 29.771261, 24.344194>,  <31.271379, 29.725834, 24.860214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.861355, 29.771261, 24.344194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100122, 30.084938, 24.276390>,  <31.243383, 30.273144, 24.235708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100122, 30.084938, 24.276390>,  <30.861355, 29.771261, 24.344194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.100122, 30.084938, 24.276390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079981, -0.268389, -0.959984,
		-0.798305, 0.559475, -0.222927,
		0.596919, 0.784190, -0.169509,
		31.279198, 30.320194, 24.225538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549967, 30.022997, 23.818466>,  <30.861355, 29.771261, 24.344194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549967, 30.022997, 23.818466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919266, 30.176563, 23.812521>,  <31.140846, 30.268703, 23.808954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919266, 30.176563, 23.812521>,  <30.549967, 30.022997, 23.818466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.919266, 30.176563, 23.812521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013967, -0.005118, -0.999889,
		-0.383949, 0.923354, 0.000638,
		0.923249, 0.383915, -0.014862,
		31.196239, 30.291739, 23.808062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.519287, 30.433617, 23.263628>,  <30.549967, 30.022997, 23.818466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.519287, 30.433617, 23.263628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.909847, 30.363352, 23.313885>,  <31.144184, 30.321192, 23.344038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.909847, 30.363352, 23.313885>,  <30.519287, 30.433617, 23.263628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.909847, 30.363352, 23.313885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122065, -0.031065, -0.992036,
		0.178167, 0.983960, -0.008890,
		0.976400, -0.175663, 0.125641,
		31.202766, 30.310654, 23.351578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.850649, 30.849724, 22.735834>,  <30.519287, 30.433617, 23.263628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.850649, 30.849724, 22.735834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126299, 30.585613, 22.855263>,  <31.291689, 30.427147, 22.926920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126299, 30.585613, 22.855263>,  <30.850649, 30.849724, 22.735834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.126299, 30.585613, 22.855263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398973, 0.001762, -0.916961,
		0.604920, 0.751022, 0.264647,
		0.689124, -0.660275, 0.298572,
		31.333036, 30.387531, 22.944834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.450535, 31.129322, 22.420752>,  <30.850649, 30.849724, 22.735834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.450535, 31.129322, 22.420752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.517138, 30.752535, 22.537350>,  <31.557098, 30.526463, 22.607307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.517138, 30.752535, 22.537350>,  <31.450535, 31.129322, 22.420752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517138, 30.752535, 22.537350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467761, -0.184783, -0.864323,
		0.868030, 0.280263, 0.409849,
		0.166505, -0.941970, 0.291494,
		31.567089, 30.469944, 22.624798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.032547, 31.063833, 22.109049>,  <31.450535, 31.129322, 22.420752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.032547, 31.063833, 22.109049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953140, 30.678671, 22.182156>,  <31.905495, 30.447573, 22.226019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953140, 30.678671, 22.182156>,  <32.032547, 31.063833, 22.109049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953140, 30.678671, 22.182156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361227, -0.245234, -0.899653,
		0.911101, -0.112579, 0.396511,
		-0.198520, -0.962905, 0.182766,
		31.893585, 30.389799, 22.236986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653831, 30.617048, 21.944803>,  <32.032547, 31.063833, 22.109049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653831, 30.617048, 21.944803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339073, 30.370970, 21.925528>,  <32.150219, 30.223322, 21.913961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339073, 30.370970, 21.925528>,  <32.653831, 30.617048, 21.944803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339073, 30.370970, 21.925528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262782, -0.263415, -0.928201,
		0.558332, -0.743065, 0.368944,
		-0.786900, -0.615197, -0.048191,
		32.103004, 30.186411, 21.911070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915394, 29.971773, 21.637590>,  <32.653831, 30.617048, 21.944803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915394, 29.971773, 21.637590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518604, 29.973238, 21.587040>,  <32.280529, 29.974117, 21.556709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518604, 29.973238, 21.587040>,  <32.915394, 29.971773, 21.637590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.518604, 29.973238, 21.587040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119484, -0.299627, -0.946545,
		-0.041333, -0.954050, 0.296785,
		-0.991975, 0.003663, -0.126378,
		32.221012, 29.974337, 21.549126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773552, 29.353050, 21.252855>,  <32.915394, 29.971773, 21.637590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773552, 29.353050, 21.252855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458096, 29.591047, 21.190859>,  <32.268822, 29.733845, 21.153662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458096, 29.591047, 21.190859>,  <32.773552, 29.353050, 21.252855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458096, 29.591047, 21.190859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080732, -0.149688, -0.985432,
		-0.609525, -0.789669, 0.070015,
		-0.788645, 0.594993, -0.154990,
		32.221500, 29.769545, 21.144361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.458000, 28.992430, 20.717520>,  <32.773552, 29.353050, 21.252855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.458000, 28.992430, 20.717520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296093, 29.358158, 20.722900>,  <32.198948, 29.577595, 20.726130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296093, 29.358158, 20.722900>,  <32.458000, 28.992430, 20.717520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296093, 29.358158, 20.722900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040412, 0.032585, -0.998652,
		-0.913525, -0.403681, -0.050140,
		-0.404771, 0.914319, 0.013454,
		32.174664, 29.632454, 20.726936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.758703, 28.935593, 20.281515>,  <32.458000, 28.992430, 20.717520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.758703, 28.935593, 20.281515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911600, 29.305079, 20.291676>,  <32.003338, 29.526770, 20.297771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911600, 29.305079, 20.291676>,  <31.758703, 28.935593, 20.281515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911600, 29.305079, 20.291676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177471, 0.100360, -0.978995,
		-0.906860, 0.369705, 0.202294,
		0.382241, 0.923713, 0.025401,
		32.026272, 29.582193, 20.299295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370216, 29.358677, 19.750177>,  <31.758703, 28.935593, 20.281515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370216, 29.358677, 19.750177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.635830, 29.644014, 19.839800>,  <31.795198, 29.815216, 19.893574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.635830, 29.644014, 19.839800>,  <31.370216, 29.358677, 19.750177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.635830, 29.644014, 19.839800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048176, 0.258220, -0.964884,
		-0.746148, 0.651511, 0.137101,
		0.664035, 0.713341, 0.224057,
		31.835041, 29.858017, 19.907017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.105280, 30.079262, 19.679201>,  <31.370216, 29.358677, 19.750177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.105280, 30.079262, 19.679201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499487, 30.053797, 19.616327>,  <31.736012, 30.038519, 19.578604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499487, 30.053797, 19.616327>,  <31.105280, 30.079262, 19.679201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.499487, 30.053797, 19.616327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146182, 0.150935, -0.977675,
		0.085965, 0.986491, 0.139443,
		0.985516, -0.063662, -0.157182,
		31.795141, 30.034698, 19.569172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517332, 30.701395, 19.613783>,  <31.105280, 30.079262, 19.679201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.517332, 30.701395, 19.613783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623688, 30.970432, 19.337543>,  <31.687502, 31.131855, 19.171801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623688, 30.970432, 19.337543>,  <31.517332, 30.701395, 19.613783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623688, 30.970432, 19.337543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492091, -0.521319, -0.697190,
		-0.828944, 0.525212, 0.192363,
		0.265890, 0.672591, -0.690596,
		31.703455, 31.172209, 19.130365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.923515, 30.786089, 19.426163>,  <31.517332, 30.701395, 19.613783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.923515, 30.786089, 19.426163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.187685, 30.878084, 19.140242>,  <31.346188, 30.933281, 18.968689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.187685, 30.878084, 19.140242>,  <30.923515, 30.786089, 19.426163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.187685, 30.878084, 19.140242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497039, -0.579644, -0.645728,
		-0.562843, 0.781740, -0.268497,
		0.660424, 0.229990, -0.714804,
		31.385813, 30.947081, 18.925800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.434605, 30.704960, 18.953947>,  <30.923515, 30.786089, 19.426163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.434605, 30.704960, 18.953947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.763895, 30.629669, 18.739704>,  <30.961470, 30.584496, 18.611158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.763895, 30.629669, 18.739704>,  <30.434605, 30.704960, 18.953947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.763895, 30.629669, 18.739704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481772, -0.267472, 0.834479,
		-0.300330, -0.945003, -0.129507,
		0.823224, -0.188226, -0.535605,
		31.010862, 30.573200, 18.579023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.703064, 29.993795, 19.059998>,  <30.434605, 30.704960, 18.953947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.703064, 29.993795, 19.059998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.022871, 30.193253, 18.926060>,  <31.214756, 30.312927, 18.845697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.022871, 30.193253, 18.926060>,  <30.703064, 29.993795, 19.059998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.022871, 30.193253, 18.926060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543489, -0.363258, 0.756745,
		0.255711, -0.787018, -0.561440,
		0.799519, 0.498644, -0.334847,
		31.262728, 30.342846, 18.825605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.148443, 29.870043, 18.487926>,  <30.703064, 29.993795, 19.059998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.148443, 29.870043, 18.487926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293056, 30.077776, 18.178194>,  <31.379824, 30.202415, 17.992355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293056, 30.077776, 18.178194>,  <31.148443, 29.870043, 18.487926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293056, 30.077776, 18.178194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162868, 0.782558, 0.600896,
		0.918024, -0.343358, 0.198337,
		0.361533, 0.519334, -0.774329,
		31.401516, 30.233576, 17.945896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929070, 30.112732, 18.606295>,  <31.148443, 29.870043, 18.487926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929070, 30.112732, 18.606295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703222, 30.322166, 18.351089>,  <31.567715, 30.447828, 18.197966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703222, 30.322166, 18.351089>,  <31.929070, 30.112732, 18.606295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703222, 30.322166, 18.351089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077717, 0.803313, 0.590464,
		0.821685, 0.283803, -0.494258,
		-0.564619, 0.523587, -0.638014,
		31.533836, 30.479242, 18.159685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337559, 30.616995, 18.204920>,  <31.929070, 30.112732, 18.606295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337559, 30.616995, 18.204920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954697, 30.715216, 18.266325>,  <31.724979, 30.774147, 18.303167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954697, 30.715216, 18.266325>,  <32.337559, 30.616995, 18.204920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954697, 30.715216, 18.266325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287273, 0.738224, 0.610327,
		0.036540, 0.628276, -0.777132,
		-0.957152, 0.245551, 0.153512,
		31.667551, 30.788881, 18.312378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149033, 31.287094, 17.921122>,  <32.337559, 30.616995, 18.204920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149033, 31.287094, 17.921122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924828, 31.186415, 18.236710>,  <31.790306, 31.126007, 18.426064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924828, 31.186415, 18.236710>,  <32.149033, 31.287094, 17.921122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924828, 31.186415, 18.236710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381604, 0.767026, 0.515800,
		-0.734988, 0.590186, -0.333876,
		-0.560509, -0.251699, 0.788972,
		31.756676, 31.110905, 18.473402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948462, 32.015923, 18.176590>,  <32.149033, 31.287094, 17.921122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.948462, 32.015923, 18.176590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892998, 31.742771, 18.463491>,  <31.859718, 31.578880, 18.635633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892998, 31.742771, 18.463491>,  <31.948462, 32.015923, 18.176590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892998, 31.742771, 18.463491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363814, 0.638486, 0.678215,
		-0.921093, 0.354989, 0.159907,
		-0.138661, -0.682875, 0.717255,
		31.851400, 31.537909, 18.678667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.681602, 32.373222, 18.707289>,  <31.948462, 32.015923, 18.176590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.681602, 32.373222, 18.707289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800407, 32.039234, 18.892591>,  <31.871691, 31.838840, 19.003773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800407, 32.039234, 18.892591>,  <31.681602, 32.373222, 18.707289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800407, 32.039234, 18.892591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416896, 0.549861, 0.723775,
		-0.859058, -0.021842, 0.511412,
		0.297014, -0.834970, 0.463257,
		31.889511, 31.788744, 19.031569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.372026, 32.399338, 19.488394>,  <31.681602, 32.373222, 18.707289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.372026, 32.399338, 19.488394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690754, 32.160339, 19.452431>,  <31.881990, 32.016941, 19.430853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690754, 32.160339, 19.452431>,  <31.372026, 32.399338, 19.488394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690754, 32.160339, 19.452431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451871, 0.490494, 0.745137,
		-0.401114, -0.634365, 0.660824,
		0.796819, -0.597492, -0.089907,
		31.929800, 31.981092, 19.425459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517481, 32.318806, 20.144722>,  <31.372026, 32.399338, 19.488394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.517481, 32.318806, 20.144722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858612, 32.221241, 19.960032>,  <32.063290, 32.162701, 19.849216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858612, 32.221241, 19.960032>,  <31.517481, 32.318806, 20.144722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858612, 32.221241, 19.960032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516104, 0.259076, 0.816405,
		-0.079509, -0.934551, 0.346831,
		0.852828, -0.243913, -0.461727,
		32.114460, 32.148067, 19.821514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894936, 31.976038, 20.641468>,  <31.517481, 32.318806, 20.144722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894936, 31.976038, 20.641468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166874, 32.098289, 20.374815>,  <32.330036, 32.171638, 20.214823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166874, 32.098289, 20.374815>,  <31.894936, 31.976038, 20.641468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166874, 32.098289, 20.374815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654649, 0.156771, 0.739498,
		0.330520, -0.939156, -0.093498,
		0.679847, 0.305627, -0.666633,
		32.370827, 32.189976, 20.174826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473785, 31.625664, 20.860575>,  <31.894936, 31.976038, 20.641468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473785, 31.625664, 20.860575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610477, 31.919216, 20.625751>,  <32.692493, 32.095348, 20.484858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610477, 31.919216, 20.625751>,  <32.473785, 31.625664, 20.860575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610477, 31.919216, 20.625751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619722, 0.293637, 0.727820,
		0.706516, -0.612531, -0.354458,
		0.341730, 0.733882, -0.587059,
		32.712997, 32.139381, 20.449635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190109, 31.537991, 20.846453>,  <32.473785, 31.625664, 20.860575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190109, 31.537991, 20.846453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113983, 31.917393, 20.745167>,  <33.068306, 32.145035, 20.684395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113983, 31.917393, 20.745167>,  <33.190109, 31.537991, 20.846453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113983, 31.917393, 20.745167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701634, 0.311821, 0.640685,
		0.686650, -0.055729, -0.724849,
		-0.190318, 0.948505, -0.253213,
		33.056889, 32.201942, 20.669203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878712, 31.820023, 20.811859>,  <33.190109, 31.537991, 20.846453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878712, 31.820023, 20.811859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612434, 32.111908, 20.874296>,  <33.452667, 32.287041, 20.911758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612434, 32.111908, 20.874296>,  <33.878712, 31.820023, 20.811859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612434, 32.111908, 20.874296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531194, 0.316478, 0.785923,
		0.524098, 0.606102, -0.598298,
		-0.665698, 0.729713, 0.156092,
		33.412724, 32.330822, 20.921124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197498, 32.362637, 21.176184>,  <33.878712, 31.820023, 20.811859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197498, 32.362637, 21.176184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825016, 32.491028, 21.245266>,  <33.601528, 32.568062, 21.286715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825016, 32.491028, 21.245266>,  <34.197498, 32.362637, 21.176184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825016, 32.491028, 21.245266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292798, 0.376544, 0.878911,
		0.217082, 0.869015, -0.444622,
		-0.931206, 0.320980, 0.172705,
		33.545654, 32.587322, 21.297077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199982, 33.002205, 21.530283>,  <34.197498, 32.362637, 21.176184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199982, 33.002205, 21.530283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823772, 32.896580, 21.615788>,  <33.598049, 32.833206, 21.667089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823772, 32.896580, 21.615788>,  <34.199982, 33.002205, 21.530283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823772, 32.896580, 21.615788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074544, 0.453464, 0.888152,
		-0.331456, 0.851260, -0.406808,
		-0.940521, -0.264058, 0.213759,
		33.541615, 32.817364, 21.679914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766731, 33.623962, 21.707214>,  <34.199982, 33.002205, 21.530283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766731, 33.623962, 21.707214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552860, 33.321434, 21.857996>,  <33.424538, 33.139915, 21.948465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552860, 33.321434, 21.857996>,  <33.766731, 33.623962, 21.707214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552860, 33.321434, 21.857996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020853, 0.434127, 0.900610,
		-0.844801, 0.489393, -0.216344,
		-0.534673, -0.756325, 0.376956,
		33.392460, 33.094536, 21.971083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426781, 33.994972, 22.139194>,  <33.766731, 33.623962, 21.707214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426781, 33.994972, 22.139194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375668, 33.615532, 22.255003>,  <33.344997, 33.387867, 22.324488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375668, 33.615532, 22.255003>,  <33.426781, 33.994972, 22.139194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375668, 33.615532, 22.255003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015110, 0.293742, 0.955765,
		-0.991687, 0.117758, -0.051869,
		-0.127785, -0.948603, 0.289521,
		33.337334, 33.330952, 22.341860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929714, 33.973469, 22.743587>,  <33.426781, 33.994972, 22.139194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929714, 33.973469, 22.743587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146870, 33.640270, 22.786289>,  <33.277164, 33.440353, 22.811911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146870, 33.640270, 22.786289>,  <32.929714, 33.973469, 22.743587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146870, 33.640270, 22.786289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095178, 0.065273, 0.993318,
		-0.834394, -0.549421, -0.043847,
		0.542888, -0.832992, 0.106756,
		33.309734, 33.390373, 22.818316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554214, 33.596600, 23.203453>,  <32.929714, 33.973469, 22.743587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554214, 33.596600, 23.203453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.921741, 33.440742, 23.228580>,  <33.142258, 33.347229, 23.243658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.921741, 33.440742, 23.228580>,  <32.554214, 33.596600, 23.203453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.921741, 33.440742, 23.228580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018101, 0.117398, 0.992920,
		-0.394261, -0.913452, 0.100815,
		0.918820, -0.389645, 0.062820,
		33.197388, 33.323849, 23.247427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568062, 33.062183, 23.800835>,  <32.554214, 33.596600, 23.203453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568062, 33.062183, 23.800835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949375, 33.179714, 23.772766>,  <33.178162, 33.250233, 23.755924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949375, 33.179714, 23.772766>,  <32.568062, 33.062183, 23.800835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949375, 33.179714, 23.772766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016353, 0.282141, 0.959233,
		0.301664, -0.913264, 0.273763,
		0.953274, 0.293843, -0.070177,
		33.235359, 33.267864, 23.751715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828392, 32.944550, 24.474607>,  <32.568062, 33.062183, 23.800835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828392, 32.944550, 24.474607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120735, 33.148506, 24.293119>,  <33.296139, 33.270882, 24.184227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120735, 33.148506, 24.293119>,  <32.828392, 32.944550, 24.474607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120735, 33.148506, 24.293119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314192, 0.338801, 0.886847,
		0.605917, -0.790711, 0.087410,
		0.730854, 0.509892, -0.453720,
		33.339993, 33.301476, 24.157003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501644, 32.859341, 24.928852>,  <32.828392, 32.944550, 24.474607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501644, 32.859341, 24.928852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570358, 33.186516, 24.709229>,  <33.611588, 33.382820, 24.577454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570358, 33.186516, 24.709229>,  <33.501644, 32.859341, 24.928852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570358, 33.186516, 24.709229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112686, 0.537370, 0.835784,
		0.978667, -0.205450, 0.000145,
		0.171790, 0.817938, -0.549058,
		33.621895, 33.431896, 24.544512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180794, 33.204380, 25.112705>,  <33.501644, 32.859341, 24.928852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180794, 33.204380, 25.112705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952686, 33.482792, 24.938192>,  <33.815823, 33.649837, 24.833485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952686, 33.482792, 24.938192>,  <34.180794, 33.204380, 25.112705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952686, 33.482792, 24.938192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171892, 0.620456, 0.765171,
		0.803275, 0.361357, -0.473466,
		-0.570265, 0.696028, -0.436283,
		33.781609, 33.691601, 24.807308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524109, 33.812084, 25.130072>,  <34.180794, 33.204380, 25.112705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524109, 33.812084, 25.130072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141506, 33.925480, 25.102585>,  <33.911945, 33.993519, 25.086092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141506, 33.925480, 25.102585>,  <34.524109, 33.812084, 25.130072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141506, 33.925480, 25.102585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141917, 0.658072, 0.739460,
		0.254853, 0.697547, -0.669685,
		-0.956509, 0.283493, -0.068718,
		33.854553, 34.010529, 25.081970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567593, 34.498535, 25.256344>,  <34.524109, 33.812084, 25.130072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567593, 34.498535, 25.256344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.179901, 34.417694, 25.312565>,  <33.947289, 34.369190, 25.346298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.179901, 34.417694, 25.312565>,  <34.567593, 34.498535, 25.256344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179901, 34.417694, 25.312565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038631, 0.688761, 0.723959,
		-0.243120, 0.696250, -0.675372,
		-0.969227, -0.202099, 0.140554,
		33.889133, 34.357063, 25.354731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224754, 35.104813, 25.471764>,  <34.567593, 34.498535, 25.256344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224754, 35.104813, 25.471764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962959, 34.815960, 25.561363>,  <33.805882, 34.642647, 25.615124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962959, 34.815960, 25.561363>,  <34.224754, 35.104813, 25.471764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962959, 34.815960, 25.561363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180886, 0.437214, 0.880979,
		-0.734119, 0.536068, -0.416773,
		-0.654484, -0.722133, 0.224000,
		33.766613, 34.599319, 25.628563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642708, 35.435844, 25.778845>,  <34.224754, 35.104813, 25.471764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642708, 35.435844, 25.778845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632278, 35.056953, 25.906645>,  <33.626022, 34.829620, 25.983326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632278, 35.056953, 25.906645>,  <33.642708, 35.435844, 25.778845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632278, 35.056953, 25.906645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190560, 0.318459, 0.928586,
		-0.981329, -0.036673, -0.188806,
		-0.026073, -0.947227, 0.319502,
		33.624458, 34.772785, 26.002495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061172, 35.462006, 26.254274>,  <33.642708, 35.435844, 25.778845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061172, 35.462006, 26.254274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264633, 35.126461, 26.331823>,  <33.386707, 34.925133, 26.378353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264633, 35.126461, 26.331823>,  <33.061172, 35.462006, 26.254274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264633, 35.126461, 26.331823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254522, 0.068606, 0.964630,
		-0.822492, -0.540004, -0.178612,
		0.508650, -0.838862, 0.193871,
		33.417229, 34.874802, 26.389984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585674, 35.027779, 26.636736>,  <33.061172, 35.462006, 26.254274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585674, 35.027779, 26.636736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957066, 34.915352, 26.733829>,  <33.179901, 34.847897, 26.792086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957066, 34.915352, 26.733829>,  <32.585674, 35.027779, 26.636736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957066, 34.915352, 26.733829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217240, 0.119064, 0.968830,
		-0.301209, -0.952273, 0.049489,
		0.928482, -0.281070, 0.242734,
		33.235611, 34.831032, 26.806650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492935, 34.742470, 27.217787>,  <32.585674, 35.027779, 26.636736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492935, 34.742470, 27.217787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892506, 34.751030, 27.234270>,  <33.132248, 34.756165, 27.244160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892506, 34.751030, 27.234270>,  <32.492935, 34.742470, 27.217787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892506, 34.751030, 27.234270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043898, 0.145944, 0.988318,
		0.015132, -0.989061, 0.146726,
		0.998921, 0.021396, 0.041210,
		33.192181, 34.757450, 27.246634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761429, 34.209629, 27.727287>,  <32.492935, 34.742470, 27.217787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761429, 34.209629, 27.727287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057877, 34.476219, 27.694910>,  <33.235744, 34.636173, 27.675484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057877, 34.476219, 27.694910>,  <32.761429, 34.209629, 27.727287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057877, 34.476219, 27.694910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124070, -0.017474, 0.992120,
		0.659807, -0.745324, -0.095640,
		0.741122, 0.666473, -0.080943,
		33.280212, 34.676163, 27.670628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279324, 33.928696, 28.143881>,  <32.761429, 34.209629, 27.727287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279324, 33.928696, 28.143881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361187, 34.317867, 28.100952>,  <33.410305, 34.551373, 28.075195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361187, 34.317867, 28.100952>,  <33.279324, 33.928696, 28.143881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361187, 34.317867, 28.100952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257813, 0.052190, 0.964784,
		0.944271, -0.225117, -0.240153,
		0.204656, 0.972933, -0.107319,
		33.422585, 34.609749, 28.068756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806808, 34.071941, 28.620731>,  <33.279324, 33.928696, 28.143881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806808, 34.071941, 28.620731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667885, 34.438602, 28.541607>,  <33.584530, 34.658600, 28.494133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667885, 34.438602, 28.541607>,  <33.806808, 34.071941, 28.620731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667885, 34.438602, 28.541607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281262, 0.303054, 0.910522,
		0.894577, 0.260595, -0.363073,
		-0.347308, 0.916651, -0.197810,
		33.563694, 34.713596, 28.482264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147087, 34.526035, 29.098946>,  <33.806808, 34.071941, 28.620731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147087, 34.526035, 29.098946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.844715, 34.758484, 28.978371>,  <33.663292, 34.897953, 28.906025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.844715, 34.758484, 28.978371>,  <34.147087, 34.526035, 29.098946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844715, 34.758484, 28.978371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019790, 0.480533, 0.876754,
		0.654349, 0.656802, -0.374751,
		-0.755934, 0.581119, -0.301438,
		33.617935, 34.932819, 28.887939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330677, 35.236500, 29.204874>,  <34.147087, 34.526035, 29.098946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330677, 35.236500, 29.204874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930893, 35.247730, 29.211716>,  <33.691021, 35.254471, 29.215820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930893, 35.247730, 29.211716>,  <34.330677, 35.236500, 29.204874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930893, 35.247730, 29.211716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028353, 0.472621, 0.880809,
		0.016648, 0.880818, -0.473162,
		-0.999459, 0.028080, 0.017105,
		33.631054, 35.256153, 29.216846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122189, 35.884392, 29.412136>,  <34.330677, 35.236500, 29.204874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122189, 35.884392, 29.412136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.805363, 35.652145, 29.487516>,  <33.615265, 35.512798, 29.532745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.805363, 35.652145, 29.487516>,  <34.122189, 35.884392, 29.412136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.805363, 35.652145, 29.487516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045778, 0.364345, 0.930138,
		-0.608713, 0.728106, -0.315166,
		-0.792069, -0.580615, 0.188450,
		33.567741, 35.477962, 29.544052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615414, 36.336735, 29.617596>,  <34.122189, 35.884392, 29.412136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615414, 36.336735, 29.617596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539654, 35.974648, 29.769758>,  <33.494198, 35.757397, 29.861055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539654, 35.974648, 29.769758>,  <33.615414, 36.336735, 29.617596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539654, 35.974648, 29.769758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023067, 0.383211, 0.923373,
		-0.981628, 0.183665, -0.051701,
		-0.189404, -0.905216, 0.380407,
		33.482834, 35.703083, 29.883881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.066338, 36.477741, 30.026340>,  <33.615414, 36.336735, 29.617596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.066338, 36.477741, 30.026340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128208, 36.114113, 30.181082>,  <33.165333, 35.895935, 30.273928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128208, 36.114113, 30.181082>,  <33.066338, 36.477741, 30.026340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128208, 36.114113, 30.181082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069004, 0.380670, 0.922133,
		-0.985552, -0.169331, -0.003848,
		0.154681, -0.909075, 0.386854,
		33.174614, 35.841389, 30.297138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.491520, 36.241016, 30.437487>,  <33.066338, 36.477741, 30.026340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.491520, 36.241016, 30.437487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837326, 36.077923, 30.555038>,  <33.044811, 35.980068, 30.625568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837326, 36.077923, 30.555038>,  <32.491520, 36.241016, 30.437487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837326, 36.077923, 30.555038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147670, 0.352845, 0.923956,
		-0.480422, -0.842172, 0.244830,
		0.864516, -0.407735, 0.293878,
		33.096680, 35.955601, 30.643202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259956, 36.076439, 31.072405>,  <32.491520, 36.241016, 30.437487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259956, 36.076439, 31.072405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657555, 36.040279, 31.047718>,  <32.896114, 36.018581, 31.032906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657555, 36.040279, 31.047718>,  <32.259956, 36.076439, 31.072405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657555, 36.040279, 31.047718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091644, 0.378970, 0.920860,
		-0.059859, -0.920983, 0.384978,
		0.993991, -0.090403, -0.061718,
		32.955753, 36.013157, 31.029203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358337, 36.165936, 31.771593>,  <32.259956, 36.076439, 31.072405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358337, 36.165936, 31.771593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735794, 36.169823, 31.639259>,  <32.962269, 36.172153, 31.559860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735794, 36.169823, 31.639259>,  <32.358337, 36.165936, 31.771593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735794, 36.169823, 31.639259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323973, 0.177412, 0.929283,
		0.067719, -0.984089, 0.164267,
		0.943639, 0.009712, -0.330832,
		33.018887, 36.172737, 31.540010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836205, 35.599552, 32.105145>,  <32.358337, 36.165936, 31.771593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836205, 35.599552, 32.105145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059887, 35.900192, 31.965210>,  <33.194096, 36.080578, 31.881248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059887, 35.900192, 31.965210>,  <32.836205, 35.599552, 32.105145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059887, 35.900192, 31.965210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392648, 0.131536, 0.910234,
		0.730148, -0.646372, -0.221558,
		0.559207, 0.751599, -0.349837,
		33.227650, 36.125671, 31.860258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408154, 35.645252, 32.558029>,  <32.836205, 35.599552, 32.105145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408154, 35.645252, 32.558029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485191, 35.991524, 32.373203>,  <33.531414, 36.199287, 32.262306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485191, 35.991524, 32.373203>,  <33.408154, 35.645252, 32.558029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485191, 35.991524, 32.373203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413181, 0.355567, 0.838364,
		0.890051, -0.352379, -0.289203,
		0.192590, 0.865680, -0.462069,
		33.542969, 36.251228, 32.234581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098923, 35.799301, 32.828491>,  <33.408154, 35.645252, 32.558029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098923, 35.799301, 32.828491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915546, 36.131065, 32.700798>,  <33.805519, 36.330124, 32.624184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915546, 36.131065, 32.700798>,  <34.098923, 35.799301, 32.828491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915546, 36.131065, 32.700798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418138, 0.518260, 0.746034,
		0.784214, 0.208530, -0.584400,
		-0.458442, 0.829410, -0.319233,
		33.778015, 36.379887, 32.605030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564323, 36.400398, 32.815823>,  <34.098923, 35.799301, 32.828491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564323, 36.400398, 32.815823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193775, 36.549736, 32.835625>,  <33.971447, 36.639339, 32.847504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193775, 36.549736, 32.835625>,  <34.564323, 36.400398, 32.815823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193775, 36.549736, 32.835625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277877, 0.588856, 0.758969,
		0.254207, 0.716842, -0.649243,
		-0.926371, 0.373345, 0.049503,
		33.915863, 36.661739, 32.850475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326382, 36.662861, 32.543785>,  <34.564323, 36.400398, 32.815823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326382, 36.662861, 32.543785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.712635, 36.560349, 32.526505>,  <35.944389, 36.498840, 32.516136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.712635, 36.560349, 32.526505>,  <35.326382, 36.662861, 32.543785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712635, 36.560349, 32.526505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055849, -0.042273, -0.997544,
		0.253822, 0.965679, -0.055133,
		0.965637, -0.256278, -0.043203,
		36.002327, 36.483467, 32.513542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659462, 37.152016, 32.183300>,  <35.326382, 36.662861, 32.543785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659462, 37.152016, 32.183300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896912, 36.832146, 32.147217>,  <36.039379, 36.640224, 32.125568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896912, 36.832146, 32.147217>,  <35.659462, 37.152016, 32.183300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896912, 36.832146, 32.147217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015290, 0.100862, -0.994783,
		0.804600, 0.591902, 0.047647,
		0.593620, -0.799674, -0.090204,
		36.074997, 36.592243, 32.120155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111881, 37.312405, 31.566988>,  <35.659462, 37.152016, 32.183300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111881, 37.312405, 31.566988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126030, 36.920891, 31.647718>,  <36.134521, 36.685982, 31.696157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126030, 36.920891, 31.647718>,  <36.111881, 37.312405, 31.566988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126030, 36.920891, 31.647718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115573, -0.196593, -0.973650,
		0.992669, 0.057769, 0.106166,
		0.035375, -0.978782, 0.201828,
		36.136642, 36.627254, 31.708267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781616, 37.150654, 31.293703>,  <36.111881, 37.312405, 31.566988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781616, 37.150654, 31.293703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564819, 36.815456, 31.319016>,  <36.434742, 36.614338, 31.334204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564819, 36.815456, 31.319016>,  <36.781616, 37.150654, 31.293703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564819, 36.815456, 31.319016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036013, -0.098392, -0.994496,
		0.839612, -0.536730, 0.083506,
		-0.541992, -0.837997, 0.063282,
		36.402222, 36.564056, 31.337999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133076, 36.669903, 30.975939>,  <36.781616, 37.150654, 31.293703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133076, 36.669903, 30.975939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801678, 36.448006, 31.006563>,  <36.602840, 36.314869, 31.024937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801678, 36.448006, 31.006563>,  <37.133076, 36.669903, 30.975939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801678, 36.448006, 31.006563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055119, -0.216830, -0.974652,
		0.557281, -0.803272, 0.210219,
		-0.828493, -0.554742, 0.076560,
		36.553131, 36.281582, 31.029531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212967, 35.865051, 30.731527>,  <37.133076, 36.669903, 30.975939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212967, 35.865051, 30.731527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831692, 35.979698, 30.692989>,  <36.602928, 36.048489, 30.669867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831692, 35.979698, 30.692989>,  <37.212967, 35.865051, 30.731527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831692, 35.979698, 30.692989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034189, -0.418742, -0.907462,
		-0.300441, -0.861687, 0.408939,
		-0.953188, 0.286620, -0.096347,
		36.545734, 36.065685, 30.664085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891636, 35.259727, 30.416100>,  <37.212967, 35.865051, 30.731527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891636, 35.259727, 30.416100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645695, 35.557076, 30.310755>,  <36.498131, 35.735485, 30.247549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645695, 35.557076, 30.310755>,  <36.891636, 35.259727, 30.416100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645695, 35.557076, 30.310755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010617, -0.341712, -0.939745,
		-0.788573, -0.575006, 0.217994,
		-0.614850, 0.743371, -0.263360,
		36.461239, 35.780087, 30.231747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404552, 34.954552, 30.075947>,  <36.891636, 35.259727, 30.416100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404552, 34.954552, 30.075947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425510, 35.339642, 29.969809>,  <36.438087, 35.570698, 29.906126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425510, 35.339642, 29.969809>,  <36.404552, 34.954552, 30.075947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425510, 35.339642, 29.969809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117465, -0.269809, -0.955722,
		-0.991694, 0.018909, -0.127224,
		0.052398, 0.962728, -0.265346,
		36.441231, 35.628460, 29.890205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972286, 34.960381, 29.382053>,  <36.404552, 34.954552, 30.075947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972286, 34.960381, 29.382053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206314, 35.284664, 29.390415>,  <36.346733, 35.479237, 29.395432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206314, 35.284664, 29.390415>,  <35.972286, 34.960381, 29.382053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206314, 35.284664, 29.390415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066002, -0.021911, -0.997579,
		-0.808291, 0.585035, -0.066328,
		0.585072, 0.810712, 0.020902,
		36.381836, 35.527878, 29.396687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766682, 35.209717, 28.729544>,  <35.972286, 34.960381, 29.382053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766682, 35.209717, 28.729544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096611, 35.410980, 28.832687>,  <36.294571, 35.531738, 28.894573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096611, 35.410980, 28.832687>,  <35.766682, 35.209717, 28.729544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096611, 35.410980, 28.832687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326967, -0.052426, -0.943581,
		-0.461255, 0.862601, -0.207759,
		0.824825, 0.503162, 0.257860,
		36.344059, 35.561928, 28.910046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772682, 35.767128, 28.269104>,  <35.766682, 35.209717, 28.729544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772682, 35.767128, 28.269104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.146130, 35.696613, 28.393866>,  <36.370197, 35.654305, 28.468723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.146130, 35.696613, 28.393866>,  <35.772682, 35.767128, 28.269104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146130, 35.696613, 28.393866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315500, -0.007993, -0.948892,
		0.169771, 0.984306, 0.048156,
		0.933616, -0.176287, 0.311905,
		36.426216, 35.643726, 28.487436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229881, 36.286953, 27.951061>,  <35.772682, 35.767128, 28.269104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229881, 36.286953, 27.951061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455235, 35.967312, 28.035002>,  <36.590446, 35.775528, 28.085365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455235, 35.967312, 28.035002>,  <36.229881, 36.286953, 27.951061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455235, 35.967312, 28.035002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220687, -0.099215, -0.970285,
		0.796176, 0.592954, 0.120455,
		0.563384, -0.799101, 0.209850,
		36.624249, 35.727581, 28.097958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791603, 36.407597, 27.615685>,  <36.229881, 36.286953, 27.951061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791603, 36.407597, 27.615685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801792, 36.009918, 27.657490>,  <36.807903, 35.771309, 27.682573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801792, 36.009918, 27.657490>,  <36.791603, 36.407597, 27.615685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801792, 36.009918, 27.657490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302111, -0.092002, -0.948823,
		0.952933, 0.055739, 0.298014,
		0.025468, -0.994198, 0.104511,
		36.809433, 35.711658, 27.688843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360332, 36.250076, 27.142521>,  <36.791603, 36.407597, 27.615685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360332, 36.250076, 27.142521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.186989, 35.902081, 27.236593>,  <37.082981, 35.693283, 27.293037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.186989, 35.902081, 27.236593>,  <37.360332, 36.250076, 27.142521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186989, 35.902081, 27.236593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218671, -0.354666, -0.909063,
		0.874290, -0.342523, 0.343940,
		-0.433359, -0.869994, 0.235181,
		37.056980, 35.641083, 27.307148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771931, 35.752670, 26.836601>,  <37.360332, 36.250076, 27.142521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771931, 35.752670, 26.836601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.421143, 35.567356, 26.887655>,  <37.210670, 35.456169, 26.918287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.421143, 35.567356, 26.887655>,  <37.771931, 35.752670, 26.836601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421143, 35.567356, 26.887655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111114, -0.453899, -0.884098,
		0.467525, -0.761144, 0.449533,
		-0.876969, -0.463287, 0.127635,
		37.158051, 35.428371, 26.925945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872669, 35.080658, 26.490114>,  <37.771931, 35.752670, 26.836601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872669, 35.080658, 26.490114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475765, 35.114628, 26.526342>,  <37.237621, 35.135010, 26.548079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475765, 35.114628, 26.526342>,  <37.872669, 35.080658, 26.490114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475765, 35.114628, 26.526342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121619, -0.517983, -0.846701,
		-0.024995, -0.851165, 0.524303,
		-0.992262, 0.084929, 0.090571,
		37.178085, 35.140106, 26.553513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481354, 34.383099, 26.624580>,  <37.872669, 35.080658, 26.490114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481354, 34.383099, 26.624580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234055, 34.651115, 26.460234>,  <37.085674, 34.811924, 26.361626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234055, 34.651115, 26.460234>,  <37.481354, 34.383099, 26.624580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234055, 34.651115, 26.460234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107831, -0.590109, -0.800090,
		-0.778549, -0.450351, 0.437086,
		-0.618250, 0.670041, -0.410867,
		37.048580, 34.852127, 26.336973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911381, 33.927124, 26.446705>,  <37.481354, 34.383099, 26.624580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911381, 33.927124, 26.446705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870014, 34.267403, 26.240555>,  <36.845192, 34.471569, 26.116865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870014, 34.267403, 26.240555>,  <36.911381, 33.927124, 26.446705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870014, 34.267403, 26.240555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334005, -0.517770, -0.787626,
		-0.936881, 0.090684, 0.337685,
		-0.103418, 0.850700, -0.515377,
		36.838989, 34.522614, 26.085941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168087, 33.985477, 26.269758>,  <36.911381, 33.927124, 26.446705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168087, 33.985477, 26.269758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410488, 34.185020, 26.021917>,  <36.555927, 34.304745, 25.873213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410488, 34.185020, 26.021917>,  <36.168087, 33.985477, 26.269758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410488, 34.185020, 26.021917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463595, -0.411474, -0.784709,
		-0.646408, 0.762777, -0.018085,
		0.606000, 0.498859, -0.619600,
		36.592289, 34.334679, 25.836037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719315, 34.008797, 25.628016>,  <36.168087, 33.985477, 26.269758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719315, 34.008797, 25.628016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.077961, 34.124542, 25.493942>,  <36.293148, 34.193989, 25.413498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.077961, 34.124542, 25.493942>,  <35.719315, 34.008797, 25.628016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077961, 34.124542, 25.493942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215652, -0.375768, -0.901273,
		-0.386750, 0.880378, -0.274517,
		0.896615, 0.289367, -0.335184,
		36.346947, 34.211353, 25.393387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602577, 34.423199, 25.041252>,  <35.719315, 34.008797, 25.628016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602577, 34.423199, 25.041252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968544, 34.263008, 25.021072>,  <36.188126, 34.166893, 25.008965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968544, 34.263008, 25.021072>,  <35.602577, 34.423199, 25.041252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968544, 34.263008, 25.021072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217745, -0.384438, -0.897104,
		0.339873, 0.831761, -0.438931,
		0.914917, -0.400476, -0.050451,
		36.243019, 34.142864, 25.005938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728725, 34.537575, 24.467196>,  <35.602577, 34.423199, 25.041252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728725, 34.537575, 24.467196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013893, 34.266006, 24.537395>,  <36.184994, 34.103065, 24.579515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013893, 34.266006, 24.537395>,  <35.728725, 34.537575, 24.467196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013893, 34.266006, 24.537395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292095, -0.515036, -0.805865,
		0.637511, 0.523257, -0.565492,
		0.712923, -0.678926, 0.175500,
		36.227772, 34.062328, 24.590046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.099270, 34.403030, 23.755787>,  <35.728725, 34.537575, 24.467196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.099270, 34.403030, 23.755787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173126, 34.088058, 23.991030>,  <36.217442, 33.899075, 24.132175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173126, 34.088058, 23.991030>,  <36.099270, 34.403030, 23.755787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173126, 34.088058, 23.991030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074392, -0.607875, -0.790540,
		0.979987, 0.102215, -0.170816,
		0.184640, -0.787426, 0.588105,
		36.228519, 33.851830, 24.167461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577465, 34.058445, 23.395517>,  <36.099270, 34.403030, 23.755787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577465, 34.058445, 23.395517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405251, 33.780540, 23.625975>,  <36.301922, 33.613796, 23.764250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405251, 33.780540, 23.625975>,  <36.577465, 34.058445, 23.395517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405251, 33.780540, 23.625975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100291, -0.597557, -0.795530,
		0.896982, -0.400290, 0.187594,
		-0.430541, -0.694762, 0.576143,
		36.276089, 33.572113, 23.798817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815075, 33.463737, 23.093855>,  <36.577465, 34.058445, 23.395517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815075, 33.463737, 23.093855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507572, 33.322021, 23.306829>,  <36.323071, 33.236992, 23.434614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507572, 33.322021, 23.306829>,  <36.815075, 33.463737, 23.093855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507572, 33.322021, 23.306829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050117, -0.796597, -0.602430,
		0.637575, -0.489806, 0.594633,
		-0.768756, -0.354293, 0.532439,
		36.276947, 33.215733, 23.466560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901821, 32.717571, 23.266222>,  <36.815075, 33.463737, 23.093855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901821, 32.717571, 23.266222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503994, 32.718384, 23.307852>,  <36.265297, 32.718872, 23.332829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503994, 32.718384, 23.307852>,  <36.901821, 32.717571, 23.266222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503994, 32.718384, 23.307852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087606, -0.556286, -0.826360,
		0.056218, -0.830988, 0.553442,
		-0.994568, 0.002028, 0.104073,
		36.205624, 32.718994, 23.339073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706322, 32.103153, 23.090115>,  <36.901821, 32.717571, 23.266222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706322, 32.103153, 23.090115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353035, 32.290012, 23.073633>,  <36.141064, 32.402126, 23.063744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353035, 32.290012, 23.073633>,  <36.706322, 32.103153, 23.090115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353035, 32.290012, 23.073633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203636, -0.461183, -0.863622,
		-0.422437, -0.754379, 0.502453,
		-0.883221, 0.467143, -0.041202,
		36.088070, 32.430157, 23.061272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235226, 31.573393, 23.141157>,  <36.706322, 32.103153, 23.090115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235226, 31.573393, 23.141157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045498, 31.879877, 22.967751>,  <35.931660, 32.063766, 22.863707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045498, 31.879877, 22.967751>,  <36.235226, 31.573393, 23.141157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045498, 31.879877, 22.967751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410612, -0.628142, -0.660935,
		-0.778727, -0.135489, 0.612558,
		-0.474323, 0.766212, -0.433517,
		35.903202, 32.109741, 22.837696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505020, 31.322598, 22.984882>,  <36.235226, 31.573393, 23.141157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505020, 31.322598, 22.984882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588028, 31.634312, 22.748356>,  <35.637833, 31.821339, 22.606440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588028, 31.634312, 22.748356>,  <35.505020, 31.322598, 22.984882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588028, 31.634312, 22.748356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362629, -0.500125, -0.786368,
		-0.908535, 0.377614, 0.178805,
		0.207519, 0.779283, -0.591315,
		35.650284, 31.868097, 22.570961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957779, 31.359842, 22.526264>,  <35.505020, 31.322598, 22.984882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957779, 31.359842, 22.526264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248627, 31.564791, 22.343500>,  <35.423138, 31.687759, 22.233841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248627, 31.564791, 22.343500>,  <34.957779, 31.359842, 22.526264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248627, 31.564791, 22.343500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213148, -0.464171, -0.859717,
		-0.652580, 0.722509, -0.228298,
		0.727123, 0.512373, -0.456910,
		35.466763, 31.718502, 22.206427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547310, 31.594044, 22.020102>,  <34.957779, 31.359842, 22.526264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547310, 31.594044, 22.020102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931274, 31.625839, 21.912584>,  <35.161655, 31.644917, 21.848074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931274, 31.625839, 21.912584>,  <34.547310, 31.594044, 22.020102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931274, 31.625839, 21.912584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217547, -0.393415, -0.893252,
		-0.176750, 0.915918, -0.360351,
		0.959913, 0.079489, -0.268791,
		35.219250, 31.649685, 21.831947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539021, 31.746056, 21.282236>,  <34.547310, 31.594044, 22.020102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539021, 31.746056, 21.282236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907314, 31.617237, 21.370356>,  <35.128292, 31.539946, 21.423227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907314, 31.617237, 21.370356>,  <34.539021, 31.746056, 21.282236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907314, 31.617237, 21.370356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016579, -0.596375, -0.802535,
		0.389835, 0.735270, -0.554443,
		0.920735, -0.322048, 0.220298,
		35.183537, 31.520622, 21.436445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875370, 31.768219, 20.667250>,  <34.539021, 31.746056, 21.282236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875370, 31.768219, 20.667250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.061829, 31.504253, 20.902954>,  <35.173702, 31.345875, 21.044376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.061829, 31.504253, 20.902954>,  <34.875370, 31.768219, 20.667250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061829, 31.504253, 20.902954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007488, -0.668968, -0.743254,
		0.884678, 0.342050, -0.316776,
		0.466143, -0.659912, 0.589259,
		35.201672, 31.306280, 21.079731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327358, 31.490641, 20.159262>,  <34.875370, 31.768219, 20.667250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327358, 31.490641, 20.159262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339733, 31.239468, 20.470322>,  <35.347160, 31.088764, 20.656958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339733, 31.239468, 20.470322>,  <35.327358, 31.490641, 20.159262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339733, 31.239468, 20.470322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080319, -0.773946, -0.628138,
		0.996289, 0.081895, 0.026489,
		0.030941, -0.627934, 0.777651,
		35.349014, 31.051086, 20.703617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643314, 30.985231, 19.848915>,  <35.327358, 31.490641, 20.159262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643314, 30.985231, 19.848915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519638, 30.807081, 20.185020>,  <35.445431, 30.700191, 20.386683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519638, 30.807081, 20.185020>,  <35.643314, 30.985231, 19.848915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519638, 30.807081, 20.185020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293188, -0.885162, -0.361289,
		0.904677, 0.134646, 0.404265,
		-0.309194, -0.445375, 0.840262,
		35.426880, 30.673470, 20.437099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127861, 30.545761, 19.906748>,  <35.643314, 30.985231, 19.848915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127861, 30.545761, 19.906748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815475, 30.393387, 20.104729>,  <35.628044, 30.301962, 20.223516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815475, 30.393387, 20.104729>,  <36.127861, 30.545761, 19.906748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815475, 30.393387, 20.104729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156971, -0.886742, -0.434797,
		0.604523, -0.261870, 0.752314,
		-0.780968, -0.380936, 0.494950,
		35.581184, 30.279106, 20.253214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270042, 29.945107, 20.036476>,  <36.127861, 30.545761, 19.906748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270042, 29.945107, 20.036476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874344, 29.917860, 20.088234>,  <35.636925, 29.901512, 20.119289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874344, 29.917860, 20.088234>,  <36.270042, 29.945107, 20.036476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874344, 29.917860, 20.088234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006992, -0.861839, -0.507134,
		0.146060, -0.502588, 0.852098,
		-0.989251, -0.068114, 0.129394,
		35.577568, 29.897427, 20.127052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096298, 29.256056, 20.265215>,  <36.270042, 29.945107, 20.036476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096298, 29.256056, 20.265215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755558, 29.397829, 20.110958>,  <35.551113, 29.482893, 20.018404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755558, 29.397829, 20.110958>,  <36.096298, 29.256056, 20.265215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755558, 29.397829, 20.110958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132856, -0.858406, -0.495467,
		-0.506649, -0.370831, 0.778326,
		-0.851855, 0.354433, -0.385643,
		35.500000, 29.504160, 19.995266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463749, 29.031071, 20.212715>,  <36.096298, 29.256056, 20.265215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463749, 29.031071, 20.212715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721436, 28.730438, 20.155981>,  <35.876045, 28.550058, 20.121941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721436, 28.730438, 20.155981>,  <35.463749, 29.031071, 20.212715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721436, 28.730438, 20.155981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607565, 0.390220, 0.691805,
		-0.464600, -0.531843, 0.708018,
		0.644214, -0.751579, -0.141833,
		35.914700, 28.504965, 20.113432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597164, 28.850456, 20.864540>,  <35.463749, 29.031071, 20.212715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597164, 28.850456, 20.864540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903183, 28.715546, 20.645105>,  <36.086796, 28.634600, 20.513445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903183, 28.715546, 20.645105>,  <35.597164, 28.850456, 20.864540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903183, 28.715546, 20.645105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625984, 0.189542, 0.756450,
		-0.151154, -0.922126, 0.356140,
		0.765046, -0.337278, -0.548587,
		36.132698, 28.614363, 20.480530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048943, 28.430468, 21.304108>,  <35.597164, 28.850456, 20.864540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048943, 28.430468, 21.304108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300426, 28.537807, 21.012159>,  <36.451317, 28.602211, 20.836990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300426, 28.537807, 21.012159>,  <36.048943, 28.430468, 21.304108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300426, 28.537807, 21.012159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669075, 0.291664, 0.683572,
		0.396316, -0.918106, 0.003824,
		0.628707, 0.268352, -0.729873,
		36.489040, 28.618313, 20.793198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577579, 28.180222, 21.537308>,  <36.048943, 28.430468, 21.304108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577579, 28.180222, 21.537308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718933, 28.445547, 21.273449>,  <36.803745, 28.604742, 21.115135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718933, 28.445547, 21.273449>,  <36.577579, 28.180222, 21.537308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718933, 28.445547, 21.273449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641157, 0.341735, 0.687120,
		0.681201, -0.665755, -0.304524,
		0.353387, 0.663315, -0.659645,
		36.824951, 28.644541, 21.075556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185089, 28.110128, 21.779253>,  <36.577579, 28.180222, 21.537308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185089, 28.110128, 21.779253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.177799, 28.435818, 21.547148>,  <37.173424, 28.631231, 21.407885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.177799, 28.435818, 21.547148>,  <37.185089, 28.110128, 21.779253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177799, 28.435818, 21.547148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573560, 0.483887, 0.660971,
		0.818961, -0.320768, -0.475827,
		-0.018228, 0.814225, -0.580264,
		37.172333, 28.680084, 21.373068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811451, 28.378073, 21.882166>,  <37.185089, 28.110128, 21.779253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811451, 28.378073, 21.882166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603508, 28.690413, 21.743589>,  <37.478745, 28.877817, 21.660444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603508, 28.690413, 21.743589>,  <37.811451, 28.378073, 21.882166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603508, 28.690413, 21.743589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388294, 0.577224, 0.718360,
		0.760906, 0.238922, -0.603273,
		-0.519855, 0.780851, -0.346441,
		37.447552, 28.924667, 21.639656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253658, 28.867983, 21.865465>,  <37.811451, 28.378073, 21.882166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253658, 28.867983, 21.865465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908436, 29.069157, 21.846720>,  <37.701302, 29.189861, 21.835472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908436, 29.069157, 21.846720>,  <38.253658, 28.867983, 21.865465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908436, 29.069157, 21.846720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346339, 0.656749, 0.669873,
		0.367682, 0.561905, -0.740995,
		-0.863053, 0.502935, -0.046865,
		37.649521, 29.220037, 21.832661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434193, 29.610964, 21.746315>,  <38.253658, 28.867983, 21.865465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434193, 29.610964, 21.746315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070305, 29.588001, 21.910814>,  <37.851974, 29.574224, 22.009514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070305, 29.588001, 21.910814>,  <38.434193, 29.610964, 21.746315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070305, 29.588001, 21.910814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266839, 0.678002, 0.684916,
		-0.318145, 0.732815, -0.601471,
		-0.909715, -0.057407, 0.411246,
		37.797390, 29.570780, 22.034187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215202, 30.345921, 21.979189>,  <38.434193, 29.610964, 21.746315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215202, 30.345921, 21.979189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960323, 30.124651, 22.193840>,  <37.807396, 29.991888, 22.322630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960323, 30.124651, 22.193840>,  <38.215202, 30.345921, 21.979189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960323, 30.124651, 22.193840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251042, 0.509338, 0.823136,
		-0.728664, 0.659220, -0.185680,
		-0.637202, -0.553176, 0.536628,
		37.769161, 29.958698, 22.354828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859833, 30.868933, 22.483950>,  <38.215202, 30.345921, 21.979189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859833, 30.868933, 22.483950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.789162, 30.508101, 22.641445>,  <37.746758, 30.291601, 22.735943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.789162, 30.508101, 22.641445>,  <37.859833, 30.868933, 22.483950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789162, 30.508101, 22.641445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050836, 0.407863, 0.911627,
		-0.982955, 0.141049, -0.117919,
		-0.176679, -0.902082, 0.393741,
		37.736156, 30.237476, 22.759567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194103, 30.873930, 22.846272>,  <37.859833, 30.868933, 22.483950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194103, 30.873930, 22.846272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411076, 30.575918, 23.001553>,  <37.541260, 30.397112, 23.094721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411076, 30.575918, 23.001553>,  <37.194103, 30.873930, 22.846272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411076, 30.575918, 23.001553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197048, 0.336370, 0.920884,
		-0.816664, -0.576011, 0.035651,
		0.542431, -0.745028, 0.388203,
		37.573807, 30.352409, 23.118013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776291, 30.575008, 23.417578>,  <37.194103, 30.873930, 22.846272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776291, 30.575008, 23.417578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144630, 30.450739, 23.511826>,  <37.365635, 30.376177, 23.568375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144630, 30.450739, 23.511826>,  <36.776291, 30.575008, 23.417578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144630, 30.450739, 23.511826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158388, 0.254143, 0.954109,
		-0.356300, -0.915910, 0.184820,
		0.920850, -0.310676, 0.235621,
		37.420887, 30.357536, 23.582512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731075, 30.190790, 23.975666>,  <36.776291, 30.575008, 23.417578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731075, 30.190790, 23.975666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100372, 30.343864, 23.989403>,  <37.321949, 30.435709, 23.997644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100372, 30.343864, 23.989403>,  <36.731075, 30.190790, 23.975666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100372, 30.343864, 23.989403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140325, 0.252625, 0.957334,
		0.357680, -0.888669, 0.286934,
		0.923241, 0.382684, 0.034344,
		37.377346, 30.458670, 23.999706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986038, 29.951117, 24.621870>,  <36.731075, 30.190790, 23.975666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986038, 29.951117, 24.621870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.232769, 30.251196, 24.526596>,  <37.380806, 30.431244, 24.469431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.232769, 30.251196, 24.526596>,  <36.986038, 29.951117, 24.621870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232769, 30.251196, 24.526596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023924, 0.284603, 0.958347,
		0.786738, -0.596828, 0.157603,
		0.616823, 0.750198, -0.238187,
		37.417816, 30.476255, 24.455139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340958, 29.903166, 25.212498>,  <36.986038, 29.951117, 24.621870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340958, 29.903166, 25.212498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.449249, 30.255201, 25.056471>,  <37.514225, 30.466423, 24.962854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.449249, 30.255201, 25.056471>,  <37.340958, 29.903166, 25.212498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449249, 30.255201, 25.056471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043198, 0.415896, 0.908386,
		0.961687, -0.229073, 0.150611,
		0.270725, 0.880089, -0.390066,
		37.530468, 30.519228, 24.939451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821926, 30.193644, 25.710735>,  <37.340958, 29.903166, 25.212498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821926, 30.193644, 25.710735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752445, 30.531485, 25.508163>,  <37.710758, 30.734190, 25.386620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752445, 30.531485, 25.508163>,  <37.821926, 30.193644, 25.710735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752445, 30.531485, 25.508163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058546, 0.504483, 0.861434,
		0.983056, 0.179282, -0.038182,
		-0.173702, 0.844603, -0.506431,
		37.700336, 30.784866, 25.356234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262897, 30.785789, 25.901657>,  <37.821926, 30.193644, 25.710735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262897, 30.785789, 25.901657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939213, 30.954805, 25.738375>,  <37.745003, 31.056215, 25.640406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939213, 30.954805, 25.738375>,  <38.262897, 30.785789, 25.901657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939213, 30.954805, 25.738375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128204, 0.551059, 0.824559,
		0.573354, 0.719579, -0.391754,
		-0.809215, 0.422540, -0.408205,
		37.696449, 31.081568, 25.615913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334908, 31.501484, 25.996178>,  <38.262897, 30.785789, 25.901657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334908, 31.501484, 25.996178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941490, 31.475800, 25.928637>,  <37.705441, 31.460388, 25.888113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941490, 31.475800, 25.928637>,  <38.334908, 31.501484, 25.996178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941490, 31.475800, 25.928637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172777, 0.607263, 0.775487,
		0.052742, 0.791902, -0.608367,
		-0.983548, -0.064211, -0.168851,
		37.646427, 31.456537, 25.877981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150829, 32.142696, 26.008457>,  <38.334908, 31.501484, 25.996178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150829, 32.142696, 26.008457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797478, 31.963335, 26.062975>,  <37.585468, 31.855719, 26.095686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797478, 31.963335, 26.062975>,  <38.150829, 32.142696, 26.008457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797478, 31.963335, 26.062975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158973, 0.560268, 0.812913,
		-0.440875, 0.696443, -0.566213,
		-0.883378, -0.448405, 0.136293,
		37.532463, 31.828814, 26.103863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748440, 32.668396, 26.080330>,  <38.150829, 32.142696, 26.008457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748440, 32.668396, 26.080330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524357, 32.378395, 26.240601>,  <37.389908, 32.204395, 26.336763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524357, 32.378395, 26.240601>,  <37.748440, 32.668396, 26.080330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524357, 32.378395, 26.240601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169762, 0.573918, 0.801123,
		-0.810771, 0.380776, -0.444591,
		-0.560207, -0.725002, 0.400675,
		37.356297, 32.160896, 26.360804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087528, 32.946442, 26.321411>,  <37.748440, 32.668396, 26.080330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087528, 32.946442, 26.321411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175964, 32.610111, 26.519053>,  <37.229027, 32.408314, 26.637638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175964, 32.610111, 26.519053>,  <37.087528, 32.946442, 26.321411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175964, 32.610111, 26.519053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214657, 0.452262, 0.865668,
		-0.951337, -0.297453, -0.080498,
		0.221089, -0.840822, 0.494104,
		37.242290, 32.357864, 26.667284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710232, 32.989048, 26.808062>,  <37.087528, 32.946442, 26.321411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710232, 32.989048, 26.808062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.933235, 32.688206, 26.948643>,  <37.067036, 32.507702, 27.032991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.933235, 32.688206, 26.948643>,  <36.710232, 32.989048, 26.808062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933235, 32.688206, 26.948643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038546, 0.446344, 0.894031,
		-0.829276, -0.484883, 0.277831,
		0.557508, -0.752107, 0.351452,
		37.100487, 32.462574, 27.054079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441605, 32.705322, 27.514029>,  <36.710232, 32.989048, 26.808062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441605, 32.705322, 27.514029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838982, 32.662243, 27.529413>,  <37.077408, 32.636395, 27.538643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838982, 32.662243, 27.529413>,  <36.441605, 32.705322, 27.514029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838982, 32.662243, 27.529413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004853, 0.375725, 0.926719,
		-0.114254, -0.920452, 0.373782,
		0.993440, -0.107695, 0.038461,
		37.137012, 32.629936, 27.540951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538269, 32.484875, 28.204197>,  <36.441605, 32.705322, 27.514029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538269, 32.484875, 28.204197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918255, 32.566841, 28.109900>,  <37.146248, 32.616020, 28.053322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918255, 32.566841, 28.109900>,  <36.538269, 32.484875, 28.204197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918255, 32.566841, 28.109900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192703, 0.209498, 0.958633,
		0.245837, -0.956094, 0.159526,
		0.949964, 0.204926, -0.235744,
		37.203243, 32.628319, 28.039177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878204, 32.411636, 28.843409>,  <36.538269, 32.484875, 28.204197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878204, 32.411636, 28.843409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140331, 32.614475, 28.619474>,  <37.297607, 32.736179, 28.485115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140331, 32.614475, 28.619474>,  <36.878204, 32.411636, 28.843409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140331, 32.614475, 28.619474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423211, 0.367411, 0.828192,
		0.625665, -0.779653, 0.026160,
		0.655314, 0.507099, -0.559834,
		37.336926, 32.766605, 28.451525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515049, 32.245094, 29.140810>,  <36.878204, 32.411636, 28.843409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515049, 32.245094, 29.140810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525173, 32.603371, 28.963224>,  <37.531246, 32.818336, 28.856672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525173, 32.603371, 28.963224>,  <37.515049, 32.245094, 29.140810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525173, 32.603371, 28.963224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527430, 0.365301, 0.767054,
		0.849221, -0.253573, -0.463167,
		0.025309, 0.895687, -0.443963,
		37.532764, 32.872078, 28.830036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257172, 32.434872, 29.092627>,  <37.515049, 32.245094, 29.140810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257172, 32.434872, 29.092627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.028408, 32.762955, 29.087341>,  <37.891151, 32.959805, 29.084171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.028408, 32.762955, 29.087341>,  <38.257172, 32.434872, 29.092627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028408, 32.762955, 29.087341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460683, 0.334463, 0.822134,
		0.678742, 0.464101, -0.569140,
		-0.571910, 0.820210, -0.013211,
		37.856834, 33.009018, 29.083378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722137, 32.974113, 29.314747>,  <38.257172, 32.434872, 29.092627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722137, 32.974113, 29.314747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349251, 33.097202, 29.390938>,  <38.125519, 33.171055, 29.436653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349251, 33.097202, 29.390938>,  <38.722137, 32.974113, 29.314747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349251, 33.097202, 29.390938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243020, 0.142268, 0.959532,
		0.268167, 0.940781, -0.207406,
		-0.932216, 0.307719, 0.190477,
		38.069588, 33.189518, 29.448080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890244, 33.586021, 29.726088>,  <38.722137, 32.974113, 29.314747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890244, 33.586021, 29.726088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507549, 33.499001, 29.803366>,  <38.277931, 33.446789, 29.849731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507549, 33.499001, 29.803366>,  <38.890244, 33.586021, 29.726088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507549, 33.499001, 29.803366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128998, 0.278002, 0.951879,
		-0.260790, 0.935621, -0.237912,
		-0.956738, -0.217551, 0.193193,
		38.220528, 33.433735, 29.861324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608459, 34.140636, 30.093147>,  <38.890244, 33.586021, 29.726088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608459, 34.140636, 30.093147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354969, 33.843906, 30.180868>,  <38.202877, 33.665871, 30.233501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354969, 33.843906, 30.180868>,  <38.608459, 34.140636, 30.093147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354969, 33.843906, 30.180868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116187, 0.189005, 0.975078,
		-0.764785, 0.643410, -0.033587,
		-0.633723, -0.741823, 0.219304,
		38.164852, 33.621361, 30.246660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180771, 34.413422, 30.583643>,  <38.608459, 34.140636, 30.093147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180771, 34.413422, 30.583643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147377, 34.016937, 30.624681>,  <38.127342, 33.779045, 30.649305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147377, 34.016937, 30.624681>,  <38.180771, 34.413422, 30.583643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147377, 34.016937, 30.624681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037868, 0.106039, 0.993641,
		-0.995790, 0.079067, -0.046388,
		-0.083483, -0.991214, 0.102598,
		38.122334, 33.719574, 30.655460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676456, 34.387161, 31.079771>,  <38.180771, 34.413422, 30.583643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676456, 34.387161, 31.079771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875706, 34.041203, 31.055017>,  <37.995255, 33.833630, 31.040165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875706, 34.041203, 31.055017>,  <37.676456, 34.387161, 31.079771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875706, 34.041203, 31.055017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132376, 0.005320, 0.991185,
		-0.856941, -0.501927, 0.117141,
		0.498126, -0.864894, -0.061884,
		38.025143, 33.781734, 31.036451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396008, 33.839027, 31.588474>,  <37.676456, 34.387161, 31.079771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396008, 33.839027, 31.588474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.757214, 33.679935, 31.523514>,  <37.973938, 33.584480, 31.484537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.757214, 33.679935, 31.523514>,  <37.396008, 33.839027, 31.588474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757214, 33.679935, 31.523514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195842, 0.044647, 0.979619,
		-0.382372, -0.916416, 0.118208,
		0.903016, -0.397729, -0.162401,
		38.028118, 33.560616, 31.474794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405903, 33.134686, 31.913397>,  <37.396008, 33.839027, 31.588474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405903, 33.134686, 31.913397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778168, 33.269787, 31.857126>,  <38.001526, 33.350849, 31.823364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778168, 33.269787, 31.857126>,  <37.405903, 33.134686, 31.913397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778168, 33.269787, 31.857126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201858, -0.153304, 0.967342,
		0.305157, -0.928666, -0.210852,
		0.930663, 0.337753, -0.140677,
		38.057365, 33.371113, 31.814922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844131, 32.596207, 32.265575>,  <37.405903, 33.134686, 31.913397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844131, 32.596207, 32.265575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040260, 32.941521, 32.217709>,  <38.157936, 33.148708, 32.188988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040260, 32.941521, 32.217709>,  <37.844131, 32.596207, 32.265575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040260, 32.941521, 32.217709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232019, 0.003049, 0.972707,
		0.840090, -0.504704, -0.198804,
		0.490323, 0.863287, -0.119663,
		38.187359, 33.200508, 32.181808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400909, 32.455505, 32.684380>,  <37.844131, 32.596207, 32.265575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400909, 32.455505, 32.684380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.415771, 32.853313, 32.645287>,  <38.424686, 33.091999, 32.621830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.415771, 32.853313, 32.645287>,  <38.400909, 32.455505, 32.684380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415771, 32.853313, 32.645287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425473, 0.072750, 0.902042,
		0.904208, -0.075094, -0.420439,
		0.037151, 0.994519, -0.097732,
		38.426918, 33.151669, 32.615967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053593, 32.613041, 32.923519>,  <38.400909, 32.455505, 32.684380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053593, 32.613041, 32.923519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.815998, 32.932964, 32.958134>,  <38.673443, 33.124920, 32.978901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.815998, 32.932964, 32.958134>,  <39.053593, 32.613041, 32.923519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815998, 32.932964, 32.958134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131904, -0.009287, 0.991219,
		0.793590, 0.600182, -0.099982,
		-0.593983, 0.799809, 0.086537,
		38.637802, 33.172909, 32.984097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435497, 33.178387, 33.292118>,  <39.053593, 32.613041, 32.923519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435497, 33.178387, 33.292118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070900, 33.334270, 33.344734>,  <38.852142, 33.427799, 33.376305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070900, 33.334270, 33.344734>,  <39.435497, 33.178387, 33.292118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070900, 33.334270, 33.344734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188847, 0.112426, 0.975550,
		0.365390, 0.914051, -0.176070,
		-0.911497, 0.389706, 0.131536,
		38.797451, 33.451183, 33.384193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527889, 33.782425, 33.719429>,  <39.435497, 33.178387, 33.292118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527889, 33.782425, 33.719429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.143108, 33.678303, 33.752628>,  <38.912239, 33.615829, 33.772549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.143108, 33.678303, 33.752628>,  <39.527889, 33.782425, 33.719429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143108, 33.678303, 33.752628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053172, 0.119607, 0.991396,
		-0.267996, 0.958089, -0.101215,
		-0.961952, -0.260308, 0.082998,
		38.854523, 33.600212, 33.777527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206856, 34.281136, 34.003716>,  <39.527889, 33.782425, 33.719429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206856, 34.281136, 34.003716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013321, 33.946045, 34.105000>,  <38.897202, 33.744991, 34.165768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013321, 33.946045, 34.105000>,  <39.206856, 34.281136, 34.003716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013321, 33.946045, 34.105000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129133, 0.217822, 0.967408,
		-0.865578, 0.500766, 0.002787,
		-0.483838, -0.837727, 0.253208,
		38.868168, 33.694725, 34.180962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805492, 34.457245, 34.567089>,  <39.206856, 34.281136, 34.003716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805492, 34.457245, 34.567089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.874569, 34.063274, 34.563175>,  <38.916016, 33.826893, 34.560829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.874569, 34.063274, 34.563175>,  <38.805492, 34.457245, 34.567089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874569, 34.063274, 34.563175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050794, -0.001012, 0.998709,
		-0.983666, -0.172965, 0.049853,
		0.172691, -0.984928, -0.009781,
		38.926376, 33.767796, 34.560242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284687, 34.033207, 34.996593>,  <38.805492, 34.457245, 34.567089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284687, 34.033207, 34.996593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617680, 33.815655, 34.954304>,  <38.817474, 33.685123, 34.928932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617680, 33.815655, 34.954304>,  <38.284687, 34.033207, 34.996593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617680, 33.815655, 34.954304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145886, 0.031091, 0.988813,
		-0.534506, -0.838588, 0.105227,
		0.832478, -0.543878, -0.105720,
		38.867424, 33.652493, 34.922588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289581, 33.501450, 35.516685>,  <38.284687, 34.033207, 34.996593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289581, 33.501450, 35.516685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671719, 33.582085, 35.430264>,  <38.901001, 33.630466, 35.378410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671719, 33.582085, 35.430264>,  <38.289581, 33.501450, 35.516685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671719, 33.582085, 35.430264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193144, 0.127370, 0.972868,
		0.223638, -0.971153, 0.082746,
		0.955343, 0.201589, -0.216058,
		38.958321, 33.642559, 35.365448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679447, 33.191189, 36.048038>,  <38.289581, 33.501450, 35.516685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679447, 33.191189, 36.048038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889492, 33.495140, 35.894756>,  <39.015518, 33.677509, 35.802788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889492, 33.495140, 35.894756>,  <38.679447, 33.191189, 36.048038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889492, 33.495140, 35.894756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155813, 0.356828, 0.921084,
		0.836648, -0.543380, 0.068976,
		0.525111, 0.759876, -0.383205,
		39.047024, 33.723103, 35.779793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978611, 33.413456, 36.678215>,  <38.679447, 33.191189, 36.048038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978611, 33.413456, 36.678215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195415, 33.645008, 36.434532>,  <39.325497, 33.783939, 36.288322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195415, 33.645008, 36.434532>,  <38.978611, 33.413456, 36.678215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195415, 33.645008, 36.434532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334714, 0.516237, 0.788331,
		0.770840, -0.631191, 0.086046,
		0.542007, 0.578877, -0.609205,
		39.358017, 33.818672, 36.251770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675903, 33.373909, 36.883514>,  <38.978611, 33.413456, 36.678215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.675903, 33.373909, 36.883514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597313, 33.715092, 36.690075>,  <39.550159, 33.919800, 36.574013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597313, 33.715092, 36.690075>,  <39.675903, 33.373909, 36.883514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597313, 33.715092, 36.690075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238869, 0.519990, 0.820093,
		0.950968, 0.045609, -0.305908,
		-0.196473, 0.852954, -0.483599,
		39.538372, 33.970978, 36.544994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148674, 33.768452, 37.180344>,  <39.675903, 33.373909, 36.883514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148674, 33.768452, 37.180344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.923832, 34.054405, 37.013981>,  <39.788929, 34.225979, 36.914165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.923832, 34.054405, 37.013981>,  <40.148674, 33.768452, 37.180344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.923832, 34.054405, 37.013981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274613, 0.635659, 0.721474,
		0.780146, 0.291331, -0.553623,
		-0.562103, 0.714887, -0.415904,
		39.755199, 34.268871, 36.889210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.519321, 34.364246, 37.188530>,  <40.148674, 33.768452, 37.180344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.519321, 34.364246, 37.188530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151848, 34.515976, 37.144470>,  <39.931362, 34.607014, 37.118034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151848, 34.515976, 37.144470>,  <40.519321, 34.364246, 37.188530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151848, 34.515976, 37.144470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102260, 0.497759, 0.861266,
		0.381530, 0.779966, -0.496073,
		-0.918683, 0.379327, -0.110151,
		39.876244, 34.629772, 37.111423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488548, 35.087402, 37.153515>,  <40.519321, 34.364246, 37.188530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.488548, 35.087402, 37.153515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.154503, 34.940937, 37.317711>,  <39.954075, 34.853058, 37.416229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.154503, 34.940937, 37.317711>,  <40.488548, 35.087402, 37.153515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154503, 34.940937, 37.317711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176220, 0.528822, 0.830237,
		-0.521081, 0.765681, -0.377103,
		-0.835117, -0.366168, 0.410487,
		39.903969, 34.831085, 37.440857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178078, 35.642986, 37.615879>,  <40.488548, 35.087402, 37.153515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.178078, 35.642986, 37.615879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003490, 35.295856, 37.710846>,  <39.898739, 35.087578, 37.767826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003490, 35.295856, 37.710846>,  <40.178078, 35.642986, 37.615879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003490, 35.295856, 37.710846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046615, 0.285342, 0.957292,
		-0.898510, 0.406763, -0.164997,
		-0.436472, -0.867827, 0.237421,
		39.872547, 35.035507, 37.782074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514549, 35.667381, 37.931057>,  <40.178078, 35.642986, 37.615879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514549, 35.667381, 37.931057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.723145, 35.367920, 38.094799>,  <39.848301, 35.188244, 38.193047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.723145, 35.367920, 38.094799>,  <39.514549, 35.667381, 37.931057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723145, 35.367920, 38.094799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083892, 0.432446, 0.897748,
		-0.849127, -0.502504, 0.162708,
		0.521484, -0.748652, 0.409358,
		39.879589, 35.143326, 38.217606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160580, 35.245857, 38.472843>,  <39.514549, 35.667381, 37.931057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160580, 35.245857, 38.472843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553303, 35.251881, 38.548557>,  <39.788937, 35.255493, 38.593987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553303, 35.251881, 38.548557>,  <39.160580, 35.245857, 38.472843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553303, 35.251881, 38.548557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183669, 0.328196, 0.926581,
		-0.048169, -0.944490, 0.324991,
		0.981807, 0.015058, 0.189282,
		39.847843, 35.256397, 38.605343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720993, 35.453690, 39.014008>,  <39.160580, 35.245857, 38.472843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720993, 35.453690, 39.014008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.697830, 35.823898, 38.864311>,  <38.683933, 36.046024, 38.774494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.697830, 35.823898, 38.864311>,  <38.720993, 35.453690, 39.014008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697830, 35.823898, 38.864311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035986, -0.376559, -0.925694,
		-0.997673, -0.040139, 0.055112,
		-0.057910, 0.925523, -0.374238,
		38.680458, 36.101555, 38.752041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370815, 35.100357, 39.373611>,  <38.720993, 35.453690, 39.014008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370815, 35.100357, 39.373611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.755924, 35.137196, 39.271950>,  <39.986988, 35.159298, 39.210953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.755924, 35.137196, 39.271950>,  <39.370815, 35.100357, 39.373611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755924, 35.137196, 39.271950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223467, 0.257876, 0.939980,
		0.152106, -0.961779, 0.227696,
		0.962770, 0.092094, -0.254150,
		40.044754, 35.164825, 39.195705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873577, 34.563461, 39.737179>,  <39.370815, 35.100357, 39.373611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.873577, 34.563461, 39.737179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.068375, 34.898392, 39.637798>,  <40.185253, 35.099350, 39.578171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.068375, 34.898392, 39.637798>,  <39.873577, 34.563461, 39.737179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068375, 34.898392, 39.637798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064097, 0.249433, 0.966268,
		0.871053, -0.486487, 0.067801,
		0.486989, 0.837325, -0.248452,
		40.214470, 35.149590, 39.563263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436188, 34.622662, 40.148197>,  <39.873577, 34.563461, 39.737179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.436188, 34.622662, 40.148197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355404, 34.996700, 40.031712>,  <40.306934, 35.221123, 39.961819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355404, 34.996700, 40.031712>,  <40.436188, 34.622662, 40.148197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355404, 34.996700, 40.031712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098961, 0.315302, 0.943818,
		0.974382, 0.161794, -0.156216,
		-0.201959, 0.935098, -0.291213,
		40.294815, 35.277229, 39.944347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692062, 34.977203, 40.666676>,  <40.436188, 34.622662, 40.148197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.692062, 34.977203, 40.666676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471481, 35.264374, 40.496742>,  <40.339134, 35.436676, 40.394783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471481, 35.264374, 40.496742>,  <40.692062, 34.977203, 40.666676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471481, 35.264374, 40.496742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012878, 0.501880, 0.864841,
		0.834106, 0.482391, -0.267518,
		-0.551453, 0.717925, -0.424834,
		40.306046, 35.479752, 40.369293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.141479, 35.546509, 40.694000>,  <40.692062, 34.977203, 40.666676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.141479, 35.546509, 40.694000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.754944, 35.643475, 40.659531>,  <40.523022, 35.701653, 40.638847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.754944, 35.643475, 40.659531>,  <41.141479, 35.546509, 40.694000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.754944, 35.643475, 40.659531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066158, 0.557830, 0.827315,
		0.248621, 0.793765, -0.555090,
		-0.966339, 0.242411, -0.086174,
		40.465042, 35.716198, 40.633678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114067, 36.144363, 41.068584>,  <41.141479, 35.546509, 40.694000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114067, 36.144363, 41.068584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721947, 36.073593, 41.033463>,  <40.486675, 36.031132, 41.012390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721947, 36.073593, 41.033463>,  <41.114067, 36.144363, 41.068584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721947, 36.073593, 41.033463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187628, 0.695283, 0.693814,
		-0.061700, 0.696621, -0.714781,
		-0.980300, -0.176921, -0.087806,
		40.427856, 36.020515, 41.007122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689831, 36.590717, 40.719494>,  <41.114067, 36.144363, 41.068584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.689831, 36.590717, 40.719494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.432617, 36.470192, 41.001122>,  <40.278290, 36.397877, 41.170097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.432617, 36.470192, 41.001122>,  <40.689831, 36.590717, 40.719494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.432617, 36.470192, 41.001122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302416, 0.744731, 0.594912,
		-0.703596, 0.595473, -0.387770,
		-0.643038, -0.301310, 0.704070,
		40.239704, 36.379799, 41.212341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302284, 37.218277, 40.916019>,  <40.689831, 36.590717, 40.719494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.302284, 37.218277, 40.916019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.317177, 36.952656, 41.214722>,  <40.326111, 36.793285, 41.393944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.317177, 36.952656, 41.214722>,  <40.302284, 37.218277, 40.916019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.317177, 36.952656, 41.214722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329057, 0.713749, 0.618291,
		-0.943576, 0.222708, 0.245083,
		0.037230, -0.664051, 0.746760,
		40.328346, 36.753441, 41.438751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934166, 37.468521, 41.534103>,  <40.302284, 37.218277, 40.916019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934166, 37.468521, 41.534103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.233761, 37.224678, 41.637951>,  <40.413517, 37.078373, 41.700260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.233761, 37.224678, 41.637951>,  <39.934166, 37.468521, 41.534103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.233761, 37.224678, 41.637951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329051, 0.682309, 0.652824,
		-0.575108, -0.403526, 0.711630,
		0.748984, -0.609607, 0.259621,
		40.458454, 37.041798, 41.715836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992176, 37.233295, 42.279667>,  <39.934166, 37.468521, 41.534103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992176, 37.233295, 42.279667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.356956, 37.240967, 42.115730>,  <40.575825, 37.245571, 42.017368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.356956, 37.240967, 42.115730>,  <39.992176, 37.233295, 42.279667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.356956, 37.240967, 42.115730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271197, 0.721400, 0.637209,
		0.307885, -0.692253, 0.652681,
		0.911954, 0.019182, -0.409845,
		40.630543, 37.246723, 41.992775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720322, 36.611057, 42.493164>,  <39.992176, 37.233295, 42.279667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.720322, 36.611057, 42.493164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.841564, 36.661491, 42.115334>,  <39.914310, 36.691753, 41.888634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.841564, 36.661491, 42.115334>,  <39.720322, 36.611057, 42.493164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.841564, 36.661491, 42.115334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184765, -0.964623, -0.188053,
		-0.934872, 0.231526, -0.269091,
		0.303111, 0.126086, -0.944577,
		39.932499, 36.699318, 41.831959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260399, 36.227322, 42.083004>,  <39.720322, 36.611057, 42.493164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260399, 36.227322, 42.083004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580894, 36.255695, 41.845356>,  <39.773193, 36.272720, 41.702766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580894, 36.255695, 41.845356>,  <39.260399, 36.227322, 42.083004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580894, 36.255695, 41.845356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152135, -0.936163, -0.316945,
		-0.578676, 0.344336, -0.739301,
		0.801242, 0.070935, -0.594121,
		39.821266, 36.276978, 41.667118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149429, 35.927906, 41.498383>,  <39.260399, 36.227322, 42.083004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149429, 35.927906, 41.498383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548733, 35.920135, 41.476097>,  <39.788315, 35.915474, 41.462727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548733, 35.920135, 41.476097>,  <39.149429, 35.927906, 41.498383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548733, 35.920135, 41.476097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044672, -0.865736, -0.498502,
		-0.038551, 0.500123, -0.865096,
		0.998258, -0.019428, -0.055717,
		39.848209, 35.914307, 41.459381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164524, 35.697117, 40.908649>,  <39.149429, 35.927906, 41.498383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164524, 35.697117, 40.908649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.539108, 35.836517, 40.924564>,  <39.763859, 35.920158, 40.934113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.539108, 35.836517, 40.924564>,  <39.164524, 35.697117, 40.908649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539108, 35.836517, 40.924564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128449, -0.235175, -0.963428,
		-0.326395, 0.907327, -0.264998,
		0.936465, 0.348497, 0.039786,
		39.820049, 35.941067, 40.936501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205563, 36.190063, 40.465649>,  <39.164524, 35.697117, 40.908649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205563, 36.190063, 40.465649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572899, 36.039383, 40.514210>,  <39.793301, 35.948975, 40.543346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572899, 36.039383, 40.514210>,  <39.205563, 36.190063, 40.465649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572899, 36.039383, 40.514210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003823, -0.315165, -0.949029,
		0.395762, 0.871072, -0.290870,
		0.918345, -0.376702, 0.121400,
		39.848404, 35.926373, 40.550629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488483, 36.229393, 39.784111>,  <39.205563, 36.190063, 40.465649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488483, 36.229393, 39.784111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767757, 36.033203, 39.992714>,  <39.935322, 35.915489, 40.117874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767757, 36.033203, 39.992714>,  <39.488483, 36.229393, 39.784111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767757, 36.033203, 39.992714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337048, -0.417474, -0.843868,
		0.631614, 0.764949, -0.126160,
		0.698185, -0.490477, 0.521508,
		39.977211, 35.886059, 40.149166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169765, 36.405815, 39.440701>,  <39.488483, 36.229393, 39.784111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169765, 36.405815, 39.440701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226669, 36.047405, 39.608936>,  <40.260811, 35.832359, 39.709877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226669, 36.047405, 39.608936>,  <40.169765, 36.405815, 39.440701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226669, 36.047405, 39.608936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297115, -0.366664, -0.881635,
		0.944185, 0.250383, 0.214063,
		0.142257, -0.896028, 0.420592,
		40.269348, 35.778599, 39.735115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836582, 36.209457, 39.133793>,  <40.169765, 36.405815, 39.440701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836582, 36.209457, 39.133793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667973, 35.874348, 39.272621>,  <40.566807, 35.673283, 39.355919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667973, 35.874348, 39.272621>,  <40.836582, 36.209457, 39.133793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.667973, 35.874348, 39.272621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071444, -0.412224, -0.908277,
		0.903999, -0.358064, 0.233615,
		-0.421523, -0.837772, 0.347068,
		40.541515, 35.623016, 39.376743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145519, 35.677639, 38.802345>,  <40.836582, 36.209457, 39.133793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.145519, 35.677639, 38.802345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.793179, 35.529991, 38.920898>,  <40.581772, 35.441402, 38.992031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.793179, 35.529991, 38.920898>,  <41.145519, 35.677639, 38.802345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793179, 35.529991, 38.920898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136708, -0.401072, -0.905788,
		0.453218, -0.838386, 0.302824,
		-0.880854, -0.369121, 0.296387,
		40.528923, 35.419254, 39.009815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126099, 34.952148, 38.896008>,  <41.145519, 35.677639, 38.802345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.126099, 34.952148, 38.896008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.747334, 35.035004, 38.797653>,  <40.520077, 35.084717, 38.738640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.747334, 35.035004, 38.797653>,  <41.126099, 34.952148, 38.896008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.747334, 35.035004, 38.797653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085450, -0.575154, -0.813570,
		-0.309941, -0.791387, 0.526919,
		-0.946908, 0.207133, -0.245888,
		40.463261, 35.097145, 38.723888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858154, 34.305611, 38.721050>,  <41.126099, 34.952148, 38.896008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858154, 34.305611, 38.721050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.705055, 34.613712, 38.517006>,  <40.613194, 34.798573, 38.394581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.705055, 34.613712, 38.517006>,  <40.858154, 34.305611, 38.721050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705055, 34.613712, 38.517006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088315, -0.519120, -0.850126,
		-0.919621, -0.370436, 0.130668,
		-0.382750, 0.770254, -0.510109,
		40.590229, 34.844788, 38.363972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127907, 34.223095, 38.559124>,  <40.858154, 34.305611, 38.721050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127907, 34.223095, 38.559124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.897099, 34.521492, 38.426128>,  <39.758614, 34.700531, 38.346333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.897099, 34.521492, 38.426128>,  <40.127907, 34.223095, 38.559124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.897099, 34.521492, 38.426128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078301, -0.354691, -0.931699,
		-0.812969, -0.563641, 0.146252,
		-0.577018, 0.745991, -0.332487,
		39.723991, 34.745289, 38.326382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452747, 33.918484, 38.309177>,  <40.127907, 34.223095, 38.559124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452747, 33.918484, 38.309177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.564751, 34.266956, 38.147865>,  <39.631950, 34.476040, 38.051079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.564751, 34.266956, 38.147865>,  <39.452747, 33.918484, 38.309177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564751, 34.266956, 38.147865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095522, -0.392714, -0.914687,
		-0.955234, 0.294640, -0.026745,
		0.280006, 0.871185, -0.403278,
		39.648754, 34.528313, 38.026882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917213, 34.110096, 37.933517>,  <39.452747, 33.918484, 38.309177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917213, 34.110096, 37.933517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.231827, 34.306778, 37.784069>,  <39.420593, 34.424789, 37.694401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.231827, 34.306778, 37.784069>,  <38.917213, 34.110096, 37.933517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231827, 34.306778, 37.784069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044451, -0.558360, -0.828407,
		-0.615950, 0.668175, -0.417310,
		0.786530, 0.491708, -0.373623,
		39.467785, 34.454288, 37.671982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516018, 34.786442, 37.652081>,  <38.917213, 34.110096, 37.933517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516018, 34.786442, 37.652081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.542355, 35.044975, 37.956165>,  <38.558155, 35.200096, 38.138615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.542355, 35.044975, 37.956165>,  <38.516018, 34.786442, 37.652081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542355, 35.044975, 37.956165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912320, 0.347569, -0.216490,
		-0.404150, -0.679304, 0.612542,
		0.065838, 0.646329, 0.760213,
		38.562107, 35.238873, 38.184231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685112, 35.166653, 36.953400>,  <38.516018, 34.786442, 37.652081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685112, 35.166653, 36.953400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047817, 35.001072, 36.985477>,  <39.265438, 34.901726, 37.004723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047817, 35.001072, 36.985477>,  <38.685112, 35.166653, 36.953400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047817, 35.001072, 36.985477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131746, -0.458823, -0.878706,
		0.400535, 0.786210, -0.470579,
		0.906760, -0.413950, 0.080195,
		39.319847, 34.876888, 37.009537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049625, 35.212337, 36.320244>,  <38.685112, 35.166653, 36.953400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049625, 35.212337, 36.320244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.229904, 34.898579, 36.490700>,  <39.338074, 34.710323, 36.592972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.229904, 34.898579, 36.490700>,  <39.049625, 35.212337, 36.320244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229904, 34.898579, 36.490700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014991, -0.483956, -0.874964,
		0.892549, 0.387959, -0.229879,
		0.450702, -0.784394, 0.426138,
		39.365116, 34.663261, 36.618542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563782, 35.036041, 35.907944>,  <39.049625, 35.212337, 36.320244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563782, 35.036041, 35.907944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491673, 34.699921, 36.112450>,  <39.448406, 34.498249, 36.235153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491673, 34.699921, 36.112450>,  <39.563782, 35.036041, 35.907944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491673, 34.699921, 36.112450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098757, -0.532615, -0.840576,
		0.978646, -0.101043, 0.179002,
		-0.180273, -0.840305, 0.511263,
		39.437592, 34.447830, 36.265827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087234, 34.659985, 35.698444>,  <39.563782, 35.036041, 35.907944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087234, 34.659985, 35.698444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807655, 34.418705, 35.852127>,  <39.639908, 34.273937, 35.944336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807655, 34.418705, 35.852127>,  <40.087234, 34.659985, 35.698444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807655, 34.418705, 35.852127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041945, -0.501728, -0.864008,
		0.713939, -0.620014, 0.325382,
		-0.698951, -0.603201, 0.384209,
		39.597969, 34.237743, 35.967388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252609, 33.953846, 35.781864>,  <40.087234, 34.659985, 35.698444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252609, 33.953846, 35.781864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.857365, 33.975037, 35.724133>,  <39.620216, 33.987751, 35.689495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.857365, 33.975037, 35.724133>,  <40.252609, 33.953846, 35.781864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857365, 33.975037, 35.724133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092192, -0.547077, -0.831990,
		-0.123035, -0.835404, 0.535689,
		-0.988111, 0.052978, -0.144327,
		39.560932, 33.990929, 35.680836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236355, 33.567696, 35.194859>,  <40.252609, 33.953846, 35.781864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236355, 33.567696, 35.194859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.846298, 33.627247, 35.260502>,  <39.612263, 33.662979, 35.299889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.846298, 33.627247, 35.260502>,  <40.236355, 33.567696, 35.194859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846298, 33.627247, 35.260502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220772, -0.589594, -0.776942,
		-0.018912, -0.793860, 0.607806,
		-0.975142, 0.148880, 0.164111,
		39.553757, 33.671909, 35.309734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951717, 32.975006, 34.844921>,  <40.236355, 33.567696, 35.194859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951717, 32.975006, 34.844921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.599533, 33.161411, 34.879829>,  <39.388222, 33.273254, 34.900776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.599533, 33.161411, 34.879829>,  <39.951717, 32.975006, 34.844921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.599533, 33.161411, 34.879829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190386, -0.178943, -0.965263,
		-0.434210, -0.866493, 0.246275,
		-0.880463, 0.466015, 0.087269,
		39.335396, 33.301216, 34.906010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291401, 32.609100, 34.506374>,  <39.951717, 32.975006, 34.844921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291401, 32.609100, 34.506374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251686, 33.006298, 34.480766>,  <39.227856, 33.244617, 34.465401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251686, 33.006298, 34.480766>,  <39.291401, 32.609100, 34.506374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251686, 33.006298, 34.480766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217562, -0.084443, -0.972387,
		-0.970983, -0.082619, 0.224423,
		-0.099289, 0.992997, -0.064018,
		39.221901, 33.304195, 34.461559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095890, 32.370327, 35.167530>,  <39.291401, 32.609100, 34.506374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095890, 32.370327, 35.167530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311924, 32.085972, 35.347729>,  <39.441544, 31.915359, 35.455849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311924, 32.085972, 35.347729>,  <39.095890, 32.370327, 35.167530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311924, 32.085972, 35.347729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443692, 0.695354, 0.565349,
		-0.715153, -0.105457, 0.690967,
		0.540087, -0.710888, 0.450494,
		39.473949, 31.872705, 35.482876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122673, 32.363270, 35.991688>,  <39.095890, 32.370327, 35.167530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122673, 32.363270, 35.991688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.465309, 32.203323, 35.861240>,  <39.670891, 32.107357, 35.782970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.465309, 32.203323, 35.861240>,  <39.122673, 32.363270, 35.991688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465309, 32.203323, 35.861240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511575, 0.575616, 0.637932,
		-0.067367, -0.713284, 0.697630,
		0.856594, -0.399865, -0.326121,
		39.722286, 32.083363, 35.763405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500744, 32.245518, 36.607380>,  <39.122673, 32.363270, 35.991688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500744, 32.245518, 36.607380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.748386, 32.284931, 36.295738>,  <39.896973, 32.308578, 36.108753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.748386, 32.284931, 36.295738>,  <39.500744, 32.245518, 36.607380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748386, 32.284931, 36.295738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561809, 0.637623, 0.527075,
		0.548709, -0.764021, 0.339396,
		0.619103, 0.098535, -0.779104,
		39.934116, 32.314491, 36.062008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137955, 32.440605, 36.909256>,  <39.500744, 32.245518, 36.607380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137955, 32.440605, 36.909256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.179169, 32.520638, 36.519516>,  <40.203896, 32.568657, 36.285671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.179169, 32.520638, 36.519516>,  <40.137955, 32.440605, 36.909256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179169, 32.520638, 36.519516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632340, 0.742964, 0.219433,
		0.767809, -0.638727, -0.049968,
		0.103033, 0.200079, -0.974347,
		40.210079, 32.580662, 36.227211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879009, 32.467106, 36.764923>,  <40.137955, 32.440605, 36.909256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.879009, 32.467106, 36.764923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.664005, 32.663963, 36.491024>,  <40.535004, 32.782078, 36.326683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.664005, 32.663963, 36.491024>,  <40.879009, 32.467106, 36.764923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.664005, 32.663963, 36.491024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618201, 0.782245, 0.076946,
		0.573511, -0.381954, -0.724705,
		-0.537507, 0.492142, -0.684750,
		40.502754, 32.811607, 36.285599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.342648, 32.656296, 36.267807>,  <40.879009, 32.467106, 36.764923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.342648, 32.656296, 36.267807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.056480, 32.934189, 36.297516>,  <40.884781, 33.100925, 36.315342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.056480, 32.934189, 36.297516>,  <41.342648, 32.656296, 36.267807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.056480, 32.934189, 36.297516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689880, 0.685559, 0.232539,
		0.110635, 0.217603, -0.969747,
		-0.715420, 0.694736, 0.074273,
		40.841854, 33.142609, 36.319798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.370964, 33.290195, 35.896229>,  <41.342648, 32.656296, 36.267807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.370964, 33.290195, 35.896229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.204056, 33.372978, 36.250191>,  <41.103912, 33.422649, 36.462566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.204056, 33.372978, 36.250191>,  <41.370964, 33.290195, 35.896229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.204056, 33.372978, 36.250191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826573, 0.491127, 0.274903,
		-0.377708, 0.846146, -0.375996,
		-0.417270, 0.206955, 0.884904,
		41.078876, 33.435066, 36.515663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.018349, 33.218487, 35.516644>,  <41.370964, 33.290195, 35.896229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.018349, 33.218487, 35.516644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.344845, 33.166473, 35.741795>,  <42.540745, 33.135265, 35.876884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.344845, 33.166473, 35.741795>,  <42.018349, 33.218487, 35.516644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.344845, 33.166473, 35.741795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173357, -0.874302, -0.453369,
		0.551083, 0.467640, -0.691101,
		0.816245, -0.130037, 0.562881,
		42.589718, 33.127460, 35.910660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.624195, 33.256222, 35.138699>,  <42.018349, 33.218487, 35.516644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.624195, 33.256222, 35.138699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.626091, 32.999237, 35.445221>,  <42.627228, 32.845047, 35.629135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.626091, 32.999237, 35.445221>,  <42.624195, 33.256222, 35.138699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.626091, 32.999237, 35.445221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192740, -0.751358, -0.631120,
		0.981238, 0.150690, 0.120266,
		0.004740, -0.642459, 0.766305,
		42.627514, 32.806499, 35.675114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.215298, 32.913483, 35.107571>,  <42.624195, 33.256222, 35.138699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.215298, 32.913483, 35.107571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.980625, 32.675095, 35.326889>,  <42.839821, 32.532063, 35.458481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.980625, 32.675095, 35.326889>,  <43.215298, 32.913483, 35.107571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.980625, 32.675095, 35.326889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430309, -0.802982, -0.412375,
		0.686035, -0.005995, 0.727544,
		-0.586677, -0.595973, 0.548294,
		42.804623, 32.496304, 35.491379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.769665, 32.478558, 35.141136>,  <43.215298, 32.913483, 35.107571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.769665, 32.478558, 35.141136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.409683, 32.343002, 35.250854>,  <43.193695, 32.261669, 35.316685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.409683, 32.343002, 35.250854>,  <43.769665, 32.478558, 35.141136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.409683, 32.343002, 35.250854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256419, -0.920241, -0.295646,
		0.352612, -0.195732, 0.915071,
		-0.899952, -0.338890, 0.274299,
		43.139698, 32.241337, 35.333145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.551105, 32.624069, 35.259453>,  <43.769665, 32.478558, 35.141136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.551105, 32.624069, 35.259453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.424263, 32.683033, 34.884708>,  <44.348160, 32.718410, 34.659863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.424263, 32.683033, 34.884708>,  <44.551105, 32.624069, 35.259453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.424263, 32.683033, 34.884708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566499, 0.762811, 0.311766,
		0.760607, 0.629596, -0.158385,
		-0.317105, 0.147407, -0.936865,
		44.329132, 32.727257, 34.603649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.548153, 33.285622, 35.225006>,  <44.551105, 32.624069, 35.259453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.548153, 33.285622, 35.225006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.310799, 33.183010, 34.919827>,  <44.168388, 33.121445, 34.736717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.310799, 33.183010, 34.919827>,  <44.548153, 33.285622, 35.225006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.310799, 33.183010, 34.919827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626081, 0.742810, 0.237181,
		0.505884, 0.618407, -0.601376,
		-0.593383, -0.256525, -0.762949,
		44.132782, 33.106052, 34.690941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.457481, 33.816021, 34.886734>,  <44.548153, 33.285622, 35.225006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.457481, 33.816021, 34.886734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.142609, 33.599091, 34.769279>,  <43.953686, 33.468933, 34.698807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.142609, 33.599091, 34.769279>,  <44.457481, 33.816021, 34.886734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.142609, 33.599091, 34.769279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593263, 0.795962, 0.120350,
		0.168455, 0.268942, -0.948311,
		-0.787187, -0.542324, -0.293637,
		43.906452, 33.436394, 34.681187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.166153, 33.996902, 35.016281>,  <44.457481, 33.816021, 34.886734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.166153, 33.996902, 35.016281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.274773, 34.371902, 34.929241>,  <45.339943, 34.596905, 34.877018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.274773, 34.371902, 34.929241>,  <45.166153, 33.996902, 35.016281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.274773, 34.371902, 34.929241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891892, -0.160167, 0.422936,
		0.361652, -0.308922, -0.879645,
		0.271544, 0.937504, -0.217600,
		45.356236, 34.653152, 34.863960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.858616, 33.789391, 35.167732>,  <45.166153, 33.996902, 35.016281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.858616, 33.789391, 35.167732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.080410, 33.783669, 35.500561>,  <46.213486, 33.780235, 35.700256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.080410, 33.783669, 35.500561>,  <45.858616, 33.789391, 35.167732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.080410, 33.783669, 35.500561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768147, 0.393449, -0.505122,
		-0.320153, 0.919235, 0.229148,
		0.554484, -0.014303, 0.832072,
		46.246754, 33.779377, 35.750183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.077595, 34.435848, 35.290363>,  <45.858616, 33.789391, 35.167732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.077595, 34.435848, 35.290363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.333122, 34.248085, 35.534187>,  <46.486439, 34.135426, 35.680481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.333122, 34.248085, 35.534187>,  <46.077595, 34.435848, 35.290363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.333122, 34.248085, 35.534187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727463, 0.626422, -0.279989,
		-0.250413, 0.622296, 0.741648,
		0.638820, -0.469408, 0.609561,
		46.524769, 34.107262, 35.717056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.477463, 34.892071, 35.845062>,  <46.077595, 34.435848, 35.290363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.477463, 34.892071, 35.845062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.670033, 34.568611, 35.709816>,  <46.785572, 34.374535, 35.628670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.670033, 34.568611, 35.709816>,  <46.477463, 34.892071, 35.845062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.670033, 34.568611, 35.709816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773086, 0.573531, -0.270925,
		0.413003, -0.130964, 0.901264,
		0.481421, -0.808647, -0.338116,
		46.814461, 34.326015, 35.608379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.209660, 34.938587, 36.149380>,  <46.477463, 34.892071, 35.845062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.209660, 34.938587, 36.149380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.207310, 34.722385, 35.812851>,  <47.205898, 34.592667, 35.610935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.207310, 34.722385, 35.812851>,  <47.209660, 34.938587, 36.149380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.207310, 34.722385, 35.812851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706348, 0.593299, -0.386094,
		0.707840, -0.596536, 0.378295,
		-0.005877, -0.540501, -0.841323,
		47.205547, 34.560234, 35.560455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.858913, 35.020988, 35.749027>,  <47.209660, 34.938587, 36.149380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.858913, 35.020988, 35.749027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.529289, 34.991283, 35.524384>,  <47.331512, 34.973461, 35.389599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.529289, 34.991283, 35.524384>,  <47.858913, 35.020988, 35.749027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.529289, 34.991283, 35.524384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412635, 0.600556, -0.684883,
		0.388139, -0.796127, -0.464252,
		-0.824063, -0.074264, -0.561609,
		47.282070, 34.969006, 35.355900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.990685, 34.693676, 35.036644>,  <47.858913, 35.020988, 35.749027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.990685, 34.693676, 35.036644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.678631, 34.942863, 35.013645>,  <47.491398, 35.092377, 34.999847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.678631, 34.942863, 35.013645>,  <47.990685, 34.693676, 35.036644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.678631, 34.942863, 35.013645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404330, 0.431927, -0.806199,
		-0.477404, -0.652187, -0.588844,
		-0.780130, 0.622970, -0.057495,
		47.444592, 35.129753, 34.996395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.635715, 28.594545, 28.239601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.248966, 28.695154, 28.222225>,  <33.016914, 28.755520, 28.211800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.248966, 28.695154, 28.222225>,  <33.635715, 28.594545, 28.239601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.248966, 28.695154, 28.222225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067261, 0.415232, 0.907226,
		0.246226, 0.874253, -0.418395,
		-0.966876, 0.251524, -0.043438,
		32.958904, 28.770611, 28.209194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627518, 29.348537, 28.373432>,  <33.635715, 28.594545, 28.239601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627518, 29.348537, 28.373432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.257671, 29.209846, 28.436502>,  <33.035763, 29.126633, 28.474344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.257671, 29.209846, 28.436502>,  <33.627518, 29.348537, 28.373432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257671, 29.209846, 28.436502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055436, 0.532052, 0.844895,
		-0.376841, 0.772464, -0.511165,
		-0.924618, -0.346728, 0.157677,
		32.980286, 29.105827, 28.483805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289280, 29.888491, 28.513519>,  <33.627518, 29.348537, 28.373432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289280, 29.888491, 28.513519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.030006, 29.623610, 28.663902>,  <32.874443, 29.464682, 28.754131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.030006, 29.623610, 28.663902>,  <33.289280, 29.888491, 28.513519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030006, 29.623610, 28.663902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207852, 0.628828, 0.749248,
		-0.732565, 0.407510, -0.545238,
		-0.648187, -0.662202, 0.375956,
		32.835552, 29.424950, 28.776690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702682, 30.291895, 28.687202>,  <33.289280, 29.888491, 28.513519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702682, 30.291895, 28.687202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.679764, 29.943804, 28.882925>,  <32.666012, 29.734949, 29.000359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.679764, 29.943804, 28.882925>,  <32.702682, 30.291895, 28.687202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679764, 29.943804, 28.882925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069932, 0.492408, 0.867551,
		-0.995905, 0.015489, -0.089070,
		-0.057296, -0.870227, 0.489308,
		32.662575, 29.682735, 29.029718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121689, 30.361300, 29.019730>,  <32.702682, 30.291895, 28.687202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121689, 30.361300, 29.019730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.289963, 30.074087, 29.241526>,  <32.390926, 29.901760, 29.374603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.289963, 30.074087, 29.241526>,  <32.121689, 30.361300, 29.019730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289963, 30.074087, 29.241526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241207, 0.500679, 0.831348,
		-0.874555, -0.483480, 0.037433,
		0.420682, -0.718031, 0.554490,
		32.416168, 29.858679, 29.407873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.637220, 30.220179, 29.734137>,  <32.121689, 30.361300, 29.019730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.637220, 30.220179, 29.734137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.015472, 30.108854, 29.801460>,  <32.242424, 30.042061, 29.841854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.015472, 30.108854, 29.801460>,  <31.637220, 30.220179, 29.734137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015472, 30.108854, 29.801460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047082, 0.394901, 0.917516,
		-0.321819, -0.875555, 0.360327,
		0.945629, -0.278310, 0.168309,
		32.299160, 30.025362, 29.851954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713339, 29.987707, 30.465302>,  <31.637220, 30.220179, 29.734137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.713339, 29.987707, 30.465302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.077911, 30.089472, 30.335953>,  <32.296654, 30.150530, 30.258343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.077911, 30.089472, 30.335953>,  <31.713339, 29.987707, 30.465302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.077911, 30.089472, 30.335953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221136, 0.359888, 0.906410,
		0.346972, -0.897641, 0.271756,
		0.911432, 0.254404, -0.323372,
		32.351341, 30.165794, 30.238941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126648, 29.936331, 31.095806>,  <31.713339, 29.987707, 30.465302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126648, 29.936331, 31.095806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.323524, 30.176483, 30.843683>,  <32.441650, 30.320574, 30.692410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.323524, 30.176483, 30.843683>,  <32.126648, 29.936331, 31.095806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323524, 30.176483, 30.843683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343135, 0.531643, 0.774348,
		0.800002, -0.597410, 0.055659,
		0.492194, 0.600381, -0.630308,
		32.471184, 30.356598, 30.654591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826321, 29.880398, 31.235268>,  <32.126648, 29.936331, 31.095806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826321, 29.880398, 31.235268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.785114, 30.229746, 31.044851>,  <32.760391, 30.439354, 30.930601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.785114, 30.229746, 31.044851>,  <32.826321, 29.880398, 31.235268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785114, 30.229746, 31.044851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461804, 0.465876, 0.754782,
		0.880979, -0.142080, -0.451320,
		-0.103020, 0.873368, -0.476040,
		32.754208, 30.491756, 30.902039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442833, 30.277058, 31.268429>,  <32.826321, 29.880398, 31.235268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442833, 30.277058, 31.268429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.181507, 30.570461, 31.193439>,  <33.024712, 30.746504, 31.148445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.181507, 30.570461, 31.193439>,  <33.442833, 30.277058, 31.268429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181507, 30.570461, 31.193439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552303, 0.631124, 0.544650,
		0.517825, 0.252285, -0.817441,
		-0.653314, 0.733508, -0.187475,
		32.985512, 30.790514, 31.137197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869347, 30.871727, 31.200541>,  <33.442833, 30.277058, 31.268429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869347, 30.871727, 31.200541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.495152, 31.009401, 31.232527>,  <33.270634, 31.092005, 31.251719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.495152, 31.009401, 31.232527>,  <33.869347, 30.871727, 31.200541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495152, 31.009401, 31.232527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313587, 0.704372, 0.636808,
		0.162851, 0.620804, -0.766865,
		-0.935491, 0.344183, 0.079968,
		33.214504, 31.112656, 31.256517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906292, 31.595806, 31.201427>,  <33.869347, 30.871727, 31.200541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906292, 31.595806, 31.201427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.568993, 31.487991, 31.387451>,  <33.366611, 31.423302, 31.499065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.568993, 31.487991, 31.387451>,  <33.906292, 31.595806, 31.201427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568993, 31.487991, 31.387451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267624, 0.539804, 0.798116,
		-0.466162, 0.797472, -0.383056,
		-0.843250, -0.269536, 0.465059,
		33.316017, 31.407131, 31.526968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547184, 32.306835, 31.488514>,  <33.906292, 31.595806, 31.201427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547184, 32.306835, 31.488514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.439507, 31.984274, 31.699129>,  <33.374901, 31.790735, 31.825499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.439507, 31.984274, 31.699129>,  <33.547184, 32.306835, 31.488514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439507, 31.984274, 31.699129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119743, 0.514453, 0.849117,
		-0.955614, 0.291624, -0.041925,
		-0.269191, -0.806408, 0.526538,
		33.358749, 31.742352, 31.857090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.026325, 32.521126, 31.953068>,  <33.547184, 32.306835, 31.488514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.026325, 32.521126, 31.953068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.172092, 32.174076, 32.088383>,  <33.259552, 31.965847, 32.169571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.172092, 32.174076, 32.088383>,  <33.026325, 32.521126, 31.953068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172092, 32.174076, 32.088383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213375, 0.431395, 0.876567,
		-0.906461, -0.247253, 0.342336,
		0.364416, -0.867620, 0.338286,
		33.281418, 31.913790, 32.189869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807499, 32.414371, 32.666267>,  <33.026325, 32.521126, 31.953068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807499, 32.414371, 32.666267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.113842, 32.160107, 32.627499>,  <33.297649, 32.007549, 32.604237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.113842, 32.160107, 32.627499>,  <32.807499, 32.414371, 32.666267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113842, 32.160107, 32.627499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247852, 0.152748, 0.956681,
		-0.593317, -0.756708, 0.274533,
		0.765862, -0.635658, -0.096924,
		33.343601, 31.969410, 32.598423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868988, 32.086491, 33.358166>,  <32.807499, 32.414371, 32.666267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868988, 32.086491, 33.358166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.231823, 31.993576, 33.217743>,  <33.449524, 31.937826, 33.133488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.231823, 31.993576, 33.217743>,  <32.868988, 32.086491, 33.358166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231823, 31.993576, 33.217743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418323, 0.404368, 0.813322,
		-0.046970, -0.884606, 0.463968,
		0.907083, -0.232290, -0.351058,
		33.503948, 31.923889, 33.112427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199135, 31.449848, 33.826317>,  <32.868988, 32.086491, 33.358166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199135, 31.449848, 33.826317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.486492, 31.669968, 33.656105>,  <33.658909, 31.802040, 33.553978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.486492, 31.669968, 33.656105>,  <33.199135, 31.449848, 33.826317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486492, 31.669968, 33.656105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362526, 0.225913, 0.904178,
		0.593704, -0.803823, -0.037204,
		0.718395, 0.550301, -0.425532,
		33.702011, 31.835058, 33.528446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759434, 31.182669, 34.092800>,  <33.199135, 31.449848, 33.826317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759434, 31.182669, 34.092800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.901653, 31.525990, 33.944794>,  <33.986984, 31.731981, 33.855991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.901653, 31.525990, 33.944794>,  <33.759434, 31.182669, 34.092800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901653, 31.525990, 33.944794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519022, 0.147925, 0.841864,
		0.777306, -0.491364, -0.392883,
		0.355545, 0.858300, -0.370011,
		34.008316, 31.783480, 33.833790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453468, 31.182287, 34.379406>,  <33.759434, 31.182669, 34.092800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453468, 31.182287, 34.379406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.389751, 31.564068, 34.278492>,  <34.351521, 31.793137, 34.217941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.389751, 31.564068, 34.278492>,  <34.453468, 31.182287, 34.379406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389751, 31.564068, 34.278492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588022, 0.297004, 0.752342,
		0.793004, -0.028506, -0.608550,
		-0.159295, 0.954450, -0.252288,
		34.341965, 31.850403, 34.202805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067852, 31.560812, 34.434734>,  <34.453468, 31.182287, 34.379406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067852, 31.560812, 34.434734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.786598, 31.845215, 34.438129>,  <34.617847, 32.015858, 34.440166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.786598, 31.845215, 34.438129>,  <35.067852, 31.560812, 34.434734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786598, 31.845215, 34.438129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433105, 0.418788, 0.798146,
		0.563933, 0.564879, -0.602405,
		-0.703135, 0.711006, 0.008483,
		34.575657, 32.058517, 34.440674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417835, 32.257439, 34.443752>,  <35.067852, 31.560812, 34.434734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417835, 32.257439, 34.443752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.051334, 32.290764, 34.600487>,  <34.831432, 32.310760, 34.694527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.051334, 32.290764, 34.600487>,  <35.417835, 32.257439, 34.443752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051334, 32.290764, 34.600487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386948, 0.437175, 0.811880,
		-0.103659, 0.895509, -0.432802,
		-0.916256, 0.083314, 0.391833,
		34.776459, 32.315758, 34.718037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346359, 32.898193, 34.794266>,  <35.417835, 32.257439, 34.443752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346359, 32.898193, 34.794266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.028690, 32.708027, 34.945675>,  <34.838089, 32.593929, 35.036518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.028690, 32.708027, 34.945675>,  <35.346359, 32.898193, 34.794266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028690, 32.708027, 34.945675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291300, 0.248829, 0.923703,
		-0.533328, 0.843840, -0.059124,
		-0.794170, -0.475414, 0.378518,
		34.790440, 32.565403, 35.059231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077141, 32.655609, 35.001217>,  <35.346359, 32.898193, 34.794266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077141, 32.655609, 35.001217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.451267, 32.521526, 35.046505>,  <36.675743, 32.441078, 35.073677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.451267, 32.521526, 35.046505>,  <36.077141, 32.655609, 35.001217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451267, 32.521526, 35.046505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304456, -0.925544, -0.225109,
		0.180244, 0.176079, -0.967733,
		0.935317, -0.335207, 0.113216,
		36.731861, 32.420963, 35.080471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337513, 32.311474, 34.383167>,  <36.077141, 32.655609, 35.001217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337513, 32.311474, 34.383167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.594784, 32.144226, 34.639759>,  <36.749146, 32.043877, 34.793716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.594784, 32.144226, 34.639759>,  <36.337513, 32.311474, 34.383167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594784, 32.144226, 34.639759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074260, -0.867864, -0.491221,
		0.762108, 0.268306, -0.589239,
		0.643177, -0.418120, 0.641482,
		36.787735, 32.018791, 34.832203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817425, 32.026649, 34.030186>,  <36.337513, 32.311474, 34.383167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817425, 32.026649, 34.030186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.873257, 31.838785, 34.378883>,  <36.906757, 31.726067, 34.588100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.873257, 31.838785, 34.378883>,  <36.817425, 32.026649, 34.030186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873257, 31.838785, 34.378883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014090, -0.881213, -0.472509,
		0.990110, 0.053671, -0.129620,
		0.139583, -0.469662, 0.871742,
		36.915131, 31.697886, 34.640408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340504, 31.606928, 33.892693>,  <36.817425, 32.026649, 34.030186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340504, 31.606928, 33.892693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.139282, 31.461637, 34.206383>,  <37.018551, 31.374464, 34.394596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.139282, 31.461637, 34.206383>,  <37.340504, 31.606928, 33.892693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139282, 31.461637, 34.206383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015732, -0.903397, -0.428516,
		0.864112, -0.227904, 0.448743,
		-0.503054, -0.363226, 0.784222,
		36.988365, 31.352669, 34.441650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568298, 30.962912, 33.919727>,  <37.340504, 31.606928, 33.892693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568298, 30.962912, 33.919727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.254345, 30.919395, 34.163738>,  <37.065975, 30.893286, 34.310143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.254345, 30.919395, 34.163738>,  <37.568298, 30.962912, 33.919727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254345, 30.919395, 34.163738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195315, -0.890849, -0.410171,
		0.588061, -0.441082, 0.677961,
		-0.784880, -0.108790, 0.610023,
		37.018883, 30.886759, 34.346745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669514, 30.242935, 34.274979>,  <37.568298, 30.962912, 33.919727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669514, 30.242935, 34.274979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.285606, 30.355246, 34.275661>,  <37.055260, 30.422632, 34.276070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.285606, 30.355246, 34.275661>,  <37.669514, 30.242935, 34.274979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285606, 30.355246, 34.275661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238617, -0.812431, -0.531994,
		-0.147985, -0.511000, 0.846747,
		-0.959772, 0.280775, 0.001706,
		36.997673, 30.439478, 34.276173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365227, 29.691713, 34.113091>,  <37.669514, 30.242935, 34.274979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365227, 29.691713, 34.113091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.034645, 29.915625, 34.089008>,  <36.836296, 30.049971, 34.074558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.034645, 29.915625, 34.089008>,  <37.365227, 29.691713, 34.113091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034645, 29.915625, 34.089008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415262, -0.678291, -0.606200,
		-0.380177, -0.475993, 0.793030,
		-0.826452, 0.559778, -0.060209,
		36.786709, 30.083559, 34.070946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681732, 29.239073, 34.215641>,  <37.365227, 29.691713, 34.113091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681732, 29.239073, 34.215641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.597637, 29.575943, 34.017029>,  <36.547180, 29.778065, 33.897861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.597637, 29.575943, 34.017029>,  <36.681732, 29.239073, 34.215641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597637, 29.575943, 34.017029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296092, -0.538876, -0.788634,
		-0.931734, -0.018787, 0.362656,
		-0.210242, 0.842176, -0.496526,
		36.534565, 29.828596, 33.868073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012352, 29.107056, 33.924015>,  <36.681732, 29.239073, 34.215641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012352, 29.107056, 33.924015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.175472, 29.391016, 33.694324>,  <36.273346, 29.561392, 33.556511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.175472, 29.391016, 33.694324>,  <36.012352, 29.107056, 33.924015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175472, 29.391016, 33.694324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261863, -0.511545, -0.818382,
		-0.874713, 0.484108, -0.022713,
		0.407804, 0.709902, -0.574226,
		36.297813, 29.603987, 33.522057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477806, 29.410439, 33.470600>,  <36.012352, 29.107056, 33.924015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477806, 29.410439, 33.470600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.814186, 29.509783, 33.278301>,  <36.016014, 29.569389, 33.162922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.814186, 29.509783, 33.278301>,  <35.477806, 29.410439, 33.470600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814186, 29.509783, 33.278301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438209, -0.208626, -0.874327,
		-0.317445, 0.945935, -0.066610,
		0.840953, 0.248361, -0.480744,
		36.066471, 29.584291, 33.134079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228146, 29.624912, 32.892925>,  <35.477806, 29.410439, 33.470600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228146, 29.624912, 32.892925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.606956, 29.576302, 32.774021>,  <35.834244, 29.547136, 32.702679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.606956, 29.576302, 32.774021>,  <35.228146, 29.624912, 32.892925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606956, 29.576302, 32.774021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319114, -0.252245, -0.913531,
		0.036035, 0.960002, -0.277664,
		0.947031, -0.121525, -0.297260,
		35.891068, 29.539845, 32.684845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249619, 29.936104, 32.281818>,  <35.228146, 29.624912, 32.892925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249619, 29.936104, 32.281818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.565784, 29.691170, 32.288715>,  <35.755482, 29.544210, 32.292854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.565784, 29.691170, 32.288715>,  <35.249619, 29.936104, 32.281818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565784, 29.691170, 32.288715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145250, -0.214685, -0.965822,
		0.595107, 0.760893, -0.258631,
		0.790411, -0.612334, 0.017240,
		35.802906, 29.507469, 32.293888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620689, 29.985777, 31.581625>,  <35.249619, 29.936104, 32.281818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620689, 29.985777, 31.581625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.726475, 29.640152, 31.752953>,  <35.789948, 29.432777, 31.855749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.726475, 29.640152, 31.752953>,  <35.620689, 29.985777, 31.581625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726475, 29.640152, 31.752953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313198, -0.497009, -0.809252,
		0.912122, 0.079869, -0.402063,
		0.264463, -0.864062, 0.428318,
		35.805813, 29.380934, 31.881449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992836, 29.619087, 31.052641>,  <35.620689, 29.985777, 31.581625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992836, 29.619087, 31.052641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.882637, 29.345066, 31.322397>,  <35.816517, 29.180653, 31.484251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.882637, 29.345066, 31.322397>,  <35.992836, 29.619087, 31.052641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882637, 29.345066, 31.322397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205444, -0.643373, -0.737471,
		0.939092, -0.341722, 0.036509,
		-0.275499, -0.685052, 0.674391,
		35.799988, 29.139551, 31.524715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300648, 29.045052, 30.693163>,  <35.992836, 29.619087, 31.052641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300648, 29.045052, 30.693163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.024887, 28.933559, 30.960606>,  <35.859428, 28.866665, 31.121071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.024887, 28.933559, 30.960606>,  <36.300648, 29.045052, 30.693163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024887, 28.933559, 30.960606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289573, -0.740005, -0.607075,
		0.663981, -0.612130, 0.429450,
		-0.689403, -0.278729, 0.668605,
		35.818066, 28.849941, 31.161188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330662, 28.317768, 30.670609>,  <36.300648, 29.045052, 30.693163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330662, 28.317768, 30.670609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.970039, 28.414801, 30.813913>,  <35.753666, 28.473021, 30.899897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.970039, 28.414801, 30.813913>,  <36.330662, 28.317768, 30.670609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970039, 28.414801, 30.813913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422737, -0.670233, -0.609985,
		0.092149, -0.701386, 0.706800,
		-0.901555, 0.242581, 0.358263,
		35.699574, 28.487576, 30.921392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035789, 27.703526, 30.624365>,  <36.330662, 28.317768, 30.670609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035789, 27.703526, 30.624365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.755959, 27.988281, 30.649036>,  <35.588058, 28.159134, 30.663839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.755959, 27.988281, 30.649036>,  <36.035789, 27.703526, 30.624365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755959, 27.988281, 30.649036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502051, -0.428271, -0.751351,
		-0.508462, -0.556596, 0.657014,
		-0.699579, 0.711888, 0.061680,
		35.546085, 28.201847, 30.667540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406540, 27.338726, 30.488619>,  <36.035789, 27.703526, 30.624365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406540, 27.338726, 30.488619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.351593, 27.726589, 30.407726>,  <35.318626, 27.959307, 30.359190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.351593, 27.726589, 30.407726>,  <35.406540, 27.338726, 30.488619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351593, 27.726589, 30.407726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562060, -0.244420, -0.790156,
		-0.815609, 0.005127, 0.578580,
		-0.137366, 0.969656, -0.202233,
		35.310383, 28.017487, 30.347057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.779392, 27.395805, 30.082876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.933292, 27.758453, 30.013586>,  <35.025635, 27.976042, 29.972012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.933292, 27.758453, 30.013586>,  <34.779392, 27.395805, 30.082876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933292, 27.758453, 30.013586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276521, -0.065833, -0.958750,
		-0.880625, 0.416783, 0.225369,
		0.384754, 0.906619, -0.173223,
		35.048717, 28.030439, 29.961618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369221, 27.681921, 29.577202>,  <34.779392, 27.395805, 30.082876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.369221, 27.681921, 29.577202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.702663, 27.897066, 29.526920>,  <34.902729, 28.026154, 29.496752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.702663, 27.897066, 29.526920>,  <34.369221, 27.681921, 29.577202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702663, 27.897066, 29.526920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202573, 0.085981, -0.975485,
		-0.513867, 0.838638, 0.180631,
		0.833610, 0.537860, -0.125703,
		34.952747, 28.058424, 29.489210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201199, 28.277351, 29.182726>,  <34.369221, 27.681921, 29.577202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201199, 28.277351, 29.182726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.598782, 28.263981, 29.140903>,  <34.837330, 28.255959, 29.115810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.598782, 28.263981, 29.140903>,  <34.201199, 28.277351, 29.182726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598782, 28.263981, 29.140903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100325, 0.109913, -0.988865,
		0.044545, 0.993379, 0.105896,
		0.993957, -0.033425, -0.104556,
		34.896969, 28.253954, 29.109537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263649, 28.736252, 28.639034>,  <34.201199, 28.277351, 29.182726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263649, 28.736252, 28.639034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.594910, 28.512056, 28.640717>,  <34.793667, 28.377539, 28.641726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.594910, 28.512056, 28.640717>,  <34.263649, 28.736252, 28.639034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594910, 28.512056, 28.640717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138057, 0.196702, -0.970695,
		0.543237, 0.804462, 0.240278,
		0.828151, -0.560490, 0.004206,
		34.843353, 28.343910, 28.641977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784203, 29.123777, 28.127848>,  <34.263649, 28.736252, 28.639034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784203, 29.123777, 28.127848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.885536, 28.738911, 28.167971>,  <34.946335, 28.507992, 28.192045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.885536, 28.738911, 28.167971>,  <34.784203, 29.123777, 28.127848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885536, 28.738911, 28.167971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077989, -0.123665, -0.989254,
		0.964231, 0.242787, -0.106367,
		0.253332, -0.962165, 0.100307,
		34.961536, 28.450262, 28.198063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430916, 29.015982, 27.678036>,  <34.784203, 29.123777, 28.127848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430916, 29.015982, 27.678036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.260979, 28.657892, 27.731821>,  <35.159016, 28.443039, 27.764093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.260979, 28.657892, 27.731821>,  <35.430916, 29.015982, 27.678036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260979, 28.657892, 27.731821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054504, -0.173562, -0.983314,
		0.903624, -0.410427, 0.122530,
		-0.424845, -0.895224, 0.134465,
		35.133526, 28.389324, 27.772161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923500, 28.527723, 27.478025>,  <35.430916, 29.015982, 27.678036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923500, 28.527723, 27.478025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.591427, 28.304766, 27.473833>,  <35.392181, 28.170992, 27.471317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.591427, 28.304766, 27.473833>,  <35.923500, 28.527723, 27.478025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591427, 28.304766, 27.473833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193209, -0.270033, -0.943267,
		0.522942, -0.785108, 0.331870,
		-0.830182, -0.557394, -0.010478,
		35.342373, 28.137548, 27.470690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065636, 27.993401, 27.194353>,  <35.923500, 28.527723, 27.478025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065636, 27.993401, 27.194353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.675556, 27.922518, 27.141315>,  <35.441509, 27.879988, 27.109493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.675556, 27.922518, 27.141315>,  <36.065636, 27.993401, 27.194353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675556, 27.922518, 27.141315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160534, -0.153937, -0.974952,
		0.152356, -0.972060, 0.178567,
		-0.975201, -0.177206, -0.132595,
		35.382996, 27.869356, 27.101538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044056, 27.461164, 26.755516>,  <36.065636, 27.993401, 27.194353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044056, 27.461164, 26.755516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.684181, 27.630915, 26.714586>,  <35.468258, 27.732765, 26.690027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.684181, 27.630915, 26.714586>,  <36.044056, 27.461164, 26.755516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684181, 27.630915, 26.714586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024496, -0.283112, -0.958774,
		-0.435852, -0.860088, 0.265107,
		-0.899685, 0.424378, -0.102326,
		35.414276, 27.758228, 26.683889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507183, 26.960438, 26.486071>,  <36.044056, 27.461164, 26.755516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507183, 26.960438, 26.486071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.361294, 27.323347, 26.402323>,  <35.273762, 27.541092, 26.352074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.361294, 27.323347, 26.402323>,  <35.507183, 26.960438, 26.486071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361294, 27.323347, 26.402323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222285, -0.303199, -0.926639,
		-0.904194, -0.291427, 0.312257,
		-0.364724, 0.907271, -0.209370,
		35.251877, 27.595528, 26.339512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947407, 26.773438, 26.020494>,  <35.507183, 26.960438, 26.486071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947407, 26.773438, 26.020494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.025990, 27.163174, 25.976562>,  <35.073139, 27.397015, 25.950203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.025990, 27.163174, 25.976562>,  <34.947407, 26.773438, 26.020494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025990, 27.163174, 25.976562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130485, -0.085036, -0.987797,
		-0.971790, 0.208395, 0.110431,
		0.196462, 0.974341, -0.109830,
		35.084927, 27.455477, 25.943613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386871, 27.171679, 25.733065>,  <34.947407, 26.773438, 26.020494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386871, 27.171679, 25.733065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.731586, 27.351788, 25.639620>,  <34.938416, 27.459852, 25.583553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.731586, 27.351788, 25.639620>,  <34.386871, 27.171679, 25.733065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731586, 27.351788, 25.639620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100837, -0.299273, -0.948824,
		-0.497142, 0.841244, -0.212506,
		0.861790, 0.450272, -0.233610,
		34.990124, 27.486870, 25.569536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232368, 27.435204, 25.089863>,  <34.386871, 27.171679, 25.733065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232368, 27.435204, 25.089863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.628593, 27.487068, 25.107626>,  <34.866329, 27.518187, 25.118284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.628593, 27.487068, 25.107626>,  <34.232368, 27.435204, 25.089863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628593, 27.487068, 25.107626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069576, -0.196562, -0.978020,
		-0.118083, 0.971880, -0.203728,
		0.990563, 0.129663, 0.044409,
		34.925762, 27.525967, 25.120949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362858, 27.931488, 24.621740>,  <34.232368, 27.435204, 25.089863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362858, 27.931488, 24.621740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.690945, 27.706224, 24.661922>,  <34.887798, 27.571066, 24.686031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.690945, 27.706224, 24.661922>,  <34.362858, 27.931488, 24.621740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690945, 27.706224, 24.661922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088339, -0.048804, -0.994894,
		0.565187, 0.824906, 0.009719,
		0.820220, -0.563160, 0.100454,
		34.937012, 27.537277, 24.692059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645733, 28.087231, 24.069096>,  <34.362858, 27.931488, 24.621740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645733, 28.087231, 24.069096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.855267, 27.760794, 24.166739>,  <34.980988, 27.564932, 24.225325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.855267, 27.760794, 24.166739>,  <34.645733, 28.087231, 24.069096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855267, 27.760794, 24.166739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082670, -0.236514, -0.968105,
		0.847799, 0.527308, -0.056427,
		0.523835, -0.816093, 0.244109,
		35.012417, 27.515966, 24.239971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214916, 28.147228, 23.710672>,  <34.645733, 28.087231, 24.069096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214916, 28.147228, 23.710672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.225643, 27.756044, 23.793501>,  <35.232079, 27.521334, 23.843197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.225643, 27.756044, 23.793501>,  <35.214916, 28.147228, 23.710672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225643, 27.756044, 23.793501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211330, -0.196915, -0.957374,
		0.977047, 0.069436, 0.201391,
		0.026819, -0.977959, 0.207069,
		35.233688, 27.462656, 23.855621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826954, 27.907404, 23.328735>,  <35.214916, 28.147228, 23.710672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826954, 27.907404, 23.328735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.612083, 27.575457, 23.389082>,  <35.483162, 27.376289, 23.425289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.612083, 27.575457, 23.389082>,  <35.826954, 27.907404, 23.328735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612083, 27.575457, 23.389082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109969, -0.246244, -0.962949,
		0.836269, -0.500684, 0.223537,
		-0.537178, -0.829867, 0.150866,
		35.450932, 27.326496, 23.434341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166470, 27.345352, 23.051382>,  <35.826954, 27.907404, 23.328735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166470, 27.345352, 23.051382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.786366, 27.222387, 23.071407>,  <35.558304, 27.148609, 23.083422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.786366, 27.222387, 23.071407>,  <36.166470, 27.345352, 23.051382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786366, 27.222387, 23.071407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058964, -0.335386, -0.940234,
		0.305829, -0.890514, 0.336829,
		-0.950259, -0.307412, 0.050062,
		35.501289, 27.130163, 23.086426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191216, 26.903028, 22.573193>,  <36.166470, 27.345352, 23.051382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191216, 26.903028, 22.573193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.802998, 26.958954, 22.651680>,  <35.570068, 26.992508, 22.698772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.802998, 26.958954, 22.651680>,  <36.191216, 26.903028, 22.573193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802998, 26.958954, 22.651680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236329, -0.393931, -0.888238,
		-0.046888, -0.908444, 0.415368,
		-0.970541, 0.139811, 0.196221,
		35.511837, 27.000898, 22.710546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895672, 26.274853, 22.473021>,  <36.191216, 26.903028, 22.573193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895672, 26.274853, 22.473021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.585793, 26.521635, 22.417570>,  <35.399864, 26.669704, 22.384300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.585793, 26.521635, 22.417570>,  <35.895672, 26.274853, 22.473021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585793, 26.521635, 22.417570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224453, -0.473246, -0.851857,
		-0.591162, -0.628812, 0.505097,
		-0.774693, 0.616955, -0.138626,
		35.353386, 26.706722, 22.375982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358650, 25.837538, 22.256124>,  <35.895672, 26.274853, 22.473021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358650, 25.837538, 22.256124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.261597, 26.204170, 22.128996>,  <35.203365, 26.424149, 22.052719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.261597, 26.204170, 22.128996>,  <35.358650, 25.837538, 22.256124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261597, 26.204170, 22.128996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296090, -0.381946, -0.875470,
		-0.923828, -0.118318, 0.364064,
		-0.242636, 0.916580, -0.317819,
		35.188805, 26.479145, 22.033649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691643, 25.722942, 21.942572>,  <35.358650, 25.837538, 22.256124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691643, 25.722942, 21.942572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.804176, 26.072653, 21.784334>,  <34.871696, 26.282478, 21.689392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.804176, 26.072653, 21.784334>,  <34.691643, 25.722942, 21.942572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804176, 26.072653, 21.784334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298729, -0.311971, -0.901906,
		-0.911929, 0.371910, 0.173404,
		0.281331, 0.874275, -0.395596,
		34.888577, 26.334936, 21.665655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226646, 25.970301, 21.446922>,  <34.691643, 25.722942, 21.942572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226646, 25.970301, 21.446922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.556538, 26.131184, 21.287901>,  <34.754475, 26.227713, 21.192488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.556538, 26.131184, 21.287901>,  <34.226646, 25.970301, 21.446922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556538, 26.131184, 21.287901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348942, -0.191288, -0.917414,
		-0.445037, 0.895343, -0.017414,
		0.824731, 0.402206, -0.397553,
		34.803959, 26.251846, 21.168634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022289, 26.333109, 20.923271>,  <34.226646, 25.970301, 21.446922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022289, 26.333109, 20.923271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.400921, 26.229422, 20.846544>,  <34.628101, 26.167210, 20.800508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.400921, 26.229422, 20.846544>,  <34.022289, 26.333109, 20.923271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400921, 26.229422, 20.846544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262885, -0.275793, -0.924570,
		0.186762, 0.925605, -0.329204,
		0.946579, -0.259217, -0.191820,
		34.684895, 26.151657, 20.788998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326214, 27.096502, 20.885372>,  <34.022289, 26.333109, 20.923271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326214, 27.096502, 20.885372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.971470, 26.975920, 20.745314>,  <33.758625, 26.903570, 20.661278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.971470, 26.975920, 20.745314>,  <34.326214, 27.096502, 20.885372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971470, 26.975920, 20.745314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452829, 0.416551, 0.788309,
		-0.091785, 0.857677, -0.505930,
		-0.886860, -0.301455, -0.350148,
		33.705410, 26.885483, 20.640268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910488, 27.644459, 20.962725>,  <34.326214, 27.096502, 20.885372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910488, 27.644459, 20.962725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.604309, 27.405912, 20.866024>,  <33.420601, 27.262785, 20.808002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.604309, 27.405912, 20.866024>,  <33.910488, 27.644459, 20.962725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604309, 27.405912, 20.866024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499857, 0.314426, 0.807019,
		-0.405265, 0.738569, -0.538773,
		-0.765443, -0.596366, -0.241753,
		33.374676, 27.227003, 20.793499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386566, 28.119316, 21.158546>,  <33.910488, 27.644459, 20.962725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386566, 28.119316, 21.158546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.245548, 27.745510, 21.138960>,  <33.160938, 27.521227, 21.127209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.245548, 27.745510, 21.138960>,  <33.386566, 28.119316, 21.158546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245548, 27.745510, 21.138960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654158, 0.208686, 0.726999,
		-0.669173, 0.288327, -0.684891,
		-0.352541, -0.934515, -0.048964,
		33.139786, 27.465157, 21.124271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620033, 28.134878, 21.116953>,  <33.386566, 28.119316, 21.158546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620033, 28.134878, 21.116953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.735165, 27.799564, 21.302181>,  <32.804241, 27.598375, 21.413319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.735165, 27.799564, 21.302181>,  <32.620033, 28.134878, 21.116953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735165, 27.799564, 21.302181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489210, 0.286987, 0.823597,
		-0.823304, -0.463592, -0.327495,
		0.287826, -0.838284, 0.463071,
		32.821514, 27.548079, 21.441103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.066540, 27.857409, 21.445589>,  <32.620033, 28.134878, 21.116953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.066540, 27.857409, 21.445589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.373005, 27.700506, 21.649208>,  <32.556885, 27.606365, 21.771379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.373005, 27.700506, 21.649208>,  <32.066540, 27.857409, 21.445589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.373005, 27.700506, 21.649208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414108, 0.304388, 0.857824,
		-0.491433, -0.868035, 0.070776,
		0.766165, -0.392255, 0.509046,
		32.602856, 27.582830, 21.801922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.709076, 27.616964, 21.981220>,  <32.066540, 27.857409, 21.445589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.709076, 27.616964, 21.981220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.100418, 27.611736, 22.063826>,  <32.335224, 27.608599, 22.113390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.100418, 27.611736, 22.063826>,  <31.709076, 27.616964, 21.981220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100418, 27.611736, 22.063826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187106, 0.370365, 0.909847,
		-0.088378, -0.928794, 0.359903,
		0.978356, -0.013071, 0.206515,
		32.393925, 27.607815, 22.125780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750088, 27.366817, 22.728151>,  <31.709076, 27.616964, 21.981220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.750088, 27.366817, 22.728151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.106434, 27.543411, 22.685343>,  <32.320240, 27.649368, 22.659658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.106434, 27.543411, 22.685343>,  <31.750088, 27.366817, 22.728151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106434, 27.543411, 22.685343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045278, 0.320709, 0.946095,
		0.452011, -0.837995, 0.305697,
		0.890862, 0.441487, -0.107021,
		32.373692, 27.675858, 22.653236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038479, 27.206753, 23.343523>,  <31.750088, 27.366817, 22.728151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038479, 27.206753, 23.343523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.230621, 27.524405, 23.194601>,  <32.345909, 27.714996, 23.105247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.230621, 27.524405, 23.194601>,  <32.038479, 27.206753, 23.343523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.230621, 27.524405, 23.194601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088662, 0.378347, 0.921408,
		0.872579, -0.475616, 0.111333,
		0.480359, 0.794130, -0.372307,
		32.374729, 27.762644, 23.082909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697914, 27.166006, 23.572613>,  <32.038479, 27.206753, 23.343523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697914, 27.166006, 23.572613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.607746, 27.545734, 23.484999>,  <32.553646, 27.773571, 23.432430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.607746, 27.545734, 23.484999>,  <32.697914, 27.166006, 23.572613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607746, 27.545734, 23.484999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120474, 0.250255, 0.960655,
		0.966785, 0.190159, -0.170780,
		-0.225416, 0.949322, -0.219034,
		32.540123, 27.830530, 23.419289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213734, 27.342939, 23.954790>,  <32.697914, 27.166006, 23.572613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213734, 27.342939, 23.954790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.003700, 27.678425, 23.897036>,  <32.877682, 27.879717, 23.862383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.003700, 27.678425, 23.897036>,  <33.213734, 27.342939, 23.954790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003700, 27.678425, 23.897036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071432, 0.212489, 0.974549,
		0.848047, 0.501406, -0.171485,
		-0.525084, 0.838713, -0.144385,
		32.846176, 27.930038, 23.853720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646275, 27.866812, 24.213804>,  <33.213734, 27.342939, 23.954790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646275, 27.866812, 24.213804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.273514, 28.011618, 24.222839>,  <33.049858, 28.098501, 24.228260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.273514, 28.011618, 24.222839>,  <33.646275, 27.866812, 24.213804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273514, 28.011618, 24.222839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129756, 0.274564, 0.952774,
		0.338717, 0.890819, -0.302840,
		-0.931898, 0.362016, 0.022590,
		32.993946, 28.120222, 24.229616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692200, 28.632229, 24.541948>,  <33.646275, 27.866812, 24.213804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692200, 28.632229, 24.541948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.309258, 28.533421, 24.601883>,  <33.079491, 28.474134, 24.637844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.309258, 28.533421, 24.601883>,  <33.692200, 28.632229, 24.541948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309258, 28.533421, 24.601883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128506, 0.100412, 0.986612,
		-0.258761, 0.963793, -0.064386,
		-0.957355, -0.247023, 0.149836,
		33.022053, 28.459314, 24.646833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315266, 29.135300, 24.996746>,  <33.692200, 28.632229, 24.541948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315266, 29.135300, 24.996746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.104527, 28.796629, 25.026594>,  <32.978085, 28.593426, 25.044502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.104527, 28.796629, 25.026594>,  <33.315266, 29.135300, 24.996746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104527, 28.796629, 25.026594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074748, 0.041298, 0.996347,
		-0.846666, 0.530502, 0.041529,
		-0.526849, -0.846677, 0.074620,
		32.946472, 28.542625, 25.048981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967125, 29.250683, 25.532450>,  <33.315266, 29.135300, 24.996746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967125, 29.250683, 25.532450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.911518, 28.856295, 25.495495>,  <32.878155, 28.619661, 25.473322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.911518, 28.856295, 25.495495>,  <32.967125, 29.250683, 25.532450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911518, 28.856295, 25.495495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004757, -0.093958, 0.995565,
		-0.990278, 0.137962, 0.017752,
		-0.139018, -0.985971, -0.092389,
		32.869812, 28.560503, 25.467779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.507961, 29.188742, 26.055546>,  <32.967125, 29.250683, 25.532450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.507961, 29.188742, 26.055546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.632812, 28.817963, 25.972267>,  <32.707722, 28.595495, 25.922300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.632812, 28.817963, 25.972267>,  <32.507961, 29.188742, 26.055546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632812, 28.817963, 25.972267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142490, -0.262341, 0.954397,
		-0.939295, -0.268225, -0.213964,
		0.312124, -0.926948, -0.208197,
		32.726448, 28.539879, 25.909809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048904, 28.688478, 26.349691>,  <32.507961, 29.188742, 26.055546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048904, 28.688478, 26.349691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.401340, 28.500366, 26.329613>,  <32.612801, 28.387499, 26.317566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.401340, 28.500366, 26.329613>,  <32.048904, 28.688478, 26.349691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.401340, 28.500366, 26.329613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069762, -0.234205, 0.969681,
		-0.467780, -0.850872, -0.239162,
		0.881087, -0.470282, -0.050198,
		32.665668, 28.359282, 26.314554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969942, 28.034388, 26.640667>,  <32.048904, 28.688478, 26.349691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969942, 28.034388, 26.640667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.362316, 28.106188, 26.670446>,  <32.597740, 28.149267, 26.688314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.362316, 28.106188, 26.670446>,  <31.969942, 28.034388, 26.640667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362316, 28.106188, 26.670446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038114, -0.197950, 0.979471,
		0.190551, -0.963637, -0.187335,
		0.980937, 0.179499, 0.074448,
		32.656597, 28.160038, 26.692781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267715, 27.516510, 27.122110>,  <31.969942, 28.034388, 26.640667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267715, 27.516510, 27.122110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.482422, 27.853968, 27.126986>,  <32.611244, 28.056442, 27.129910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.482422, 27.853968, 27.126986>,  <32.267715, 27.516510, 27.122110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482422, 27.853968, 27.126986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191533, 0.107770, 0.975551,
		0.821707, -0.525972, 0.219433,
		0.536762, 0.843646, 0.012186,
		32.643452, 28.107061, 27.130642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771984, 27.502932, 27.760143>,  <32.267715, 27.516510, 27.122110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771984, 27.502932, 27.760143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.744198, 27.886179, 27.649012>,  <32.727528, 28.116127, 27.582333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.744198, 27.886179, 27.649012>,  <32.771984, 27.502932, 27.760143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744198, 27.886179, 27.649012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019303, 0.277157, 0.960631,
		0.997398, 0.072095, -0.000759,
		-0.069467, 0.958116, -0.277827,
		32.723358, 28.173615, 27.565664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264816, 27.886417, 28.148024>,  <32.771984, 27.502932, 27.760143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264816, 27.886417, 28.148024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.999760, 28.166800, 28.042517>,  <32.840725, 28.335030, 27.979212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.999760, 28.166800, 28.042517>,  <33.264816, 27.886417, 28.148024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999760, 28.166800, 28.042517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005327, 0.347767, 0.937566,
		0.748922, 0.622671, -0.226710,
		-0.662637, 0.700956, -0.263767,
		32.800968, 28.377087, 27.963387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<36.766785, 28.609798, 32.486961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.471111, 28.872816, 32.428665>,  <36.293705, 29.030626, 32.393688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.471111, 28.872816, 32.428665>,  <36.766785, 28.609798, 32.486961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471111, 28.872816, 32.428665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379274, 0.585219, 0.716707,
		0.556554, 0.474506, -0.681976,
		-0.739188, 0.657542, -0.145738,
		36.249355, 29.070078, 32.384945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051319, 29.300282, 32.269833>,  <36.766785, 28.609798, 32.486961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051319, 29.300282, 32.269833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.694809, 29.343811, 32.445919>,  <36.480904, 29.369928, 32.551571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.694809, 29.343811, 32.445919>,  <37.051319, 29.300282, 32.269833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694809, 29.343811, 32.445919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400474, 0.644292, 0.651543,
		-0.212724, 0.756998, -0.617821,
		-0.891274, 0.108823, 0.440214,
		36.427425, 29.376457, 32.577984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185337, 29.929892, 32.541306>,  <37.051319, 29.300282, 32.269833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185337, 29.929892, 32.541306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.850304, 29.803543, 32.719601>,  <36.649284, 29.727734, 32.826576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.850304, 29.803543, 32.719601>,  <37.185337, 29.929892, 32.541306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850304, 29.803543, 32.719601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268543, 0.472470, 0.839438,
		-0.475751, 0.822798, -0.310908,
		-0.837583, -0.315872, 0.445735,
		36.599030, 29.708782, 32.853321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929596, 30.554775, 32.920368>,  <37.185337, 29.929892, 32.541306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929596, 30.554775, 32.920368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.752884, 30.244165, 33.100071>,  <36.646854, 30.057798, 33.207893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.752884, 30.244165, 33.100071>,  <36.929596, 30.554775, 32.920368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752884, 30.244165, 33.100071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132245, 0.551677, 0.823507,
		-0.887321, 0.304400, -0.346414,
		-0.441784, -0.776526, 0.449259,
		36.620350, 30.011208, 33.234848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151367, 30.807365, 33.102409>,  <36.929596, 30.554775, 32.920368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151367, 30.807365, 33.102409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.305958, 30.514454, 33.326694>,  <36.398712, 30.338707, 33.461266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.305958, 30.514454, 33.326694>,  <36.151367, 30.807365, 33.102409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305958, 30.514454, 33.326694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025703, 0.599169, 0.800210,
		-0.921941, -0.323674, 0.212743,
		0.386477, -0.732279, 0.560717,
		36.421902, 30.294771, 33.494911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880047, 30.969469, 33.672188>,  <36.151367, 30.807365, 33.102409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880047, 30.969469, 33.672188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.153881, 30.698948, 33.780972>,  <36.318180, 30.536636, 33.846241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.153881, 30.698948, 33.780972>,  <35.880047, 30.969469, 33.672188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153881, 30.698948, 33.780972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185314, 0.522303, 0.832381,
		-0.704985, -0.519437, 0.482889,
		0.684584, -0.676302, 0.271957,
		36.359257, 30.496058, 33.862560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691864, 30.859207, 34.340073>,  <35.880047, 30.969469, 33.672188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691864, 30.859207, 34.340073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.077209, 30.752834, 34.326134>,  <36.308414, 30.689011, 34.317772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.077209, 30.752834, 34.326134>,  <35.691864, 30.859207, 34.340073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077209, 30.752834, 34.326134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205661, 0.649040, 0.732428,
		-0.172160, -0.712759, 0.679952,
		0.963361, -0.265934, -0.034848,
		36.366219, 30.673054, 34.315678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913879, 30.812346, 35.003304>,  <35.691864, 30.859207, 34.340073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913879, 30.812346, 35.003304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.262001, 30.837036, 34.807850>,  <36.470875, 30.851851, 34.690578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.262001, 30.837036, 34.807850>,  <35.913879, 30.812346, 35.003304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262001, 30.837036, 34.807850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289632, 0.738295, 0.609125,
		0.398358, -0.671647, 0.624660,
		0.870301, 0.061728, -0.488636,
		36.523090, 30.855555, 34.661259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368111, 30.892012, 35.467915>,  <35.913879, 30.812346, 35.003304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368111, 30.892012, 35.467915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.578426, 31.031076, 35.157383>,  <36.704617, 31.114515, 34.971066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.578426, 31.031076, 35.157383>,  <36.368111, 30.892012, 35.467915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578426, 31.031076, 35.157383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369016, 0.729079, 0.576429,
		0.766407, -0.589554, 0.255044,
		0.525783, 0.347664, -0.776326,
		36.736160, 31.135376, 34.924484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996105, 31.054932, 35.745300>,  <36.368111, 30.892012, 35.467915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996105, 31.054932, 35.745300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.979359, 31.258835, 35.401581>,  <36.969311, 31.381176, 35.195351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.979359, 31.258835, 35.401581>,  <36.996105, 31.054932, 35.745300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979359, 31.258835, 35.401581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360236, 0.809906, 0.462906,
		0.931921, -0.290170, -0.217541,
		-0.041866, 0.509758, -0.859298,
		36.966801, 31.411762, 35.143791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535061, 31.459497, 35.755859>,  <36.996105, 31.054932, 35.745300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535061, 31.459497, 35.755859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.329399, 31.636805, 35.462151>,  <37.206001, 31.743189, 35.285927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.329399, 31.636805, 35.462151>,  <37.535061, 31.459497, 35.755859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329399, 31.636805, 35.462151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443291, 0.870227, 0.214937,
		0.734257, -0.214984, -0.643932,
		-0.514159, 0.443268, -0.734271,
		37.175152, 31.769785, 35.241871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979042, 31.838774, 35.353546>,  <37.535061, 31.459497, 35.755859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979042, 31.838774, 35.353546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.618950, 32.003586, 35.297237>,  <37.402893, 32.102474, 35.263454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.618950, 32.003586, 35.297237>,  <37.979042, 31.838774, 35.353546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618950, 32.003586, 35.297237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378736, 0.900497, 0.213690,
		0.214808, 0.139056, -0.966706,
		-0.900231, 0.412029, -0.140769,
		37.348881, 32.127193, 35.255005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094566, 32.492294, 35.240910>,  <37.979042, 31.838774, 35.353546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094566, 32.492294, 35.240910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.701107, 32.527256, 35.303902>,  <37.465031, 32.548233, 35.341698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.701107, 32.527256, 35.303902>,  <38.094566, 32.492294, 35.240910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701107, 32.527256, 35.303902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134884, 0.936918, 0.322477,
		-0.119360, 0.338445, -0.933385,
		-0.983646, 0.087408, 0.157481,
		37.406013, 32.553478, 35.351147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569096, 32.847214, 34.726650>,  <38.094566, 32.492294, 35.240910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569096, 32.847214, 34.726650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.446724, 33.226601, 34.693630>,  <38.373302, 33.454235, 34.673820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.446724, 33.226601, 34.693630>,  <38.569096, 32.847214, 34.726650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446724, 33.226601, 34.693630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244069, -0.005673, -0.969741,
		-0.920238, -0.316819, -0.229756,
		-0.305929, 0.948469, -0.082546,
		38.354946, 33.511143, 34.668865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017181, 32.900169, 34.176720>,  <38.569096, 32.847214, 34.726650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017181, 32.900169, 34.176720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.189491, 33.259972, 34.205891>,  <38.292877, 33.475853, 34.223392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.189491, 33.259972, 34.205891>,  <38.017181, 32.900169, 34.176720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189491, 33.259972, 34.205891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067348, 0.048542, -0.996548,
		-0.899943, 0.434198, -0.039669,
		0.430774, 0.899508, 0.072927,
		38.318722, 33.529823, 34.227768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575474, 33.391117, 33.918285>,  <38.017181, 32.900169, 34.176720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575474, 33.391117, 33.918285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.967171, 33.459858, 33.875298>,  <38.202190, 33.501102, 33.849506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.967171, 33.459858, 33.875298>,  <37.575474, 33.391117, 33.918285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967171, 33.459858, 33.875298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129289, 0.121267, -0.984164,
		-0.156098, 0.977630, 0.140968,
		0.979244, 0.171851, -0.107467,
		38.260944, 33.511414, 33.843056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615784, 33.849487, 33.395283>,  <37.575474, 33.391117, 33.918285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615784, 33.849487, 33.395283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.993736, 33.720268, 33.416615>,  <38.220509, 33.642738, 33.429413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.993736, 33.720268, 33.416615>,  <37.615784, 33.849487, 33.395283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993736, 33.720268, 33.416615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084302, 0.082650, -0.993007,
		0.316379, 0.942768, 0.105327,
		0.944880, -0.323045, 0.053328,
		38.277199, 33.623356, 33.432613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115223, 34.371441, 33.226902>,  <37.615784, 33.849487, 33.395283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115223, 34.371441, 33.226902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.261177, 34.012375, 33.128059>,  <38.348751, 33.796936, 33.068752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.261177, 34.012375, 33.128059>,  <38.115223, 34.371441, 33.226902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261177, 34.012375, 33.128059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049370, 0.246379, -0.967915,
		0.929743, 0.365377, 0.045582,
		0.364884, -0.897662, -0.247108,
		38.370644, 33.743076, 33.053928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521595, 34.453056, 32.598125>,  <38.115223, 34.371441, 33.226902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521595, 34.453056, 32.598125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.481895, 34.055122, 32.606621>,  <38.458076, 33.816360, 32.611717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.481895, 34.055122, 32.606621>,  <38.521595, 34.453056, 32.598125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481895, 34.055122, 32.606621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034921, -0.024813, -0.999082,
		0.994449, -0.098421, 0.037203,
		-0.099254, -0.994835, 0.021238,
		38.452118, 33.756672, 32.612991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925014, 34.244335, 32.065239>,  <38.521595, 34.453056, 32.598125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925014, 34.244335, 32.065239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.723545, 33.900330, 32.097927>,  <38.602661, 33.693924, 32.117538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.723545, 33.900330, 32.097927>,  <38.925014, 34.244335, 32.065239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723545, 33.900330, 32.097927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077056, -0.138940, -0.987298,
		0.860448, -0.490983, 0.136250,
		-0.503678, -0.860018, 0.081717,
		38.572441, 33.642323, 32.122444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283512, 33.805748, 31.507421>,  <38.925014, 34.244335, 32.065239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.283512, 33.805748, 31.507421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.928688, 33.664581, 31.626465>,  <38.715794, 33.579880, 31.697891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.928688, 33.664581, 31.626465>,  <39.283512, 33.805748, 31.507421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928688, 33.664581, 31.626465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136984, -0.414407, -0.899723,
		0.440857, -0.838879, 0.319261,
		-0.887063, -0.352915, 0.297607,
		38.662571, 33.558708, 31.715748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247040, 33.124924, 31.286961>,  <39.283512, 33.805748, 31.507421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247040, 33.124924, 31.286961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.876362, 33.267330, 31.335117>,  <38.653957, 33.352776, 31.364012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.876362, 33.267330, 31.335117>,  <39.247040, 33.124924, 31.286961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876362, 33.267330, 31.335117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246216, -0.333092, -0.910180,
		-0.283933, -0.873101, 0.396329,
		-0.926693, 0.356012, 0.120395,
		38.598354, 33.374134, 31.371235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786896, 32.678917, 30.954506>,  <39.247040, 33.124924, 31.286961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786896, 32.678917, 30.954506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.560562, 33.006950, 30.988668>,  <38.424763, 33.203770, 31.009167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.560562, 33.006950, 30.988668>,  <38.786896, 32.678917, 30.954506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560562, 33.006950, 30.988668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429858, -0.205010, -0.879314,
		-0.703605, -0.534255, 0.468521,
		-0.565829, 0.820087, 0.085408,
		38.390812, 33.252975, 31.014292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100990, 32.455036, 30.864445>,  <38.786896, 32.678917, 30.954506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100990, 32.455036, 30.864445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.088123, 32.848557, 30.793913>,  <38.080402, 33.084671, 30.751595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.088123, 32.848557, 30.793913>,  <38.100990, 32.455036, 30.864445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088123, 32.848557, 30.793913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544376, -0.165203, -0.822413,
		-0.838224, 0.069533, 0.540875,
		-0.032170, 0.983806, -0.176329,
		38.078472, 33.143700, 30.741014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452843, 32.607227, 30.476765>,  <38.100990, 32.455036, 30.864445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452843, 32.607227, 30.476765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.672096, 32.934986, 30.409679>,  <37.803650, 33.131641, 30.369429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.672096, 32.934986, 30.409679>,  <37.452843, 32.607227, 30.476765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672096, 32.934986, 30.409679> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464050, 0.131115, -0.876051,
		-0.695847, 0.558025, 0.452112,
		0.548137, 0.819401, -0.167715,
		37.836536, 33.180805, 30.359365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975540, 33.046635, 30.149557>,  <37.452843, 32.607227, 30.476765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975540, 33.046635, 30.149557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.347916, 33.158123, 30.055185>,  <37.571342, 33.225018, 29.998562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.347916, 33.158123, 30.055185>,  <36.975540, 33.046635, 30.149557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347916, 33.158123, 30.055185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274472, 0.107920, -0.955520,
		-0.240864, 0.954289, 0.176968,
		0.930941, 0.278723, -0.235931,
		37.627197, 33.241741, 29.984406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999626, 33.719528, 29.786758>,  <36.975540, 33.046635, 30.149557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.999626, 33.719528, 29.786758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.331257, 33.530357, 29.667448>,  <37.530235, 33.416855, 29.595861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.331257, 33.530357, 29.667448>,  <36.999626, 33.719528, 29.786758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331257, 33.530357, 29.667448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298466, 0.076771, -0.951328,
		0.472809, 0.877750, -0.077504,
		0.829077, -0.472929, -0.298277,
		37.579979, 33.388477, 29.577965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149590, 34.086315, 29.108215>,  <36.999626, 33.719528, 29.786758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149590, 34.086315, 29.108215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.353287, 33.742092, 29.112394>,  <37.475506, 33.535557, 29.114901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.353287, 33.742092, 29.112394>,  <37.149590, 34.086315, 29.108215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353287, 33.742092, 29.112394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248544, -0.158675, -0.955536,
		0.823954, 0.484001, -0.294691,
		0.509240, -0.860561, 0.010445,
		37.506058, 33.483925, 29.115528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372135, 34.702465, 28.512255>,  <37.149590, 34.086315, 29.108215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372135, 34.702465, 28.512255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.147713, 35.003487, 28.374346>,  <37.013058, 35.184101, 28.291599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.147713, 35.003487, 28.374346>,  <37.372135, 34.702465, 28.512255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147713, 35.003487, 28.374346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281316, 0.218369, 0.934439,
		0.778508, 0.621266, 0.089188,
		-0.561059, 0.752558, -0.344774,
		36.979397, 35.229256, 28.270914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560349, 35.355637, 28.926832>,  <37.372135, 34.702465, 28.512255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560349, 35.355637, 28.926832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.225021, 35.494514, 28.758696>,  <37.023827, 35.577839, 28.657814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.225021, 35.494514, 28.758696>,  <37.560349, 35.355637, 28.926832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225021, 35.494514, 28.758696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293023, 0.363233, 0.884420,
		0.459743, 0.864593, -0.202769,
		-0.838316, 0.347190, -0.420340,
		36.973526, 35.598671, 28.632593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462727, 36.162323, 29.149088>,  <37.560349, 35.355637, 28.926832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462727, 36.162323, 29.149088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.108047, 35.992271, 29.076384>,  <36.895241, 35.890240, 29.032761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.108047, 35.992271, 29.076384>,  <37.462727, 36.162323, 29.149088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108047, 35.992271, 29.076384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299729, 0.229216, 0.926079,
		-0.352039, 0.875630, -0.330668,
		-0.886697, -0.425127, -0.181759,
		36.842037, 35.864735, 29.021856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005001, 36.659573, 29.503830>,  <37.462727, 36.162323, 29.149088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005001, 36.659573, 29.503830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.795559, 36.321789, 29.458694>,  <36.669895, 36.119118, 29.431614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.795559, 36.321789, 29.458694>,  <37.005001, 36.659573, 29.503830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795559, 36.321789, 29.458694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543150, 0.228835, 0.807851,
		-0.656373, 0.484283, -0.578485,
		-0.523606, -0.844455, -0.112837,
		36.638477, 36.068451, 29.424843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342636, 36.908249, 29.561588>,  <37.005001, 36.659573, 29.503830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342636, 36.908249, 29.561588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.357632, 36.519238, 29.653481>,  <36.366631, 36.285831, 29.708616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.357632, 36.519238, 29.653481>,  <36.342636, 36.908249, 29.561588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357632, 36.519238, 29.653481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442501, 0.189966, 0.876416,
		-0.895984, -0.134514, -0.423224,
		0.037492, -0.972532, 0.229729,
		36.368877, 36.227478, 29.722399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838451, 36.878277, 30.099417>,  <36.342636, 36.908249, 29.561588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838451, 36.878277, 30.099417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.998508, 36.512455, 30.123003>,  <36.094543, 36.292961, 30.137154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.998508, 36.512455, 30.123003>,  <35.838451, 36.878277, 30.099417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998508, 36.512455, 30.123003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223094, -0.034801, 0.974176,
		-0.888884, -0.402963, -0.217957,
		0.400142, -0.914554, 0.058965,
		36.118549, 36.238091, 30.140692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298355, 36.455837, 30.540663>,  <35.838451, 36.878277, 30.099417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298355, 36.455837, 30.540663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.666714, 36.304054, 30.576344>,  <35.887730, 36.212986, 30.597752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.666714, 36.304054, 30.576344>,  <35.298355, 36.455837, 30.540663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666714, 36.304054, 30.576344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092166, 0.010393, 0.995689,
		-0.378745, -0.925153, -0.025402,
		0.920901, -0.379453, 0.089204,
		35.942986, 36.190220, 30.603106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255726, 35.879742, 31.017515>,  <35.298355, 36.455837, 30.540663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255726, 35.879742, 31.017515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.645054, 35.971523, 31.016655>,  <35.878651, 36.026592, 31.016140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.645054, 35.971523, 31.016655>,  <35.255726, 35.879742, 31.017515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645054, 35.971523, 31.016655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029667, -0.116546, 0.992742,
		0.227539, -0.966317, -0.120244,
		0.973317, 0.229454, -0.002149,
		35.937050, 36.040359, 31.016010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721333, 35.455956, 31.309896>,  <35.255726, 35.879742, 31.017515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721333, 35.455956, 31.309896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.928230, 35.796413, 31.345718>,  <36.052368, 36.000687, 31.367212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.928230, 35.796413, 31.345718>,  <35.721333, 35.455956, 31.309896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928230, 35.796413, 31.345718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114228, -0.172359, 0.978389,
		0.848184, -0.495832, -0.186375,
		0.517240, 0.851143, 0.089555,
		36.083401, 36.051758, 31.372585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270702, 35.346363, 31.666801>,  <35.721333, 35.455956, 31.309896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270702, 35.346363, 31.666801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.216354, 35.741230, 31.700367>,  <36.183746, 35.978149, 31.720507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.216354, 35.741230, 31.700367>,  <36.270702, 35.346363, 31.666801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216354, 35.741230, 31.700367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288088, -0.041672, 0.956697,
		0.947916, 0.154161, -0.278729,
		-0.135870, 0.987167, 0.083913,
		36.175594, 36.037380, 31.725540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915218, 35.610687, 32.022854>,  <36.270702, 35.346363, 31.666801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915218, 35.610687, 32.022854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.651615, 35.909557, 32.057354>,  <36.493454, 36.088879, 32.078056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.651615, 35.909557, 32.057354>,  <36.915218, 35.610687, 32.022854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651615, 35.909557, 32.057354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277749, 0.135180, 0.951095,
		0.698971, 0.650739, -0.296611,
		-0.659011, 0.747171, 0.086255,
		36.453911, 36.133709, 32.083229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221710, 36.061859, 32.471874>,  <36.915218, 35.610687, 32.022854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221710, 36.061859, 32.471874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.831856, 36.151257, 32.476448>,  <36.597942, 36.204895, 32.479195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.831856, 36.151257, 32.476448>,  <37.221710, 36.061859, 32.471874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831856, 36.151257, 32.476448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077686, 0.289966, 0.953879,
		0.209867, 0.930576, -0.299974,
		-0.974639, 0.223492, 0.011439,
		36.539463, 36.218304, 32.479881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.511070, 33.854492, 24.836494> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124870, 33.950653, 24.876528>,  <36.893150, 34.008350, 24.900547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124870, 33.950653, 24.876528>,  <37.511070, 33.854492, 24.836494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124870, 33.950653, 24.876528> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243840, 0.699767, 0.671467,
		0.091387, 0.672706, -0.734244,
		-0.965500, 0.240402, 0.100083,
		36.835220, 34.022774, 24.906553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523869, 34.522366, 24.986746>,  <37.511070, 33.854492, 24.836494>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523869, 34.522366, 24.986746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156212, 34.423752, 25.109640>,  <36.935616, 34.364582, 25.183376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156212, 34.423752, 25.109640>,  <37.523869, 34.522366, 24.986746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156212, 34.423752, 25.109640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059255, 0.684538, 0.726565,
		-0.389441, 0.686023, -0.614580,
		-0.919143, -0.246537, 0.307237,
		36.880470, 34.349792, 25.201811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193207, 35.178383, 25.076530>,  <37.523869, 34.522366, 24.986746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193207, 35.178383, 25.076530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030624, 34.897072, 25.309834>,  <36.933075, 34.728287, 25.449816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030624, 34.897072, 25.309834>,  <37.193207, 35.178383, 25.076530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030624, 34.897072, 25.309834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033384, 0.649376, 0.759734,
		-0.913059, 0.289329, -0.287423,
		-0.406459, -0.703278, 0.583259,
		36.908688, 34.686089, 25.484812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629604, 35.617363, 25.391438>,  <37.193207, 35.178383, 25.076530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629604, 35.617363, 25.391438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722164, 35.292057, 25.605001>,  <36.777702, 35.096874, 25.733139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722164, 35.292057, 25.605001>,  <36.629604, 35.617363, 25.391438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722164, 35.292057, 25.605001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058614, 0.559462, 0.826781,
		-0.971091, -0.160024, 0.177129,
		0.231401, -0.813262, 0.533909,
		36.791584, 35.048080, 25.765175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093071, 35.650524, 25.985886>,  <36.629604, 35.617363, 25.391438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093071, 35.650524, 25.985886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385658, 35.396713, 26.085749>,  <36.561211, 35.244427, 26.145666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385658, 35.396713, 26.085749>,  <36.093071, 35.650524, 25.985886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385658, 35.396713, 26.085749> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018376, 0.384343, 0.923007,
		-0.681625, -0.670565, 0.292796,
		0.731471, -0.634525, 0.249656,
		36.605099, 35.206356, 26.160645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879223, 35.385994, 26.705196>,  <36.093071, 35.650524, 25.985886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879223, 35.385994, 26.705196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268860, 35.312111, 26.653006>,  <36.502644, 35.267780, 26.621691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268860, 35.312111, 26.653006>,  <35.879223, 35.385994, 26.705196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268860, 35.312111, 26.653006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156782, 0.135771, 0.978256,
		-0.162976, -0.973370, 0.161212,
		0.974093, -0.184707, -0.130479,
		36.561089, 35.256699, 26.613861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059269, 34.725227, 27.110012>,  <35.879223, 35.385994, 26.705196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059269, 34.725227, 27.110012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402008, 34.927448, 27.069563>,  <36.607651, 35.048782, 27.045294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402008, 34.927448, 27.069563>,  <36.059269, 34.725227, 27.110012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402008, 34.927448, 27.069563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080557, 0.062450, 0.994792,
		0.509238, -0.860531, 0.012784,
		0.856847, 0.505556, -0.101124,
		36.659061, 35.079117, 27.039227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416534, 34.609787, 27.654922>,  <36.059269, 34.725227, 27.110012>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416534, 34.609787, 27.654922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626373, 34.923183, 27.521694>,  <36.752277, 35.111221, 27.441757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626373, 34.923183, 27.521694>,  <36.416534, 34.609787, 27.654922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626373, 34.923183, 27.521694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236671, 0.241593, 0.941074,
		0.817795, -0.572510, -0.058693,
		0.524594, 0.783496, -0.333070,
		36.783752, 35.158234, 27.421774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075455, 34.480766, 27.906406>,  <36.416534, 34.609787, 27.654922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075455, 34.480766, 27.906406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977982, 34.863575, 27.843512>,  <36.919498, 35.093262, 27.805775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977982, 34.863575, 27.843512>,  <37.075455, 34.480766, 27.906406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977982, 34.863575, 27.843512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032873, 0.153881, 0.987542,
		0.969298, 0.245814, -0.006038,
		-0.243681, 0.957025, -0.157237,
		36.904877, 35.150681, 27.796341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612629, 33.955700, 28.091122>,  <37.075455, 34.480766, 27.906406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612629, 33.955700, 28.091122> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629246, 33.639404, 28.335417>,  <37.639217, 33.449627, 28.481995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629246, 33.639404, 28.335417>,  <37.612629, 33.955700, 28.091122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629246, 33.639404, 28.335417> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087647, -0.611794, -0.786146,
		0.995285, -0.020871, -0.094721,
		0.041542, -0.790742, 0.610739,
		37.641708, 33.402184, 28.518639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081890, 33.536362, 27.741823>,  <37.612629, 33.955700, 28.091122>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081890, 33.536362, 27.741823> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856728, 33.290073, 27.962379>,  <37.721630, 33.142300, 28.094713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856728, 33.290073, 27.962379>,  <38.081890, 33.536362, 27.741823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856728, 33.290073, 27.962379> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136751, -0.588547, -0.796814,
		0.815131, -0.523933, 0.247096,
		-0.562904, -0.615717, 0.551391,
		37.687855, 33.105358, 28.127796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427212, 32.856972, 27.624428>,  <38.081890, 33.536362, 27.741823>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427212, 32.856972, 27.624428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053661, 32.795769, 27.753712>,  <37.829533, 32.759048, 27.831282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053661, 32.795769, 27.753712>,  <38.427212, 32.856972, 27.624428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053661, 32.795769, 27.753712> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126641, -0.703751, -0.699069,
		0.334420, -0.693775, 0.637839,
		-0.933877, -0.153006, 0.323209,
		37.773499, 32.749866, 27.850674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309696, 32.166435, 27.774488>,  <38.427212, 32.856972, 27.624428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309696, 32.166435, 27.774488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961269, 32.338261, 27.679234>,  <37.752213, 32.441357, 27.622082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961269, 32.338261, 27.679234>,  <38.309696, 32.166435, 27.774488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961269, 32.338261, 27.679234> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116526, -0.651747, -0.749431,
		-0.477134, -0.625059, 0.617774,
		-0.871071, 0.429565, -0.238135,
		37.699947, 32.467129, 27.607794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937664, 31.594532, 27.430891>,  <38.309696, 32.166435, 27.774488>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937664, 31.594532, 27.430891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679531, 31.872198, 27.303339>,  <37.524651, 32.038799, 27.226809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679531, 31.872198, 27.303339>,  <37.937664, 31.594532, 27.430891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679531, 31.872198, 27.303339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260930, -0.592632, -0.762038,
		-0.717960, -0.408559, 0.563571,
		-0.645328, 0.694165, -0.318881,
		37.485931, 32.080448, 27.207674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387650, 31.166258, 27.259602>,  <37.937664, 31.594532, 27.430891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387650, 31.166258, 27.259602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346340, 31.519407, 27.076355>,  <37.321556, 31.731297, 26.966408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346340, 31.519407, 27.076355>,  <37.387650, 31.166258, 27.259602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346340, 31.519407, 27.076355> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127962, -0.468543, -0.874125,
		-0.986388, -0.031650, 0.161361,
		-0.103271, 0.882874, -0.458115,
		37.315357, 31.784269, 26.938921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752621, 31.190470, 26.914261>,  <37.387650, 31.166258, 27.259602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752621, 31.190470, 26.914261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963547, 31.476269, 26.730331>,  <37.090103, 31.647747, 26.619974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963547, 31.476269, 26.730331>,  <36.752621, 31.190470, 26.914261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963547, 31.476269, 26.730331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146511, -0.456612, -0.877519,
		-0.836945, 0.530095, -0.136095,
		0.527312, 0.714496, -0.459824,
		37.121738, 31.690619, 26.592384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454765, 31.143593, 26.238703>,  <36.752621, 31.190470, 26.914261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454765, 31.143593, 26.238703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786800, 31.360840, 26.188154>,  <36.986023, 31.491188, 26.157825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786800, 31.360840, 26.188154>,  <36.454765, 31.143593, 26.238703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786800, 31.360840, 26.188154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038395, -0.170415, -0.984624,
		-0.556304, 0.822180, -0.120607,
		0.830091, 0.543120, -0.126371,
		37.035828, 31.523775, 26.150244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425037, 31.440767, 25.581148>,  <36.454765, 31.143593, 26.238703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425037, 31.440767, 25.581148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815006, 31.469578, 25.665369>,  <37.048988, 31.486864, 25.715902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815006, 31.469578, 25.665369>,  <36.425037, 31.440767, 25.581148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815006, 31.469578, 25.665369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221709, -0.233166, -0.946826,
		-0.019101, 0.969766, -0.243288,
		0.974926, 0.072025, 0.210552,
		37.107483, 31.491186, 25.728535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705990, 31.799294, 25.092718>,  <36.425037, 31.440767, 25.581148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705990, 31.799294, 25.092718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990631, 31.567577, 25.251738>,  <37.161415, 31.428547, 25.347149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990631, 31.567577, 25.251738>,  <36.705990, 31.799294, 25.092718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990631, 31.567577, 25.251738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266537, -0.300954, -0.915634,
		0.650062, 0.757528, -0.059757,
		0.711602, -0.579291, 0.397548,
		37.204113, 31.393789, 25.371002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271584, 31.874945, 24.737545>,  <36.705990, 31.799294, 25.092718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271584, 31.874945, 24.737545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370533, 31.527342, 24.908955>,  <37.429901, 31.318781, 25.011801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370533, 31.527342, 24.908955>,  <37.271584, 31.874945, 24.737545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370533, 31.527342, 24.908955> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167617, -0.397222, -0.902285,
		0.954312, 0.295029, 0.047399,
		0.247373, -0.869007, 0.428526,
		37.444744, 31.266640, 25.037512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952679, 31.733963, 24.666088>,  <37.271584, 31.874945, 24.737545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952679, 31.733963, 24.666088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782001, 31.376387, 24.720942>,  <37.679596, 31.161840, 24.753855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782001, 31.376387, 24.720942>,  <37.952679, 31.733963, 24.666088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782001, 31.376387, 24.720942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453314, -0.342608, -0.822876,
		0.782586, -0.288948, 0.551423,
		-0.426690, -0.893940, 0.137136,
		37.653996, 31.108204, 24.762083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362141, 31.295872, 24.230566>,  <37.952679, 31.733963, 24.666088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362141, 31.295872, 24.230566> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058399, 31.041843, 24.287218>,  <37.876152, 30.889425, 24.321209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058399, 31.041843, 24.287218>,  <38.362141, 31.295872, 24.230566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058399, 31.041843, 24.287218> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233327, -0.468964, -0.851840,
		0.607401, -0.613804, 0.504291,
		-0.759356, -0.635073, 0.141632,
		37.830593, 30.851322, 24.329708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610111, 30.781086, 24.009075>,  <38.362141, 31.295872, 24.230566>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610111, 30.781086, 24.009075> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224792, 30.673708, 24.009974>,  <37.993603, 30.609282, 24.010513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224792, 30.673708, 24.009974>,  <38.610111, 30.781086, 24.009075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224792, 30.673708, 24.009974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138517, -0.504197, -0.852408,
		0.229957, -0.820807, 0.522873,
		-0.963293, -0.268443, 0.002248,
		37.935806, 30.593176, 24.010649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.467745, 31.218817, 25.707827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.859236, 31.137640, 25.695755>,  <31.094130, 31.088934, 25.688513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.859236, 31.137640, 25.695755>,  <30.467745, 31.218817, 25.707827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.859236, 31.137640, 25.695755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075912, 0.221539, 0.972192,
		-0.190612, -0.953800, 0.232232,
		0.978726, -0.202941, -0.030177,
		31.152853, 31.076757, 25.686703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.590755, 30.692024, 26.190792>,  <30.467745, 31.218817, 25.707827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.590755, 30.692024, 26.190792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.923273, 30.904690, 26.125938>,  <31.122784, 31.032290, 26.087027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.923273, 30.904690, 26.125938>,  <30.590755, 30.692024, 26.190792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.923273, 30.904690, 26.125938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004548, 0.285179, 0.958464,
		0.555818, -0.797500, 0.234649,
		0.831291, 0.531664, -0.162134,
		31.172661, 31.064188, 26.077297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090693, 30.486181, 26.727026>,  <30.590755, 30.692024, 26.190792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.090693, 30.486181, 26.727026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.221611, 30.837101, 26.586615>,  <31.300161, 31.047653, 26.502369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.221611, 30.837101, 26.586615>,  <31.090693, 30.486181, 26.727026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.221611, 30.837101, 26.586615> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119896, 0.329928, 0.936361,
		0.937284, -0.348555, 0.002800,
		0.327297, 0.877301, -0.351027,
		31.319799, 31.100292, 26.481306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.761028, 30.647322, 27.078316>,  <31.090693, 30.486181, 26.727026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.761028, 30.647322, 27.078316> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.608006, 30.989113, 26.937735>,  <31.516191, 31.194187, 26.853386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.608006, 30.989113, 26.937735>,  <31.761028, 30.647322, 27.078316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608006, 30.989113, 26.937735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229034, 0.456221, 0.859887,
		0.895094, 0.248461, -0.370235,
		-0.382558, 0.854476, -0.351454,
		31.493238, 31.245455, 26.832298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330643, 31.168598, 27.155041>,  <31.761028, 30.647322, 27.078316>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330643, 31.168598, 27.155041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.970793, 31.342793, 27.142221>,  <31.754883, 31.447309, 27.134529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.970793, 31.342793, 27.142221>,  <32.330643, 31.168598, 27.155041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970793, 31.342793, 27.142221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211689, 0.499143, 0.840264,
		0.381921, 0.749137, -0.541229,
		-0.899624, 0.435487, -0.032050,
		31.700905, 31.473438, 27.132607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384296, 31.954967, 27.175125>,  <32.330643, 31.168598, 27.155041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384296, 31.954967, 27.175125> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.012482, 31.882599, 27.303644>,  <31.789394, 31.839178, 27.380756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.012482, 31.882599, 27.303644>,  <32.384296, 31.954967, 27.175125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012482, 31.882599, 27.303644> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202295, 0.478304, 0.854577,
		-0.308291, 0.859356, -0.408000,
		-0.929534, -0.180922, 0.321300,
		31.733622, 31.828321, 27.400034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.070290, 32.606136, 27.326693>,  <32.384296, 31.954967, 27.175125>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.070290, 32.606136, 27.326693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.816401, 32.362190, 27.516508>,  <31.664066, 32.215824, 27.630398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.816401, 32.362190, 27.516508>,  <32.070290, 32.606136, 27.326693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816401, 32.362190, 27.516508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043715, 0.584780, 0.810013,
		-0.771500, 0.534880, -0.344515,
		-0.634725, -0.609865, 0.474541,
		31.625982, 32.179230, 27.658871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596165, 33.034035, 27.445477>,  <32.070290, 32.606136, 27.326693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596165, 33.034035, 27.445477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.601959, 32.720734, 27.694090>,  <31.605436, 32.532753, 27.843258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.601959, 32.720734, 27.694090>,  <31.596165, 33.034035, 27.445477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.601959, 32.720734, 27.694090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000893, 0.621589, 0.783343,
		-0.999895, -0.011903, 0.008306,
		0.014487, -0.783253, 0.621534,
		31.606306, 32.485756, 27.880550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218189, 33.230316, 28.034134>,  <31.596165, 33.034035, 27.445477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218189, 33.230316, 28.034134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.365723, 32.897518, 28.199903>,  <31.454243, 32.697838, 28.299364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.365723, 32.897518, 28.199903>,  <31.218189, 33.230316, 28.034134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365723, 32.897518, 28.199903> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017708, 0.452066, 0.891809,
		-0.929326, -0.321591, 0.181470,
		0.368834, -0.831995, 0.414422,
		31.476374, 32.647919, 28.324230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.813715, 33.206306, 28.615456>,  <31.218189, 33.230316, 28.034134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.813715, 33.206306, 28.615456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.132702, 32.977169, 28.691240>,  <31.324093, 32.839687, 28.736712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.132702, 32.977169, 28.691240>,  <30.813715, 33.206306, 28.615456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.132702, 32.977169, 28.691240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056457, 0.241789, 0.968685,
		-0.600718, -0.783189, 0.160478,
		0.797465, -0.572846, 0.189463,
		31.371941, 32.805317, 28.748079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.584087, 32.682850, 29.131187>,  <30.813715, 33.206306, 28.615456>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.584087, 32.682850, 29.131187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.982508, 32.693329, 29.165121>,  <31.221560, 32.699615, 29.185482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.982508, 32.693329, 29.165121>,  <30.584087, 32.682850, 29.131187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.982508, 32.693329, 29.165121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086611, 0.076356, 0.993312,
		0.019540, -0.996737, 0.078323,
		0.996050, 0.026193, 0.084836,
		31.281322, 32.701187, 29.190573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.784958, 32.235325, 29.730316>,  <30.584087, 32.682850, 29.131187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.784958, 32.235325, 29.730316> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.114429, 32.459335, 29.694712>,  <31.312113, 32.593742, 29.673349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.114429, 32.459335, 29.694712>,  <30.784958, 32.235325, 29.730316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.114429, 32.459335, 29.694712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023229, 0.123519, 0.992070,
		0.566579, -0.819216, 0.088731,
		0.823680, 0.560025, -0.089013,
		31.361534, 32.627342, 29.668009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064812, 32.005966, 30.307467>,  <30.784958, 32.235325, 29.730316>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064812, 32.005966, 30.307467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.256197, 32.341610, 30.203949>,  <31.371029, 32.542995, 30.141838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.256197, 32.341610, 30.203949>,  <31.064812, 32.005966, 30.307467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.256197, 32.341610, 30.203949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240986, 0.157926, 0.957593,
		0.844392, -0.520540, -0.126651,
		0.478464, 0.839105, -0.258794,
		31.399736, 32.593342, 30.126310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.689247, 32.050529, 30.680782>,  <31.064812, 32.005966, 30.307467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.689247, 32.050529, 30.680782> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.648153, 32.437611, 30.588694>,  <31.623497, 32.669857, 30.533442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.648153, 32.437611, 30.588694>,  <31.689247, 32.050529, 30.680782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648153, 32.437611, 30.588694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150298, 0.243890, 0.958086,
		0.983288, 0.063826, -0.170499,
		-0.102734, 0.967700, -0.230221,
		31.617332, 32.727921, 30.519627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223419, 31.677109, 30.617800>,  <31.689247, 32.050529, 30.680782>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223419, 31.677109, 30.617800> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.468857, 31.402702, 30.774200>,  <32.616119, 31.238058, 30.868040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.468857, 31.402702, 30.774200>,  <32.223419, 31.677109, 30.617800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468857, 31.402702, 30.774200> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142479, -0.583238, -0.799709,
		0.776661, 0.434987, -0.455614,
		0.613594, -0.686018, 0.391001,
		32.652935, 31.196898, 30.891500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710026, 31.554699, 30.167105>,  <32.223419, 31.677109, 30.617800>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710026, 31.554699, 30.167105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.700848, 31.232607, 30.404112>,  <32.695339, 31.039352, 30.546316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.700848, 31.232607, 30.404112>,  <32.710026, 31.554699, 30.167105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700848, 31.232607, 30.404112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013799, -0.592873, -0.805178,
		0.999642, -0.010300, 0.024716,
		-0.022947, -0.805231, 0.592518,
		32.693962, 30.991037, 30.581867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217937, 31.102373, 29.997921>,  <32.710026, 31.554699, 30.167105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217937, 31.102373, 29.997921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.967712, 30.855965, 30.189417>,  <32.817577, 30.708120, 30.304314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.967712, 30.855965, 30.189417>,  <33.217937, 31.102373, 29.997921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967712, 30.855965, 30.189417> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045248, -0.641245, -0.766001,
		0.778863, -0.457518, 0.429010,
		-0.625560, -0.616022, 0.478740,
		32.780045, 30.671158, 30.333038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550411, 30.403425, 29.966257>,  <33.217937, 31.102373, 29.997921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550411, 30.403425, 29.966257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.163059, 30.332062, 30.036022>,  <32.930649, 30.289244, 30.077881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.163059, 30.332062, 30.036022>,  <33.550411, 30.403425, 29.966257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163059, 30.332062, 30.036022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024106, -0.762688, -0.646318,
		0.248331, -0.621674, 0.742868,
		-0.968376, -0.178408, 0.174413,
		32.872547, 30.278540, 30.088346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518269, 29.690647, 29.983521>,  <33.550411, 30.403425, 29.966257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518269, 29.690647, 29.983521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.134083, 29.799006, 29.957819>,  <32.903572, 29.864019, 29.942398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.134083, 29.799006, 29.957819>,  <33.518269, 29.690647, 29.983521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134083, 29.799006, 29.957819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127471, -0.633061, -0.763534,
		-0.247514, -0.725155, 0.642563,
		-0.960462, 0.270894, -0.064255,
		32.845943, 29.880274, 29.938541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149632, 29.057589, 30.064943>,  <33.518269, 29.690647, 29.983521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149632, 29.057589, 30.064943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.897385, 29.302677, 29.874411>,  <32.746037, 29.449730, 29.760090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.897385, 29.302677, 29.874411>,  <33.149632, 29.057589, 30.064943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897385, 29.302677, 29.874411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082689, -0.663308, -0.743764,
		-0.771678, -0.429641, 0.468958,
		-0.630615, 0.612724, -0.476334,
		32.708199, 29.486494, 29.731510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537350, 28.659445, 29.852781>,  <33.149632, 29.057589, 30.064943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537350, 28.659445, 29.852781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.589722, 28.963013, 29.597626>,  <32.621143, 29.145153, 29.444532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.589722, 28.963013, 29.597626>,  <32.537350, 28.659445, 29.852781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589722, 28.963013, 29.597626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128659, -0.624977, -0.769967,
		-0.983008, 0.182879, 0.015816,
		0.130926, 0.758919, -0.637887,
		32.628998, 29.190689, 29.406260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097855, 28.504137, 29.336536>,  <32.537350, 28.659445, 29.852781>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097855, 28.504137, 29.336536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.312912, 28.783020, 29.146868>,  <32.441948, 28.950350, 29.033066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.312912, 28.783020, 29.146868>,  <32.097855, 28.504137, 29.336536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312912, 28.783020, 29.146868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156390, -0.470152, -0.868619,
		-0.828541, 0.541165, -0.143738,
		0.537645, 0.697207, -0.474173,
		32.474205, 28.992182, 29.004616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.755655, 28.823017, 28.734364>,  <32.097855, 28.504137, 29.336536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.755655, 28.823017, 28.734364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.140785, 28.891851, 28.651077>,  <32.371864, 28.933151, 28.601105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.140785, 28.891851, 28.651077>,  <31.755655, 28.823017, 28.734364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140785, 28.891851, 28.651077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151553, -0.293931, -0.943735,
		-0.223604, 0.940208, -0.256924,
		0.962825, 0.172086, -0.208215,
		32.429634, 28.943478, 28.588614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.654924, 28.889952, 28.008497>,  <31.755655, 28.823017, 28.734364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.654924, 28.889952, 28.008497> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.044590, 28.882538, 28.098528>,  <32.278389, 28.878090, 28.152546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.044590, 28.882538, 28.098528>,  <31.654924, 28.889952, 28.008497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044590, 28.882538, 28.098528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208172, -0.312716, -0.926754,
		0.087564, 0.949666, -0.300778,
		0.974165, -0.018537, 0.225077,
		32.336838, 28.876976, 28.166052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.893494, 29.179327, 27.506521>,  <31.654924, 28.889952, 28.008497>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.893494, 29.179327, 27.506521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.183788, 28.946632, 27.653431>,  <32.357964, 28.807014, 27.741577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.183788, 28.946632, 27.653431>,  <31.893494, 29.179327, 27.506521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183788, 28.946632, 27.653431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340131, -0.160646, -0.926555,
		0.598014, 0.797354, 0.081281,
		0.725734, -0.581739, 0.367273,
		32.401508, 28.772110, 27.763613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604485, 29.385773, 27.254311>,  <31.893494, 29.179327, 27.506521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604485, 29.385773, 27.254311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.664978, 29.009754, 27.376585>,  <32.701275, 28.784143, 27.449949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.664978, 29.009754, 27.376585>,  <32.604485, 29.385773, 27.254311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664978, 29.009754, 27.376585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465454, -0.205095, -0.860981,
		0.872056, 0.272494, 0.406529,
		0.151235, -0.940044, 0.305688,
		32.710350, 28.727741, 27.468292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341530, 29.188534, 27.097198>,  <32.604485, 29.385773, 27.254311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341530, 29.188534, 27.097198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.119312, 28.856735, 27.120193>,  <32.985981, 28.657656, 27.133991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.119312, 28.856735, 27.120193>,  <33.341530, 29.188534, 27.097198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119312, 28.856735, 27.120193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308768, -0.270000, -0.912010,
		0.772029, -0.488915, 0.406119,
		-0.555548, -0.829495, 0.057487,
		32.952648, 28.607887, 27.137440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817642, 28.598932, 27.024654>,  <33.341530, 29.188534, 27.097198>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817642, 28.598932, 27.024654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.456436, 28.474335, 26.906303>,  <33.239712, 28.399576, 26.835293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.456436, 28.474335, 26.906303>,  <33.817642, 28.598932, 27.024654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456436, 28.474335, 26.906303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408078, -0.406566, -0.817421,
		0.134328, -0.858881, 0.494247,
		-0.903011, -0.311494, -0.295877,
		33.185532, 28.380886, 26.817541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113628, 27.805822, 27.101658>,  <33.817642, 28.598932, 27.024654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113628, 27.805822, 27.101658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.513096, 27.824240, 27.092295>,  <34.752777, 27.835289, 27.086678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.513096, 27.824240, 27.092295>,  <34.113628, 27.805822, 27.101658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513096, 27.824240, 27.092295> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017385, 0.127078, 0.991740,
		0.048634, -0.990824, 0.126108,
		0.998665, 0.046040, -0.023406,
		34.812695, 27.838053, 27.085274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247284, 27.453442, 27.650824>,  <34.113628, 27.805822, 27.101658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247284, 27.453442, 27.650824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.587509, 27.650946, 27.578449>,  <34.791645, 27.769447, 27.535025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.587509, 27.650946, 27.578449>,  <34.247284, 27.453442, 27.650824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587509, 27.650946, 27.578449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153379, 0.096170, 0.983477,
		0.503001, -0.864265, 0.006067,
		0.850568, 0.493759, -0.180934,
		34.842678, 27.799074, 27.524170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810204, 27.115705, 28.036539>,  <34.247284, 27.453442, 27.650824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810204, 27.115705, 28.036539> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.903191, 27.496635, 27.957506>,  <34.958981, 27.725193, 27.910086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.903191, 27.496635, 27.957506>,  <34.810204, 27.115705, 28.036539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903191, 27.496635, 27.957506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260726, 0.134694, 0.955971,
		0.937007, -0.273744, -0.216984,
		0.232465, 0.952324, -0.197581,
		34.972931, 27.782333, 27.898232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442211, 27.243731, 28.375269>,  <34.810204, 27.115705, 28.036539>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442211, 27.243731, 28.375269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.276623, 27.602697, 28.314251>,  <35.177269, 27.818077, 28.277639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.276623, 27.602697, 28.314251>,  <35.442211, 27.243731, 28.375269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276623, 27.602697, 28.314251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190980, 0.249473, 0.949363,
		0.890031, 0.363875, -0.274664,
		-0.413971, 0.897417, -0.152546,
		35.152431, 27.871923, 28.268488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959618, 27.718067, 28.643738>,  <35.442211, 27.243731, 28.375269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959618, 27.718067, 28.643738> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.602230, 27.897717, 28.642715>,  <35.387798, 28.005507, 28.642101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.602230, 27.897717, 28.642715>,  <35.959618, 27.718067, 28.643738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602230, 27.897717, 28.642715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194996, 0.393030, 0.898612,
		0.404591, 0.802382, -0.438737,
		-0.893467, 0.449123, -0.002555,
		35.334190, 28.032454, 28.641949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124493, 28.403242, 28.872257>,  <35.959618, 27.718067, 28.643738>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124493, 28.403242, 28.872257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.744308, 28.334940, 28.976162>,  <35.516197, 28.293959, 29.038504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.744308, 28.334940, 28.976162>,  <36.124493, 28.403242, 28.872257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744308, 28.334940, 28.976162> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211188, 0.258488, 0.942647,
		-0.228105, 0.950804, -0.209621,
		-0.950457, -0.170753, 0.259760,
		35.459171, 28.283714, 29.054090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029202, 28.805264, 29.384911>,  <36.124493, 28.403242, 28.872257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029202, 28.805264, 29.384911> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.693035, 28.593437, 29.430979>,  <35.491337, 28.466341, 29.458620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.693035, 28.593437, 29.430979>,  <36.029202, 28.805264, 29.384911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693035, 28.593437, 29.430979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044592, 0.144224, 0.988540,
		-0.540105, 0.835920, -0.097594,
		-0.840415, -0.529564, 0.115171,
		35.440910, 28.434568, 29.465530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680183, 29.123631, 29.904938>,  <36.029202, 28.805264, 29.384911>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680183, 29.123631, 29.904938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.472443, 28.781851, 29.910492>,  <35.347797, 28.576784, 29.913824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.472443, 28.781851, 29.910492>,  <35.680183, 29.123631, 29.904938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472443, 28.781851, 29.910492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032203, 0.035807, 0.998840,
		-0.853953, 0.518302, -0.046112,
		-0.519352, -0.854448, 0.013887,
		35.316639, 28.525517, 29.914658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087303, 29.306110, 30.046852>,  <35.680183, 29.123631, 29.904938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087303, 29.306110, 30.046852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.136719, 28.930336, 30.174725>,  <35.166367, 28.704870, 30.251448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.136719, 28.930336, 30.174725>,  <35.087303, 29.306110, 30.046852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136719, 28.930336, 30.174725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074014, 0.312530, 0.947020,
		-0.989576, -0.140654, -0.030922,
		0.123538, -0.939437, 0.319682,
		35.173779, 28.648504, 30.270630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647297, 29.200119, 30.672234>,  <35.087303, 29.306110, 30.046852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647297, 29.200119, 30.672234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.903996, 28.893362, 30.674505>,  <35.058014, 28.709307, 30.675869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.903996, 28.893362, 30.674505>,  <34.647297, 29.200119, 30.672234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903996, 28.893362, 30.674505> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174285, 0.153048, 0.972729,
		-0.746850, -0.623257, 0.231877,
		0.641748, -0.766895, 0.005680,
		35.096519, 28.663294, 30.676208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611240, 28.865896, 31.408169>,  <34.647297, 29.200119, 30.672234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611240, 28.865896, 31.408169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.952114, 28.697903, 31.283337>,  <35.156639, 28.597107, 31.208437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.952114, 28.697903, 31.283337>,  <34.611240, 28.865896, 31.408169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952114, 28.697903, 31.283337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446127, 0.271547, 0.852780,
		-0.273408, -0.865954, 0.418774,
		0.852185, -0.419983, -0.312082,
		35.207771, 28.571907, 31.189713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857147, 28.536394, 31.931175>,  <34.611240, 28.865896, 31.408169>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857147, 28.536394, 31.931175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.177586, 28.587347, 31.697248>,  <35.369850, 28.617920, 31.556892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.177586, 28.587347, 31.697248>,  <34.857147, 28.536394, 31.931175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177586, 28.587347, 31.697248> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548309, 0.235588, 0.802406,
		0.240029, -0.963462, 0.118855,
		0.801089, 0.127432, -0.584822,
		35.417915, 28.625563, 31.521803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415005, 28.250940, 32.306850>,  <34.857147, 28.536394, 31.931175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415005, 28.250940, 32.306850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.591541, 28.498613, 32.047058>,  <35.697464, 28.647217, 31.891182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.591541, 28.498613, 32.047058>,  <35.415005, 28.250940, 32.306850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591541, 28.498613, 32.047058> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611505, 0.322175, 0.722679,
		0.656718, -0.716112, -0.236444,
		0.441343, 0.619183, -0.649484,
		35.723946, 28.684368, 31.852213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168587, 28.227160, 32.268044>,  <35.415005, 28.250940, 32.306850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168587, 28.227160, 32.268044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.065281, 28.598993, 32.162842>,  <36.003296, 28.822094, 32.099720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.065281, 28.598993, 32.162842>,  <36.168587, 28.227160, 32.268044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065281, 28.598993, 32.162842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450385, 0.356705, 0.818484,
		0.854665, 0.092932, -0.510795,
		-0.258266, 0.929584, -0.263008,
		35.987801, 28.877869, 32.083939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.646748, 29.974152, 23.922295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.279301, 30.092659, 23.817711>,  <38.058830, 30.163763, 23.754961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.279301, 30.092659, 23.817711>,  <38.646748, 29.974152, 23.922295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279301, 30.092659, 23.817711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015806, -0.633602, -0.773497,
		-0.394823, -0.714683, 0.577358,
		-0.918621, 0.296269, -0.261457,
		38.003716, 30.181540, 23.739273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345566, 29.415518, 23.645645>,  <38.646748, 29.974152, 23.922295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345566, 29.415518, 23.645645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.108440, 29.697617, 23.490110>,  <37.966164, 29.866877, 23.396790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.108440, 29.697617, 23.490110>,  <38.345566, 29.415518, 23.645645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108440, 29.697617, 23.490110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199162, -0.596212, -0.777731,
		-0.780324, -0.383608, 0.493902,
		-0.592814, 0.705248, -0.388839,
		37.930595, 29.909191, 23.373459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681377, 29.140673, 23.401669>,  <38.345566, 29.415518, 23.645645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681377, 29.140673, 23.401669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.705753, 29.478165, 23.188351>,  <37.720379, 29.680660, 23.060360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.705753, 29.478165, 23.188351>,  <37.681377, 29.140673, 23.401669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705753, 29.478165, 23.188351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210208, -0.511455, -0.833202,
		-0.975755, 0.162881, 0.146190,
		0.060943, 0.843732, -0.533294,
		37.724037, 29.731285, 23.028362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993458, 29.265541, 23.174494>,  <37.681377, 29.140673, 23.401669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993458, 29.265541, 23.174494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.228733, 29.464592, 22.919495>,  <37.369896, 29.584023, 22.766495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.228733, 29.464592, 22.919495>,  <36.993458, 29.265541, 23.174494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228733, 29.464592, 22.919495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392250, -0.513807, -0.762983,
		-0.707233, 0.698834, -0.107019,
		0.588185, 0.497628, -0.637499,
		37.405190, 29.613880, 22.728245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614944, 29.452900, 22.592426>,  <36.993458, 29.265541, 23.174494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614944, 29.452900, 22.592426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.975986, 29.472534, 22.421364>,  <37.192612, 29.484316, 22.318727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.975986, 29.472534, 22.421364>,  <36.614944, 29.452900, 22.592426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975986, 29.472534, 22.421364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373765, -0.403455, -0.835179,
		-0.213536, 0.913682, -0.345815,
		0.902609, 0.049087, -0.427655,
		37.246769, 29.487261, 22.293068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488842, 29.769596, 21.966581>,  <36.614944, 29.452900, 22.592426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488842, 29.769596, 21.966581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.848949, 29.601629, 21.920639>,  <37.065014, 29.500849, 21.893074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.848949, 29.601629, 21.920639>,  <36.488842, 29.769596, 21.966581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848949, 29.601629, 21.920639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291232, -0.384818, -0.875842,
		0.323583, 0.821939, -0.468732,
		0.900265, -0.419917, -0.114854,
		37.119030, 29.475655, 21.886183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646935, 29.914530, 21.298479>,  <36.488842, 29.769596, 21.966581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646935, 29.914530, 21.298479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.902317, 29.620564, 21.389929>,  <37.055546, 29.444183, 21.444799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.902317, 29.620564, 21.389929>,  <36.646935, 29.914530, 21.298479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902317, 29.620564, 21.389929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136422, -0.400406, -0.906126,
		0.757467, 0.547336, -0.355902,
		0.638461, -0.734914, 0.228626,
		37.093857, 29.400089, 21.458517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125511, 29.862568, 20.734144>,  <36.646935, 29.914530, 21.298479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125511, 29.862568, 20.734144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.136871, 29.519939, 20.940243>,  <37.143688, 29.314362, 21.063902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.136871, 29.519939, 20.940243>,  <37.125511, 29.862568, 20.734144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136871, 29.519939, 20.940243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330357, -0.494533, -0.803929,
		0.943429, -0.147381, -0.297021,
		0.028403, -0.856572, 0.515245,
		37.145393, 29.262968, 21.094816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307518, 29.445839, 20.202030>,  <37.125511, 29.862568, 20.734144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307518, 29.445839, 20.202030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.168777, 29.189798, 20.476246>,  <37.085533, 29.036175, 20.640776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.168777, 29.189798, 20.476246>,  <37.307518, 29.445839, 20.202030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168777, 29.189798, 20.476246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438159, -0.535668, -0.721856,
		0.829282, -0.550754, -0.094666,
		-0.346856, -0.640101, 0.685538,
		37.064720, 28.997768, 20.681908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436298, 28.854963, 19.955927>,  <37.307518, 29.445839, 20.202030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436298, 28.854963, 19.955927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.129230, 28.802462, 20.206831>,  <36.944988, 28.770960, 20.357374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.129230, 28.802462, 20.206831>,  <37.436298, 28.854963, 19.955927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129230, 28.802462, 20.206831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498246, -0.493329, -0.713006,
		0.403030, -0.859883, 0.313317,
		-0.767670, -0.131254, 0.627260,
		36.898930, 28.763086, 20.395008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195702, 28.213543, 19.907928>,  <37.436298, 28.854963, 19.955927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195702, 28.213543, 19.907928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.855804, 28.346500, 20.071613>,  <36.651867, 28.426275, 20.169825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.855804, 28.346500, 20.071613>,  <37.195702, 28.213543, 19.907928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855804, 28.346500, 20.071613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526473, -0.575796, -0.625527,
		0.027702, -0.746976, 0.664274,
		-0.849740, 0.332394, 0.409213,
		36.600883, 28.446218, 20.194378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805660, 27.614532, 20.056835>,  <37.195702, 28.213543, 19.907928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805660, 27.614532, 20.056835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.524162, 27.898142, 20.038832>,  <36.355263, 28.068308, 20.028030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.524162, 27.898142, 20.038832>,  <36.805660, 27.614532, 20.056835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524162, 27.898142, 20.038832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652673, -0.670238, -0.353269,
		-0.280642, -0.219236, 0.934439,
		-0.703746, 0.709025, -0.045008,
		36.313038, 28.110849, 20.025330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127312, 27.345638, 20.445873>,  <36.805660, 27.614532, 20.056835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127312, 27.345638, 20.445873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.036045, 27.641775, 20.192944>,  <35.981285, 27.819458, 20.041185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.036045, 27.641775, 20.192944>,  <36.127312, 27.345638, 20.445873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036045, 27.641775, 20.192944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704135, -0.574006, -0.417985,
		-0.672410, 0.349872, 0.652269,
		-0.228165, 0.740342, -0.632325,
		35.967594, 27.863878, 20.003246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784691, 26.880890, 20.967382>,  <36.127312, 27.345638, 20.445873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784691, 26.880890, 20.967382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.394958, 26.808155, 21.020470>,  <35.161118, 26.764515, 21.052322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.394958, 26.808155, 21.020470>,  <35.784691, 26.880890, 20.967382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394958, 26.808155, 21.020470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032342, 0.470365, 0.881879,
		-0.222783, 0.863535, -0.452411,
		-0.974331, -0.181836, 0.132718,
		35.102657, 26.753605, 21.060286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245785, 27.441442, 21.143642>,  <35.784691, 26.880890, 20.967382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245785, 27.441442, 21.143642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.108910, 27.109671, 21.320257>,  <35.026787, 26.910606, 21.426226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.108910, 27.109671, 21.320257>,  <35.245785, 27.441442, 21.143642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108910, 27.109671, 21.320257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044787, 0.454970, 0.889380,
		-0.938564, 0.324108, -0.118537,
		-0.342186, -0.829431, 0.441535,
		35.006252, 26.860842, 21.452717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752522, 27.732569, 21.719551>,  <35.245785, 27.441442, 21.143642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752522, 27.732569, 21.719551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.871624, 27.362917, 21.815321>,  <34.943085, 27.141127, 21.872784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.871624, 27.362917, 21.815321>,  <34.752522, 27.732569, 21.719551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871624, 27.362917, 21.815321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085309, 0.224039, 0.970839,
		-0.950822, -0.309500, -0.012127,
		0.297758, -0.924130, 0.239425,
		34.960953, 27.085678, 21.887148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362556, 27.549824, 22.276646>,  <34.752522, 27.732569, 21.719551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362556, 27.549824, 22.276646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.656319, 27.279461, 22.301283>,  <34.832577, 27.117243, 22.316065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.656319, 27.279461, 22.301283>,  <34.362556, 27.549824, 22.276646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656319, 27.279461, 22.301283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024258, 0.064552, 0.997620,
		-0.678276, -0.734152, 0.031011,
		0.734406, -0.675909, 0.061593,
		34.876640, 27.076689, 22.319761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230400, 27.186039, 22.866282>,  <34.362556, 27.549824, 22.276646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230400, 27.186039, 22.866282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.622654, 27.135910, 22.806086>,  <34.858006, 27.105833, 22.769968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.622654, 27.135910, 22.806086>,  <34.230400, 27.186039, 22.866282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622654, 27.135910, 22.806086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160585, 0.074711, 0.984190,
		-0.112100, -0.989299, 0.093389,
		0.980635, -0.125325, -0.150492,
		34.916843, 27.098312, 22.760939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377193, 26.650690, 23.253016>,  <34.230400, 27.186039, 22.866282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377193, 26.650690, 23.253016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.749004, 26.787567, 23.198053>,  <34.972092, 26.869694, 23.165075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.749004, 26.787567, 23.198053>,  <34.377193, 26.650690, 23.253016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749004, 26.787567, 23.198053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203543, -0.165411, 0.964992,
		0.307484, -0.924956, -0.223405,
		0.929528, 0.342193, -0.137407,
		35.027863, 26.890224, 23.156832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736362, 26.253143, 23.650558>,  <34.377193, 26.650690, 23.253016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736362, 26.253143, 23.650558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.955772, 26.582407, 23.591867>,  <35.087418, 26.779964, 23.556652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.955772, 26.582407, 23.591867>,  <34.736362, 26.253143, 23.650558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955772, 26.582407, 23.591867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145517, 0.078825, 0.986211,
		0.823375, -0.562312, -0.076546,
		0.548524, 0.823160, -0.146728,
		35.120331, 26.829355, 23.547850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297573, 26.242750, 24.197748>,  <34.736362, 26.253143, 23.650558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297573, 26.242750, 24.197748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.282917, 26.625452, 24.082317>,  <35.274124, 26.855074, 24.013058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.282917, 26.625452, 24.082317>,  <35.297573, 26.242750, 24.197748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282917, 26.625452, 24.082317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353839, 0.282486, 0.891628,
		0.934589, -0.069439, -0.348888,
		-0.036642, 0.956755, -0.288579,
		35.271923, 26.912479, 23.995743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856419, 26.520693, 24.427059>,  <35.297573, 26.242750, 24.197748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856419, 26.520693, 24.427059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.621471, 26.841141, 24.381090>,  <35.480503, 27.033409, 24.353508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.621471, 26.841141, 24.381090>,  <35.856419, 26.520693, 24.427059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621471, 26.841141, 24.381090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212671, 0.289789, 0.933163,
		0.780880, 0.523667, -0.340587,
		-0.587365, 0.801122, -0.114922,
		35.445263, 27.081478, 24.346613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156876, 27.032579, 24.830580>,  <35.856419, 26.520693, 24.427059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156876, 27.032579, 24.830580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.782211, 27.169603, 24.801428>,  <35.557411, 27.251818, 24.783937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.782211, 27.169603, 24.801428>,  <36.156876, 27.032579, 24.830580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782211, 27.169603, 24.801428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100696, 0.462717, 0.880769,
		0.335438, 0.817647, -0.467905,
		-0.936665, 0.342559, -0.072879,
		35.501213, 27.272371, 24.779564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199459, 27.732342, 25.130930>,  <36.156876, 27.032579, 24.830580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199459, 27.732342, 25.130930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.803551, 27.675301, 25.132360>,  <35.566006, 27.641075, 25.133219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.803551, 27.675301, 25.132360>,  <36.199459, 27.732342, 25.130930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803551, 27.675301, 25.132360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051910, 0.383422, 0.922114,
		-0.132870, 0.912498, -0.386903,
		-0.989773, -0.142605, 0.003578,
		35.506618, 27.632519, 25.133434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855373, 28.408222, 25.307068>,  <36.199459, 27.732342, 25.130930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855373, 28.408222, 25.307068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.617020, 28.100489, 25.399197>,  <35.474007, 27.915848, 25.454473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.617020, 28.100489, 25.399197>,  <35.855373, 28.408222, 25.307068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617020, 28.100489, 25.399197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249481, 0.449949, 0.857499,
		-0.763336, 0.453509, -0.460052,
		-0.595883, -0.769335, 0.230320,
		35.438255, 27.869688, 25.468292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353348, 28.724920, 25.667351>,  <35.855373, 28.408222, 25.307068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353348, 28.724920, 25.667351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.264030, 28.343357, 25.747555>,  <35.210442, 28.114420, 25.795677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.264030, 28.343357, 25.747555>,  <35.353348, 28.724920, 25.667351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264030, 28.343357, 25.747555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224519, 0.250504, 0.941721,
		-0.948543, 0.165257, -0.270105,
		-0.223289, -0.953907, 0.200510,
		35.197044, 28.057184, 25.807709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784874, 28.757301, 26.111036>,  <35.353348, 28.724920, 25.667351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784874, 28.757301, 26.111036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.944496, 28.394533, 26.165066>,  <35.040272, 28.176872, 26.197483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.944496, 28.394533, 26.165066>,  <34.784874, 28.757301, 26.111036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944496, 28.394533, 26.165066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126550, 0.091427, 0.987738,
		-0.908151, -0.411258, -0.078287,
		0.399058, -0.906922, 0.135074,
		35.064213, 28.122456, 26.205587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238480, 28.310810, 26.519337>,  <34.784874, 28.757301, 26.111036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238480, 28.310810, 26.519337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.602993, 28.152033, 26.563150>,  <34.821701, 28.056767, 26.589439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.602993, 28.152033, 26.563150>,  <34.238480, 28.310810, 26.519337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602993, 28.152033, 26.563150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120888, -0.003610, 0.992660,
		-0.393636, -0.917835, -0.051275,
		0.911283, -0.396945, 0.109534,
		34.876377, 28.032949, 26.596010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860607, 27.916592, 26.124784>,  <34.238480, 28.310810, 26.519337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860607, 27.916592, 26.124784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.486938, 28.040951, 26.194830>,  <33.262737, 28.115566, 26.236856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.486938, 28.040951, 26.194830>,  <33.860607, 27.916592, 26.124784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486938, 28.040951, 26.194830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186814, -0.008020, -0.982363,
		-0.304013, -0.950408, 0.065573,
		-0.934171, 0.310901, 0.175111,
		33.206688, 28.134220, 26.247364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403988, 27.377161, 25.805359>,  <33.860607, 27.916592, 26.124784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403988, 27.377161, 25.805359> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.189747, 27.713362, 25.838064>,  <33.061203, 27.915081, 25.857687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.189747, 27.713362, 25.838064>,  <33.403988, 27.377161, 25.805359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189747, 27.713362, 25.838064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189830, -0.025493, -0.981486,
		-0.822855, -0.541211, 0.173206,
		-0.535606, 0.840501, 0.081761,
		33.029064, 27.965511, 25.862593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666775, 27.298248, 25.534853>,  <33.403988, 27.377161, 25.805359>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666775, 27.298248, 25.534853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.722904, 27.692930, 25.502058>,  <32.756580, 27.929739, 25.482380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.722904, 27.692930, 25.502058>,  <32.666775, 27.298248, 25.534853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722904, 27.692930, 25.502058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374729, -0.023724, -0.926831,
		-0.916454, 0.160777, 0.366418,
		0.140320, 0.986706, -0.081989,
		32.764999, 27.988941, 25.477461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143963, 27.517384, 25.103170>,  <32.666775, 27.298248, 25.534853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143963, 27.517384, 25.103170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.392952, 27.829227, 25.075615>,  <32.542343, 28.016333, 25.059082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.392952, 27.829227, 25.075615>,  <32.143963, 27.517384, 25.103170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.392952, 27.829227, 25.075615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284434, 0.143344, -0.947919,
		-0.729130, 0.609643, 0.310974,
		0.622468, 0.779607, -0.068887,
		32.579693, 28.063110, 25.054949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789196, 28.005739, 24.690241>,  <32.143963, 27.517384, 25.103170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789196, 28.005739, 24.690241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.169579, 28.129248, 24.697662>,  <32.397808, 28.203352, 24.702114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.169579, 28.129248, 24.697662>,  <31.789196, 28.005739, 24.690241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169579, 28.129248, 24.697662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022084, 0.127590, -0.991581,
		-0.308538, 0.942540, 0.128152,
		0.950956, 0.308770, 0.018552,
		32.454865, 28.221878, 24.703228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.761908, 28.636995, 24.274576>,  <31.789196, 28.005739, 24.690241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.761908, 28.636995, 24.274576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.127678, 28.475489, 24.263268>,  <32.347141, 28.378584, 24.256483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.127678, 28.475489, 24.263268>,  <31.761908, 28.636995, 24.274576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.127678, 28.475489, 24.263268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010921, 0.094432, -0.995471,
		0.404610, 0.909974, 0.090761,
		0.914424, -0.403769, -0.028270,
		32.402004, 28.354359, 24.254786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109924, 29.017412, 23.872446>,  <31.761908, 28.636995, 24.274576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109924, 29.017412, 23.872446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.335419, 28.689320, 23.833616>,  <32.470715, 28.492464, 23.810318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.335419, 28.689320, 23.833616>,  <32.109924, 29.017412, 23.872446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335419, 28.689320, 23.833616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034748, 0.093875, -0.994977,
		0.825224, 0.564277, 0.024420,
		0.563735, -0.820231, -0.097075,
		32.504539, 28.443251, 23.804493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234493, 29.589128, 23.421410>,  <32.109924, 29.017412, 23.872446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234493, 29.589128, 23.421410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.971718, 29.855227, 23.279488>,  <31.814054, 30.014885, 23.194334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.971718, 29.855227, 23.279488>,  <32.234493, 29.589128, 23.421410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971718, 29.855227, 23.279488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007148, 0.476073, 0.879377,
		0.753914, 0.575156, -0.317504,
		-0.656934, 0.665244, -0.354806,
		31.774637, 30.054800, 23.173046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530098, 30.243668, 23.611609>,  <32.234493, 29.589128, 23.421410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530098, 30.243668, 23.611609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.134888, 30.260063, 23.552107>,  <31.897762, 30.269899, 23.516405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.134888, 30.260063, 23.552107>,  <32.530098, 30.243668, 23.611609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134888, 30.260063, 23.552107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120961, 0.392786, 0.911640,
		0.095795, 0.918716, -0.383125,
		-0.988024, 0.040987, -0.148756,
		31.838480, 30.272360, 23.507481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336662, 30.890434, 23.691019>,  <32.530098, 30.243668, 23.611609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.336662, 30.890434, 23.691019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.987200, 30.699142, 23.726835>,  <31.777521, 30.584368, 23.748325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.987200, 30.699142, 23.726835>,  <32.336662, 30.890434, 23.691019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987200, 30.699142, 23.726835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164129, 0.462928, 0.871068,
		-0.458022, 0.746320, -0.482932,
		-0.873658, -0.478231, 0.089538,
		31.725103, 30.555674, 23.753696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034805, 31.351307, 24.053698>,  <32.336662, 30.890434, 23.691019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034805, 31.351307, 24.053698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.831413, 31.012955, 24.118111>,  <31.709379, 30.809942, 24.156759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.831413, 31.012955, 24.118111>,  <32.034805, 31.351307, 24.053698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831413, 31.012955, 24.118111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411646, 0.403056, 0.817370,
		-0.756305, 0.349326, -0.553149,
		-0.508479, -0.845882, 0.161035,
		31.678869, 30.759190, 24.166422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.496014, 31.636368, 24.282129>,  <32.034805, 31.351307, 24.053698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.496014, 31.636368, 24.282129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.458904, 31.251324, 24.383932>,  <31.436640, 31.020298, 24.445013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.458904, 31.251324, 24.383932>,  <31.496014, 31.636368, 24.282129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458904, 31.251324, 24.383932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444706, 0.268757, 0.854404,
		-0.890859, -0.033916, -0.453012,
		-0.092772, -0.962611, 0.254507,
		31.431072, 30.962540, 24.460283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.804291, 31.619862, 24.602921>,  <31.496014, 31.636368, 24.282129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.804291, 31.619862, 24.602921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.998169, 31.288349, 24.714775>,  <31.114496, 31.089441, 24.781889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.998169, 31.288349, 24.714775>,  <30.804291, 31.619862, 24.602921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998169, 31.288349, 24.714775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420025, 0.059894, 0.905534,
		-0.767237, -0.556361, -0.319077,
		0.484693, -0.828779, 0.279638,
		31.143578, 31.039715, 24.798666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.675268, 31.679354, 25.210167>,  <30.804291, 31.619862, 24.602921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.675268, 31.679354, 25.210167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.925468, 31.372404, 25.266565>,  <31.075588, 31.188234, 25.300404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.925468, 31.372404, 25.266565>,  <30.675268, 31.679354, 25.210167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.925468, 31.372404, 25.266565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061938, 0.131305, 0.989405,
		-0.777760, -0.627609, 0.034602,
		0.625503, -0.767376, 0.140997,
		31.113119, 31.142191, 25.308865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<34.483871, 30.173166, 19.529722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.751713, 29.922558, 19.689274>,  <34.912418, 29.772192, 19.785004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.751713, 29.922558, 19.689274>,  <34.483871, 30.173166, 19.529722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751713, 29.922558, 19.689274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167231, 0.650440, 0.740919,
		-0.723648, -0.429416, 0.540310,
		0.669602, -0.626521, 0.398878,
		34.952595, 29.734602, 19.808937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278034, 29.964933, 20.236120>,  <34.483871, 30.173166, 19.529722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278034, 29.964933, 20.236120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.675285, 29.931623, 20.203232>,  <34.913635, 29.911636, 20.183498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.675285, 29.931623, 20.203232>,  <34.278034, 29.964933, 20.236120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675285, 29.931623, 20.203232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114759, 0.555448, 0.823595,
		-0.022918, -0.827371, 0.561188,
		0.993129, -0.083276, -0.082219,
		34.973225, 29.906641, 20.178566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543652, 29.701693, 20.811398>,  <34.278034, 29.964933, 20.236120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543652, 29.701693, 20.811398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.829109, 29.921240, 20.637295>,  <35.000385, 30.052969, 20.532833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.829109, 29.921240, 20.637295>,  <34.543652, 29.701693, 20.811398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829109, 29.921240, 20.637295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016472, 0.608031, 0.793742,
		0.700310, -0.573623, 0.424880,
		0.713649, 0.548867, -0.435258,
		35.043205, 30.085899, 20.506718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751823, 30.061382, 21.295650>,  <34.543652, 29.701693, 20.811398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751823, 30.061382, 21.295650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.988235, 30.257870, 21.039719>,  <35.130085, 30.375761, 20.886158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.988235, 30.257870, 21.039719>,  <34.751823, 30.061382, 21.295650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988235, 30.257870, 21.039719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149282, 0.712890, 0.685203,
		0.792715, -0.500491, 0.348011,
		0.591031, 0.491219, -0.639833,
		35.165546, 30.405235, 20.847769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286514, 30.230585, 21.739370>,  <34.751823, 30.061382, 21.295650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286514, 30.230585, 21.739370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.304173, 30.478117, 21.425657>,  <35.314766, 30.626637, 21.237429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.304173, 30.478117, 21.425657>,  <35.286514, 30.230585, 21.739370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304173, 30.478117, 21.425657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089365, 0.779456, 0.620049,
		0.995020, -0.097458, -0.020895,
		0.044142, 0.618829, -0.784285,
		35.317413, 30.663765, 21.190372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984543, 30.442591, 21.685917>,  <35.286514, 30.230585, 21.739370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984543, 30.442591, 21.685917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.737453, 30.711815, 21.523235>,  <35.589199, 30.873350, 21.425627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.737453, 30.711815, 21.523235>,  <35.984543, 30.442591, 21.685917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737453, 30.711815, 21.523235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285606, 0.673875, 0.681412,
		0.732699, 0.304766, -0.608498,
		-0.617723, 0.673060, -0.406704,
		35.552135, 30.913733, 21.401224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352879, 30.981049, 21.595167>,  <35.984543, 30.442591, 21.685917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352879, 30.981049, 21.595167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.993721, 31.151518, 21.551041>,  <35.778229, 31.253799, 21.524565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.993721, 31.151518, 21.551041>,  <36.352879, 30.981049, 21.595167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993721, 31.151518, 21.551041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285631, 0.754680, 0.590654,
		0.334976, 0.498832, -0.799348,
		-0.897890, 0.426173, -0.110318,
		35.724354, 31.279369, 21.517944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492619, 31.716021, 21.571239>,  <36.352879, 30.981049, 21.595167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492619, 31.716021, 21.571239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.100899, 31.674658, 21.640842>,  <35.865868, 31.649839, 21.682604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.100899, 31.674658, 21.640842>,  <36.492619, 31.716021, 21.571239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100899, 31.674658, 21.640842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044159, 0.729798, 0.682235,
		-0.197538, 0.675797, -0.710125,
		-0.979300, -0.103409, 0.174006,
		35.807110, 31.643635, 21.693045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229393, 32.409725, 21.524811>,  <36.492619, 31.716021, 21.571239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229393, 32.409725, 21.524811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.969563, 32.205200, 21.749884>,  <35.813663, 32.082485, 21.884928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.969563, 32.205200, 21.749884>,  <36.229393, 32.409725, 21.524811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969563, 32.205200, 21.749884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098095, 0.677535, 0.728919,
		-0.753943, 0.528684, -0.389953,
		-0.649575, -0.511311, 0.562684,
		35.774689, 32.051807, 21.918690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638565, 32.871380, 21.779739>,  <36.229393, 32.409725, 21.524811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638565, 32.871380, 21.779739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.700378, 32.557999, 22.020510>,  <35.737469, 32.369968, 22.164972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.700378, 32.557999, 22.020510>,  <35.638565, 32.871380, 21.779739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700378, 32.557999, 22.020510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105718, 0.618860, 0.778355,
		-0.982315, -0.056649, 0.178461,
		0.154535, -0.783456, 0.601926,
		35.746738, 32.322960, 22.201088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268368, 33.061775, 22.260286>,  <35.638565, 32.871380, 21.779739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268368, 33.061775, 22.260286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.471397, 32.775013, 22.451460>,  <35.593216, 32.602955, 22.566164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.471397, 32.775013, 22.451460>,  <35.268368, 33.061775, 22.260286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471397, 32.775013, 22.451460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069476, 0.586947, 0.806638,
		-0.858801, -0.376226, 0.347728,
		0.507576, -0.716901, 0.477933,
		35.623669, 32.559944, 22.594839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048225, 33.168907, 22.958702>,  <35.268368, 33.061775, 22.260286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048225, 33.168907, 22.958702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.342281, 32.902081, 23.007015>,  <35.518715, 32.741985, 23.036003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.342281, 32.902081, 23.007015>,  <35.048225, 33.168907, 22.958702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342281, 32.902081, 23.007015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253752, 0.435991, 0.863436,
		-0.628629, -0.604100, 0.489785,
		0.735144, -0.667065, 0.120785,
		35.562824, 32.701962, 23.043251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390747, 32.959270, 23.135315>,  <35.048225, 33.168907, 22.958702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390747, 32.959270, 23.135315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.009617, 33.053093, 23.212360>,  <33.780937, 33.109386, 23.258587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.009617, 33.053093, 23.212360>,  <34.390747, 32.959270, 23.135315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009617, 33.053093, 23.212360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272567, -0.382145, -0.882991,
		-0.133506, -0.893839, 0.428052,
		-0.952829, 0.234558, 0.192612,
		33.723766, 33.123459, 23.270144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060707, 32.331406, 22.868143>,  <34.390747, 32.959270, 23.135315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060707, 32.331406, 22.868143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.839203, 32.663422, 22.841652>,  <33.706299, 32.862629, 22.825758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.839203, 32.663422, 22.841652>,  <34.060707, 32.331406, 22.868143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839203, 32.663422, 22.841652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229758, -0.228763, -0.945980,
		-0.800349, -0.508632, 0.317388,
		-0.553762, 0.830037, -0.066228,
		33.673073, 32.912434, 22.821783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361225, 32.031696, 22.702353>,  <34.060707, 32.331406, 22.868143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361225, 32.031696, 22.702353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.361172, 32.416313, 22.592489>,  <33.361141, 32.647083, 22.526571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.361172, 32.416313, 22.592489>,  <33.361225, 32.031696, 22.702353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361172, 32.416313, 22.592489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353139, -0.257010, -0.899577,
		-0.935571, 0.096872, 0.339593,
		-0.000135, 0.961541, -0.274660,
		33.361130, 32.704777, 22.510092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768600, 32.047050, 22.378626>,  <33.361225, 32.031696, 22.702353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768600, 32.047050, 22.378626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.982201, 32.362759, 22.257366>,  <33.110359, 32.552185, 22.184610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.982201, 32.362759, 22.257366>,  <32.768600, 32.047050, 22.378626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982201, 32.362759, 22.257366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370059, -0.104196, -0.923147,
		-0.760200, 0.605140, 0.236436,
		0.533997, 0.789271, -0.303147,
		33.142399, 32.599541, 22.166422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299786, 32.370670, 21.927975>,  <32.768600, 32.047050, 22.378626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299786, 32.370670, 21.927975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.672344, 32.493130, 21.849216>,  <32.895882, 32.566605, 21.801962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.672344, 32.493130, 21.849216>,  <32.299786, 32.370670, 21.927975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672344, 32.493130, 21.849216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180968, -0.079876, -0.980240,
		-0.315822, 0.948628, -0.018995,
		0.931401, 0.306144, -0.196898,
		32.951763, 32.584972, 21.790148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312122, 32.964413, 21.555485>,  <32.299786, 32.370670, 21.927975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312122, 32.964413, 21.555485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.680843, 32.841732, 21.460648>,  <32.902077, 32.768124, 21.403746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.680843, 32.841732, 21.460648>,  <32.312122, 32.964413, 21.555485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680843, 32.841732, 21.460648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316609, -0.242717, -0.916977,
		0.223694, 0.920338, -0.320842,
		0.921802, -0.306704, -0.237093,
		32.957382, 32.749722, 21.389519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.507671, 33.229351, 21.089266>,  <32.312122, 32.964413, 21.555485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.507671, 33.229351, 21.089266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.787800, 32.953644, 21.015007>,  <32.955875, 32.788219, 20.970451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.787800, 32.953644, 21.015007>,  <32.507671, 33.229351, 21.089266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787800, 32.953644, 21.015007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443873, -0.216809, -0.869466,
		0.559045, 0.691306, -0.457783,
		0.700318, -0.689268, -0.185646,
		32.997894, 32.746864, 20.959312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876148, 33.462429, 20.428120>,  <32.507671, 33.229351, 21.089266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876148, 33.462429, 20.428120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.930103, 33.072811, 20.500828>,  <32.962479, 32.839039, 20.544453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.930103, 33.072811, 20.500828>,  <32.876148, 33.462429, 20.428120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930103, 33.072811, 20.500828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242828, -0.210347, -0.946989,
		0.960645, 0.083601, -0.264899,
		0.134890, -0.974046, 0.181769,
		32.970570, 32.780598, 20.555359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182869, 33.156574, 19.796961>,  <32.876148, 33.462429, 20.428120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182869, 33.156574, 19.796961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.052670, 32.835342, 19.996605>,  <32.974548, 32.642601, 20.116392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.052670, 32.835342, 19.996605>,  <33.182869, 33.156574, 19.796961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052670, 32.835342, 19.996605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408637, -0.356538, -0.840176,
		0.852683, -0.477429, -0.212117,
		-0.325497, -0.803083, 0.499110,
		32.955021, 32.594418, 20.146338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371323, 32.478153, 19.410004>,  <33.182869, 33.156574, 19.796961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371323, 32.478153, 19.410004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.054359, 32.404640, 19.642662>,  <32.864182, 32.360531, 19.782257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.054359, 32.404640, 19.642662>,  <33.371323, 32.478153, 19.410004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054359, 32.404640, 19.642662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495315, -0.362668, -0.789389,
		0.356022, -0.913617, 0.196350,
		-0.792408, -0.183784, 0.581646,
		32.816635, 32.349506, 19.817156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218811, 31.775467, 19.271954>,  <33.371323, 32.478153, 19.410004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218811, 31.775467, 19.271954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.877369, 31.902761, 19.436914>,  <32.672504, 31.979137, 19.535891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.877369, 31.902761, 19.436914>,  <33.218811, 31.775467, 19.271954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877369, 31.902761, 19.436914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520518, -0.551901, -0.651510,
		0.020273, -0.770799, 0.636756,
		-0.853609, 0.318235, 0.412404,
		32.621284, 31.998232, 19.560637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898212, 31.134035, 19.383074>,  <33.218811, 31.775467, 19.271954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898212, 31.134035, 19.383074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.614296, 31.415787, 19.380438>,  <32.443947, 31.584839, 19.378857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.614296, 31.415787, 19.380438>,  <32.898212, 31.134035, 19.383074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614296, 31.415787, 19.380438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586733, -0.596365, -0.547808,
		-0.389794, -0.384964, 0.836578,
		-0.709792, 0.704381, -0.006588,
		32.401360, 31.627102, 19.378462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375942, 30.725929, 19.500601>,  <32.898212, 31.134035, 19.383074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375942, 30.725929, 19.500601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.223640, 31.064301, 19.351236>,  <32.132259, 31.267323, 19.261618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.223640, 31.064301, 19.351236>,  <32.375942, 30.725929, 19.500601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.223640, 31.064301, 19.351236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644471, -0.532358, -0.548865,
		-0.663089, 0.031674, 0.747870,
		-0.380750, 0.845927, -0.373414,
		32.109417, 31.318079, 19.239212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824650, 30.662882, 20.104332>,  <32.375942, 30.725929, 19.500601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824650, 30.662882, 20.104332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.509727, 30.418531, 20.070927>,  <32.320774, 30.271921, 20.050884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.509727, 30.418531, 20.070927>,  <32.824650, 30.662882, 20.104332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509727, 30.418531, 20.070927> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054326, -0.066190, 0.996327,
		-0.614162, 0.788953, 0.018926,
		-0.787308, -0.610878, -0.083512,
		32.273537, 30.235268, 20.045874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317356, 30.904358, 20.559580>,  <32.824650, 30.662882, 20.104332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317356, 30.904358, 20.559580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.225456, 30.522228, 20.485209>,  <32.170315, 30.292950, 20.440586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.225456, 30.522228, 20.485209>,  <32.317356, 30.904358, 20.559580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225456, 30.522228, 20.485209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244793, -0.128176, 0.961066,
		-0.941961, 0.266321, -0.204408,
		-0.229752, -0.955324, -0.185930,
		32.156532, 30.235632, 20.429430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626268, 30.772816, 20.704208>,  <32.317356, 30.904358, 20.559580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626268, 30.772816, 20.704208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.805683, 30.415653, 20.719881>,  <31.913332, 30.201357, 20.729284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.805683, 30.415653, 20.719881>,  <31.626268, 30.772816, 20.704208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.805683, 30.415653, 20.719881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395334, -0.158890, 0.904691,
		-0.801577, -0.421278, -0.424264,
		0.448538, -0.892905, 0.039183,
		31.940245, 30.147781, 20.731636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078770, 30.414532, 20.990551>,  <31.626268, 30.772816, 20.704208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.078770, 30.414532, 20.990551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.428528, 30.228390, 21.045511>,  <31.638382, 30.116705, 21.078487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.428528, 30.228390, 21.045511>,  <31.078770, 30.414532, 20.990551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428528, 30.228390, 21.045511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230830, -0.149868, 0.961383,
		-0.426792, -0.872344, -0.238462,
		0.874395, -0.465355, 0.137400,
		31.690845, 30.088783, 21.086731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953049, 29.878296, 21.310579>,  <31.078770, 30.414532, 20.990551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.953049, 29.878296, 21.310579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.345583, 29.904081, 21.383049>,  <31.581104, 29.919552, 21.426531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.345583, 29.904081, 21.383049>,  <30.953049, 29.878296, 21.310579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345583, 29.904081, 21.383049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172698, -0.118990, 0.977761,
		0.084591, -0.990800, -0.105636,
		0.981336, 0.064466, 0.181174,
		31.639984, 29.923420, 21.437401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006931, 29.452114, 21.842144>,  <30.953049, 29.878296, 21.310579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006931, 29.452114, 21.842144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.342230, 29.668322, 21.870943>,  <31.543409, 29.798046, 21.888222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.342230, 29.668322, 21.870943>,  <31.006931, 29.452114, 21.842144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.342230, 29.668322, 21.870943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137973, 0.082503, 0.986994,
		0.527549, -0.837276, 0.143735,
		0.838246, 0.540520, 0.071997,
		31.593704, 29.830477, 21.892542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347597, 29.229321, 22.474482>,  <31.006931, 29.452114, 21.842144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347597, 29.229321, 22.474482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.529797, 29.578550, 22.404894>,  <31.639116, 29.788088, 22.363142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.529797, 29.578550, 22.404894>,  <31.347597, 29.229321, 22.474482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529797, 29.578550, 22.404894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021911, 0.206354, 0.978232,
		0.889968, -0.441770, 0.113124,
		0.455497, 0.873074, -0.173969,
		31.666445, 29.840473, 22.352703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.911938, 29.274698, 22.866547>,  <31.347597, 29.229321, 22.474482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.911938, 29.274698, 22.866547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.801079, 29.649330, 22.780750>,  <31.734564, 29.874109, 22.729273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.801079, 29.649330, 22.780750>,  <31.911938, 29.274698, 22.866547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.801079, 29.649330, 22.780750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064641, 0.204555, 0.976718,
		0.958650, 0.284562, 0.003849,
		-0.277149, 0.936580, -0.214491,
		31.717934, 29.930304, 22.716404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574268, 29.044706, 23.108570>,  <31.911938, 29.274698, 22.866547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574268, 29.044706, 23.108570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.566341, 28.661512, 23.223022>,  <32.561584, 28.431595, 23.291693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.566341, 28.661512, 23.223022>,  <32.574268, 29.044706, 23.108570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566341, 28.661512, 23.223022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061690, -0.286812, -0.955999,
		0.997899, -0.001294, 0.064782,
		-0.019817, -0.957986, 0.286129,
		32.560398, 28.374117, 23.308861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042233, 28.770264, 22.705130>,  <32.574268, 29.044706, 23.108570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042233, 28.770264, 22.705130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.838249, 28.446617, 22.821938>,  <32.715858, 28.252430, 22.892023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.838249, 28.446617, 22.821938>,  <33.042233, 28.770264, 22.705130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838249, 28.446617, 22.821938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000187, -0.339377, -0.940650,
		0.860199, -0.479747, 0.172917,
		-0.509959, -0.809114, 0.292021,
		32.685261, 28.203882, 22.909544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463375, 28.292187, 22.481970>,  <33.042233, 28.770264, 22.705130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463375, 28.292187, 22.481970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.127014, 28.084656, 22.543556>,  <32.925198, 27.960136, 22.580507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.127014, 28.084656, 22.543556>,  <33.463375, 28.292187, 22.481970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127014, 28.084656, 22.543556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259392, -0.636075, -0.726722,
		0.474977, -0.571163, 0.669455,
		-0.840900, -0.518827, 0.153966,
		32.874744, 27.929008, 22.589746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645042, 27.597364, 22.495838>,  <33.463375, 28.292187, 22.481970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645042, 27.597364, 22.495838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.254715, 27.590082, 22.408703>,  <33.020519, 27.585712, 22.356421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.254715, 27.590082, 22.408703>,  <33.645042, 27.597364, 22.495838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254715, 27.590082, 22.408703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171996, -0.678997, -0.713709,
		-0.134919, -0.733915, 0.665707,
		-0.975815, -0.018206, -0.217840,
		32.961971, 27.584621, 22.343351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554165, 26.925188, 22.373058>,  <33.645042, 27.597364, 22.495838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554165, 26.925188, 22.373058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.252476, 27.127930, 22.206089>,  <33.071461, 27.249575, 22.105907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.252476, 27.127930, 22.206089>,  <33.554165, 26.925188, 22.373058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252476, 27.127930, 22.206089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169878, -0.463450, -0.869687,
		-0.634259, -0.726851, 0.263442,
		-0.754226, 0.506854, -0.417423,
		33.026207, 27.279985, 22.080862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121216, 26.406116, 22.003405>,  <33.554165, 26.925188, 22.373058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121216, 26.406116, 22.003405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.059406, 26.759872, 21.827232>,  <33.022320, 26.972126, 21.721529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.059406, 26.759872, 21.827232>,  <33.121216, 26.406116, 22.003405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059406, 26.759872, 21.827232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282846, -0.387525, -0.877395,
		-0.946637, -0.260151, -0.190264,
		-0.154523, 0.884390, -0.440428,
		33.013050, 27.025188, 21.695105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681038, 26.246696, 21.321896>,  <33.121216, 26.406116, 22.003405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681038, 26.246696, 21.321896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.835846, 26.609148, 21.253607>,  <32.928730, 26.826620, 21.212633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.835846, 26.609148, 21.253607>,  <32.681038, 26.246696, 21.321896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835846, 26.609148, 21.253607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162544, -0.249294, -0.954689,
		-0.907633, 0.341731, -0.243768,
		0.387017, 0.906130, -0.170721,
		32.951950, 26.880987, 21.202391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530354, 26.306337, 20.647778>,  <32.681038, 26.246696, 21.321896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530354, 26.306337, 20.647778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.792965, 26.603445, 20.700331>,  <32.950531, 26.781710, 20.731863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.792965, 26.603445, 20.700331>,  <32.530354, 26.306337, 20.647778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792965, 26.603445, 20.700331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326249, -0.122575, -0.937303,
		-0.680094, 0.658233, -0.322802,
		0.656531, 0.742768, 0.131385,
		32.989925, 26.826275, 20.739746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516922, 26.640936, 20.018366>,  <32.530354, 26.306337, 20.647778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516922, 26.640936, 20.018366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.857723, 26.701223, 20.218912>,  <33.062206, 26.737396, 20.339241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.857723, 26.701223, 20.218912>,  <32.516922, 26.640936, 20.018366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857723, 26.701223, 20.218912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521257, -0.333394, -0.785582,
		0.048751, 0.930662, -0.362617,
		0.852006, 0.150719, 0.501368,
		33.113323, 26.746439, 20.369322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.826012, 31.897526, 35.517323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.110710, 32.138935, 35.373558>,  <34.281528, 32.283779, 35.287300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.110710, 32.138935, 35.373558>,  <33.826012, 31.897526, 35.517323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110710, 32.138935, 35.373558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233306, -0.279506, -0.931367,
		-0.662558, 0.746752, -0.058133,
		0.711749, 0.603522, -0.359410,
		34.324234, 32.319992, 35.265736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514206, 32.344757, 35.110374>,  <33.826012, 31.897526, 35.517323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514206, 32.344757, 35.110374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.895477, 32.361454, 34.990570>,  <34.124241, 32.371471, 34.918686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.895477, 32.361454, 34.990570>,  <33.514206, 32.344757, 35.110374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895477, 32.361454, 34.990570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300645, 0.024090, -0.953432,
		-0.032586, 0.998838, 0.035512,
		0.953179, 0.041745, -0.299510,
		34.181431, 32.373978, 34.900719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562351, 32.757088, 34.479023>,  <33.514206, 32.344757, 35.110374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562351, 32.757088, 34.479023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.916962, 32.572739, 34.462681>,  <34.129726, 32.462132, 34.452877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.916962, 32.572739, 34.462681>,  <33.562351, 32.757088, 34.479023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916962, 32.572739, 34.462681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133120, -0.169504, -0.976498,
		0.443114, 0.871130, -0.211620,
		0.886527, -0.460870, -0.040855,
		34.182919, 32.434479, 34.450424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990700, 33.069111, 33.911560>,  <33.562351, 32.757088, 34.479023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990700, 33.069111, 33.911560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.121265, 32.696037, 33.972954>,  <34.199604, 32.472195, 34.009789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.121265, 32.696037, 33.972954>,  <33.990700, 33.069111, 33.911560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121265, 32.696037, 33.972954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128380, -0.204615, -0.970387,
		0.936469, 0.297043, -0.186526,
		0.326413, -0.932683, 0.153481,
		34.219189, 32.416233, 34.018997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605289, 32.860008, 33.431103>,  <33.990700, 33.069111, 33.911560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605289, 32.860008, 33.431103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.391609, 32.542690, 33.547935>,  <34.263401, 32.352299, 33.618034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.391609, 32.542690, 33.547935>,  <34.605289, 32.860008, 33.431103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391609, 32.542690, 33.547935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170328, -0.237423, -0.956357,
		0.828020, -0.560638, -0.008288,
		-0.534202, -0.793294, 0.292083,
		34.231350, 32.304703, 33.635559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721725, 32.418758, 32.901276>,  <34.605289, 32.860008, 33.431103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721725, 32.418758, 32.901276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.401951, 32.259445, 33.081173>,  <34.210087, 32.163857, 33.189110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.401951, 32.259445, 33.081173>,  <34.721725, 32.418758, 32.901276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401951, 32.259445, 33.081173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348045, -0.303139, -0.887114,
		0.489656, -0.865724, 0.103721,
		-0.799438, -0.398281, 0.449745,
		34.162121, 32.139961, 33.216095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635468, 31.699022, 32.556953>,  <34.721725, 32.418758, 32.901276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635468, 31.699022, 32.556953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.288464, 31.749063, 32.749523>,  <34.080261, 31.779089, 32.865067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.288464, 31.749063, 32.749523>,  <34.635468, 31.699022, 32.556953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288464, 31.749063, 32.749523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473173, -0.506030, -0.721138,
		0.153400, -0.853394, 0.498183,
		-0.867511, 0.125104, 0.481429,
		34.028210, 31.786594, 32.893951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277817, 31.110619, 32.540394>,  <34.635468, 31.699022, 32.556953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277817, 31.110619, 32.540394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.971836, 31.363621, 32.589031>,  <33.788246, 31.515423, 32.618214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.971836, 31.363621, 32.589031>,  <34.277817, 31.110619, 32.540394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971836, 31.363621, 32.589031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522518, -0.499034, -0.691332,
		-0.376593, -0.592370, 0.712233,
		-0.764952, 0.632506, 0.121592,
		33.742352, 31.553373, 32.625507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502480, 30.710876, 32.584198>,  <34.277817, 31.110619, 32.540394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502480, 30.710876, 32.584198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.429482, 31.089020, 32.476128>,  <33.385681, 31.315907, 32.411285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.429482, 31.089020, 32.476128>,  <33.502480, 30.710876, 32.584198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429482, 31.089020, 32.476128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471959, -0.325290, -0.819415,
		-0.862526, -0.022028, 0.505534,
		-0.182495, 0.945358, -0.270175,
		33.374733, 31.372627, 32.395077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715240, 30.824781, 32.542908>,  <33.502480, 30.710876, 32.584198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715240, 30.824781, 32.542908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.930138, 31.067310, 32.308388>,  <33.059074, 31.212828, 32.167675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.930138, 31.067310, 32.308388>,  <32.715240, 30.824781, 32.542908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930138, 31.067310, 32.308388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512711, -0.317185, -0.797823,
		-0.669703, 0.729225, 0.140464,
		0.537239, 0.606321, -0.586301,
		33.091309, 31.249207, 32.132496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211243, 31.084297, 32.046494>,  <32.715240, 30.824781, 32.542908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211243, 31.084297, 32.046494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.560856, 31.195738, 31.887270>,  <32.770622, 31.262602, 31.791737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.560856, 31.195738, 31.887270>,  <32.211243, 31.084297, 32.046494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560856, 31.195738, 31.887270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273330, -0.395400, -0.876898,
		-0.401696, 0.875238, -0.269442,
		0.874031, 0.278600, -0.398060,
		32.823067, 31.279318, 31.767853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015488, 31.576658, 31.504557>,  <32.211243, 31.084297, 32.046494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015488, 31.576658, 31.504557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.364613, 31.394346, 31.434746>,  <32.574089, 31.284960, 31.392859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.364613, 31.394346, 31.434746>,  <32.015488, 31.576658, 31.504557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364613, 31.394346, 31.434746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326169, -0.278726, -0.903286,
		0.363053, 0.845327, -0.391937,
		0.872815, -0.455779, -0.174527,
		32.626457, 31.257612, 31.382387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133972, 32.410084, 31.201559>,  <32.015488, 31.576658, 31.504557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133972, 32.410084, 31.201559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.931726, 32.719524, 31.048775>,  <31.810377, 32.905190, 30.957104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.931726, 32.719524, 31.048775>,  <32.133972, 32.410084, 31.201559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931726, 32.719524, 31.048775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131374, 0.506596, 0.852116,
		0.852696, 0.380666, -0.357775,
		-0.505619, 0.773598, -0.381963,
		31.780041, 32.951603, 30.934185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496761, 33.000820, 31.393133>,  <32.133972, 32.410084, 31.201559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496761, 33.000820, 31.393133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.124710, 33.133846, 31.330824>,  <31.901480, 33.213661, 31.293438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.124710, 33.133846, 31.330824>,  <32.496761, 33.000820, 31.393133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124710, 33.133846, 31.330824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032752, 0.497611, 0.866782,
		0.365772, 0.801116, -0.473734,
		-0.930128, 0.332561, -0.155774,
		31.845673, 33.233616, 31.284092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.472034, 33.667347, 31.547054>,  <32.496761, 33.000820, 31.393133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.472034, 33.667347, 31.547054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.075378, 33.619354, 31.566069>,  <31.837385, 33.590561, 31.577477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.075378, 33.619354, 31.566069>,  <32.472034, 33.667347, 31.547054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075378, 33.619354, 31.566069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040289, 0.637749, 0.769190,
		-0.122602, 0.760843, -0.637250,
		-0.991638, -0.119978, 0.047535,
		31.777887, 33.583363, 31.580330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077557, 34.394661, 31.515118>,  <32.472034, 33.667347, 31.547054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077557, 34.394661, 31.515118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.856619, 34.132889, 31.721668>,  <31.724056, 33.975826, 31.845598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.856619, 34.132889, 31.721668>,  <32.077557, 34.394661, 31.515118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856619, 34.132889, 31.721668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053327, 0.645909, 0.761549,
		-0.831911, 0.393098, -0.391661,
		-0.552341, -0.654427, 0.516376,
		31.690916, 33.936562, 31.876581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774527, 34.891388, 31.974382>,  <32.077557, 34.394661, 31.515118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774527, 34.891388, 31.974382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.676414, 34.527416, 32.108170>,  <31.617548, 34.309032, 32.188442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.676414, 34.527416, 32.108170>,  <31.774527, 34.891388, 31.974382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676414, 34.527416, 32.108170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173042, 0.380561, 0.908422,
		-0.953884, 0.164940, -0.250799,
		-0.245280, -0.909928, 0.334469,
		31.602831, 34.254436, 32.208511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183849, 34.983047, 32.240894>,  <31.774527, 34.891388, 31.974382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183849, 34.983047, 32.240894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.347509, 34.662792, 32.415970>,  <31.445705, 34.470638, 32.521015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.347509, 34.662792, 32.415970>,  <31.183849, 34.983047, 32.240894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347509, 34.662792, 32.415970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042108, 0.462599, 0.885567,
		-0.911496, -0.380759, 0.155558,
		0.409149, -0.800640, 0.437690,
		31.470255, 34.422600, 32.547276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.767044, 34.736446, 32.849030>,  <31.183849, 34.983047, 32.240894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.767044, 34.736446, 32.849030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.133566, 34.598274, 32.930084>,  <31.353479, 34.515369, 32.978718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.133566, 34.598274, 32.930084>,  <30.767044, 34.736446, 32.849030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.133566, 34.598274, 32.930084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038331, 0.428022, 0.902955,
		-0.398645, -0.835149, 0.378958,
		0.916304, -0.345433, 0.202641,
		31.408457, 34.494644, 32.990875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.757532, 34.526817, 33.608246>,  <30.767044, 34.736446, 32.849030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.757532, 34.526817, 33.608246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.147585, 34.563759, 33.527664>,  <31.381617, 34.585926, 33.479317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.147585, 34.563759, 33.527664>,  <30.757532, 34.526817, 33.608246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147585, 34.563759, 33.527664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096953, 0.639634, 0.762541,
		0.199284, -0.763111, 0.614774,
		0.975134, 0.092358, -0.201454,
		31.440125, 34.591465, 33.467228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.159494, 34.462341, 34.208702>,  <30.757532, 34.526817, 33.608246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.159494, 34.462341, 34.208702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.428247, 34.635429, 33.968258>,  <31.589499, 34.739281, 33.823994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.428247, 34.635429, 33.968258>,  <31.159494, 34.462341, 34.208702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428247, 34.635429, 33.968258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176409, 0.694736, 0.697296,
		0.719343, -0.574542, 0.390445,
		0.671882, 0.432717, -0.601108,
		31.629812, 34.765244, 33.787926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611532, 34.753387, 34.714081>,  <31.159494, 34.462341, 34.208702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.611532, 34.753387, 34.714081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.733126, 34.920082, 34.371403>,  <31.806082, 35.020100, 34.165794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.733126, 34.920082, 34.371403>,  <31.611532, 34.753387, 34.714081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733126, 34.920082, 34.371403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294191, 0.814236, 0.500472,
		0.906116, -0.404167, 0.124915,
		0.303984, 0.416737, -0.856694,
		31.824322, 35.045101, 34.114395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255939, 35.110306, 34.884487>,  <31.611532, 34.753387, 34.714081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255939, 35.110306, 34.884487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.114254, 35.281097, 34.551685>,  <32.029243, 35.383572, 34.352005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.114254, 35.281097, 34.551685>,  <32.255939, 35.110306, 34.884487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114254, 35.281097, 34.551685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091396, 0.901231, 0.423592,
		0.930687, 0.074002, -0.358254,
		-0.354216, 0.426974, -0.832000,
		32.007988, 35.409191, 34.302086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571522, 35.749470, 34.871998>,  <32.255939, 35.110306, 34.884487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571522, 35.749470, 34.871998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.248875, 35.792656, 34.639549>,  <32.055286, 35.818569, 34.500080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.248875, 35.792656, 34.639549>,  <32.571522, 35.749470, 34.871998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248875, 35.792656, 34.639549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110864, 0.938091, 0.328168,
		0.580579, 0.329133, -0.744714,
		-0.806621, 0.107966, -0.581125,
		32.006889, 35.825047, 34.465210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690350, 36.388809, 34.522224>,  <32.571522, 35.749470, 34.871998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690350, 36.388809, 34.522224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.299034, 36.307335, 34.537510>,  <32.064243, 36.258450, 34.546680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.299034, 36.307335, 34.537510>,  <32.690350, 36.388809, 34.522224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299034, 36.307335, 34.537510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181801, 0.931996, 0.313580,
		-0.099491, 0.299824, -0.948792,
		-0.978289, -0.203690, 0.038217,
		32.005547, 36.246227, 34.548973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359676, 36.850079, 34.045601>,  <32.690350, 36.388809, 34.522224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359676, 36.850079, 34.045601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.122299, 36.723717, 34.341717>,  <31.979872, 36.647900, 34.519386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.122299, 36.723717, 34.341717>,  <32.359676, 36.850079, 34.045601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122299, 36.723717, 34.341717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228625, 0.948033, 0.221278,
		-0.771722, -0.037933, -0.634827,
		-0.593444, -0.315902, 0.740291,
		31.944265, 36.628944, 34.563805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254410, 36.320732, 33.450119>,  <32.359676, 36.850079, 34.045601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254410, 36.320732, 33.450119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.274185, 35.951023, 33.601528>,  <32.286053, 35.729198, 33.692375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.274185, 35.951023, 33.601528>,  <32.254410, 36.320732, 33.450119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274185, 35.951023, 33.601528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998227, -0.033150, 0.049443,
		-0.033150, -0.380296, -0.924271,
		-0.049443, 0.924271, -0.378522,
		32.289017, 35.673740, 33.715084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684677, 36.871040, 33.204746>,  <32.254410, 36.320732, 33.450119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684677, 36.871040, 33.204746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.076260, 36.947426, 33.233547>,  <33.311207, 36.993256, 33.250828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.076260, 36.947426, 33.233547>,  <32.684677, 36.871040, 33.204746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076260, 36.947426, 33.233547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141051, -0.378126, -0.914946,
		-0.147495, 0.905845, -0.397103,
		0.978953, 0.190961, 0.071999,
		33.369946, 37.004715, 33.255146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847431, 37.323547, 32.775055>,  <32.684677, 36.871040, 33.204746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847431, 37.323547, 32.775055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.176899, 37.102516, 32.826008>,  <33.374580, 36.969898, 32.856579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.176899, 37.102516, 32.826008>,  <32.847431, 37.323547, 32.775055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176899, 37.102516, 32.826008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039575, -0.168076, -0.984980,
		0.565692, 0.816336, -0.116570,
		0.823666, -0.552582, 0.127386,
		33.424000, 36.936741, 32.864223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239758, 37.506737, 32.284943>,  <32.847431, 37.323547, 32.775055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239758, 37.506737, 32.284943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.419903, 37.161880, 32.377796>,  <33.527988, 36.954967, 32.433510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.419903, 37.161880, 32.377796>,  <33.239758, 37.506737, 32.284943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419903, 37.161880, 32.377796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078030, -0.297007, -0.951682,
		0.889430, 0.410487, -0.201034,
		0.450362, -0.862141, 0.232137,
		33.555012, 36.903236, 32.447437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887074, 37.391441, 31.951235>,  <33.239758, 37.506737, 32.284943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887074, 37.391441, 31.951235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.723164, 37.032410, 32.016270>,  <33.624817, 36.816990, 32.055290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.723164, 37.032410, 32.016270>,  <33.887074, 37.391441, 31.951235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723164, 37.032410, 32.016270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045457, -0.198110, -0.979125,
		0.911052, -0.393833, 0.121982,
		-0.409777, -0.897579, 0.162586,
		33.600231, 36.763138, 32.065044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001038, 37.039730, 31.293386>,  <33.887074, 37.391441, 31.951235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001038, 37.039730, 31.293386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.756409, 36.790974, 31.489029>,  <33.609631, 36.641720, 31.606415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.756409, 36.790974, 31.489029>,  <34.001038, 37.039730, 31.293386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756409, 36.790974, 31.489029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170985, -0.499699, -0.849155,
		0.772491, -0.602951, 0.199268,
		-0.611573, -0.621893, 0.489109,
		33.572937, 36.604404, 31.635761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124916, 36.489590, 31.004198>,  <34.001038, 37.039730, 31.293386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124916, 36.489590, 31.004198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.811348, 36.329201, 31.193804>,  <33.623207, 36.232967, 31.307568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.811348, 36.329201, 31.193804>,  <34.124916, 36.489590, 31.004198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811348, 36.329201, 31.193804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267089, -0.471421, -0.840491,
		0.560478, -0.785481, 0.262459,
		-0.783918, -0.400977, 0.474015,
		33.576172, 36.208908, 31.336008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235950, 35.750038, 31.117319>,  <34.124916, 36.489590, 31.004198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235950, 35.750038, 31.117319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.842583, 35.821384, 31.104219>,  <33.606564, 35.864193, 31.096359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.842583, 35.821384, 31.104219>,  <34.235950, 35.750038, 31.117319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842583, 35.821384, 31.104219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084544, -0.610675, -0.787355,
		-0.160439, -0.771531, 0.615629,
		-0.983418, 0.178370, -0.032748,
		33.547558, 35.874897, 31.094395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886143, 35.059330, 31.133795>,  <34.235950, 35.750038, 31.117319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886143, 35.059330, 31.133795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.667969, 35.349335, 30.965578>,  <33.537064, 35.523338, 30.864647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.667969, 35.349335, 30.965578>,  <33.886143, 35.059330, 31.133795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667969, 35.349335, 30.965578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137290, -0.572255, -0.808503,
		-0.826835, -0.383246, 0.411663,
		-0.545431, 0.725016, -0.420544,
		33.504341, 35.566841, 30.839415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550461, 34.681179, 30.718645>,  <33.886143, 35.059330, 31.133795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550461, 34.681179, 30.718645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.448681, 35.045441, 30.588434>,  <33.387611, 35.263996, 30.510307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.448681, 35.045441, 30.588434>,  <33.550461, 34.681179, 30.718645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448681, 35.045441, 30.588434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225793, -0.383245, -0.895623,
		-0.940358, -0.154388, 0.303135,
		-0.254449, 0.910653, -0.325527,
		33.372345, 35.318638, 30.490776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097862, 34.505699, 30.225271>,  <33.550461, 34.681179, 30.718645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097862, 34.505699, 30.225271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.211048, 34.879261, 30.137869>,  <33.278961, 35.103397, 30.085428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.211048, 34.879261, 30.137869>,  <33.097862, 34.505699, 30.225271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211048, 34.879261, 30.137869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208550, -0.162455, -0.964425,
		-0.936182, 0.318468, 0.148798,
		0.282966, 0.933909, -0.218504,
		33.295937, 35.159435, 30.072317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485706, 34.795753, 29.726055>,  <33.097862, 34.505699, 30.225271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485706, 34.795753, 29.726055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.821720, 35.007690, 29.679392>,  <33.023327, 35.134853, 29.651394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.821720, 35.007690, 29.679392>,  <32.485706, 34.795753, 29.726055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821720, 35.007690, 29.679392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145564, 0.012970, -0.989264,
		-0.522645, 0.847994, 0.088022,
		0.840031, 0.529847, -0.116659,
		33.073730, 35.166645, 29.644394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.339390, 35.078308, 29.179697>,  <32.485706, 34.795753, 29.726055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.339390, 35.078308, 29.179697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.731430, 35.154415, 29.202322>,  <32.966656, 35.200081, 29.215897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.731430, 35.154415, 29.202322>,  <32.339390, 35.078308, 29.179697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731430, 35.154415, 29.202322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085391, -0.146909, -0.985457,
		-0.179195, 0.970677, -0.160233,
		0.980101, 0.190272, 0.056562,
		33.025459, 35.211498, 29.219290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506790, 35.537472, 28.652748>,  <32.339390, 35.078308, 29.179697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506790, 35.537472, 28.652748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.864231, 35.370586, 28.718966>,  <33.078697, 35.270454, 28.758696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.864231, 35.370586, 28.718966>,  <32.506790, 35.537472, 28.652748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864231, 35.370586, 28.718966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165634, -0.036275, -0.985520,
		0.417181, 0.908083, 0.036690,
		0.893603, -0.417217, 0.165543,
		33.132313, 35.245422, 28.768629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137615, 35.923759, 28.339315>,  <32.506790, 35.537472, 28.652748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137615, 35.923759, 28.339315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.260715, 35.543461, 28.354109>,  <33.334576, 35.315281, 28.362986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.260715, 35.543461, 28.354109>,  <33.137615, 35.923759, 28.339315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.260715, 35.543461, 28.354109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120049, 0.000241, -0.992768,
		0.943864, 0.309961, 0.114210,
		0.307747, -0.950749, 0.036983,
		33.353039, 35.258236, 28.365204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638702, 35.844334, 27.797041>,  <33.137615, 35.923759, 28.339315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638702, 35.844334, 27.797041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.587467, 35.462944, 27.906206>,  <33.556725, 35.234112, 27.971706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.587467, 35.462944, 27.906206>,  <33.638702, 35.844334, 27.797041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587467, 35.462944, 27.906206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112450, -0.287369, -0.951196,
		0.985367, -0.091148, 0.144026,
		-0.128089, -0.953473, 0.272914,
		33.549042, 35.176903, 27.988081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182793, 35.534149, 27.501167>,  <33.638702, 35.844334, 27.797041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182793, 35.534149, 27.501167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.909451, 35.250092, 27.568956>,  <33.745445, 35.079659, 27.609629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.909451, 35.250092, 27.568956>,  <34.182793, 35.534149, 27.501167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909451, 35.250092, 27.568956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132639, -0.349019, -0.927681,
		0.717937, -0.611456, 0.332697,
		-0.683355, -0.710145, 0.169471,
		33.704445, 35.037048, 27.619797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504574, 34.886875, 27.377552>,  <34.182793, 35.534149, 27.501167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504574, 34.886875, 27.377552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.110855, 34.835468, 27.329157>,  <33.874622, 34.804623, 27.300119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.110855, 34.835468, 27.329157>,  <34.504574, 34.886875, 27.377552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110855, 34.835468, 27.329157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160229, -0.363052, -0.917889,
		0.074040, -0.922863, 0.377944,
		-0.984299, -0.128518, -0.120989,
		33.815567, 34.796913, 27.292860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408146, 34.295227, 27.064556>,  <34.504574, 34.886875, 27.377552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408146, 34.295227, 27.064556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.049511, 34.453651, 26.985294>,  <33.834328, 34.548706, 26.937738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.049511, 34.453651, 26.985294>,  <34.408146, 34.295227, 27.064556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049511, 34.453651, 26.985294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001253, -0.449703, -0.893177,
		-0.442843, -0.800573, 0.403699,
		-0.896598, 0.396043, -0.198145,
		33.780533, 34.572468, 26.925848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026558, 33.794670, 26.718725>,  <34.408146, 34.295227, 27.064556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026558, 33.794670, 26.718725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.828377, 34.127129, 26.617750>,  <33.709469, 34.326603, 26.557165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.828377, 34.127129, 26.617750>,  <34.026558, 33.794670, 26.718725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828377, 34.127129, 26.617750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045493, -0.315044, -0.947986,
		-0.867441, -0.458202, 0.193902,
		-0.495457, 0.831143, -0.252438,
		33.679741, 34.376472, 26.542019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424374, 33.587936, 26.460958>,  <34.026558, 33.794670, 26.718725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424374, 33.587936, 26.460958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.508434, 33.950119, 26.313450>,  <33.558872, 34.167427, 26.224945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.508434, 33.950119, 26.313450>,  <33.424374, 33.587936, 26.460958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508434, 33.950119, 26.313450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143548, -0.344529, -0.927736,
		-0.967073, 0.247903, 0.057573,
		0.210153, 0.905453, -0.368770,
		33.571480, 34.221756, 26.202818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963528, 33.601009, 25.902836>,  <33.424374, 33.587936, 26.460958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963528, 33.601009, 25.902836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.211353, 33.908653, 25.840092>,  <33.360050, 34.093239, 25.802444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.211353, 33.908653, 25.840092>,  <32.963528, 33.601009, 25.902836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211353, 33.908653, 25.840092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093978, -0.125718, -0.987605,
		-0.779301, 0.626625, -0.005610,
		0.619563, 0.769114, -0.156862,
		33.397221, 34.139389, 25.793034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631775, 33.964310, 25.501905>,  <32.963528, 33.601009, 25.902836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631775, 33.964310, 25.501905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.002014, 34.108467, 25.455622>,  <33.224155, 34.194962, 25.427851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.002014, 34.108467, 25.455622>,  <32.631775, 33.964310, 25.501905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002014, 34.108467, 25.455622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004317, -0.315726, -0.948840,
		-0.378490, 0.877743, -0.293791,
		0.925595, 0.360395, -0.115710,
		33.279694, 34.216587, 25.420908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642555, 34.351337, 24.908209>,  <32.631775, 33.964310, 25.501905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642555, 34.351337, 24.908209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.022957, 34.237911, 24.957504>,  <33.251198, 34.169853, 24.987082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.022957, 34.237911, 24.957504>,  <32.642555, 34.351337, 24.908209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022957, 34.237911, 24.957504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018843, -0.344684, -0.938530,
		0.308616, 0.894864, -0.322452,
		0.951000, -0.283569, 0.123237,
		33.308258, 34.152840, 24.994474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909229, 34.502785, 24.268450>,  <32.642555, 34.351337, 24.908209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909229, 34.502785, 24.268450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.176270, 34.256687, 24.436157>,  <33.336494, 34.109028, 24.536781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.176270, 34.256687, 24.436157>,  <32.909229, 34.502785, 24.268450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176270, 34.256687, 24.436157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080855, -0.499898, -0.862302,
		0.740116, 0.609573, -0.283986,
		0.667600, -0.615242, 0.419270,
		33.376549, 34.072113, 24.561937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529545, 34.446442, 23.820574>,  <32.909229, 34.502785, 24.268450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529545, 34.446442, 23.820574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.566807, 34.125015, 24.055725>,  <33.589165, 33.932159, 24.196815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.566807, 34.125015, 24.055725>,  <33.529545, 34.446442, 23.820574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566807, 34.125015, 24.055725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272885, -0.547229, -0.791249,
		0.957526, 0.234128, 0.168307,
		0.093151, -0.803570, 0.587876,
		33.594753, 33.883945, 24.232088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175468, 34.176071, 23.689695>,  <33.529545, 34.446442, 23.820574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175468, 34.176071, 23.689695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.935352, 33.896698, 23.845564>,  <33.791283, 33.729073, 23.939085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.935352, 33.896698, 23.845564>,  <34.175468, 34.176071, 23.689695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935352, 33.896698, 23.845564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137995, -0.570363, -0.809718,
		0.787786, -0.432294, 0.438765,
		-0.600291, -0.698432, 0.389670,
		33.755264, 33.687168, 23.962465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445782, 33.551052, 23.543556>,  <34.175468, 34.176071, 23.689695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445782, 33.551052, 23.543556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.054855, 33.480049, 23.589766>,  <33.820301, 33.437447, 23.617491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.054855, 33.480049, 23.589766>,  <34.445782, 33.551052, 23.543556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054855, 33.480049, 23.589766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017688, -0.475159, -0.879722,
		0.211048, -0.861810, 0.461241,
		-0.977316, -0.177505, 0.115525,
		33.761662, 33.426796, 23.624422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961445, 32.902355, 23.623299>,  <34.445782, 33.551052, 23.543556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961445, 32.902355, 23.623299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.343906, 32.851143, 23.517937>,  <35.573383, 32.820415, 23.454720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.343906, 32.851143, 23.517937>,  <34.961445, 32.902355, 23.623299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343906, 32.851143, 23.517937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291063, 0.515238, 0.806109,
		0.032510, -0.847430, 0.529910,
		0.956151, -0.128030, -0.263406,
		35.630753, 32.812733, 23.438915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287781, 32.926422, 24.272987>,  <34.961445, 32.902355, 23.623299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287781, 32.926422, 24.272987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.593075, 32.991535, 24.022877>,  <35.776253, 33.030605, 23.872810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.593075, 32.991535, 24.022877>,  <35.287781, 32.926422, 24.272987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593075, 32.991535, 24.022877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447267, 0.565278, 0.693119,
		0.466284, -0.808679, 0.358633,
		0.763237, 0.162785, -0.625275,
		35.822044, 33.040371, 23.835295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859432, 32.650837, 24.650993>,  <35.287781, 32.926422, 24.272987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859432, 32.650837, 24.650993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.957989, 32.937244, 24.389730>,  <36.017120, 33.109089, 24.232973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.957989, 32.937244, 24.389730>,  <35.859432, 32.650837, 24.650993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957989, 32.937244, 24.389730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433386, 0.521400, 0.735063,
		0.866873, -0.464180, -0.181845,
		0.246387, 0.716016, -0.653157,
		36.031906, 33.152050, 24.193783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564976, 32.785694, 24.775261>,  <35.859432, 32.650837, 24.650993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564976, 32.785694, 24.775261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.459911, 33.127636, 24.596273>,  <36.396873, 33.332802, 24.488880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.459911, 33.127636, 24.596273>,  <36.564976, 32.785694, 24.775261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459911, 33.127636, 24.596273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368594, 0.517475, 0.772242,
		0.891711, 0.037901, -0.451015,
		-0.262658, 0.854858, -0.447468,
		36.381115, 33.384094, 24.462032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176727, 33.166367, 24.838469>,  <36.564976, 32.785694, 24.775261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176727, 33.166367, 24.838469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.900959, 33.436424, 24.733490>,  <36.735497, 33.598457, 24.670504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.900959, 33.436424, 24.733490>,  <37.176727, 33.166367, 24.838469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900959, 33.436424, 24.733490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317146, 0.607083, 0.728607,
		0.651240, 0.419085, -0.632656,
		-0.689423, 0.675143, -0.262446,
		36.694134, 33.638966, 24.654757>
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
