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
	<24.890165, 34.988224, 35.051529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.549419, 34.779194, 35.065632>,  <24.344973, 34.653774, 35.074093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.549419, 34.779194, 35.065632>,  <24.890165, 34.988224, 35.051529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.549419, 34.779194, 35.065632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482486, 0.809144, 0.335399,
		-0.203800, 0.268703, -0.941416,
		-0.851864, -0.522574, 0.035259,
		24.293859, 34.622421, 35.076210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.630444, 34.387539, 34.688457>,  <24.890165, 34.988224, 35.051529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.630444, 34.387539, 34.688457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.895636, 34.441067, 34.983089>,  <25.054750, 34.473183, 35.159870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.895636, 34.441067, 34.983089>,  <24.630444, 34.387539, 34.688457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.895636, 34.441067, 34.983089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300959, -0.948531, -0.098556,
		0.685480, 0.287021, -0.669131,
		0.662979, 0.133823, 0.736580,
		25.094530, 34.481213, 35.204063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.956564, 33.793411, 34.642471>,  <24.630444, 34.387539, 34.688457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.956564, 33.793411, 34.642471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.145073, 33.974190, 34.945431>,  <25.258179, 34.082657, 35.127205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.145073, 33.974190, 34.945431>,  <24.956564, 33.793411, 34.642471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.145073, 33.974190, 34.945431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508453, -0.840895, 0.185394,
		0.720679, 0.297729, -0.626083,
		0.471273, 0.451943, 0.757396,
		25.286455, 34.109772, 35.172649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.683647, 33.618229, 34.629856>,  <24.956564, 33.793411, 34.642471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.683647, 33.618229, 34.629856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.562826, 33.706062, 35.000919>,  <25.490334, 33.758762, 35.223557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.562826, 33.706062, 35.000919>,  <25.683647, 33.618229, 34.629856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.562826, 33.706062, 35.000919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274179, -0.911980, 0.305152,
		0.913012, 0.346515, 0.215258,
		-0.302051, 0.219588, 0.927656,
		25.472210, 33.771938, 35.279217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.240768, 33.126827, 34.448982>,  <25.683647, 33.618229, 34.629856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.240768, 33.126827, 34.448982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.006353, 32.822853, 34.336517>,  <24.865704, 32.640469, 34.269039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.006353, 32.822853, 34.336517>,  <25.240768, 33.126827, 34.448982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.006353, 32.822853, 34.336517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357026, 0.553670, -0.752318,
		0.727389, -0.340502, -0.595788,
		-0.586036, -0.759940, -0.281165,
		24.830542, 32.594872, 34.252167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.456257, 32.822956, 33.855782>,  <25.240768, 33.126827, 34.448982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.456257, 32.822956, 33.855782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.061733, 32.825275, 33.921703>,  <24.825020, 32.826668, 33.961254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.061733, 32.825275, 33.921703>,  <25.456257, 32.822956, 33.855782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.061733, 32.825275, 33.921703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127655, 0.605807, -0.785304,
		-0.104390, -0.795591, -0.596773,
		-0.986309, 0.005797, 0.164801,
		24.765841, 32.827015, 33.971142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.203346, 32.574368, 33.260853>,  <25.456257, 32.822956, 33.855782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.203346, 32.574368, 33.260853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.934626, 32.797848, 33.455391>,  <24.773394, 32.931934, 33.572113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.934626, 32.797848, 33.455391>,  <25.203346, 32.574368, 33.260853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.934626, 32.797848, 33.455391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122723, 0.563554, -0.816912,
		-0.730493, -0.608490, -0.310032,
		-0.671803, 0.558701, 0.486348,
		24.733086, 32.965458, 33.601295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.011436, 32.822517, 32.499489>,  <25.203346, 32.574368, 33.260853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.011436, 32.822517, 32.499489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.186745, 33.178677, 32.450314>,  <25.291929, 33.392372, 32.420807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.186745, 33.178677, 32.450314>,  <25.011436, 32.822517, 32.499489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.186745, 33.178677, 32.450314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098115, -0.088571, -0.991226,
		-0.893472, 0.446488, 0.048543,
		0.438271, 0.890395, -0.122943,
		25.318226, 33.445797, 32.413429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.610735, 33.329029, 31.969358>,  <25.011436, 32.822517, 32.499489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.610735, 33.329029, 31.969358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.008688, 33.348911, 32.004539>,  <25.247459, 33.360840, 32.025646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.008688, 33.348911, 32.004539>,  <24.610735, 33.329029, 31.969358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.008688, 33.348911, 32.004539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093587, -0.125550, -0.987663,
		-0.038053, 0.990841, -0.129560,
		0.994884, 0.049709, 0.087952,
		25.307154, 33.363823, 32.030926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.031464, 33.762886, 31.410585>,  <24.610735, 33.329029, 31.969358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.031464, 33.762886, 31.410585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.267418, 33.472366, 31.551737>,  <25.408991, 33.298054, 31.636427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.267418, 33.472366, 31.551737>,  <25.031464, 33.762886, 31.410585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.267418, 33.472366, 31.551737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283754, -0.222691, -0.932680,
		0.755989, 0.650304, 0.074729,
		0.589884, -0.726301, 0.352879,
		25.444384, 33.254475, 31.657600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.765287, 33.824238, 31.361712>,  <25.031464, 33.762886, 31.410585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.765287, 33.824238, 31.361712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.692549, 33.430916, 31.364584>,  <25.648905, 33.194923, 31.366308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.692549, 33.430916, 31.364584>,  <25.765287, 33.824238, 31.361712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.692549, 33.430916, 31.364584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339796, -0.069690, -0.937914,
		0.922752, -0.168117, 0.346794,
		-0.181847, -0.983301, 0.007181,
		25.637995, 33.135925, 31.366739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.333380, 33.362225, 31.269657>,  <25.765287, 33.824238, 31.361712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.333380, 33.362225, 31.269657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.656488, 33.363663, 31.033863>,  <26.850353, 33.364525, 30.892387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.656488, 33.363663, 31.033863>,  <26.333380, 33.362225, 31.269657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.656488, 33.363663, 31.033863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563951, -0.295892, 0.770978,
		-0.171654, -0.955215, -0.241040,
		0.807771, 0.003593, -0.589486,
		26.898819, 33.364742, 30.857018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.731211, 32.666809, 31.301836>,  <26.333380, 33.362225, 31.269657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.731211, 32.666809, 31.301836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.965906, 32.982277, 31.228369>,  <27.106724, 33.171558, 31.184288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.965906, 32.982277, 31.228369>,  <26.731211, 32.666809, 31.301836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.965906, 32.982277, 31.228369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532111, -0.204535, 0.821598,
		0.610405, -0.579795, -0.539670,
		0.586739, 0.788672, -0.183666,
		27.141928, 33.218880, 31.173269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.417723, 32.409492, 31.341919>,  <26.731211, 32.666809, 31.301836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.417723, 32.409492, 31.341919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.396063, 32.792191, 31.456255>,  <27.383068, 33.021809, 31.524857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.396063, 32.792191, 31.456255>,  <27.417723, 32.409492, 31.341919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.396063, 32.792191, 31.456255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547042, -0.211056, 0.810062,
		0.835352, 0.200230, -0.511952,
		-0.054148, 0.956746, 0.285840,
		27.379818, 33.079216, 31.542007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.111238, 32.826653, 31.328962>,  <27.417723, 32.409492, 31.341919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.111238, 32.826653, 31.328962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.822723, 32.903725, 31.595081>,  <27.649614, 32.949966, 31.754753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.822723, 32.903725, 31.595081>,  <28.111238, 32.826653, 31.328962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.822723, 32.903725, 31.595081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601690, -0.301493, 0.739643,
		0.343097, 0.933797, 0.101528,
		-0.721286, 0.192681, 0.665298,
		27.606339, 32.961529, 31.794670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.279547, 33.422359, 31.770355>,  <28.111238, 32.826653, 31.328962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.279547, 33.422359, 31.770355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.051580, 33.146828, 31.949560>,  <27.914801, 32.981510, 32.057083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.051580, 33.146828, 31.949560>,  <28.279547, 33.422359, 31.770355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.051580, 33.146828, 31.949560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676150, -0.083311, 0.732038,
		-0.466922, 0.720125, 0.513229,
		-0.569916, -0.688825, 0.448013,
		27.880606, 32.940182, 32.083965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.286499, 33.597321, 32.545704>,  <28.279547, 33.422359, 31.770355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.286499, 33.597321, 32.545704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.219568, 33.212357, 32.460125>,  <28.179409, 32.981380, 32.408779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.219568, 33.212357, 32.460125>,  <28.286499, 33.597321, 32.545704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.219568, 33.212357, 32.460125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713894, -0.267941, 0.646965,
		-0.679969, -0.044480, 0.731891,
		-0.167326, -0.962408, -0.213945,
		28.169371, 32.923634, 32.395943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.138762, 33.132645, 33.196102>,  <28.286499, 33.597321, 32.545704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.138762, 33.132645, 33.196102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.319197, 32.973095, 32.876747>,  <28.427458, 32.877365, 32.685135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.319197, 32.973095, 32.876747>,  <28.138762, 33.132645, 33.196102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.319197, 32.973095, 32.876747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811962, -0.187906, 0.552639,
		-0.370454, -0.897547, 0.239107,
		0.451090, -0.398873, -0.798385,
		28.454523, 32.853432, 32.637230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.224615, 32.371410, 33.296833>,  <28.138762, 33.132645, 33.196102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.224615, 32.371410, 33.296833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.496628, 32.558723, 33.071171>,  <28.659836, 32.671112, 32.935772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.496628, 32.558723, 33.071171>,  <28.224615, 32.371410, 33.296833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.496628, 32.558723, 33.071171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725074, -0.315399, 0.612201,
		0.108749, -0.825369, -0.554021,
		0.680030, 0.468282, -0.564155,
		28.700636, 32.699207, 32.901924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.761709, 31.823439, 33.038174>,  <28.224615, 32.371410, 33.296833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.761709, 31.823439, 33.038174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.963331, 32.168907, 33.038754>,  <29.084305, 32.376186, 33.039101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.963331, 32.168907, 33.038754>,  <28.761709, 31.823439, 33.038174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.963331, 32.168907, 33.038754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813339, -0.475247, 0.335589,
		0.290529, -0.167973, -0.942008,
		0.504056, 0.863670, 0.001454,
		29.114548, 32.428009, 33.039188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.436747, 31.840019, 32.742199>,  <28.761709, 31.823439, 33.038174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.436747, 31.840019, 32.742199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.491270, 32.161060, 32.974491>,  <29.523983, 32.353683, 33.113865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.491270, 32.161060, 32.974491>,  <29.436747, 31.840019, 32.742199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.491270, 32.161060, 32.974491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891144, -0.355413, 0.282036,
		0.432762, 0.479071, -0.763681,
		0.136307, 0.802604, 0.580730,
		29.532162, 32.401840, 33.148708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060532, 32.131287, 32.441124>,  <29.436747, 31.840019, 32.742199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060532, 32.131287, 32.441124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.029388, 32.201744, 32.833637>,  <30.010702, 32.244019, 33.069145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.029388, 32.201744, 32.833637>,  <30.060532, 32.131287, 32.441124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.029388, 32.201744, 32.833637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902390, -0.405979, 0.144475,
		0.423828, 0.896747, -0.127341,
		-0.077860, 0.176143, 0.981281,
		30.006031, 32.254585, 33.128021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656384, 32.573448, 32.806976>,  <30.060532, 32.131287, 32.441124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656384, 32.573448, 32.806976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.544050, 32.265076, 33.035641>,  <30.476650, 32.080051, 33.172840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.544050, 32.265076, 33.035641>,  <30.656384, 32.573448, 32.806976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.544050, 32.265076, 33.035641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959418, -0.241328, 0.145869,
		0.025502, 0.589425, 0.807420,
		-0.280832, -0.770933, 0.571660,
		30.459801, 32.033794, 33.207138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.922367, 32.643864, 33.467403>,  <30.656384, 32.573448, 32.806976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.922367, 32.643864, 33.467403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899950, 32.252365, 33.388496>,  <30.886499, 32.017467, 33.341152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899950, 32.252365, 33.388496>,  <30.922367, 32.643864, 33.467403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899950, 32.252365, 33.388496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990123, -0.029051, -0.137156,
		0.128510, -0.203004, 0.970708,
		-0.056043, -0.978747, -0.197266,
		30.883137, 31.958740, 33.329315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334858, 32.147732, 33.991142>,  <30.922367, 32.643864, 33.467403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.334858, 32.147732, 33.991142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311686, 32.034252, 33.608276>,  <31.297783, 31.966164, 33.378559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311686, 32.034252, 33.608276>,  <31.334858, 32.147732, 33.991142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311686, 32.034252, 33.608276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982857, -0.184303, -0.004858,
		-0.175030, -0.941034, 0.289516,
		-0.057930, -0.283702, -0.957161,
		31.294306, 31.949141, 33.321129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517426, 31.454845, 34.013077>,  <31.334858, 32.147732, 33.991142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.517426, 31.454845, 34.013077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606913, 31.631296, 33.665432>,  <31.660604, 31.737167, 33.456844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606913, 31.631296, 33.665432>,  <31.517426, 31.454845, 34.013077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.606913, 31.631296, 33.665432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969523, -0.192099, 0.152061,
		-0.099877, -0.876643, -0.470660,
		0.223717, 0.441129, -0.869112,
		31.674028, 31.763636, 33.404697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952316, 30.985048, 33.632656>,  <31.517426, 31.454845, 34.013077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952316, 30.985048, 33.632656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.005634, 31.358839, 33.500607>,  <32.037624, 31.583115, 33.421375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.005634, 31.358839, 33.500607>,  <31.952316, 30.985048, 33.632656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.005634, 31.358839, 33.500607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990522, -0.136758, 0.012820,
		-0.033167, -0.328706, -0.943850,
		0.133293, 0.934478, -0.330126,
		32.045624, 31.639183, 33.401569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141708, 30.992077, 33.036121>,  <31.952316, 30.985048, 33.632656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141708, 30.992077, 33.036121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.288868, 31.281454, 33.269798>,  <32.377163, 31.455080, 33.410004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.288868, 31.281454, 33.269798>,  <32.141708, 30.992077, 33.036121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.288868, 31.281454, 33.269798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908603, -0.413266, -0.060428,
		0.197709, 0.553027, -0.809365,
		0.367901, 0.723445, 0.584189,
		32.399239, 31.498487, 33.445053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736942, 31.261120, 32.769348>,  <32.141708, 30.992077, 33.036121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736942, 31.261120, 32.769348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785236, 31.402323, 33.140469>,  <32.814213, 31.487043, 33.363140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785236, 31.402323, 33.140469>,  <32.736942, 31.261120, 32.769348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785236, 31.402323, 33.140469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956094, -0.292772, -0.013023,
		0.267036, 0.888634, -0.372854,
		0.120734, 0.353006, 0.927798,
		32.821457, 31.508224, 33.418808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492474, 31.361591, 32.811382>,  <32.736942, 31.261120, 32.769348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492474, 31.361591, 32.811382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602779, 31.662664, 33.050522>,  <33.668964, 31.843307, 33.194008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602779, 31.662664, 33.050522>,  <33.492474, 31.361591, 32.811382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602779, 31.662664, 33.050522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623107, 0.333608, -0.707420,
		-0.731909, 0.567607, -0.377003,
		0.275765, 0.752681, 0.597851,
		33.685509, 31.888468, 33.229877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549541, 31.990812, 32.341919>,  <33.492474, 31.361591, 32.811382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549541, 31.990812, 32.341919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773510, 31.976168, 32.673012>,  <33.907890, 31.967381, 32.871670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773510, 31.976168, 32.673012>,  <33.549541, 31.990812, 32.341919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773510, 31.976168, 32.673012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809062, 0.239531, -0.536696,
		-0.178619, 0.970198, 0.163741,
		0.559923, -0.036613, 0.827735,
		33.941486, 31.965183, 32.921333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223473, 31.657949, 32.062653>,  <33.549541, 31.990812, 32.341919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223473, 31.657949, 32.062653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.558754, 31.454559, 31.983786>,  <34.759922, 31.332525, 31.936466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.558754, 31.454559, 31.983786>,  <34.223473, 31.657949, 32.062653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558754, 31.454559, 31.983786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531985, 0.841920, 0.090346,
		0.120060, -0.180618, 0.976198,
		0.838199, -0.508476, -0.197167,
		34.810215, 31.302017, 31.924635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399166, 31.974056, 31.546618>,  <34.223473, 31.657949, 32.062653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399166, 31.974056, 31.546618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576469, 32.298283, 31.699718>,  <34.682850, 32.492821, 31.791580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576469, 32.298283, 31.699718>,  <34.399166, 31.974056, 31.546618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576469, 32.298283, 31.699718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210021, -0.321197, 0.923431,
		0.871443, -0.489705, 0.027863,
		0.443259, 0.810569, 0.382753,
		34.709446, 32.541454, 31.814545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885719, 31.392010, 31.398396>,  <34.399166, 31.974056, 31.546618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885719, 31.392010, 31.398396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828499, 31.564466, 31.042046>,  <34.794167, 31.667940, 30.828236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828499, 31.564466, 31.042046>,  <34.885719, 31.392010, 31.398396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828499, 31.564466, 31.042046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552153, 0.781796, 0.289694,
		0.821380, -0.450458, -0.349890,
		-0.143047, 0.431141, -0.890873,
		34.785583, 31.693810, 30.774784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461323, 31.577360, 31.058304>,  <34.885719, 31.392010, 31.398396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461323, 31.577360, 31.058304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215206, 31.843218, 30.888754>,  <35.067535, 32.002731, 30.787024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215206, 31.843218, 30.888754>,  <35.461323, 31.577360, 31.058304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215206, 31.843218, 30.888754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714599, 0.697285, 0.056056,
		0.332818, -0.268409, -0.903985,
		-0.615289, 0.664643, -0.423874,
		35.030621, 32.042610, 30.761591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869343, 31.822132, 30.633093>,  <35.461323, 31.577360, 31.058304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869343, 31.822132, 30.633093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575954, 32.092419, 30.662563>,  <35.399921, 32.254589, 30.680246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575954, 32.092419, 30.662563>,  <35.869343, 31.822132, 30.633093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575954, 32.092419, 30.662563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677139, 0.716936, 0.165789,
		0.059204, 0.171492, -0.983405,
		-0.733470, 0.675717, 0.073678,
		35.355915, 32.295135, 30.684668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404625, 31.813326, 31.237316>,  <35.869343, 31.822132, 30.633093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404625, 31.813326, 31.237316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740467, 31.596100, 31.242071>,  <36.941975, 31.465765, 31.244925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740467, 31.596100, 31.242071>,  <36.404625, 31.813326, 31.237316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740467, 31.596100, 31.242071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237025, 0.346584, -0.907578,
		0.488752, 0.764827, 0.419715,
		0.839607, -0.543064, 0.011890,
		36.992348, 31.433180, 31.245638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095970, 32.181229, 31.144512>,  <36.404625, 31.813326, 31.237316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095970, 32.181229, 31.144512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188072, 31.808123, 31.033571>,  <37.243332, 31.584257, 30.967007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188072, 31.808123, 31.033571>,  <37.095970, 32.181229, 31.144512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188072, 31.808123, 31.033571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556849, 0.360028, -0.748531,
		0.798061, 0.017910, 0.602310,
		0.230255, -0.932770, -0.277351,
		37.257149, 31.528292, 30.950365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848270, 31.921818, 31.263426>,  <37.095970, 32.181229, 31.144512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848270, 31.921818, 31.263426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626186, 31.803564, 30.952469>,  <37.492935, 31.732611, 30.765894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626186, 31.803564, 30.952469>,  <37.848270, 31.921818, 31.263426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626186, 31.803564, 30.952469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593323, 0.514228, -0.619304,
		0.582846, -0.805090, -0.110097,
		-0.555210, -0.295636, -0.777394,
		37.459625, 31.714874, 30.719250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407413, 31.468197, 31.238041>,  <37.848270, 31.921818, 31.263426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407413, 31.468197, 31.238041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791622, 31.494768, 31.346109>,  <39.022148, 31.510712, 31.410952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791622, 31.494768, 31.346109>,  <38.407413, 31.468197, 31.238041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791622, 31.494768, 31.346109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213913, -0.797249, -0.564478,
		0.177897, 0.599985, -0.779981,
		0.960517, 0.066429, 0.270173,
		39.079777, 31.514696, 31.427162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876862, 31.661848, 30.676188>,  <38.407413, 31.468197, 31.238041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876862, 31.661848, 30.676188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.096470, 31.449680, 30.934561>,  <39.228233, 31.322380, 31.089584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.096470, 31.449680, 30.934561>,  <38.876862, 31.661848, 30.676188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096470, 31.449680, 30.934561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384690, -0.525738, -0.758692,
		0.742018, 0.665021, -0.084593,
		0.549020, -0.530422, 0.645934,
		39.261177, 31.290554, 31.128342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610229, 31.738981, 30.404877>,  <38.876862, 31.661848, 30.676188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610229, 31.738981, 30.404877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.518764, 31.407829, 30.609749>,  <39.463886, 31.209137, 30.732672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.518764, 31.407829, 30.609749>,  <39.610229, 31.738981, 30.404877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518764, 31.407829, 30.609749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432641, -0.557727, -0.708352,
		0.872087, 0.059619, 0.485705,
		-0.228659, -0.827881, 0.512180,
		39.450165, 31.159466, 30.763403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215256, 31.362843, 30.485344>,  <39.610229, 31.738981, 30.404877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215256, 31.362843, 30.485344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.908005, 31.106867, 30.476791>,  <39.723656, 30.953281, 30.471661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.908005, 31.106867, 30.476791>,  <40.215256, 31.362843, 30.485344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.908005, 31.106867, 30.476791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492600, -0.569285, -0.658225,
		0.409052, -0.516134, 0.752517,
		-0.768129, -0.639938, -0.021380,
		39.677567, 30.914885, 30.470377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.502571, 30.702354, 30.678238>,  <40.215256, 31.362843, 30.485344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.502571, 30.702354, 30.678238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.172398, 30.663546, 30.455801>,  <39.974293, 30.640261, 30.322338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.172398, 30.663546, 30.455801>,  <40.502571, 30.702354, 30.678238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172398, 30.663546, 30.455801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450037, -0.707784, -0.544526,
		-0.340761, -0.699734, 0.627897,
		-0.825439, -0.097024, -0.556091,
		39.924767, 30.634438, 30.288973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168526, 29.950140, 30.774563>,  <40.502571, 30.702354, 30.678238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168526, 29.950140, 30.774563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.131889, 30.161577, 30.436995>,  <40.109905, 30.288439, 30.234453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.131889, 30.161577, 30.436995>,  <40.168526, 29.950140, 30.774563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.131889, 30.161577, 30.436995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522615, -0.695870, -0.492583,
		-0.847634, -0.486163, -0.212513,
		-0.091594, 0.528593, -0.843920,
		40.104412, 30.320154, 30.183819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072819, 29.439932, 30.227634>,  <40.168526, 29.950140, 30.774563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.072819, 29.439932, 30.227634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219440, 29.784143, 30.086142>,  <40.307415, 29.990669, 30.001245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219440, 29.784143, 30.086142>,  <40.072819, 29.439932, 30.227634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219440, 29.784143, 30.086142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671705, -0.507839, -0.539363,
		-0.643777, -0.039898, -0.764173,
		0.366557, 0.860528, -0.353734,
		40.329407, 30.042301, 29.980021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131065, 29.429031, 29.489687>,  <40.072819, 29.439932, 30.227634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131065, 29.429031, 29.489687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.416229, 29.672495, 29.628996>,  <40.587326, 29.818573, 29.712582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.416229, 29.672495, 29.628996>,  <40.131065, 29.429031, 29.489687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.416229, 29.672495, 29.628996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668546, -0.439998, -0.599539,
		-0.211675, 0.660254, -0.720596,
		0.712909, 0.608659, 0.348274,
		40.630100, 29.855093, 29.733479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.492329, 29.493723, 28.968950>,  <40.131065, 29.429031, 29.489687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.492329, 29.493723, 28.968950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742245, 29.647776, 29.240631>,  <40.892193, 29.740208, 29.403639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742245, 29.647776, 29.240631>,  <40.492329, 29.493723, 28.968950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.742245, 29.647776, 29.240631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780625, -0.326274, -0.533076,
		0.016302, 0.863261, -0.504495,
		0.624788, 0.385131, 0.679201,
		40.929680, 29.763315, 29.444391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.046284, 29.901384, 28.613823>,  <40.492329, 29.493723, 28.968950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.046284, 29.901384, 28.613823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.178902, 29.794456, 28.975733>,  <41.258472, 29.730301, 29.192879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.178902, 29.794456, 28.975733>,  <41.046284, 29.901384, 28.613823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.178902, 29.794456, 28.975733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833380, -0.366539, -0.413676,
		0.442219, 0.891174, 0.101254,
		0.331544, -0.267318, 0.904776,
		41.278366, 29.714262, 29.247166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.708134, 30.262785, 28.615007>,  <41.046284, 29.901384, 28.613823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.708134, 30.262785, 28.615007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.643452, 29.938297, 28.839785>,  <41.604641, 29.743605, 28.974651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.643452, 29.938297, 28.839785>,  <41.708134, 30.262785, 28.615007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.643452, 29.938297, 28.839785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731460, -0.480771, -0.483556,
		0.662434, 0.332844, 0.671116,
		-0.161704, -0.811217, 0.561941,
		41.594940, 29.694933, 29.008368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.853558, 30.137676, 29.246773>,  <41.708134, 30.262785, 28.615007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.853558, 30.137676, 29.246773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.187496, 30.073248, 29.457331>,  <42.387859, 30.034592, 29.583666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.187496, 30.073248, 29.457331>,  <41.853558, 30.137676, 29.246773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.187496, 30.073248, 29.457331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279070, -0.700415, -0.656916,
		0.474502, 0.695324, -0.539789,
		0.834846, -0.161069, 0.526393,
		42.437950, 30.024927, 29.615248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.479809, 30.185919, 28.821594>,  <41.853558, 30.137676, 29.246773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.479809, 30.185919, 28.821594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.514484, 29.951805, 29.144066>,  <42.535290, 29.811337, 29.337549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.514484, 29.951805, 29.144066>,  <42.479809, 30.185919, 28.821594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.514484, 29.951805, 29.144066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345284, -0.741417, -0.575395,
		0.934486, 0.328243, 0.137816,
		0.086691, -0.585284, 0.806180,
		42.540493, 29.776220, 29.385920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.124432, 29.867790, 28.799332>,  <42.479809, 30.185919, 28.821594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.124432, 29.867790, 28.799332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.959084, 29.623943, 29.069883>,  <42.859875, 29.477636, 29.232214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.959084, 29.623943, 29.069883>,  <43.124432, 29.867790, 28.799332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.959084, 29.623943, 29.069883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453868, -0.781908, -0.427344,
		0.789384, 0.130336, 0.599905,
		-0.413372, -0.609616, 0.676381,
		42.835072, 29.441059, 29.272799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.585968, 29.466284, 29.158411>,  <43.124432, 29.867790, 28.799332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.585968, 29.466284, 29.158411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.260895, 29.233471, 29.169590>,  <43.065849, 29.093782, 29.176296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.260895, 29.233471, 29.169590>,  <43.585968, 29.466284, 29.158411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.260895, 29.233471, 29.169590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560904, -0.794375, -0.233141,
		0.157895, -0.173795, 0.972041,
		-0.812685, -0.582033, 0.027945,
		43.017090, 29.058861, 29.177973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.219196, 29.669048, 29.367580>,  <43.585968, 29.466284, 29.158411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.219196, 29.669048, 29.367580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.456345, 29.988968, 29.329985>,  <44.598633, 30.180920, 29.307426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.456345, 29.988968, 29.329985>,  <44.219196, 29.669048, 29.367580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.456345, 29.988968, 29.329985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564986, -0.496273, -0.659169,
		-0.573847, 0.337695, -0.746098,
		0.592866, 0.799797, -0.093992,
		44.634205, 30.228907, 29.301786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.295273, 29.863649, 28.655064>,  <44.219196, 29.669048, 29.367580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.295273, 29.863649, 28.655064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.607891, 29.967457, 28.881985>,  <44.795464, 30.029741, 29.018137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.607891, 29.967457, 28.881985>,  <44.295273, 29.863649, 28.655064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.607891, 29.967457, 28.881985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608239, -0.519109, -0.600475,
		0.138658, 0.814356, -0.563559,
		0.781549, 0.259518, 0.567302,
		44.842358, 30.045313, 29.052176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.866623, 30.151360, 28.191622>,  <44.295273, 29.863649, 28.655064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.866623, 30.151360, 28.191622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.005066, 29.949884, 28.508230>,  <45.088131, 29.828999, 28.698195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.005066, 29.949884, 28.508230>,  <44.866623, 30.151360, 28.191622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.005066, 29.949884, 28.508230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605600, -0.524416, -0.598529,
		0.716558, 0.686502, 0.123527,
		0.346112, -0.503688, 0.791520,
		45.108898, 29.798779, 28.745686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.613811, 29.879885, 27.515738>,  <44.866623, 30.151360, 28.191622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.613811, 29.879885, 27.515738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.483658, 29.594816, 27.267151>,  <44.405563, 29.423775, 27.118000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.483658, 29.594816, 27.267151>,  <44.613811, 29.879885, 27.515738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.483658, 29.594816, 27.267151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651794, 0.307099, -0.693437,
		0.685046, -0.630704, 0.364589,
		-0.325389, -0.712673, -0.621466,
		44.386040, 29.381014, 27.080711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.241459, 29.473232, 27.362289>,  <44.613811, 29.879885, 27.515738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.241459, 29.473232, 27.362289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.969231, 29.454554, 27.069815>,  <44.805893, 29.443346, 26.894329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.969231, 29.454554, 27.069815>,  <45.241459, 29.473232, 27.362289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.969231, 29.454554, 27.069815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723895, 0.111207, -0.680888,
		0.113127, -0.992698, -0.041861,
		-0.680572, -0.046723, -0.731190,
		44.765057, 29.440544, 26.850458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.454155, 28.914797, 26.889292>,  <45.241459, 29.473232, 27.362289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.454155, 28.914797, 26.889292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.196438, 29.144985, 26.687809>,  <45.041809, 29.283098, 26.566919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.196438, 29.144985, 26.687809>,  <45.454155, 28.914797, 26.889292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.196438, 29.144985, 26.687809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629381, 0.024806, -0.776700,
		-0.434475, -0.817445, -0.378174,
		-0.644291, 0.575472, -0.503707,
		45.003151, 29.317627, 26.536697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.433113, 28.576239, 26.259956>,  <45.454155, 28.914797, 26.889292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.433113, 28.576239, 26.259956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.273106, 28.936808, 26.193716>,  <45.177101, 29.153149, 26.153971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.273106, 28.936808, 26.193716>,  <45.433113, 28.576239, 26.259956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.273106, 28.936808, 26.193716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623702, 0.135345, -0.769855,
		-0.671550, -0.411244, -0.616359,
		-0.400020, 0.901421, -0.165602,
		45.153099, 29.207233, 26.144035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.202446, 28.693316, 25.441050>,  <45.433113, 28.576239, 26.259956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.202446, 28.693316, 25.441050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.275360, 29.037069, 25.632143>,  <45.319107, 29.243322, 25.746799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.275360, 29.037069, 25.632143>,  <45.202446, 28.693316, 25.441050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.275360, 29.037069, 25.632143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550471, 0.313397, -0.773798,
		-0.814711, 0.404031, -0.415939,
		0.182284, 0.859384, 0.477735,
		45.330044, 29.294884, 25.775463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.250160, 29.276396, 24.968718>,  <45.202446, 28.693316, 25.441050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.250160, 29.276396, 24.968718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.455368, 29.398651, 25.289566>,  <45.578491, 29.472004, 25.482075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.455368, 29.398651, 25.289566>,  <45.250160, 29.276396, 24.968718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.455368, 29.398651, 25.289566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547387, 0.603318, -0.579978,
		-0.661198, 0.736610, 0.142210,
		0.513015, 0.305636, 0.802123,
		45.609272, 29.490341, 25.530203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.120213, 30.032103, 25.069775>,  <45.250160, 29.276396, 24.968718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.120213, 30.032103, 25.069775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.465076, 29.899031, 25.222614>,  <45.671997, 29.819187, 25.314318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.465076, 29.899031, 25.222614>,  <45.120213, 30.032103, 25.069775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.465076, 29.899031, 25.222614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499044, 0.687693, -0.527288,
		-0.087348, 0.645292, 0.758926,
		0.862163, -0.332679, 0.382098,
		45.723724, 29.799227, 25.337244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.459438, 30.565079, 25.426861>,  <45.120213, 30.032103, 25.069775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.459438, 30.565079, 25.426861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.735619, 30.298456, 25.314445>,  <45.901325, 30.138483, 25.246996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.735619, 30.298456, 25.314445>,  <45.459438, 30.565079, 25.426861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.735619, 30.298456, 25.314445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594015, 0.744150, -0.305593,
		0.412829, 0.044056, 0.909743,
		0.690448, -0.666558, -0.281037,
		45.942753, 30.098488, 25.230135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.001423, 31.313107, 25.378134>,  <45.459438, 30.565079, 25.426861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.001423, 31.313107, 25.378134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.003979, 31.682171, 25.532358>,  <45.005512, 31.903610, 25.624893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.003979, 31.682171, 25.532358>,  <45.001423, 31.313107, 25.378134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.003979, 31.682171, 25.532358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999025, 0.022733, -0.037848,
		-0.043686, -0.384941, 0.921907,
		0.006388, 0.922661, 0.385559,
		45.005894, 31.958969, 25.648026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.487503, 31.281204, 25.807596>,  <45.001423, 31.313107, 25.378134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.487503, 31.281204, 25.807596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.511967, 31.669939, 25.716562>,  <44.526646, 31.903179, 25.661942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.511967, 31.669939, 25.716562>,  <44.487503, 31.281204, 25.807596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.511967, 31.669939, 25.716562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995669, 0.075401, 0.054393,
		0.070021, 0.223269, 0.972239,
		0.061164, 0.971836, -0.227582,
		44.530315, 31.961491, 25.648287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.266987, 31.874016, 26.306973>,  <44.487503, 31.281204, 25.807596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.266987, 31.874016, 26.306973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.211300, 32.005455, 25.933311>,  <44.177887, 32.084320, 25.709114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.211300, 32.005455, 25.933311>,  <44.266987, 31.874016, 26.306973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.211300, 32.005455, 25.933311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988347, 0.012530, 0.151701,
		0.061554, 0.944386, 0.323026,
		-0.139217, 0.328600, -0.934153,
		44.169537, 32.104034, 25.653067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.847282, 32.504768, 26.279348>,  <44.266987, 31.874016, 26.306973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.847282, 32.504768, 26.279348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.800545, 32.310234, 25.932980>,  <43.772503, 32.193512, 25.725159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.800545, 32.310234, 25.932980>,  <43.847282, 32.504768, 26.279348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.800545, 32.310234, 25.932980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992438, 0.090197, 0.083261,
		0.037611, 0.869104, -0.493197,
		-0.116847, -0.486336, -0.865924,
		43.765491, 32.164333, 25.673203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.183456, 32.760124, 26.161116>,  <43.847282, 32.504768, 26.279348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.183456, 32.760124, 26.161116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.226192, 32.423107, 25.949947>,  <43.251835, 32.220898, 25.823246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.226192, 32.423107, 25.949947>,  <43.183456, 32.760124, 26.161116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.226192, 32.423107, 25.949947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941222, -0.256829, 0.219411,
		-0.320449, 0.473449, -0.820463,
		0.106838, -0.842547, -0.527920,
		43.258244, 32.170341, 25.791571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.723469, 32.721153, 25.663673>,  <43.183456, 32.760124, 26.161116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.723469, 32.721153, 25.663673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.806614, 32.329956, 25.670841>,  <42.856503, 32.095238, 25.675142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.806614, 32.329956, 25.670841>,  <42.723469, 32.721153, 25.663673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.806614, 32.329956, 25.670841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971130, -0.208528, -0.115858,
		0.117045, 0.006682, -0.993104,
		0.207865, -0.977993, 0.017918,
		42.868973, 32.036556, 25.676216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.412376, 32.335659, 25.167839>,  <42.723469, 32.721153, 25.663673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.412376, 32.335659, 25.167839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.485931, 32.037003, 25.423563>,  <42.530064, 31.857809, 25.576998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.485931, 32.037003, 25.423563>,  <42.412376, 32.335659, 25.167839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.485931, 32.037003, 25.423563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930219, -0.342345, -0.132263,
		0.317617, -0.570377, -0.757489,
		0.183883, -0.746639, 0.639309,
		42.541096, 31.813011, 25.615356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.927921, 31.873461, 25.031317>,  <42.412376, 32.335659, 25.167839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.927921, 31.873461, 25.031317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.063076, 31.720898, 25.375494>,  <42.144169, 31.629360, 25.582001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.063076, 31.720898, 25.375494>,  <41.927921, 31.873461, 25.031317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.063076, 31.720898, 25.375494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917534, -0.337152, 0.210854,
		0.209678, -0.860729, -0.463875,
		0.337884, -0.381410, 0.860442,
		42.164440, 31.606474, 25.633627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754871, 31.157074, 25.110228>,  <41.927921, 31.873461, 25.031317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.754871, 31.157074, 25.110228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.827320, 31.268013, 25.487644>,  <41.870789, 31.334576, 25.714094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.827320, 31.268013, 25.487644>,  <41.754871, 31.157074, 25.110228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.827320, 31.268013, 25.487644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873281, -0.395882, 0.284003,
		0.452299, -0.875418, 0.170498,
		0.181124, 0.277347, 0.943543,
		41.881657, 31.351217, 25.770706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.525154, 30.652216, 25.408171>,  <41.754871, 31.157074, 25.110228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.525154, 30.652216, 25.408171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.535339, 30.930626, 25.695198>,  <41.541451, 31.097672, 25.867414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.535339, 30.930626, 25.695198>,  <41.525154, 30.652216, 25.408171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.535339, 30.930626, 25.695198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832453, -0.382675, 0.400727,
		0.553510, -0.607545, 0.569663,
		0.025464, 0.696024, 0.717567,
		41.542980, 31.139433, 25.910469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.190063, 30.302305, 25.904648>,  <41.525154, 30.652216, 25.408171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.190063, 30.302305, 25.904648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.204411, 30.670359, 26.060631>,  <41.213020, 30.891191, 26.154221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.204411, 30.670359, 26.060631>,  <41.190063, 30.302305, 25.904648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.204411, 30.670359, 26.060631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862945, -0.168283, 0.476453,
		0.504023, -0.353603, 0.787988,
		0.035870, 0.920133, 0.389958,
		41.215172, 30.946400, 26.177618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.111820, 30.122814, 26.580069>,  <41.190063, 30.302305, 25.904648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.111820, 30.122814, 26.580069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002010, 30.505592, 26.542358>,  <40.936123, 30.735260, 26.519733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002010, 30.505592, 26.542358>,  <41.111820, 30.122814, 26.580069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.002010, 30.505592, 26.542358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855500, -0.198304, 0.478326,
		0.439037, 0.211965, 0.873108,
		-0.274529, 0.956946, -0.094273,
		40.919651, 30.792677, 26.514076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959900, 30.357967, 27.264011>,  <41.111820, 30.122814, 26.580069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959900, 30.357967, 27.264011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.775459, 30.602591, 27.006834>,  <40.664795, 30.749365, 26.852528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.775459, 30.602591, 27.006834>,  <40.959900, 30.357967, 27.264011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.775459, 30.602591, 27.006834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864689, -0.146987, 0.480321,
		0.199240, 0.777425, 0.596585,
		-0.461104, 0.611559, -0.642945,
		40.637127, 30.786058, 26.813950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613434, 30.834608, 27.668659>,  <40.959900, 30.357967, 27.264011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613434, 30.834608, 27.668659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.428318, 30.854239, 27.314615>,  <40.317249, 30.866016, 27.102190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.428318, 30.854239, 27.314615>,  <40.613434, 30.834608, 27.668659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.428318, 30.854239, 27.314615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885846, -0.062986, 0.459685,
		-0.033189, 0.996807, 0.072624,
		-0.462792, 0.049078, -0.885108,
		40.289482, 30.868961, 27.049084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122807, 31.445007, 27.703749>,  <40.613434, 30.834608, 27.668659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122807, 31.445007, 27.703749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004803, 31.174932, 27.433315>,  <39.934002, 31.012888, 27.271055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004803, 31.174932, 27.433315>,  <40.122807, 31.445007, 27.703749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004803, 31.174932, 27.433315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914837, -0.004616, 0.403795,
		-0.275759, 0.737631, -0.616326,
		-0.295007, -0.675189, -0.676085,
		39.916302, 30.972376, 27.230490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323406, 31.569527, 27.664806>,  <40.122807, 31.445007, 27.703749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323406, 31.569527, 27.664806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387070, 31.238960, 27.448767>,  <39.425266, 31.040621, 27.319143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387070, 31.238960, 27.448767>,  <39.323406, 31.569527, 27.664806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387070, 31.238960, 27.448767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986036, -0.160227, -0.045397,
		-0.049022, 0.539784, -0.840375,
		0.159155, -0.826415, -0.540101,
		39.434814, 30.991035, 27.286736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977917, 31.737019, 27.018404>,  <39.323406, 31.569527, 27.664806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977917, 31.737019, 27.018404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008350, 31.346647, 27.100164>,  <39.026611, 31.112425, 27.149221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008350, 31.346647, 27.100164>,  <38.977917, 31.737019, 27.018404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008350, 31.346647, 27.100164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996984, -0.077611, 0.000528,
		0.015348, -0.203826, -0.978887,
		0.076080, -0.975926, 0.204403,
		39.031174, 31.053869, 27.161486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545219, 31.520420, 26.592155>,  <38.977917, 31.737019, 27.018404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545219, 31.520420, 26.592155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586441, 31.211212, 26.842537>,  <38.611176, 31.025688, 26.992765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586441, 31.211212, 26.842537>,  <38.545219, 31.520420, 26.592155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586441, 31.211212, 26.842537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970752, -0.215354, -0.106131,
		0.216843, -0.596710, -0.772604,
		0.103054, -0.773020, 0.625955,
		38.617359, 30.979305, 27.030323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137127, 30.892731, 26.215746>,  <38.545219, 31.520420, 26.592155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137127, 30.892731, 26.215746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163033, 30.821627, 26.608522>,  <38.178577, 30.778963, 26.844189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163033, 30.821627, 26.608522>,  <38.137127, 30.892731, 26.215746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163033, 30.821627, 26.608522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975451, -0.218824, 0.024723,
		0.210478, -0.959436, -0.187570,
		0.064765, -0.177761, 0.981940,
		38.182461, 30.768299, 26.903105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733707, 30.367558, 26.191826>,  <38.137127, 30.892731, 26.215746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733707, 30.367558, 26.191826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758205, 30.480106, 26.574883>,  <37.772903, 30.547636, 26.804716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758205, 30.480106, 26.574883>,  <37.733707, 30.367558, 26.191826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758205, 30.480106, 26.574883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967426, -0.219383, 0.126325,
		0.245635, -0.934184, 0.258772,
		0.061240, 0.281373, 0.957642,
		37.776577, 30.564518, 26.862175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390038, 29.899099, 26.512939>,  <37.733707, 30.367558, 26.191826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390038, 29.899099, 26.512939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398571, 30.213770, 26.759737>,  <37.403690, 30.402573, 26.907816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398571, 30.213770, 26.759737>,  <37.390038, 29.899099, 26.512939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398571, 30.213770, 26.759737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995034, -0.043307, 0.089621,
		0.097223, -0.615843, 0.781847,
		0.021333, 0.786677, 0.616995,
		37.404972, 30.449774, 26.944836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933987, 29.691235, 27.097897>,  <37.390038, 29.899099, 26.512939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933987, 29.691235, 27.097897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.961674, 30.090237, 27.103460>,  <36.978287, 30.329638, 27.106798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.961674, 30.090237, 27.103460>,  <36.933987, 29.691235, 27.097897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961674, 30.090237, 27.103460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995771, 0.069926, -0.059588,
		-0.060412, -0.009726, 0.998126,
		0.069216, 0.997505, 0.013909,
		36.982437, 30.389488, 27.107634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687706, 29.952599, 27.691719>,  <36.933987, 29.691235, 27.097897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687706, 29.952599, 27.691719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.666992, 30.264170, 27.441730>,  <36.654564, 30.451113, 27.291737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.666992, 30.264170, 27.441730>,  <36.687706, 29.952599, 27.691719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666992, 30.264170, 27.441730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998449, -0.027573, 0.048373,
		0.020446, 0.626509, 0.779146,
		-0.051789, 0.778927, -0.624973,
		36.651455, 30.497849, 27.254238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390354, 30.452839, 28.059252>,  <36.687706, 29.952599, 27.691719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390354, 30.452839, 28.059252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313602, 30.564131, 27.682791>,  <36.267551, 30.630905, 27.456913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313602, 30.564131, 27.682791>,  <36.390354, 30.452839, 28.059252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313602, 30.564131, 27.682791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957036, 0.159383, 0.242236,
		0.217401, 0.947199, 0.235693,
		-0.191880, 0.278229, -0.941154,
		36.256039, 30.647600, 27.400444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016193, 31.115158, 27.995129>,  <36.390354, 30.452839, 28.059252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016193, 31.115158, 27.995129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924774, 30.945108, 27.644806>,  <35.869923, 30.843079, 27.434612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924774, 30.945108, 27.644806>,  <36.016193, 31.115158, 27.995129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924774, 30.945108, 27.644806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970559, 0.169767, 0.170863,
		0.076045, 0.889073, -0.451405,
		-0.228543, -0.425122, -0.875808,
		35.856213, 30.817572, 27.382063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401146, 31.297966, 27.848299>,  <36.016193, 31.115158, 27.995129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401146, 31.297966, 27.848299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397816, 31.045149, 27.538343>,  <35.395817, 30.893457, 27.352371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397816, 31.045149, 27.538343>,  <35.401146, 31.297966, 27.848299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397816, 31.045149, 27.538343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996943, -0.054954, 0.055536,
		-0.077684, 0.772981, -0.629655,
		-0.008327, -0.632045, -0.774887,
		35.395317, 30.855536, 27.305878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992146, 31.549740, 27.336020>,  <35.401146, 31.297966, 27.848299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992146, 31.549740, 27.336020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988670, 31.162697, 27.235096>,  <34.986584, 30.930471, 27.174541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988670, 31.162697, 27.235096>,  <34.992146, 31.549740, 27.336020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988670, 31.162697, 27.235096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997371, -0.009766, 0.071805,
		-0.071944, 0.252271, -0.964979,
		-0.008690, -0.967608, -0.252310,
		34.986065, 30.872416, 27.159403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427994, 31.559839, 26.906015>,  <34.992146, 31.549740, 27.336020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427994, 31.559839, 26.906015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519184, 31.182205, 27.001291>,  <34.573898, 30.955626, 27.058456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519184, 31.182205, 27.001291>,  <34.427994, 31.559839, 26.906015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519184, 31.182205, 27.001291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971831, -0.235646, -0.003846,
		0.059759, -0.230602, -0.971211,
		0.227976, -0.944083, 0.238189,
		34.587578, 30.898981, 27.072748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924030, 31.168991, 26.585938>,  <34.427994, 31.559839, 26.906015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924030, 31.168991, 26.585938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069244, 30.945021, 26.883848>,  <34.156372, 30.810638, 27.062593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069244, 30.945021, 26.883848>,  <33.924030, 31.168991, 26.585938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069244, 30.945021, 26.883848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931776, -0.217161, 0.290920,
		-0.001158, -0.799577, -0.600563,
		0.363031, -0.559927, 0.744775,
		34.178154, 30.777042, 27.107281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602554, 30.469713, 26.466358>,  <33.924030, 31.168991, 26.585938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602554, 30.469713, 26.466358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717121, 30.485498, 26.849276>,  <33.785862, 30.494970, 27.079025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717121, 30.485498, 26.849276>,  <33.602554, 30.469713, 26.466358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717121, 30.485498, 26.849276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924636, -0.250390, 0.286971,
		0.251022, -0.967340, -0.035224,
		0.286419, 0.039466, 0.957291,
		33.803047, 30.497337, 27.136463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542267, 29.768976, 26.854645>,  <33.602554, 30.469713, 26.466358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542267, 29.768976, 26.854645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544521, 30.061121, 27.127859>,  <33.545876, 30.236408, 27.291788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544521, 30.061121, 27.127859>,  <33.542267, 29.768976, 26.854645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544521, 30.061121, 27.127859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883291, -0.316573, 0.345802,
		0.468792, -0.605270, 0.643337,
		0.005641, 0.730362, 0.683036,
		33.546215, 30.280230, 27.332769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266163, 29.481567, 27.544846>,  <33.542267, 29.768976, 26.854645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266163, 29.481567, 27.544846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233070, 29.879604, 27.566555>,  <33.213215, 30.118427, 27.579580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233070, 29.879604, 27.566555>,  <33.266163, 29.481567, 27.544846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233070, 29.879604, 27.566555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880255, -0.098504, 0.464163,
		0.467231, -0.009372, 0.884085,
		-0.082736, 0.995092, 0.054273,
		33.208248, 30.178133, 27.582836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882233, 29.606646, 28.191536>,  <33.266163, 29.481567, 27.544846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882233, 29.606646, 28.191536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857758, 29.958658, 28.003153>,  <32.843071, 30.169865, 27.890123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857758, 29.958658, 28.003153>,  <32.882233, 29.606646, 28.191536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857758, 29.958658, 28.003153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890435, 0.165064, 0.424122,
		0.450978, 0.445309, 0.773510,
		-0.061187, 0.880030, -0.470959,
		32.839401, 30.222668, 27.861866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.713547, 30.104269, 28.643618>,  <32.882233, 29.606646, 28.191536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.713547, 30.104269, 28.643618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.608421, 30.287041, 28.303701>,  <32.545345, 30.396704, 28.099752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.608421, 30.287041, 28.303701>,  <32.713547, 30.104269, 28.643618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608421, 30.287041, 28.303701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909327, 0.177153, 0.376486,
		0.322570, 0.871684, 0.368939,
		-0.262818, 0.456929, -0.849789,
		32.529575, 30.424120, 28.048765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434677, 30.746756, 28.810602>,  <32.713547, 30.104269, 28.643618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434677, 30.746756, 28.810602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265583, 30.647947, 28.461826>,  <32.164127, 30.588663, 28.252562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265583, 30.647947, 28.461826>,  <32.434677, 30.746756, 28.810602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.265583, 30.647947, 28.461826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905522, 0.076504, 0.417346,
		-0.036386, 0.965986, -0.256022,
		-0.422737, -0.247019, -0.871938,
		32.138763, 30.573841, 28.200245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026436, 31.361456, 28.564112>,  <32.434677, 30.746756, 28.810602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026436, 31.361456, 28.564112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912374, 31.012709, 28.404846>,  <31.843939, 30.803459, 28.309288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912374, 31.012709, 28.404846>,  <32.026436, 31.361456, 28.564112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912374, 31.012709, 28.404846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897294, 0.096776, 0.430694,
		-0.336976, 0.480082, -0.809919,
		-0.285150, -0.871869, -0.398163,
		31.826830, 30.751148, 28.285397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379557, 31.489325, 28.546658>,  <32.026436, 31.361456, 28.564112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379557, 31.489325, 28.546658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386454, 31.096380, 28.472181>,  <31.390593, 30.860613, 28.427496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386454, 31.096380, 28.472181>,  <31.379557, 31.489325, 28.546658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.386454, 31.096380, 28.472181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960502, -0.068003, 0.269834,
		-0.277737, 0.174183, -0.944734,
		0.017244, -0.982363, -0.186190,
		31.391626, 30.801672, 28.416325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.772598, 31.385647, 28.164339>,  <31.379557, 31.489325, 28.546658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.772598, 31.385647, 28.164339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878189, 31.017576, 28.279989>,  <30.941544, 30.796734, 28.349380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878189, 31.017576, 28.279989>,  <30.772598, 31.385647, 28.164339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.878189, 31.017576, 28.279989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911517, -0.139990, 0.386703,
		-0.315360, -0.365624, -0.875709,
		0.263978, -0.920175, 0.289126,
		30.957382, 30.741524, 28.366728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.291792, 30.881628, 27.997581>,  <30.772598, 31.385647, 28.164339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.291792, 30.881628, 27.997581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.489614, 30.736956, 28.313707>,  <30.608309, 30.650152, 28.503384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.489614, 30.736956, 28.313707>,  <30.291792, 30.881628, 27.997581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489614, 30.736956, 28.313707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854929, -0.038654, 0.517302,
		-0.156551, -0.931499, -0.328331,
		0.494558, -0.361684, 0.790315,
		30.637981, 30.628452, 28.550802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.755232, 30.515491, 28.261385>,  <30.291792, 30.881628, 27.997581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.755232, 30.515491, 28.261385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.021015, 30.494749, 28.559595>,  <30.180485, 30.482304, 28.738522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.021015, 30.494749, 28.559595>,  <29.755232, 30.515491, 28.261385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.021015, 30.494749, 28.559595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740717, 0.086673, 0.666202,
		-0.099166, -0.994886, 0.019177,
		0.664458, -0.051860, 0.745524,
		30.220352, 30.479193, 28.783253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.374369, 30.252792, 28.740545>,  <29.755232, 30.515491, 28.261385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.374369, 30.252792, 28.740545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.690361, 30.383612, 28.947994>,  <29.879957, 30.462103, 29.072464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.690361, 30.383612, 28.947994>,  <29.374369, 30.252792, 28.740545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.690361, 30.383612, 28.947994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595321, 0.206754, 0.776431,
		0.146700, -0.922114, 0.358028,
		0.789982, 0.327044, 0.518623,
		29.927355, 30.481726, 29.103580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.243015, 30.100599, 29.426519>,  <29.374369, 30.252792, 28.740545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.243015, 30.100599, 29.426519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.528255, 30.377743, 29.469294>,  <29.699400, 30.544029, 29.494959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.528255, 30.377743, 29.469294>,  <29.243015, 30.100599, 29.426519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.528255, 30.377743, 29.469294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556952, 0.467245, 0.686648,
		0.425781, -0.549211, 0.719081,
		0.713102, 0.692856, 0.106940,
		29.742186, 30.585600, 29.501375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.491770, 30.036777, 30.078585>,  <29.243015, 30.100599, 29.426519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.491770, 30.036777, 30.078585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.533892, 30.412029, 29.946630>,  <29.559166, 30.637180, 29.867458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.533892, 30.412029, 29.946630>,  <29.491770, 30.036777, 30.078585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.533892, 30.412029, 29.946630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533864, 0.333204, 0.777152,
		0.838988, 0.094274, 0.535922,
		0.105306, 0.938130, -0.329883,
		29.565483, 30.693468, 29.847666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.396276, 30.318764, 30.679100>,  <29.491770, 30.036777, 30.078585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.396276, 30.318764, 30.679100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.355291, 30.641596, 30.446505>,  <29.330700, 30.835295, 30.306948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.355291, 30.641596, 30.446505>,  <29.396276, 30.318764, 30.679100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.355291, 30.641596, 30.446505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548454, 0.441848, 0.709908,
		0.829879, 0.391658, 0.397372,
		-0.102463, 0.807078, -0.581486,
		29.324553, 30.883718, 30.272058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.592087, 30.913290, 31.149672>,  <29.396276, 30.318764, 30.679100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.592087, 30.913290, 31.149672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.371073, 31.027122, 30.836311>,  <29.238464, 31.095423, 30.648294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.371073, 31.027122, 30.836311>,  <29.592087, 30.913290, 31.149672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.371073, 31.027122, 30.836311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715252, 0.320665, 0.620958,
		0.427922, 0.903431, 0.026367,
		-0.552537, 0.284580, -0.783400,
		29.205311, 31.112497, 30.601292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.489347, 31.558975, 31.152842>,  <29.592087, 30.913290, 31.149672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.489347, 31.558975, 31.152842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.174074, 31.413176, 30.954485>,  <28.984911, 31.325695, 30.835470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.174074, 31.413176, 30.954485>,  <29.489347, 31.558975, 31.152842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.174074, 31.413176, 30.954485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579865, 0.169834, 0.796814,
		-0.206218, 0.915586, -0.345220,
		-0.788182, -0.364499, -0.495893,
		28.937620, 31.303825, 30.805717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.727444, 31.481127, 31.301649>,  <29.489347, 31.558975, 31.152842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.727444, 31.481127, 31.301649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.885025, 31.771246, 31.075819>,  <28.979574, 31.945316, 30.940321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.885025, 31.771246, 31.075819>,  <28.727444, 31.481127, 31.301649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.885025, 31.771246, 31.075819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786632, -0.051651, -0.615258,
		-0.475405, 0.686496, 0.550193,
		0.393955, 0.725296, -0.564575,
		29.003212, 31.988834, 30.906446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.426064, 32.144966, 31.137220>,  <28.727444, 31.481127, 31.301649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.426064, 32.144966, 31.137220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.644773, 32.027023, 30.823765>,  <28.775999, 31.956257, 30.635691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.644773, 32.027023, 30.823765>,  <28.426064, 32.144966, 31.137220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.644773, 32.027023, 30.823765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831366, -0.302232, -0.466355,
		-0.099332, 0.906484, -0.410389,
		0.546776, -0.294859, -0.783641,
		28.808807, 31.938566, 30.588673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.135538, 32.369385, 30.555471>,  <28.426064, 32.144966, 31.137220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.135538, 32.369385, 30.555471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.333326, 32.023468, 30.520536>,  <28.452000, 31.815918, 30.499577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.333326, 32.023468, 30.520536>,  <28.135538, 32.369385, 30.555471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.333326, 32.023468, 30.520536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833089, -0.442876, -0.331395,
		0.247910, 0.236623, -0.939441,
		0.494472, -0.864794, -0.087335,
		28.481668, 31.764030, 30.494335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.144712, 32.105686, 29.953926>,  <28.135538, 32.369385, 30.555471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.144712, 32.105686, 29.953926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.191603, 31.792524, 30.198328>,  <28.219736, 31.604628, 30.344969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.191603, 31.792524, 30.198328>,  <28.144712, 32.105686, 29.953926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.191603, 31.792524, 30.198328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878359, -0.368820, -0.304066,
		0.463404, -0.501036, -0.730903,
		0.117224, -0.782901, 0.611003,
		28.226770, 31.557653, 30.381628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.674845, 32.589756, 29.702318>,  <28.144712, 32.105686, 29.953926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.674845, 32.589756, 29.702318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.513258, 32.836159, 29.431808>,  <27.416306, 32.984001, 29.269503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.513258, 32.836159, 29.431808>,  <27.674845, 32.589756, 29.702318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.513258, 32.836159, 29.431808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863209, 0.011995, -0.504705,
		-0.302788, -0.787652, -0.536585,
		-0.403968, 0.616004, -0.676276,
		27.392067, 33.020962, 29.228926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669449, 32.323452, 28.981539>,  <27.674845, 32.589756, 29.702318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.669449, 32.323452, 28.981539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.718958, 32.720367, 28.984169>,  <27.748663, 32.958515, 28.985746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.718958, 32.720367, 28.984169>,  <27.669449, 32.323452, 28.981539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.718958, 32.720367, 28.984169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755115, -0.089884, -0.649402,
		-0.643803, 0.085343, -0.760417,
		0.123772, 0.992289, 0.006576,
		27.756090, 33.018055, 28.986141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.543833, 32.673496, 28.237127>,  <27.669449, 32.323452, 28.981539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.543833, 32.673496, 28.237127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.780880, 32.904102, 28.462137>,  <27.923107, 33.042465, 28.597143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.780880, 32.904102, 28.462137>,  <27.543833, 32.673496, 28.237127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.780880, 32.904102, 28.462137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772106, -0.207626, -0.600619,
		-0.229473, 0.790264, -0.568177,
		0.592616, 0.576519, 0.562523,
		27.958664, 33.077057, 28.630894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.073322, 32.682983, 27.868692>,  <27.543833, 32.673496, 28.237127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.073322, 32.682983, 27.868692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.214022, 32.898403, 28.174955>,  <28.298441, 33.027657, 28.358713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.214022, 32.898403, 28.174955>,  <28.073322, 32.682983, 27.868692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.214022, 32.898403, 28.174955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928950, -0.099956, -0.356456,
		-0.115439, 0.836641, -0.535449,
		0.351748, 0.538554, 0.765659,
		28.319546, 33.059971, 28.404654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.372053, 33.283100, 27.667126>,  <28.073322, 32.682983, 27.868692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.372053, 33.283100, 27.667126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531607, 33.152645, 28.009943>,  <28.627338, 33.074371, 28.215633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531607, 33.152645, 28.009943>,  <28.372053, 33.283100, 27.667126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.531607, 33.152645, 28.009943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885657, -0.105253, -0.452253,
		0.237705, 0.939444, 0.246865,
		0.398883, -0.326140, 0.857044,
		28.651272, 33.054802, 28.267056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.858107, 33.808853, 27.943022>,  <28.372053, 33.283100, 27.667126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.858107, 33.808853, 27.943022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.949251, 33.433353, 28.046432>,  <29.003937, 33.208054, 28.108479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.949251, 33.433353, 28.046432>,  <28.858107, 33.808853, 27.943022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.949251, 33.433353, 28.046432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863620, 0.072218, -0.498944,
		0.449712, 0.336956, 0.827176,
		0.227859, -0.938747, 0.258525,
		29.017609, 33.151730, 28.123989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.522648, 33.890076, 27.912331>,  <28.858107, 33.808853, 27.943022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.522648, 33.890076, 27.912331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.488649, 33.494740, 27.962875>,  <29.468250, 33.257538, 27.993202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.488649, 33.494740, 27.962875>,  <29.522648, 33.890076, 27.912331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.488649, 33.494740, 27.962875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869024, -0.135571, -0.475834,
		0.487415, 0.069367, 0.870411,
		-0.084995, -0.988336, 0.126361,
		29.463150, 33.198238, 28.000784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.173748, 33.765060, 28.198925>,  <29.522648, 33.890076, 27.912331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.173748, 33.765060, 28.198925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047653, 33.435345, 28.010811>,  <29.971996, 33.237514, 27.897942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047653, 33.435345, 28.010811>,  <30.173748, 33.765060, 28.198925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.047653, 33.435345, 28.010811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896239, -0.095630, -0.433141,
		0.312061, -0.558031, 0.768908,
		-0.315237, -0.824292, -0.470286,
		29.953083, 33.188057, 27.869724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667381, 33.161312, 28.348923>,  <30.173748, 33.765060, 28.198925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667381, 33.161312, 28.348923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.474268, 33.056107, 28.014797>,  <30.358400, 32.992985, 27.814322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.474268, 33.056107, 28.014797>,  <30.667381, 33.161312, 28.348923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.474268, 33.056107, 28.014797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874549, -0.095043, -0.475533,
		0.045679, -0.960100, 0.275900,
		-0.482781, -0.263010, -0.835313,
		30.329433, 32.977203, 27.764204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.109861, 32.700375, 28.098927>,  <30.667381, 33.161312, 28.348923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.109861, 32.700375, 28.098927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878344, 32.779297, 27.782429>,  <30.739433, 32.826653, 27.592529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878344, 32.779297, 27.782429>,  <31.109861, 32.700375, 28.098927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.878344, 32.779297, 27.782429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788901, -0.110195, -0.604559,
		-0.206476, -0.974128, -0.091876,
		-0.578794, 0.197308, -0.791243,
		30.704704, 32.838490, 27.545055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.322584, 32.233261, 27.625362>,  <31.109861, 32.700375, 28.098927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.322584, 32.233261, 27.625362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.135214, 32.520363, 27.419294>,  <31.022791, 32.692623, 27.295654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.135214, 32.520363, 27.419294>,  <31.322584, 32.233261, 27.625362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.135214, 32.520363, 27.419294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714135, -0.035711, -0.699096,
		-0.520179, -0.695377, -0.495848,
		-0.468428, 0.717757, -0.515169,
		30.994686, 32.735691, 27.264744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373234, 32.009396, 26.984438>,  <31.322584, 32.233261, 27.625362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373234, 32.009396, 26.984438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297682, 32.400669, 26.949835>,  <31.252352, 32.635433, 26.929073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297682, 32.400669, 26.949835>,  <31.373234, 32.009396, 26.984438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297682, 32.400669, 26.949835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715426, 0.076728, -0.694462,
		-0.672674, -0.193058, -0.714310,
		-0.188879, 0.978183, -0.086506,
		31.241018, 32.694122, 26.923883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104179, 32.160789, 26.280910>,  <31.373234, 32.009396, 26.984438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.104179, 32.160789, 26.280910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280563, 32.488445, 26.427647>,  <31.386393, 32.685040, 26.515688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280563, 32.488445, 26.427647>,  <31.104179, 32.160789, 26.280910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280563, 32.488445, 26.427647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659534, -0.018514, -0.751447,
		-0.608746, 0.573300, -0.548412,
		0.440958, 0.819136, 0.366841,
		31.412851, 32.734184, 26.537699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.323885, 32.535625, 25.677811>,  <31.104179, 32.160789, 26.280910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.323885, 32.535625, 25.677811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.508181, 32.701500, 25.991692>,  <31.618759, 32.801025, 26.180019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.508181, 32.701500, 25.991692>,  <31.323885, 32.535625, 25.677811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.508181, 32.701500, 25.991692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827528, 0.118859, -0.548699,
		-0.320805, 0.902170, -0.288398,
		0.460741, 0.414683, 0.784701,
		31.646402, 32.825905, 26.227102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809151, 32.897110, 25.368490>,  <31.323885, 32.535625, 25.677811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809151, 32.897110, 25.368490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935591, 32.933537, 25.746227>,  <32.011456, 32.955391, 25.972870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935591, 32.933537, 25.746227>,  <31.809151, 32.897110, 25.368490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935591, 32.933537, 25.746227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925240, 0.190514, -0.328078,
		-0.209786, 0.977452, -0.024032,
		0.316102, 0.091062, 0.944345,
		32.030422, 32.960854, 26.029531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144161, 33.551754, 25.460867>,  <31.809151, 32.897110, 25.368490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144161, 33.551754, 25.460867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311420, 33.307484, 25.729858>,  <32.411777, 33.160923, 25.891253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311420, 33.307484, 25.729858>,  <32.144161, 33.551754, 25.460867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.311420, 33.307484, 25.729858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904151, 0.208470, -0.372896,
		0.087527, 0.763947, 0.639315,
		0.418151, -0.610676, 0.672477,
		32.436867, 33.124279, 25.931601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707100, 33.957047, 25.760033>,  <32.144161, 33.551754, 25.460867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707100, 33.957047, 25.760033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778965, 33.578590, 25.867769>,  <32.822083, 33.351517, 25.932411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778965, 33.578590, 25.867769>,  <32.707100, 33.957047, 25.760033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778965, 33.578590, 25.867769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980510, 0.150105, -0.126762,
		0.079505, 0.286865, 0.954666,
		0.179664, -0.946138, 0.269340,
		32.832863, 33.294750, 25.948572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376011, 34.036385, 26.106583>,  <32.707100, 33.957047, 25.760033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376011, 34.036385, 26.106583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336246, 33.641956, 26.053249>,  <33.312389, 33.405300, 26.021250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336246, 33.641956, 26.053249>,  <33.376011, 34.036385, 26.106583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336246, 33.641956, 26.053249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985154, -0.078688, -0.152578,
		0.139961, -0.146521, 0.979256,
		-0.099411, -0.986073, -0.133333,
		33.306423, 33.346134, 26.013250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730534, 33.662609, 26.670317>,  <33.376011, 34.036385, 26.106583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730534, 33.662609, 26.670317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722736, 33.457378, 26.327068>,  <33.718060, 33.334240, 26.121119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722736, 33.457378, 26.327068>,  <33.730534, 33.662609, 26.670317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722736, 33.457378, 26.327068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997560, 0.047568, -0.051102,
		0.067038, -0.857024, 0.510897,
		-0.019494, -0.513076, -0.858122,
		33.716888, 33.303455, 26.069632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239182, 33.182774, 26.685606>,  <33.730534, 33.662609, 26.670317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239182, 33.182774, 26.685606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175350, 33.221848, 26.292669>,  <34.137051, 33.245293, 26.056908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175350, 33.221848, 26.292669>,  <34.239182, 33.182774, 26.685606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175350, 33.221848, 26.292669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986650, 0.048562, -0.155446,
		0.032520, -0.994032, -0.104131,
		-0.159575, 0.097685, -0.982341,
		34.127480, 33.251152, 25.997967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676914, 32.695148, 26.377020>,  <34.239182, 33.182774, 26.685606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676914, 32.695148, 26.377020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577030, 32.942360, 26.078842>,  <34.517097, 33.090687, 25.899937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577030, 32.942360, 26.078842>,  <34.676914, 32.695148, 26.377020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577030, 32.942360, 26.078842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944484, -0.014304, -0.328246,
		-0.213528, -0.786026, -0.580146,
		-0.249712, 0.618028, -0.745443,
		34.502117, 33.127769, 25.855209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160343, 32.586285, 25.809244>,  <34.676914, 32.695148, 26.377020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160343, 32.586285, 25.809244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028084, 32.945660, 25.693665>,  <34.948730, 33.161285, 25.624317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028084, 32.945660, 25.693665>,  <35.160343, 32.586285, 25.809244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028084, 32.945660, 25.693665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801847, 0.105972, -0.588057,
		-0.497710, -0.426130, -0.755445,
		-0.330645, 0.898434, -0.288947,
		34.928890, 33.215191, 25.606979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521355, 32.825043, 25.194265>,  <35.160343, 32.586285, 25.809244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521355, 32.825043, 25.194265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356243, 33.162220, 25.332293>,  <35.257175, 33.364525, 25.415108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356243, 33.162220, 25.332293>,  <35.521355, 32.825043, 25.194265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356243, 33.162220, 25.332293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682782, 0.537106, -0.495304,
		-0.602848, 0.031156, -0.797247,
		-0.412774, 0.842940, 0.345066,
		35.232410, 33.415100, 25.435812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627586, 33.286983, 24.731470>,  <35.521355, 32.825043, 25.194265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627586, 33.286983, 24.731470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578136, 33.527515, 25.047222>,  <35.548466, 33.671833, 25.236673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578136, 33.527515, 25.047222>,  <35.627586, 33.286983, 24.731470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578136, 33.527515, 25.047222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800319, 0.530727, -0.278961,
		-0.586692, 0.597270, -0.546865,
		-0.123621, 0.601330, 0.789380,
		35.541050, 33.707916, 25.284037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784424, 34.044212, 24.542387>,  <35.627586, 33.286983, 24.731470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784424, 34.044212, 24.542387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.837688, 34.008587, 24.937222>,  <35.869648, 33.987213, 25.174122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.837688, 34.008587, 24.937222>,  <35.784424, 34.044212, 24.542387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837688, 34.008587, 24.937222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941349, 0.322933, -0.097857,
		-0.310046, 0.942222, 0.126840,
		0.133164, -0.089061, 0.987084,
		35.877636, 33.981869, 25.233347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230015, 34.630352, 24.680641>,  <35.784424, 34.044212, 24.542387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230015, 34.630352, 24.680641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.251720, 34.368336, 24.982098>,  <36.264744, 34.211124, 25.162971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.251720, 34.368336, 24.982098>,  <36.230015, 34.630352, 24.680641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251720, 34.368336, 24.982098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989914, 0.134209, 0.045371,
		-0.130865, 0.743577, 0.655719,
		0.054267, -0.655043, 0.753640,
		36.268002, 34.171822, 25.208189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594570, 34.942734, 25.264149>,  <36.230015, 34.630352, 24.680641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594570, 34.942734, 25.264149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643105, 34.549171, 25.316633>,  <36.672226, 34.313034, 25.348124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643105, 34.549171, 25.316633>,  <36.594570, 34.942734, 25.264149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643105, 34.549171, 25.316633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992269, 0.116752, -0.042083,
		0.026086, 0.135304, 0.990461,
		0.121332, -0.983901, 0.131212,
		36.679504, 34.254002, 25.355997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067654, 34.784164, 25.878551>,  <36.594570, 34.942734, 25.264149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067654, 34.784164, 25.878551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067783, 34.467224, 25.634523>,  <37.067860, 34.277061, 25.488106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067783, 34.467224, 25.634523>,  <37.067654, 34.784164, 25.878551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067783, 34.467224, 25.634523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999627, -0.016390, 0.021814,
		-0.027283, -0.609851, 0.792047,
		0.000321, -0.792347, -0.610071,
		37.067879, 34.229519, 25.451502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594105, 34.281273, 26.197079>,  <37.067654, 34.784164, 25.878551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594105, 34.281273, 26.197079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.551140, 34.178265, 25.812965>,  <37.525360, 34.116459, 25.582497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.551140, 34.178265, 25.812965>,  <37.594105, 34.281273, 26.197079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551140, 34.178265, 25.812965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964603, -0.260967, -0.037915,
		-0.240839, -0.930366, 0.276433,
		-0.107415, -0.257517, -0.960285,
		37.518917, 34.101009, 25.524879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982952, 33.625183, 26.154062>,  <37.594105, 34.281273, 26.197079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982952, 33.625183, 26.154062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.948071, 33.772869, 25.783964>,  <37.927143, 33.861481, 25.561905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.948071, 33.772869, 25.783964>,  <37.982952, 33.625183, 26.154062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948071, 33.772869, 25.783964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995220, -0.008690, -0.097268,
		-0.043954, -0.929303, -0.366693,
		-0.087205, 0.369216, -0.925243,
		37.921909, 33.883633, 25.506392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637611, 33.368958, 25.844603>,  <37.982952, 33.625183, 26.154062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637611, 33.368958, 25.844603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495785, 33.611790, 25.560141>,  <38.410690, 33.757488, 25.389463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495785, 33.611790, 25.560141>,  <38.637611, 33.368958, 25.844603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495785, 33.611790, 25.560141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910728, 0.051937, -0.409728,
		-0.211803, -0.792942, -0.571299,
		-0.354562, 0.607080, -0.711154,
		38.389416, 33.793915, 25.346794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760452, 33.046520, 25.245773>,  <38.637611, 33.368958, 25.844603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760452, 33.046520, 25.245773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.737785, 33.435074, 25.153513>,  <38.724186, 33.668205, 25.098158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.737785, 33.435074, 25.153513>,  <38.760452, 33.046520, 25.245773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737785, 33.435074, 25.153513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877513, -0.061727, -0.475565,
		-0.476194, -0.229348, -0.848904,
		-0.056670, 0.971385, -0.230650,
		38.720783, 33.726490, 25.084318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853752, 33.164577, 24.482084>,  <38.760452, 33.046520, 25.245773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853752, 33.164577, 24.482084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.947945, 33.501797, 24.675501>,  <39.004459, 33.704128, 24.791552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.947945, 33.501797, 24.675501>,  <38.853752, 33.164577, 24.482084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947945, 33.501797, 24.675501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820888, 0.093813, -0.563331,
		-0.520278, 0.529591, -0.669958,
		0.235485, 0.843049, 0.483544,
		39.018589, 33.754711, 24.820564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965027, 33.600891, 23.959202>,  <38.853752, 33.164577, 24.482084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965027, 33.600891, 23.959202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.130867, 33.771275, 24.280865>,  <39.230373, 33.873505, 24.473862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.130867, 33.771275, 24.280865>,  <38.965027, 33.600891, 23.959202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130867, 33.771275, 24.280865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827130, 0.192053, -0.528178,
		-0.379420, 0.884126, -0.272693,
		0.414604, 0.425954, 0.804156,
		39.255249, 33.899059, 24.522112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448971, 33.981735, 23.652460>,  <38.965027, 33.600891, 23.959202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448971, 33.981735, 23.652460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543858, 33.977192, 24.041016>,  <39.600788, 33.974464, 24.274149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543858, 33.977192, 24.041016>,  <39.448971, 33.981735, 23.652460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543858, 33.977192, 24.041016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962894, 0.135217, -0.233563,
		-0.128696, 0.990751, 0.043012,
		0.237218, -0.011357, 0.971390,
		39.615025, 33.973785, 24.332432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819263, 34.584751, 23.815022>,  <39.448971, 33.981735, 23.652460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819263, 34.584751, 23.815022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.921848, 34.268620, 24.037592>,  <39.983398, 34.078941, 24.171135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.921848, 34.268620, 24.037592>,  <39.819263, 34.584751, 23.815022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.921848, 34.268620, 24.037592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946684, 0.089256, -0.309552,
		0.194984, 0.606147, 0.771082,
		0.256458, -0.790329, 0.556426,
		39.998787, 34.031521, 24.204519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.530647, 34.782814, 23.975924>,  <39.819263, 34.584751, 23.815022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.530647, 34.782814, 23.975924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484241, 34.395676, 24.065203>,  <40.456398, 34.163391, 24.118771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484241, 34.395676, 24.065203>,  <40.530647, 34.782814, 23.975924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484241, 34.395676, 24.065203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967110, -0.161285, -0.196686,
		0.226360, 0.193038, 0.954724,
		-0.116014, -0.967845, 0.223198,
		40.449436, 34.105324, 24.132162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.080284, 34.626480, 24.441980>,  <40.530647, 34.782814, 23.975924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.080284, 34.626480, 24.441980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961525, 34.266037, 24.315580>,  <40.890270, 34.049770, 24.239740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961525, 34.266037, 24.315580>,  <41.080284, 34.626480, 24.441980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961525, 34.266037, 24.315580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952841, -0.257805, -0.160094,
		0.062795, -0.348631, 0.935154,
		-0.296902, -0.901106, -0.316001,
		40.872456, 33.995705, 24.220779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.494476, 34.025135, 24.810688>,  <41.080284, 34.626480, 24.441980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.494476, 34.025135, 24.810688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.359783, 33.908001, 24.452724>,  <41.278965, 33.837723, 24.237947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.359783, 33.908001, 24.452724>,  <41.494476, 34.025135, 24.810688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.359783, 33.908001, 24.452724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913554, -0.331837, -0.235168,
		-0.228098, -0.896735, 0.379260,
		-0.336736, -0.292833, -0.894906,
		41.258762, 33.820152, 24.184252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.787453, 33.364777, 24.754845>,  <41.494476, 34.025135, 24.810688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.787453, 33.364777, 24.754845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.675251, 33.461449, 24.383274>,  <41.607929, 33.519451, 24.160332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.675251, 33.461449, 24.383274>,  <41.787453, 33.364777, 24.754845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.675251, 33.461449, 24.383274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877598, -0.327399, -0.350188,
		-0.388765, -0.913454, -0.120264,
		-0.280506, 0.241684, -0.928927,
		41.591099, 33.533955, 24.104595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.790901, 32.787136, 24.360523>,  <41.787453, 33.364777, 24.754845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.790901, 32.787136, 24.360523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.822918, 33.083477, 24.093769>,  <41.842129, 33.261280, 23.933716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.822918, 33.083477, 24.093769>,  <41.790901, 32.787136, 24.360523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.822918, 33.083477, 24.093769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804151, -0.443327, -0.395983,
		-0.589012, -0.504582, -0.631238,
		0.080039, 0.740849, -0.666885,
		41.846931, 33.305733, 23.893703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.814651, 32.471981, 23.740782>,  <41.790901, 32.787136, 24.360523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.814651, 32.471981, 23.740782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954834, 32.837269, 23.657633>,  <42.038944, 33.056442, 23.607744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954834, 32.837269, 23.657633>,  <41.814651, 32.471981, 23.740782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.954834, 32.837269, 23.657633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768266, -0.407251, -0.493876,
		-0.535672, 0.013383, -0.844320,
		0.350460, 0.913218, -0.207871,
		42.059971, 33.111233, 23.595272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.912518, 32.426716, 23.000059>,  <41.814651, 32.471981, 23.740782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.912518, 32.426716, 23.000059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.126549, 32.709339, 23.185299>,  <42.254967, 32.878914, 23.296442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.126549, 32.709339, 23.185299>,  <41.912518, 32.426716, 23.000059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.126549, 32.709339, 23.185299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835799, -0.362945, -0.411959,
		-0.122994, 0.607490, -0.784747,
		0.535081, 0.706560, 0.463100,
		42.287071, 32.921307, 23.324228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.315205, 32.668987, 22.473034>,  <41.912518, 32.426716, 23.000059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.315205, 32.668987, 22.473034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.496010, 32.811794, 22.800013>,  <42.604492, 32.897480, 22.996199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.496010, 32.811794, 22.800013>,  <42.315205, 32.668987, 22.473034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.496010, 32.811794, 22.800013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890009, -0.241847, -0.386516,
		0.059703, 0.902246, -0.427069,
		0.452018, 0.357019, 0.817446,
		42.631615, 32.918900, 23.045246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.195061, 33.116837, 21.849266>,  <42.315205, 32.668987, 22.473034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.195061, 33.116837, 21.849266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.197594, 32.775845, 21.640175>,  <42.199116, 32.571251, 21.514719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.197594, 32.775845, 21.640175>,  <42.195061, 33.116837, 21.849266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.197594, 32.775845, 21.640175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926319, -0.201915, 0.318062,
		-0.376687, 0.482199, -0.790943,
		0.006334, -0.852475, -0.522729,
		42.199493, 32.520103, 21.483356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.563549, 33.050949, 21.705091>,  <42.195061, 33.116837, 21.849266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.563549, 33.050949, 21.705091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.725559, 32.685818, 21.684322>,  <41.822765, 32.466740, 21.671860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.725559, 32.685818, 21.684322>,  <41.563549, 33.050949, 21.705091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.725559, 32.685818, 21.684322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837215, -0.393102, 0.380185,
		-0.367456, -0.110513, -0.923452,
		0.405027, -0.912829, -0.051925,
		41.847069, 32.411968, 21.668745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.185585, 32.624931, 21.274971>,  <41.563549, 33.050949, 21.705091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.185585, 32.624931, 21.274971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.371723, 32.351528, 21.499920>,  <41.483406, 32.187485, 21.634890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.371723, 32.351528, 21.499920>,  <41.185585, 32.624931, 21.274971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.371723, 32.351528, 21.499920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880740, -0.420750, 0.217408,
		0.088017, -0.596474, -0.797792,
		0.465349, -0.683512, 0.562372,
		41.511330, 32.146473, 21.668631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.009052, 32.028923, 20.945995>,  <41.185585, 32.624931, 21.274971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.009052, 32.028923, 20.945995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.142860, 31.931828, 21.310230>,  <41.223145, 31.873569, 21.528772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.142860, 31.931828, 21.310230>,  <41.009052, 32.028923, 20.945995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.142860, 31.931828, 21.310230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783879, -0.608017, 0.125890,
		0.523095, -0.755905, -0.393674,
		0.334522, -0.242740, 0.910589,
		41.243217, 31.859005, 21.583406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791172, 31.295549, 20.993565>,  <41.009052, 32.028923, 20.945995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.791172, 31.295549, 20.993565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835579, 31.421761, 21.370525>,  <40.862221, 31.497488, 21.596701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835579, 31.421761, 21.370525>,  <40.791172, 31.295549, 20.993565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.835579, 31.421761, 21.370525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846706, -0.466468, 0.255922,
		0.520350, -0.826347, 0.215376,
		0.111014, 0.315529, 0.942400,
		40.868881, 31.516418, 21.653246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604179, 30.704609, 21.429928>,  <40.791172, 31.295549, 20.993565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.604179, 30.704609, 21.429928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.592152, 30.983952, 21.715977>,  <40.584934, 31.151556, 21.887606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.592152, 30.983952, 21.715977>,  <40.604179, 30.704609, 21.429928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592152, 30.983952, 21.715977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767614, -0.474372, 0.430975,
		0.640207, -0.535978, 0.550330,
		-0.030068, 0.698355, 0.715120,
		40.583130, 31.193459, 21.930513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.474640, 30.390299, 22.143024>,  <40.604179, 30.704609, 21.429928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.474640, 30.390299, 22.143024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.349354, 30.769730, 22.161348>,  <40.274181, 30.997387, 22.172342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.349354, 30.769730, 22.161348>,  <40.474640, 30.390299, 22.143024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.349354, 30.769730, 22.161348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898306, -0.311579, 0.309783,
		0.308126, 0.055879, 0.949703,
		-0.313218, 0.948576, 0.045809,
		40.255390, 31.054302, 22.175091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977623, 30.355648, 22.544828>,  <40.474640, 30.390299, 22.143024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977623, 30.355648, 22.544828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896332, 30.713284, 22.385176>,  <39.847557, 30.927864, 22.289385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896332, 30.713284, 22.385176>,  <39.977623, 30.355648, 22.544828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896332, 30.713284, 22.385176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967363, -0.120329, 0.223001,
		0.151355, 0.431424, 0.889362,
		-0.203224, 0.894088, -0.399131,
		39.835365, 30.981510, 22.265436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613884, 30.665329, 23.034788>,  <39.977623, 30.355648, 22.544828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613884, 30.665329, 23.034788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.512562, 30.843460, 22.691273>,  <39.451767, 30.950338, 22.485163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.512562, 30.843460, 22.691273>,  <39.613884, 30.665329, 23.034788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512562, 30.843460, 22.691273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960142, -0.224171, 0.166956,
		-0.118166, 0.866852, 0.484360,
		-0.253305, 0.445326, -0.858790,
		39.436569, 30.977058, 22.433636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253857, 31.315145, 23.290947>,  <39.613884, 30.665329, 23.034788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253857, 31.315145, 23.290947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138321, 31.188318, 22.929607>,  <39.069000, 31.112221, 22.712803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138321, 31.188318, 22.929607>,  <39.253857, 31.315145, 23.290947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138321, 31.188318, 22.929607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954704, 0.024909, 0.296514,
		-0.071514, 0.948075, -0.309902,
		-0.288837, -0.317070, -0.903349,
		39.051670, 31.093197, 22.658602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523296, 31.525732, 23.318933>,  <39.253857, 31.315145, 23.290947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523296, 31.525732, 23.318933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508663, 31.353691, 22.958118>,  <38.499882, 31.250467, 22.741629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508663, 31.353691, 22.958118>,  <38.523296, 31.525732, 23.318933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508663, 31.353691, 22.958118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995711, 0.092442, -0.003696,
		0.084976, 0.898035, -0.431640,
		-0.036583, -0.430102, -0.902039,
		38.497688, 31.224661, 22.687508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053631, 31.897707, 22.883810>,  <38.523296, 31.525732, 23.318933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053631, 31.897707, 22.883810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084156, 31.518133, 22.761370>,  <38.102470, 31.290388, 22.687904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084156, 31.518133, 22.761370>,  <38.053631, 31.897707, 22.883810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084156, 31.518133, 22.761370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994019, -0.096459, 0.051199,
		-0.078111, 0.300363, -0.950621,
		0.076317, -0.948935, -0.306101,
		38.107052, 31.233452, 22.669538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603355, 31.929571, 22.404261>,  <38.053631, 31.897707, 22.883810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603355, 31.929571, 22.404261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637276, 31.540785, 22.491978>,  <37.657627, 31.307512, 22.544607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637276, 31.540785, 22.491978>,  <37.603355, 31.929571, 22.404261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637276, 31.540785, 22.491978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992996, -0.100606, -0.061940,
		0.082265, -0.212504, -0.973691,
		0.084796, -0.971967, 0.219292,
		37.662716, 31.249195, 22.557766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091217, 31.642891, 21.919716>,  <37.603355, 31.929571, 22.404261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091217, 31.642891, 21.919716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.167721, 31.385056, 22.215803>,  <37.213623, 31.230354, 22.393456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.167721, 31.385056, 22.215803>,  <37.091217, 31.642891, 21.919716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167721, 31.385056, 22.215803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974241, -0.216465, 0.063227,
		0.119477, -0.733245, -0.669385,
		0.191259, -0.644588, 0.740220,
		37.225098, 31.191679, 22.437870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652454, 31.154171, 21.679354>,  <37.091217, 31.642891, 21.919716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652454, 31.154171, 21.679354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714649, 31.166357, 22.074301>,  <36.751965, 31.173668, 22.311270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714649, 31.166357, 22.074301>,  <36.652454, 31.154171, 21.679354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714649, 31.166357, 22.074301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982226, -0.101624, 0.157810,
		0.105148, -0.994356, 0.014125,
		0.155484, 0.030467, 0.987368,
		36.761295, 31.175497, 22.370512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961365, 30.922476, 22.015766>,  <36.652454, 31.154171, 21.679354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961365, 30.922476, 22.015766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160759, 31.053631, 22.336765>,  <36.280396, 31.132324, 22.529366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160759, 31.053631, 22.336765>,  <35.961365, 30.922476, 22.015766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160759, 31.053631, 22.336765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864838, 0.124291, 0.486422,
		0.059746, -0.936506, 0.345523,
		0.498483, 0.327884, 0.802500,
		36.310303, 31.151997, 22.577515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772839, 30.601282, 22.701017>,  <35.961365, 30.922476, 22.015766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772839, 30.601282, 22.701017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941536, 30.947344, 22.809565>,  <36.042755, 31.154982, 22.874693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941536, 30.947344, 22.809565>,  <35.772839, 30.601282, 22.701017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941536, 30.947344, 22.809565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740189, 0.155644, 0.654137,
		0.523693, -0.476739, 0.706020,
		0.421740, 0.865155, 0.271368,
		36.068058, 31.206890, 22.890976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675861, 30.582634, 23.468872>,  <35.772839, 30.601282, 22.701017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675861, 30.582634, 23.468872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749783, 30.958632, 23.354149>,  <35.794136, 31.184231, 23.285315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749783, 30.958632, 23.354149>,  <35.675861, 30.582634, 23.468872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749783, 30.958632, 23.354149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720691, 0.328031, 0.610738,
		0.668173, 0.093838, 0.738065,
		0.184798, 0.939995, -0.286810,
		35.805222, 31.240629, 23.268106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735592, 31.014664, 23.955294>,  <35.675861, 30.582634, 23.468872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735592, 31.014664, 23.955294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654541, 31.309687, 23.697626>,  <35.605911, 31.486700, 23.543026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654541, 31.309687, 23.697626>,  <35.735592, 31.014664, 23.955294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654541, 31.309687, 23.697626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876137, 0.157288, 0.455680,
		0.437411, 0.656711, 0.614331,
		-0.202623, 0.737557, -0.644168,
		35.593754, 31.530954, 23.504375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528393, 31.619751, 24.409925>,  <35.735592, 31.014664, 23.955294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528393, 31.619751, 24.409925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.392025, 31.684940, 24.039581>,  <35.310204, 31.724054, 23.817375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.392025, 31.684940, 24.039581>,  <35.528393, 31.619751, 24.409925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392025, 31.684940, 24.039581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860046, 0.343606, 0.377169,
		0.379599, 0.924865, 0.023023,
		-0.340919, 0.162974, -0.925858,
		35.289749, 31.733833, 23.761824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146423, 32.178780, 24.381683>,  <35.528393, 31.619751, 24.409925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146423, 32.178780, 24.381683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006371, 31.992304, 24.056704>,  <34.922337, 31.880419, 23.861715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006371, 31.992304, 24.056704>,  <35.146423, 32.178780, 24.381683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006371, 31.992304, 24.056704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931747, 0.262413, 0.250975,
		0.096195, 0.844870, -0.526252,
		-0.350136, -0.466191, -0.812447,
		34.901329, 31.852448, 23.812969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675720, 32.566528, 24.285231>,  <35.146423, 32.178780, 24.381683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675720, 32.566528, 24.285231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584545, 32.257015, 24.048824>,  <34.529842, 32.071308, 23.906981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584545, 32.257015, 24.048824>,  <34.675720, 32.566528, 24.285231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584545, 32.257015, 24.048824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972821, 0.155559, 0.171521,
		-0.040783, 0.614049, -0.788213,
		-0.227936, -0.773786, -0.591016,
		34.516163, 32.024879, 23.871519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139004, 32.725418, 23.860275>,  <34.675720, 32.566528, 24.285231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139004, 32.725418, 23.860275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144169, 32.325691, 23.874086>,  <34.147270, 32.085854, 23.882372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144169, 32.325691, 23.874086>,  <34.139004, 32.725418, 23.860275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144169, 32.325691, 23.874086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987831, -0.007401, 0.155356,
		-0.154995, -0.036113, -0.987255,
		0.012917, -0.999321, 0.034526,
		34.148045, 32.025894, 23.884445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623066, 32.495018, 23.501133>,  <34.139004, 32.725418, 23.860275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623066, 32.495018, 23.501133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688961, 32.150650, 23.693663>,  <33.728497, 31.944029, 23.809179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688961, 32.150650, 23.693663>,  <33.623066, 32.495018, 23.501133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688961, 32.150650, 23.693663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982769, -0.101797, 0.154277,
		-0.083824, -0.498441, -0.862862,
		0.164735, -0.860926, 0.481319,
		33.738380, 31.892372, 23.838058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206234, 31.966963, 23.153193>,  <33.623066, 32.495018, 23.501133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206234, 31.966963, 23.153193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288200, 31.826635, 23.518692>,  <33.337379, 31.742439, 23.737991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288200, 31.826635, 23.518692>,  <33.206234, 31.966963, 23.153193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288200, 31.826635, 23.518692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959320, -0.257218, 0.116378,
		0.194205, -0.900425, -0.389255,
		0.204912, -0.350819, 0.913749,
		33.349674, 31.721390, 23.792816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006943, 31.243032, 23.197256>,  <33.206234, 31.966963, 23.153193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006943, 31.243032, 23.197256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977535, 31.410135, 23.559488>,  <32.959892, 31.510397, 23.776827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977535, 31.410135, 23.559488>,  <33.006943, 31.243032, 23.197256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977535, 31.410135, 23.559488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914778, -0.389909, 0.105608,
		0.397212, -0.820639, 0.410821,
		-0.073517, 0.417759, 0.905579,
		32.955479, 31.535463, 23.831161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484310, 30.829226, 23.465233>,  <33.006943, 31.243032, 23.197256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.484310, 30.829226, 23.465233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515770, 31.142962, 23.711363>,  <32.534645, 31.331203, 23.859041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515770, 31.142962, 23.711363>,  <32.484310, 30.829226, 23.465233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515770, 31.142962, 23.711363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923712, -0.174803, 0.340881,
		0.374927, -0.595193, 0.710757,
		0.078647, 0.784340, 0.615326,
		32.539364, 31.378263, 23.895960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.164127, 30.529930, 24.007059>,  <32.484310, 30.829226, 23.465233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.164127, 30.529930, 24.007059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.168976, 30.923191, 24.080008>,  <32.171886, 31.159147, 24.123777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.168976, 30.923191, 24.080008>,  <32.164127, 30.529930, 24.007059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.168976, 30.923191, 24.080008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919119, -0.060873, 0.389249,
		0.393794, -0.172341, 0.902898,
		0.012121, 0.983155, 0.182373,
		32.172611, 31.218138, 24.134720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.908363, 30.562632, 24.677225>,  <32.164127, 30.529930, 24.007059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.908363, 30.562632, 24.677225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852793, 30.925472, 24.518295>,  <31.819450, 31.143177, 24.422937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852793, 30.925472, 24.518295>,  <31.908363, 30.562632, 24.677225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852793, 30.925472, 24.518295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926316, 0.022847, 0.376052,
		0.350196, 0.420292, 0.837089,
		-0.138927, 0.907101, -0.397324,
		31.811115, 31.197603, 24.399097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520184, 30.899923, 25.121826>,  <31.908363, 30.562632, 24.677225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520184, 30.899923, 25.121826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.467897, 31.150211, 24.814219>,  <31.436527, 31.300385, 24.629654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.467897, 31.150211, 24.814219>,  <31.520184, 30.899923, 25.121826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.467897, 31.150211, 24.814219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961626, 0.108713, 0.251907,
		0.241225, 0.772436, 0.587497,
		-0.130713, 0.625719, -0.769019,
		31.428684, 31.337927, 24.583513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.145926, 31.453835, 25.368553>,  <31.520184, 30.899923, 25.121826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.145926, 31.453835, 25.368553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.078512, 31.424213, 24.975389>,  <31.038065, 31.406441, 24.739491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.078512, 31.424213, 24.975389>,  <31.145926, 31.453835, 25.368553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.078512, 31.424213, 24.975389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984024, 0.070689, 0.163399,
		0.057381, 0.994746, -0.084781,
		-0.168534, -0.074051, -0.982910,
		31.027952, 31.401999, 24.680517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.581602, 31.925413, 25.269529>,  <31.145926, 31.453835, 25.368553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.581602, 31.925413, 25.269529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.571489, 31.693981, 24.943436>,  <30.565422, 31.555122, 24.747780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.571489, 31.693981, 24.943436>,  <30.581602, 31.925413, 25.269529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.571489, 31.693981, 24.943436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998629, -0.022780, 0.047139,
		-0.045845, 0.815307, -0.577212,
		-0.025284, -0.578581, -0.815233,
		30.563904, 31.520407, 24.698866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.045755, 32.178875, 24.954576>,  <30.581602, 31.925413, 25.269529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.045755, 32.178875, 24.954576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089128, 31.827368, 24.768669>,  <30.115152, 31.616463, 24.657125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089128, 31.827368, 24.768669>,  <30.045755, 32.178875, 24.954576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089128, 31.827368, 24.768669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992965, -0.118113, -0.008342,
		-0.047565, 0.462402, -0.885394,
		0.108434, -0.878768, -0.464767,
		30.121658, 31.563738, 24.629238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.621662, 32.135509, 24.344723>,  <30.045755, 32.178875, 24.954576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.621662, 32.135509, 24.344723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.710987, 31.758947, 24.445822>,  <29.764582, 31.533009, 24.506481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.710987, 31.758947, 24.445822>,  <29.621662, 32.135509, 24.344723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.710987, 31.758947, 24.445822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964607, -0.250734, -0.081645,
		0.140233, -0.225569, -0.964082,
		0.223311, -0.941409, 0.252747,
		29.777981, 31.476524, 24.521646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.148354, 31.743456, 23.883602>,  <29.621662, 32.135509, 24.344723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.148354, 31.743456, 23.883602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.274752, 31.488991, 24.165154>,  <29.350592, 31.336311, 24.334084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.274752, 31.488991, 24.165154>,  <29.148354, 31.743456, 23.883602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.274752, 31.488991, 24.165154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880048, -0.473732, -0.033072,
		0.354488, -0.608995, -0.709551,
		0.315996, -0.636162, 0.703877,
		29.369551, 31.298141, 24.376316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.008627, 31.029097, 23.578766>,  <29.148354, 31.743456, 23.883602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.008627, 31.029097, 23.578766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037613, 31.011978, 23.977346>,  <29.055004, 31.001707, 24.216496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037613, 31.011978, 23.977346>,  <29.008627, 31.029097, 23.578766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.037613, 31.011978, 23.977346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901120, -0.431012, 0.047019,
		0.427471, -0.901331, -0.069797,
		0.072463, -0.042797, 0.996452,
		29.059351, 30.999140, 24.276281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.800928, 30.226070, 23.855551>,  <29.008627, 31.029097, 23.578766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.800928, 30.226070, 23.855551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.764162, 30.486753, 24.156702>,  <28.742102, 30.643164, 24.337393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.764162, 30.486753, 24.156702>,  <28.800928, 30.226070, 23.855551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.764162, 30.486753, 24.156702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878321, -0.409286, 0.247057,
		0.469152, -0.638562, 0.610029,
		-0.091915, 0.651708, 0.752880,
		28.736588, 30.682266, 24.382566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.530653, 29.805897, 24.494473>,  <28.800928, 30.226070, 23.855551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.530653, 29.805897, 24.494473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.433466, 30.185173, 24.576351>,  <28.375154, 30.412739, 24.625479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.433466, 30.185173, 24.576351>,  <28.530653, 29.805897, 24.494473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.433466, 30.185173, 24.576351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961934, -0.262727, 0.075216,
		0.125099, -0.178631, 0.975931,
		-0.242968, 0.948190, 0.204698,
		28.360575, 30.469629, 24.637760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.193573, 29.155642, 24.909443>,  <28.530653, 29.805897, 24.494473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.193573, 29.155642, 24.909443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.147911, 28.829733, 24.682070>,  <28.120514, 28.634188, 24.545647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.147911, 28.829733, 24.682070>,  <28.193573, 29.155642, 24.909443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.147911, 28.829733, 24.682070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897933, 0.160195, -0.409944,
		0.425071, -0.557212, 0.713323,
		-0.114155, -0.814772, -0.568433,
		28.113665, 28.585302, 24.511539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.801748, 28.718428, 25.052460>,  <28.193573, 29.155642, 24.909443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.801748, 28.718428, 25.052460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.644621, 28.595354, 24.705812>,  <28.550344, 28.521509, 24.497824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.644621, 28.595354, 24.705812>,  <28.801748, 28.718428, 25.052460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.644621, 28.595354, 24.705812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917815, -0.072206, -0.390387,
		0.057542, -0.948744, 0.310763,
		-0.392816, -0.307687, -0.866617,
		28.526775, 28.503048, 24.445827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.232409, 28.219658, 24.818218>,  <28.801748, 28.718428, 25.052460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.232409, 28.219658, 24.818218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.043688, 28.340603, 24.486923>,  <28.930456, 28.413170, 24.288145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.043688, 28.340603, 24.486923>,  <29.232409, 28.219658, 24.818218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.043688, 28.340603, 24.486923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824290, -0.182174, -0.536058,
		-0.312967, -0.935623, -0.163283,
		-0.471802, 0.302361, -0.828239,
		28.902147, 28.431311, 24.238451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.450321, 27.759197, 24.286098>,  <29.232409, 28.219658, 24.818218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.450321, 27.759197, 24.286098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.324984, 28.093075, 24.104946>,  <29.249781, 28.293402, 23.996254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.324984, 28.093075, 24.104946>,  <29.450321, 27.759197, 24.286098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.324984, 28.093075, 24.104946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867806, 0.058011, -0.493506,
		-0.385655, -0.547648, -0.742531,
		-0.313342, 0.834695, -0.452880,
		29.230982, 28.343483, 23.969082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.474611, 27.648029, 23.506550>,  <29.450321, 27.759197, 24.286098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.474611, 27.648029, 23.506550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.461752, 28.046471, 23.539396>,  <29.454037, 28.285536, 23.559103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.461752, 28.046471, 23.539396>,  <29.474611, 27.648029, 23.506550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.461752, 28.046471, 23.539396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733492, 0.079322, -0.675054,
		-0.678938, 0.038529, -0.733184,
		-0.032149, 0.996104, 0.082115,
		29.452106, 28.345303, 23.564032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480618, 28.002007, 22.747900>,  <29.474611, 27.648029, 23.506550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.480618, 28.002007, 22.747900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.609589, 28.265823, 23.019501>,  <29.686972, 28.424114, 23.182461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.609589, 28.265823, 23.019501>,  <29.480618, 28.002007, 22.747900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.609589, 28.265823, 23.019501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809929, 0.179060, -0.558527,
		-0.489955, 0.730027, -0.476450,
		0.322426, 0.659544, 0.679001,
		29.706316, 28.463686, 23.223202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.647995, 28.597275, 22.355745>,  <29.480618, 28.002007, 22.747900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.647995, 28.597275, 22.355745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.823772, 28.622974, 22.714132>,  <29.929239, 28.638393, 22.929165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.823772, 28.622974, 22.714132>,  <29.647995, 28.597275, 22.355745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823772, 28.622974, 22.714132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864611, 0.240228, -0.441291,
		-0.243590, 0.968588, 0.050017,
		0.439445, 0.064249, 0.895969,
		29.955606, 28.642248, 22.982924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.110994, 29.174381, 22.290228>,  <29.647995, 28.597275, 22.355745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.110994, 29.174381, 22.290228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.252453, 28.996466, 22.619371>,  <30.337328, 28.889717, 22.816858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.252453, 28.996466, 22.619371>,  <30.110994, 29.174381, 22.290228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.252453, 28.996466, 22.619371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935377, 0.166369, -0.312074,
		0.001909, 0.880049, 0.474880,
		0.353646, -0.444788, 0.822860,
		30.358547, 28.863029, 22.866230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.707355, 29.591347, 22.545549>,  <30.110994, 29.174381, 22.290228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.707355, 29.591347, 22.545549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.753759, 29.222277, 22.692636>,  <30.781601, 29.000835, 22.780890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.753759, 29.222277, 22.692636>,  <30.707355, 29.591347, 22.545549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.753759, 29.222277, 22.692636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993222, 0.105107, -0.049616,
		0.007130, 0.370982, 0.928613,
		0.116010, -0.922673, 0.367718,
		30.788563, 28.945475, 22.802952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.317068, 29.661409, 22.986910>,  <30.707355, 29.591347, 22.545549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.317068, 29.661409, 22.986910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.258560, 29.271078, 22.921961>,  <31.223455, 29.036879, 22.882992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.258560, 29.271078, 22.921961>,  <31.317068, 29.661409, 22.986910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.258560, 29.271078, 22.921961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984774, -0.159220, 0.069786,
		-0.093952, -0.149691, 0.984259,
		-0.146268, -0.975829, -0.162371,
		31.214680, 28.978329, 22.873249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746304, 29.340960, 23.530416>,  <31.317068, 29.661409, 22.986910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746304, 29.340960, 23.530416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.684111, 29.087755, 23.227070>,  <31.646795, 28.935833, 23.045061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.684111, 29.087755, 23.227070>,  <31.746304, 29.340960, 23.530416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684111, 29.087755, 23.227070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985192, -0.043207, -0.165923,
		0.072265, -0.772937, 0.630355,
		-0.155484, -0.633010, -0.758368,
		31.637466, 28.897852, 22.999559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329830, 28.819899, 23.672380>,  <31.746304, 29.340960, 23.530416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329830, 28.819899, 23.672380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200962, 28.779957, 23.295820>,  <32.123642, 28.755993, 23.069883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200962, 28.779957, 23.295820>,  <32.329830, 28.819899, 23.672380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200962, 28.779957, 23.295820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946285, -0.062806, -0.317175,
		-0.027454, -0.993018, 0.114724,
		-0.322166, -0.099854, -0.941403,
		32.104313, 28.750000, 23.013399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657963, 28.225298, 23.380323>,  <32.329830, 28.819899, 23.672380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657963, 28.225298, 23.380323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554886, 28.446920, 23.063688>,  <32.493038, 28.579895, 22.873707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554886, 28.446920, 23.063688>,  <32.657963, 28.225298, 23.380323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554886, 28.446920, 23.063688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959473, 0.050039, -0.277321,
		-0.114042, -0.830973, -0.544499,
		-0.257692, 0.554058, -0.791590,
		32.477577, 28.613138, 22.826212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016224, 27.932375, 22.868738>,  <32.657963, 28.225298, 23.380323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016224, 27.932375, 22.868738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952377, 28.286026, 22.693087>,  <32.914070, 28.498217, 22.587696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952377, 28.286026, 22.693087>,  <33.016224, 27.932375, 22.868738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952377, 28.286026, 22.693087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978101, 0.081455, -0.191531,
		-0.133569, -0.460086, -0.877770,
		-0.159619, 0.884130, -0.439131,
		32.904491, 28.551266, 22.561348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391388, 27.993896, 22.269650>,  <33.016224, 27.932375, 22.868738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391388, 27.993896, 22.269650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301563, 28.383026, 22.292221>,  <33.247669, 28.616505, 22.305763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301563, 28.383026, 22.292221>,  <33.391388, 27.993896, 22.269650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301563, 28.383026, 22.292221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880229, 0.227348, -0.416545,
		-0.418054, -0.043870, -0.907362,
		-0.224561, 0.972825, 0.056428,
		33.234196, 28.674873, 22.309149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590630, 28.239117, 21.632826>,  <33.391388, 27.993896, 22.269650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590630, 28.239117, 21.632826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547962, 28.582151, 21.834089>,  <33.522362, 28.787971, 21.954847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547962, 28.582151, 21.834089>,  <33.590630, 28.239117, 21.632826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547962, 28.582151, 21.834089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835199, 0.351861, -0.422653,
		-0.539504, 0.375156, -0.753786,
		-0.106667, 0.857585, 0.503161,
		33.515961, 28.839426, 21.985037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657925, 28.832846, 21.161947>,  <33.590630, 28.239117, 21.632826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657925, 28.832846, 21.161947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766777, 28.991873, 21.512465>,  <33.832088, 29.087288, 21.722775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766777, 28.991873, 21.512465>,  <33.657925, 28.832846, 21.161947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766777, 28.991873, 21.512465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870534, 0.286320, -0.400239,
		-0.410022, 0.871758, -0.268179,
		0.272127, 0.397566, 0.876292,
		33.848415, 29.111143, 21.775352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867928, 29.572866, 21.104452>,  <33.657925, 28.832846, 21.161947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867928, 29.572866, 21.104452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.036732, 29.444401, 21.443571>,  <34.138016, 29.367321, 21.647043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.036732, 29.444401, 21.443571>,  <33.867928, 29.572866, 21.104452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036732, 29.444401, 21.443571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854830, 0.452421, -0.254126,
		-0.301946, 0.831968, 0.465466,
		0.422011, -0.321162, 0.847798,
		34.163334, 29.348053, 21.697910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270935, 30.149332, 21.292358>,  <33.867928, 29.572866, 21.104452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270935, 30.149332, 21.292358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.424324, 29.838631, 21.492201>,  <34.516357, 29.652210, 21.612106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.424324, 29.838631, 21.492201>,  <34.270935, 30.149332, 21.292358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424324, 29.838631, 21.492201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921281, 0.359657, -0.147949,
		-0.064768, 0.517013, 0.853524,
		0.383468, -0.776753, 0.499608,
		34.539364, 29.605604, 21.642082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878399, 30.411581, 21.761324>,  <34.270935, 30.149332, 21.292358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878399, 30.411581, 21.761324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924320, 30.014988, 21.736715>,  <34.951874, 29.777033, 21.721951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924320, 30.014988, 21.736715>,  <34.878399, 30.411581, 21.761324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924320, 30.014988, 21.736715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978462, 0.123559, -0.165363,
		0.171556, -0.041210, 0.984312,
		0.114806, -0.991481, -0.061520,
		34.958763, 29.717543, 21.718260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480736, 30.286510, 22.120571>,  <34.878399, 30.411581, 21.761324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480736, 30.286510, 22.120571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433224, 29.938353, 21.929447>,  <35.404716, 29.729458, 21.814774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433224, 29.938353, 21.929447>,  <35.480736, 30.286510, 22.120571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433224, 29.938353, 21.929447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992883, -0.099959, -0.064742,
		0.008590, -0.482099, 0.876075,
		-0.118784, -0.870396, -0.477809,
		35.397587, 29.677235, 21.786104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818264, 29.659605, 22.548218>,  <35.480736, 30.286510, 22.120571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818264, 29.659605, 22.548218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.793736, 29.546423, 22.165350>,  <35.779018, 29.478514, 21.935629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.793736, 29.546423, 22.165350>,  <35.818264, 29.659605, 22.548218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793736, 29.546423, 22.165350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972714, -0.231926, 0.006242,
		-0.223759, -0.930669, 0.289459,
		-0.061323, -0.282957, -0.957170,
		35.775337, 29.461536, 21.878199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170330, 28.982197, 22.502260>,  <35.818264, 29.659605, 22.548218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170330, 28.982197, 22.502260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177120, 29.135796, 22.132990>,  <36.181194, 29.227955, 21.911427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177120, 29.135796, 22.132990>,  <36.170330, 28.982197, 22.502260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177120, 29.135796, 22.132990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904465, -0.399478, -0.149537,
		-0.426211, -0.832443, -0.354093,
		0.016972, 0.383999, -0.923177,
		36.182213, 29.250996, 21.856037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436806, 28.453358, 22.144436>,  <36.170330, 28.982197, 22.502260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436806, 28.453358, 22.144436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479488, 28.768061, 21.901249>,  <36.505100, 28.956882, 21.755337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479488, 28.768061, 21.901249>,  <36.436806, 28.453358, 22.144436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479488, 28.768061, 21.901249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940752, -0.277831, -0.194414,
		-0.321869, -0.551200, -0.769792,
		0.106711, 0.786758, -0.607967,
		36.511501, 29.004087, 21.718859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750378, 28.240297, 21.606634>,  <36.436806, 28.453358, 22.144436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750378, 28.240297, 21.606634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828583, 28.632576, 21.607428>,  <36.875507, 28.867943, 21.607903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828583, 28.632576, 21.607428>,  <36.750378, 28.240297, 21.606634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828583, 28.632576, 21.607428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967464, -0.192547, -0.164129,
		-0.160579, 0.034008, -0.986437,
		0.195517, 0.980698, 0.001982,
		36.887238, 28.926785, 21.608023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190479, 28.358635, 21.004675>,  <36.750378, 28.240297, 21.606634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190479, 28.358635, 21.004675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264400, 28.686823, 21.221073>,  <37.308754, 28.883736, 21.350912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264400, 28.686823, 21.221073>,  <37.190479, 28.358635, 21.004675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264400, 28.686823, 21.221073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964437, -0.045556, -0.260356,
		-0.188969, 0.569870, -0.799712,
		0.184801, 0.820471, 0.540995,
		37.319839, 28.932964, 21.383371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643074, 28.841007, 20.698608>,  <37.190479, 28.358635, 21.004675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643074, 28.841007, 20.698608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.701023, 28.952730, 21.078293>,  <37.735794, 29.019764, 21.306103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.701023, 28.952730, 21.078293>,  <37.643074, 28.841007, 20.698608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701023, 28.952730, 21.078293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929280, 0.291027, -0.227468,
		-0.339779, 0.915037, -0.217390,
		0.144876, 0.279305, 0.949210,
		37.744484, 29.036522, 21.363056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101734, 29.315327, 20.582850>,  <37.643074, 28.841007, 20.698608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101734, 29.315327, 20.582850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111649, 29.219986, 20.971195>,  <38.117596, 29.162781, 21.204203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111649, 29.219986, 20.971195>,  <38.101734, 29.315327, 20.582850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111649, 29.219986, 20.971195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999598, -0.007467, -0.027352,
		0.013769, 0.971150, 0.238073,
		0.024785, -0.238354, 0.970862,
		38.119083, 29.148479, 21.262453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621853, 29.736740, 20.793600>,  <38.101734, 29.315327, 20.582850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621853, 29.736740, 20.793600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597980, 29.461372, 21.082741>,  <38.583656, 29.296152, 21.256226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597980, 29.461372, 21.082741>,  <38.621853, 29.736740, 20.793600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597980, 29.461372, 21.082741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983302, 0.084169, 0.161347,
		-0.171916, 0.720413, 0.671900,
		-0.059684, -0.688419, 0.722854,
		38.580074, 29.254847, 21.299597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072224, 30.031092, 21.386044>,  <38.621853, 29.736740, 20.793600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072224, 30.031092, 21.386044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031479, 29.633184, 21.389231>,  <39.007034, 29.394440, 21.391144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031479, 29.633184, 21.389231>,  <39.072224, 30.031092, 21.386044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031479, 29.633184, 21.389231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994474, -0.102026, -0.024751,
		0.025435, 0.005403, 0.999662,
		-0.101858, -0.994767, 0.007969,
		39.000923, 29.334755, 21.391621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439445, 29.801653, 21.939554>,  <39.072224, 30.031092, 21.386044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439445, 29.801653, 21.939554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.422794, 29.465670, 21.723131>,  <39.412804, 29.264080, 21.593277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.422794, 29.465670, 21.723131>,  <39.439445, 29.801653, 21.939554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422794, 29.465670, 21.723131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939599, -0.217044, 0.264663,
		-0.339738, -0.497359, 0.798256,
		-0.041624, -0.839956, -0.541056,
		39.410309, 29.213682, 21.560814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943310, 29.394365, 22.273338>,  <39.439445, 29.801653, 21.939554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943310, 29.394365, 22.273338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.876141, 29.222754, 21.918320>,  <39.835838, 29.119787, 21.705309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.876141, 29.222754, 21.918320>,  <39.943310, 29.394365, 22.273338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876141, 29.222754, 21.918320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968648, -0.239029, -0.067727,
		-0.183092, -0.871091, 0.455716,
		-0.167926, -0.429028, -0.887545,
		39.825764, 29.094046, 21.652056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375340, 28.840584, 22.284775>,  <39.943310, 29.394365, 22.273338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.375340, 28.840584, 22.284775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.305420, 28.887671, 21.893757>,  <40.263470, 28.915922, 21.659147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.305420, 28.887671, 21.893757>,  <40.375340, 28.840584, 22.284775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.305420, 28.887671, 21.893757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952531, -0.231127, -0.198155,
		-0.249263, -0.965776, -0.071731,
		-0.174794, 0.117719, -0.977542,
		40.252983, 28.922987, 21.600494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853714, 28.405138, 21.987394>,  <40.375340, 28.840584, 22.284775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853714, 28.405138, 21.987394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.739407, 28.667366, 21.707806>,  <40.670822, 28.824703, 21.540052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.739407, 28.667366, 21.707806>,  <40.853714, 28.405138, 21.987394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.739407, 28.667366, 21.707806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945277, 0.073003, -0.317997,
		-0.157442, -0.751596, -0.640558,
		-0.285768, 0.655571, -0.698973,
		40.653675, 28.864037, 21.498114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.082726, 28.186886, 21.382408>,  <40.853714, 28.405138, 21.987394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.082726, 28.186886, 21.382408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.047611, 28.580173, 21.318445>,  <41.026543, 28.816147, 21.280067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.047611, 28.580173, 21.318445>,  <41.082726, 28.186886, 21.382408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.047611, 28.580173, 21.318445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924106, 0.020446, -0.381590,
		-0.371918, -0.181269, -0.910395,
		-0.087784, 0.983221, -0.159907,
		41.021275, 28.875139, 21.270473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.552990, 28.243748, 20.866421>,  <41.082726, 28.186886, 21.382408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.552990, 28.243748, 20.866421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.479309, 28.611258, 21.006092>,  <41.435101, 28.831762, 21.089895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.479309, 28.611258, 21.006092>,  <41.552990, 28.243748, 20.866421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.479309, 28.611258, 21.006092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980117, 0.198360, -0.004896,
		-0.073762, 0.341334, -0.937043,
		-0.184201, 0.918773, 0.349179,
		41.424049, 28.886890, 21.110846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943127, 28.730204, 20.444868>,  <41.552990, 28.243748, 20.866421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.943127, 28.730204, 20.444868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.893566, 28.899414, 20.803911>,  <41.863831, 29.000940, 21.019337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.893566, 28.899414, 20.803911>,  <41.943127, 28.730204, 20.444868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.893566, 28.899414, 20.803911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984200, 0.167694, 0.056826,
		-0.126485, 0.890466, -0.437119,
		-0.123904, 0.423025, 0.897607,
		41.856396, 29.026321, 21.073193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.281395, 29.517094, 20.397894>,  <41.943127, 28.730204, 20.444868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.281395, 29.517094, 20.397894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.239239, 29.452038, 20.790310>,  <42.213947, 29.413004, 21.025761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.239239, 29.452038, 20.790310>,  <42.281395, 29.517094, 20.397894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.239239, 29.452038, 20.790310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966110, 0.217020, 0.139762,
		-0.235637, 0.962523, 0.134255,
		-0.105389, -0.162638, 0.981041,
		42.207623, 29.403246, 21.084621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.752865, 30.018642, 20.616360>,  <42.281395, 29.517094, 20.397894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.752865, 30.018642, 20.616360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.702209, 29.770708, 20.926138>,  <42.671818, 29.621946, 21.112005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.702209, 29.770708, 20.926138>,  <42.752865, 30.018642, 20.616360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.702209, 29.770708, 20.926138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940693, 0.172678, 0.292025,
		-0.314738, 0.765496, 0.561210,
		-0.126635, -0.619838, 0.774445,
		42.664219, 29.584757, 21.158472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.957588, 30.333395, 21.272964>,  <42.752865, 30.018642, 20.616360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.957588, 30.333395, 21.272964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.003204, 29.945860, 21.360922>,  <43.030575, 29.713339, 21.413696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.003204, 29.945860, 21.360922>,  <42.957588, 30.333395, 21.272964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.003204, 29.945860, 21.360922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976081, 0.150499, 0.156894,
		-0.185098, 0.196741, 0.962825,
		0.114036, -0.968836, 0.219892,
		43.037415, 29.655209, 21.426889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.207634, 30.263680, 21.950937>,  <42.957588, 30.333395, 21.272964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.207634, 30.263680, 21.950937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.318989, 29.966698, 21.707212>,  <43.385799, 29.788507, 21.560978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.318989, 29.966698, 21.707212>,  <43.207634, 30.263680, 21.950937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.318989, 29.966698, 21.707212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905666, -0.008310, 0.423911,
		-0.319799, -0.669842, 0.670104,
		0.278385, -0.742457, -0.609311,
		43.402504, 29.743961, 21.524420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.498814, 29.703979, 22.396616>,  <43.207634, 30.263680, 21.950937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.498814, 29.703979, 22.396616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.675983, 29.694057, 22.038130>,  <43.782284, 29.688105, 21.823038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.675983, 29.694057, 22.038130>,  <43.498814, 29.703979, 22.396616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.675983, 29.694057, 22.038130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894676, -0.052550, 0.443614,
		-0.058106, -0.998310, -0.001073,
		0.442921, -0.024817, -0.896217,
		43.808861, 29.686615, 21.769264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.909122, 29.052265, 22.150127>,  <43.498814, 29.703979, 22.396616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.909122, 29.052265, 22.150127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.077152, 29.378290, 21.990522>,  <44.177971, 29.573906, 21.894758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.077152, 29.378290, 21.990522>,  <43.909122, 29.052265, 22.150127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.077152, 29.378290, 21.990522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876667, -0.250847, 0.410525,
		0.234513, -0.522252, -0.819913,
		0.420071, 0.815063, -0.399014,
		44.203175, 29.622808, 21.870817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.577362, 28.828453, 21.772205>,  <43.909122, 29.052265, 22.150127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.577362, 28.828453, 21.772205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.586483, 29.196102, 21.929531>,  <44.591957, 29.416691, 22.023926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.586483, 29.196102, 21.929531>,  <44.577362, 28.828453, 21.772205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.586483, 29.196102, 21.929531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855414, -0.221562, 0.468164,
		0.517443, 0.325771, -0.791282,
		0.022804, 0.919121, 0.393315,
		44.593323, 29.471838, 22.047525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.201241, 29.286751, 21.548162>,  <44.577362, 28.828453, 21.772205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.201241, 29.286751, 21.548162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.060509, 29.371521, 21.912867>,  <44.976070, 29.422382, 22.131689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.060509, 29.371521, 21.912867>,  <45.201241, 29.286751, 21.548162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.060509, 29.371521, 21.912867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838216, -0.362240, 0.407648,
		0.416666, 0.907673, -0.050193,
		-0.351829, 0.211925, 0.911759,
		44.954960, 29.435099, 22.186394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.786171, 29.249546, 21.791672>,  <45.201241, 29.286751, 21.548162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.786171, 29.249546, 21.791672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.526592, 29.122957, 22.068430>,  <45.370846, 29.047003, 22.234486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.526592, 29.122957, 22.068430>,  <45.786171, 29.249546, 21.791672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.526592, 29.122957, 22.068430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760184, -0.307404, 0.572384,
		0.031546, 0.897411, 0.440066,
		-0.648942, -0.316474, 0.691895,
		45.331909, 29.028015, 22.275999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.920372, 29.626038, 22.510601>,  <45.786171, 29.249546, 21.791672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.920372, 29.626038, 22.510601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.750774, 29.263861, 22.518648>,  <45.649017, 29.046555, 22.523478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.750774, 29.263861, 22.518648>,  <45.920372, 29.626038, 22.510601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.750774, 29.263861, 22.518648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633514, -0.280637, 0.721043,
		-0.647215, 0.318464, 0.692599,
		-0.423995, -0.905441, 0.020119,
		45.623577, 28.992228, 22.524683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.588085, 29.482134, 23.194302>,  <45.920372, 29.626038, 22.510601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.588085, 29.482134, 23.194302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.696972, 29.147339, 23.004417>,  <45.762306, 28.946463, 22.890486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.696972, 29.147339, 23.004417>,  <45.588085, 29.482134, 23.194302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.696972, 29.147339, 23.004417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601569, -0.237012, 0.762850,
		-0.751007, -0.493234, 0.438986,
		0.272218, -0.836986, -0.474712,
		45.778637, 28.896244, 22.862003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.579185, 28.860027, 23.672825>,  <45.588085, 29.482134, 23.194302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.579185, 28.860027, 23.672825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.837463, 28.788588, 23.375860>,  <45.992432, 28.745724, 23.197681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.837463, 28.788588, 23.375860>,  <45.579185, 28.860027, 23.672825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.837463, 28.788588, 23.375860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659690, -0.359170, 0.660156,
		-0.384557, -0.916023, -0.114094,
		0.645697, -0.178601, -0.742412,
		46.031174, 28.735008, 23.153137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.753704, 28.155239, 23.524918>,  <45.579185, 28.860027, 23.672825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.753704, 28.155239, 23.524918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.072506, 28.368658, 23.411705>,  <46.263786, 28.496710, 23.343777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.072506, 28.368658, 23.411705>,  <45.753704, 28.155239, 23.524918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.072506, 28.368658, 23.411705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559253, -0.474982, 0.679432,
		0.228074, -0.699798, -0.676953,
		0.797006, 0.533549, -0.283033,
		46.311607, 28.528723, 23.326796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.365906, 27.685495, 23.187229>,  <45.753704, 28.155239, 23.524918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.365906, 27.685495, 23.187229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.485744, 28.018696, 23.373285>,  <46.557648, 28.218616, 23.484919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.485744, 28.018696, 23.373285>,  <46.365906, 27.685495, 23.187229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.485744, 28.018696, 23.373285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469298, -0.553142, 0.688327,
		0.830664, 0.012071, -0.556643,
		0.299594, 0.833000, 0.465140,
		46.575623, 28.268597, 23.512827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.180607, 27.789408, 23.255753>,  <46.365906, 27.685495, 23.187229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.180607, 27.789408, 23.255753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.971756, 27.937700, 23.562983>,  <46.846443, 28.026676, 23.747320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.971756, 27.937700, 23.562983>,  <47.180607, 27.789408, 23.255753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.971756, 27.937700, 23.562983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597450, -0.483692, 0.639606,
		0.608633, 0.792844, 0.031057,
		-0.522130, 0.370731, 0.768075,
		46.815117, 28.048920, 23.793406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.512035, 28.236839, 23.707396>,  <47.180607, 27.789408, 23.255753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.512035, 28.236839, 23.707396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.218365, 28.149538, 23.964565>,  <47.042164, 28.097158, 24.118866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.218365, 28.149538, 23.964565>,  <47.512035, 28.236839, 23.707396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.218365, 28.149538, 23.964565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678218, -0.279929, 0.679455,
		0.031681, 0.934883, 0.353540,
		-0.734177, -0.218252, 0.642923,
		46.998112, 28.084063, 24.157442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.684784, 28.671083, 24.265787>,  <47.512035, 28.236839, 23.707396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.684784, 28.671083, 24.265787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.475090, 28.343458, 24.359007>,  <47.349274, 28.146883, 24.414938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.475090, 28.343458, 24.359007>,  <47.684784, 28.671083, 24.265787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.475090, 28.343458, 24.359007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718459, -0.278493, 0.637385,
		-0.457155, 0.501578, 0.734459,
		-0.524239, -0.819062, 0.233049,
		47.317818, 28.097740, 24.428921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.472099, 28.649370, 25.153572>,  <47.684784, 28.671083, 24.265787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.472099, 28.649370, 25.153572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.512794, 28.312241, 24.942179>,  <47.537212, 28.109962, 24.815342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.512794, 28.312241, 24.942179>,  <47.472099, 28.649370, 25.153572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.512794, 28.312241, 24.942179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751883, -0.282705, 0.595609,
		-0.651399, -0.457956, 0.604943,
		0.101742, -0.842825, -0.528483,
		47.543316, 28.059393, 24.783634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.939564, 29.258707, 25.053762>,  <47.472099, 28.649370, 25.153572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.939564, 29.258707, 25.053762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.643917, 29.522627, 25.107969>,  <46.466530, 29.680979, 25.140493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.643917, 29.522627, 25.107969>,  <46.939564, 29.258707, 25.053762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.643917, 29.522627, 25.107969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430666, -0.617607, 0.658095,
		0.517908, 0.428048, 0.740639,
		-0.739120, 0.659800, 0.135518,
		46.422180, 29.720568, 25.148624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.847099, 29.394053, 25.836691>,  <46.939564, 29.258707, 25.053762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.847099, 29.394053, 25.836691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.496014, 29.521475, 25.693510>,  <46.285362, 29.597929, 25.607601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.496014, 29.521475, 25.693510>,  <46.847099, 29.394053, 25.836691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.496014, 29.521475, 25.693510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471297, -0.439009, 0.764951,
		0.086536, 0.840115, 0.535462,
		-0.877719, 0.318557, -0.357954,
		46.232697, 29.617043, 25.586124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.601849, 29.813454, 26.253178>,  <46.847099, 29.394053, 25.836691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.601849, 29.813454, 26.253178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.273262, 29.678545, 26.069250>,  <46.076111, 29.597599, 25.958895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.273262, 29.678545, 26.069250>,  <46.601849, 29.813454, 26.253178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.273262, 29.678545, 26.069250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366837, -0.304807, 0.878933,
		-0.436597, 0.890696, 0.126666,
		-0.821471, -0.337274, -0.459818,
		46.026821, 29.577362, 25.931305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.962856, 30.079527, 26.615059>,  <46.601849, 29.813454, 26.253178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.962856, 30.079527, 26.615059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.901894, 29.743433, 26.406916>,  <45.865314, 29.541777, 26.282030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.901894, 29.743433, 26.406916>,  <45.962856, 30.079527, 26.615059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.901894, 29.743433, 26.406916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556243, -0.362276, 0.747896,
		-0.816924, 0.403433, -0.412162,
		-0.152410, -0.840237, -0.520359,
		45.856171, 29.491362, 26.250809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.336418, 30.001637, 26.344252>,  <45.962856, 30.079527, 26.615059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.336418, 30.001637, 26.344252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.470036, 29.631424, 26.415592>,  <45.550205, 29.409296, 26.458397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.470036, 29.631424, 26.415592>,  <45.336418, 30.001637, 26.344252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.470036, 29.631424, 26.415592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605002, -0.065446, 0.793530,
		-0.722763, -0.372977, -0.581809,
		0.334046, -0.925530, 0.178350,
		45.570248, 29.353765, 26.469097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.817474, 30.477142, 26.155291>,  <45.336418, 30.001637, 26.344252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.817474, 30.477142, 26.155291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.887318, 30.091440, 26.075571>,  <44.929222, 29.860018, 26.027739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.887318, 30.091440, 26.075571>,  <44.817474, 30.477142, 26.155291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.887318, 30.091440, 26.075571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559864, -0.263731, 0.785492,
		-0.809978, -0.025573, -0.585903,
		0.174608, -0.964257, -0.199299,
		44.939701, 29.802162, 26.015781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.176285, 30.124161, 25.936462>,  <44.817474, 30.477142, 26.155291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.176285, 30.124161, 25.936462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.432014, 29.855509, 26.086224>,  <44.585453, 29.694317, 26.176081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.432014, 29.855509, 26.086224>,  <44.176285, 30.124161, 25.936462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.432014, 29.855509, 26.086224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682831, -0.272001, 0.678054,
		-0.353563, -0.689151, -0.632506,
		0.639324, -0.671630, 0.374405,
		44.623810, 29.654020, 26.198545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.840225, 29.395832, 25.889856>,  <44.176285, 30.124161, 25.936462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.840225, 29.395832, 25.889856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.101055, 29.448896, 26.188440>,  <44.257553, 29.480734, 26.367592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.101055, 29.448896, 26.188440>,  <43.840225, 29.395832, 25.889856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.101055, 29.448896, 26.188440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682078, -0.327224, 0.653983,
		0.331017, -0.935589, -0.122889,
		0.652072, 0.132659, 0.746461,
		44.296677, 29.488693, 26.412378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.685555, 28.766214, 26.217897>,  <43.840225, 29.395832, 25.889856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.685555, 28.766214, 26.217897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.814602, 29.059464, 26.457378>,  <43.892033, 29.235413, 26.601067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.814602, 29.059464, 26.457378>,  <43.685555, 28.766214, 26.217897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.814602, 29.059464, 26.457378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656425, -0.282407, 0.699538,
		0.681925, -0.618690, 0.390129,
		0.322622, 0.733123, 0.598704,
		43.911388, 29.279400, 26.636990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.046997, 28.441021, 26.893524>,  <43.685555, 28.766214, 26.217897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.046997, 28.441021, 26.893524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.901871, 28.810484, 26.942871>,  <43.814793, 29.032162, 26.972479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.901871, 28.810484, 26.942871>,  <44.046997, 28.441021, 26.893524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.901871, 28.810484, 26.942871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754604, -0.368896, 0.542668,
		0.546750, 0.103796, 0.830838,
		-0.362820, 0.923657, 0.123369,
		43.793026, 29.087582, 26.979881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.873760, 28.501831, 27.613655>,  <44.046997, 28.441021, 26.893524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.873760, 28.501831, 27.613655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.669201, 28.787460, 27.422419>,  <43.546467, 28.958838, 27.307676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.669201, 28.787460, 27.422419>,  <43.873760, 28.501831, 27.613655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.669201, 28.787460, 27.422419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806518, -0.206773, 0.553871,
		0.296649, 0.668837, 0.681657,
		-0.511398, 0.714074, -0.478090,
		43.515781, 29.001682, 27.278992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.696796, 29.163038, 27.896423>,  <43.873760, 28.501831, 27.613655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.696796, 29.163038, 27.896423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.395763, 29.126284, 27.635603>,  <43.215141, 29.104231, 27.479111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.395763, 29.126284, 27.635603>,  <43.696796, 29.163038, 27.896423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.395763, 29.126284, 27.635603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647979, -0.072916, 0.758160,
		-0.117211, 0.993096, -0.004665,
		-0.752585, -0.091888, -0.652052,
		43.169987, 29.098717, 27.439987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.177780, 29.749954, 27.843422>,  <43.696796, 29.163038, 27.896423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.177780, 29.749954, 27.843422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.075405, 29.364351, 27.814615>,  <43.013981, 29.132990, 27.797331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.075405, 29.364351, 27.814615>,  <43.177780, 29.749954, 27.843422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.075405, 29.364351, 27.814615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425964, 0.045587, 0.903591,
		-0.867785, 0.261938, -0.422300,
		-0.255936, -0.964007, -0.072016,
		42.998623, 29.075150, 27.793011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.527435, 29.752884, 27.979610>,  <43.177780, 29.749954, 27.843422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.527435, 29.752884, 27.979610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.619987, 29.383066, 28.100725>,  <42.675518, 29.161175, 28.173393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.619987, 29.383066, 28.100725>,  <42.527435, 29.752884, 27.979610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.619987, 29.383066, 28.100725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502171, 0.153060, 0.851115,
		-0.833238, -0.348983, -0.428865,
		0.231382, -0.924545, 0.302785,
		42.689404, 29.105703, 28.191561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.912262, 29.448635, 28.162540>,  <42.527435, 29.752884, 27.979610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.912262, 29.448635, 28.162540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.217175, 29.272352, 28.352150>,  <42.400124, 29.166582, 28.465916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.217175, 29.272352, 28.352150>,  <41.912262, 29.448635, 28.162540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.217175, 29.272352, 28.352150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493525, 0.078063, 0.866221,
		-0.418753, -0.894250, -0.157994,
		0.762285, -0.440707, 0.474024,
		42.445862, 29.140141, 28.494358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.720394, 28.782614, 28.499104>,  <41.912262, 29.448635, 28.162540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.720394, 28.782614, 28.499104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008186, 28.928238, 28.735680>,  <42.180862, 29.015612, 28.877625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008186, 28.928238, 28.735680>,  <41.720394, 28.782614, 28.499104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.008186, 28.928238, 28.735680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694240, 0.353320, 0.627054,
		0.019317, -0.861757, 0.506953,
		0.719485, 0.364060, 0.591441,
		42.224033, 29.037457, 28.913113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.619080, 28.522577, 29.185163>,  <41.720394, 28.782614, 28.499104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.619080, 28.522577, 29.185163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.817310, 28.869547, 29.202969>,  <41.936249, 29.077728, 29.213652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.817310, 28.869547, 29.202969>,  <41.619080, 28.522577, 29.185163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.817310, 28.869547, 29.202969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674020, 0.351749, 0.649592,
		0.547814, -0.351925, 0.758979,
		0.495577, 0.867422, 0.044511,
		41.965984, 29.129774, 29.216322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.649128, 28.749249, 29.817621>,  <41.619080, 28.522577, 29.185163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.649128, 28.749249, 29.817621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.673019, 29.090624, 29.610518>,  <41.687355, 29.295448, 29.486256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.673019, 29.090624, 29.610518>,  <41.649128, 28.749249, 29.817621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.673019, 29.090624, 29.610518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516161, 0.470370, 0.715773,
		0.854407, 0.224494, 0.468607,
		0.059732, 0.853437, -0.517761,
		41.690941, 29.346655, 29.455189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.759403, 29.224335, 30.344837>,  <41.649128, 28.749249, 29.817621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.759403, 29.224335, 30.344837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.621490, 29.415110, 30.021441>,  <41.538742, 29.529575, 29.827402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.621490, 29.415110, 30.021441>,  <41.759403, 29.224335, 30.344837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.621490, 29.415110, 30.021441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681105, 0.465569, 0.565104,
		0.645926, 0.745505, 0.164324,
		-0.344784, 0.476937, -0.808490,
		41.518055, 29.558191, 29.778894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.798168, 29.926531, 30.539898>,  <41.759403, 29.224335, 30.344837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.798168, 29.926531, 30.539898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.497501, 29.901447, 30.277277>,  <41.317101, 29.886396, 30.119705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.497501, 29.901447, 30.277277>,  <41.798168, 29.926531, 30.539898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.497501, 29.901447, 30.277277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605651, 0.459736, 0.649484,
		0.261112, 0.885839, -0.383549,
		-0.751670, -0.062709, -0.656551,
		41.271999, 29.882635, 30.080311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.305233, 30.627989, 30.357521>,  <41.798168, 29.926531, 30.539898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.305233, 30.627989, 30.357521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131828, 30.268002, 30.339108>,  <41.027786, 30.052010, 30.328060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131828, 30.268002, 30.339108>,  <41.305233, 30.627989, 30.357521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131828, 30.268002, 30.339108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721762, 0.316181, 0.615702,
		-0.539559, 0.300141, -0.786633,
		-0.433516, -0.899969, -0.046032,
		41.001774, 29.998011, 30.325298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.685669, 31.296867, 30.095980>,  <41.305233, 30.627989, 30.357521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.685669, 31.296867, 30.095980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.660431, 31.679070, 29.980719>,  <41.645287, 31.908390, 29.911562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.660431, 31.679070, 29.980719>,  <41.685669, 31.296867, 30.095980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.660431, 31.679070, 29.980719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143330, 0.294411, 0.944869,
		0.987661, 0.018318, -0.155529,
		-0.063097, 0.955503, -0.288153,
		41.641502, 31.965721, 29.894272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.266342, 31.550409, 30.315556>,  <41.685669, 31.296867, 30.095980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.266342, 31.550409, 30.315556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.001766, 31.847658, 30.275032>,  <41.843021, 32.026009, 30.250717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.001766, 31.847658, 30.275032>,  <42.266342, 31.550409, 30.315556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.001766, 31.847658, 30.275032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254045, 0.349091, 0.901996,
		0.705661, 0.570879, -0.419690,
		-0.661441, 0.743123, -0.101311,
		41.803333, 32.070595, 30.244638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.735184, 32.081268, 30.559931>,  <42.266342, 31.550409, 30.315556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.735184, 32.081268, 30.559931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343685, 32.163204, 30.563805>,  <42.108788, 32.212364, 30.566130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343685, 32.163204, 30.563805>,  <42.735184, 32.081268, 30.559931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.343685, 32.163204, 30.563805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112799, 0.498321, 0.859624,
		0.171258, 0.842447, -0.510836,
		-0.978748, 0.204839, 0.009686,
		42.050060, 32.224655, 30.566710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.641415, 32.740051, 30.794994>,  <42.735184, 32.081268, 30.559931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.641415, 32.740051, 30.794994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.299149, 32.566689, 30.908129>,  <42.093788, 32.462669, 30.976009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.299149, 32.566689, 30.908129>,  <42.641415, 32.740051, 30.794994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.299149, 32.566689, 30.908129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049947, 0.474800, 0.878675,
		-0.515115, 0.765978, -0.384622,
		-0.855664, -0.433408, 0.282835,
		42.042450, 32.436665, 30.992979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.409966, 32.783386, 31.554823>,  <42.641415, 32.740051, 30.794994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.409966, 32.783386, 31.554823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.427704, 32.946568, 31.919594>,  <42.438347, 33.044476, 32.138454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.427704, 32.946568, 31.919594>,  <42.409966, 32.783386, 31.554823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.427704, 32.946568, 31.919594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631148, -0.696141, 0.342112,
		0.774394, -0.590733, 0.226603,
		0.044349, 0.407949, 0.911927,
		42.441010, 33.068951, 32.193172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.762871, 32.373123, 32.065308>,  <42.409966, 32.783386, 31.554823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.762871, 32.373123, 32.065308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.470222, 32.599411, 32.217461>,  <42.294632, 32.735184, 32.308750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.470222, 32.599411, 32.217461>,  <42.762871, 32.373123, 32.065308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.470222, 32.599411, 32.217461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519415, -0.823977, 0.226430,
		0.441520, -0.031913, 0.896684,
		-0.731621, 0.565724, 0.380378,
		42.250736, 32.769127, 32.331573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.920815, 31.626791, 31.727077>,  <42.762871, 32.373123, 32.065308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.920815, 31.626791, 31.727077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.129841, 31.437485, 31.443401>,  <43.255257, 31.323902, 31.273195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.129841, 31.437485, 31.443401>,  <42.920815, 31.626791, 31.727077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.129841, 31.437485, 31.443401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682060, 0.267056, -0.680789,
		0.511586, 0.839465, -0.183241,
		0.522563, -0.473264, -0.709188,
		43.286610, 31.295506, 31.230644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.409714, 31.527119, 32.258400>,  <42.920815, 31.626791, 31.727077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.409714, 31.527119, 32.258400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.564846, 31.215612, 32.061176>,  <43.657925, 31.028708, 31.942842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.564846, 31.215612, 32.061176>,  <43.409714, 31.527119, 32.258400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.564846, 31.215612, 32.061176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403966, 0.337201, -0.850357,
		0.828489, 0.528977, -0.183817,
		0.387835, -0.778768, -0.493057,
		43.681198, 30.981981, 31.913260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.633286, 32.125904, 32.586254>,  <43.409714, 31.527119, 32.258400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.633286, 32.125904, 32.586254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.682545, 32.350906, 32.259228>,  <43.712101, 32.485909, 32.063011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.682545, 32.350906, 32.259228>,  <43.633286, 32.125904, 32.586254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.682545, 32.350906, 32.259228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781881, 0.452350, 0.429001,
		0.611144, -0.692070, -0.384111,
		0.123146, 0.562510, -0.817568,
		43.719490, 32.519661, 32.013958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.336201, 31.967581, 32.361233>,  <43.633286, 32.125904, 32.586254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.336201, 31.967581, 32.361233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.158680, 32.323513, 32.318832>,  <44.052166, 32.537071, 32.293392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.158680, 32.323513, 32.318832>,  <44.336201, 31.967581, 32.361233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.158680, 32.323513, 32.318832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798974, 0.446481, 0.402858,
		0.405805, 0.094094, -0.909103,
		-0.443804, 0.889832, -0.106005,
		44.025539, 32.590462, 32.287029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.780487, 32.528736, 31.918640>,  <44.336201, 31.967581, 32.361233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.780487, 32.528736, 31.918640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.528633, 32.667080, 32.196903>,  <44.377522, 32.750088, 32.363861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.528633, 32.667080, 32.196903>,  <44.780487, 32.528736, 31.918640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.528633, 32.667080, 32.196903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707829, 0.624464, 0.330186,
		-0.320214, 0.700303, -0.637996,
		-0.629636, 0.345862, 0.695657,
		44.339741, 32.770840, 32.405602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.741207, 33.296711, 31.888945>,  <44.780487, 32.528736, 31.918640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.741207, 33.296711, 31.888945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.655533, 33.154945, 32.253036>,  <44.604130, 33.069885, 32.471493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.655533, 33.154945, 32.253036>,  <44.741207, 33.296711, 31.888945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.655533, 33.154945, 32.253036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655429, 0.638784, 0.402948,
		-0.724250, 0.682895, 0.095477,
		-0.214182, -0.354414, 0.910229,
		44.591278, 33.048622, 32.526104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.590607, 33.848381, 32.279961>,  <44.741207, 33.296711, 31.888945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.590607, 33.848381, 32.279961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.769985, 33.575054, 32.510429>,  <44.877613, 33.411060, 32.648712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.769985, 33.575054, 32.510429>,  <44.590607, 33.848381, 32.279961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.769985, 33.575054, 32.510429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584110, 0.711979, 0.389745,
		-0.676543, 0.161769, 0.718415,
		0.448448, -0.683312, 0.576175,
		44.904518, 33.370060, 32.683281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.467587, 33.862312, 32.974155>,  <44.590607, 33.848381, 32.279961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.467587, 33.862312, 32.974155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.835812, 33.743336, 32.872890>,  <45.056747, 33.671951, 32.812130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.835812, 33.743336, 32.872890>,  <44.467587, 33.862312, 32.974155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.835812, 33.743336, 32.872890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368093, 0.877441, 0.307578,
		0.130654, -0.376334, 0.917226,
		0.920564, -0.297438, -0.253167,
		45.111980, 33.654106, 32.796940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.867901, 33.740387, 33.335426>,  <44.467587, 33.862312, 32.974155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.867901, 33.740387, 33.335426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.579235, 33.853085, 33.588352>,  <43.406036, 33.920704, 33.740108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.579235, 33.853085, 33.588352>,  <43.867901, 33.740387, 33.335426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.579235, 33.853085, 33.588352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422332, -0.544544, 0.724643,
		0.548485, 0.789996, 0.273990,
		-0.721664, 0.281741, 0.632315,
		43.362736, 33.937607, 33.778046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.101437, 34.132759, 33.922306>,  <43.867901, 33.740387, 33.335426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.101437, 34.132759, 33.922306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.780334, 33.913422, 34.016033>,  <43.587673, 33.781818, 34.072269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.780334, 33.913422, 34.016033>,  <44.101437, 34.132759, 33.922306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.780334, 33.913422, 34.016033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491671, -0.386309, 0.780401,
		-0.337407, 0.741678, 0.579715,
		-0.802755, -0.548342, 0.234319,
		43.539509, 33.748920, 34.086330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.956173, 34.136314, 34.688751>,  <44.101437, 34.132759, 33.922306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.956173, 34.136314, 34.688751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.807468, 33.804203, 34.522648>,  <43.718246, 33.604939, 34.422985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.807468, 33.804203, 34.522648>,  <43.956173, 34.136314, 34.688751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.807468, 33.804203, 34.522648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345675, -0.538957, 0.768137,
		-0.861568, 0.142022, 0.487370,
		-0.371764, -0.830274, -0.415255,
		43.695938, 33.555122, 34.398071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.753769, 33.746464, 35.281013>,  <43.956173, 34.136314, 34.688751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.753769, 33.746464, 35.281013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.808411, 33.508987, 34.963806>,  <43.841194, 33.366501, 34.773483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.808411, 33.508987, 34.963806>,  <43.753769, 33.746464, 35.281013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.808411, 33.508987, 34.963806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544792, -0.623572, 0.560678,
		-0.827371, -0.508617, 0.238258,
		0.136599, -0.593689, -0.793016,
		43.849392, 33.330879, 34.725903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.581520, 32.993702, 35.420872>,  <43.753769, 33.746464, 35.281013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.581520, 32.993702, 35.420872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.878689, 33.029953, 35.155586>,  <44.056988, 33.051704, 34.996414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.878689, 33.029953, 35.155586>,  <43.581520, 32.993702, 35.420872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.878689, 33.029953, 35.155586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557666, -0.631817, 0.538345,
		-0.370243, -0.769801, -0.519929,
		0.742919, 0.090628, -0.663218,
		44.101566, 33.057140, 34.956619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.705761, 32.334526, 34.936424>,  <43.581520, 32.993702, 35.420872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.705761, 32.334526, 34.936424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.017708, 32.572220, 35.015110>,  <44.204876, 32.714836, 35.062321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.017708, 32.572220, 35.015110>,  <43.705761, 32.334526, 34.936424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.017708, 32.572220, 35.015110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500796, -0.780860, 0.373446,
		0.375519, -0.192725, -0.906556,
		0.779865, 0.594235, 0.196712,
		44.251667, 32.750492, 35.074123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.313274, 32.240150, 34.412342>,  <43.705761, 32.334526, 34.936424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.313274, 32.240150, 34.412342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.384796, 32.332947, 34.794800>,  <44.427708, 32.388626, 35.024273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.384796, 32.332947, 34.794800>,  <44.313274, 32.240150, 34.412342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.384796, 32.332947, 34.794800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611962, -0.787173, 0.076554,
		0.770410, 0.571435, -0.282720,
		0.178804, 0.231992, 0.956142,
		44.438438, 32.402546, 35.081642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.107136, 32.229649, 34.633526>,  <44.313274, 32.240150, 34.412342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.107136, 32.229649, 34.633526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.849567, 32.138016, 34.925522>,  <44.695026, 32.083035, 35.100719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.849567, 32.138016, 34.925522>,  <45.107136, 32.229649, 34.633526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.849567, 32.138016, 34.925522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484065, -0.860862, 0.156838,
		0.592489, 0.454353, 0.665222,
		-0.643924, -0.229086, 0.729988,
		44.656391, 32.069290, 35.144520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.506027, 31.953032, 35.216099>,  <45.107136, 32.229649, 34.633526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.506027, 31.953032, 35.216099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.621784, 31.612902, 35.391914>,  <45.691238, 31.408823, 35.497406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.621784, 31.612902, 35.391914>,  <45.506027, 31.953032, 35.216099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.621784, 31.612902, 35.391914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284809, 0.514885, 0.808565,
		-0.913859, -0.108805, 0.391183,
		0.289390, -0.850326, 0.439544,
		45.708603, 31.357803, 35.523777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.655163, 32.653202, 35.637085>,  <45.506027, 31.953032, 35.216099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.655163, 32.653202, 35.637085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.054455, 32.650158, 35.613487>,  <46.294029, 32.648331, 35.599327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.054455, 32.650158, 35.613487>,  <45.655163, 32.653202, 35.637085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.054455, 32.650158, 35.613487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059419, -0.080102, -0.995014,
		0.002848, 0.996758, -0.080412,
		0.998229, -0.007612, -0.058998,
		46.353924, 32.647873, 35.595787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.479286, 33.429924, 35.387733>,  <45.655163, 32.653202, 35.637085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.479286, 33.429924, 35.387733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.604649, 33.714314, 35.639542>,  <45.679867, 33.884945, 35.790627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.604649, 33.714314, 35.639542>,  <45.479286, 33.429924, 35.387733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.604649, 33.714314, 35.639542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206501, 0.596033, -0.775953,
		-0.926895, 0.373185, 0.039985,
		0.313406, 0.710970, 0.629523,
		45.698669, 33.927605, 35.828400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.257347, 34.057846, 35.166466>,  <45.479286, 33.429924, 35.387733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.257347, 34.057846, 35.166466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.593079, 34.127769, 35.372368>,  <45.794518, 34.169724, 35.495911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.593079, 34.127769, 35.372368>,  <45.257347, 34.057846, 35.166466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.593079, 34.127769, 35.372368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320530, 0.605656, -0.728314,
		-0.439080, 0.776288, 0.452312,
		0.839327, 0.174808, 0.514755,
		45.844875, 34.180210, 35.526794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.635185, 34.612686, 34.815273>,  <45.257347, 34.057846, 35.166466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.635185, 34.612686, 34.815273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.923557, 34.539383, 35.082611>,  <46.096581, 34.495403, 35.243011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.923557, 34.539383, 35.082611>,  <45.635185, 34.612686, 34.815273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.923557, 34.539383, 35.082611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598078, 0.651720, -0.466438,
		-0.350095, 0.735988, 0.579444,
		0.720927, -0.183255, 0.668342,
		46.139835, 34.484406, 35.283115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.920094, 35.332676, 35.077244>,  <45.635185, 34.612686, 34.815273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.920094, 35.332676, 35.077244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.161514, 35.013752, 35.075432>,  <46.306366, 34.822395, 35.074345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.161514, 35.013752, 35.075432>,  <45.920094, 35.332676, 35.077244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.161514, 35.013752, 35.075432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713005, 0.542255, -0.444504,
		0.356863, 0.265054, 0.895765,
		0.603550, -0.797312, -0.004526,
		46.342579, 34.774559, 35.074074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.498943, 35.530170, 35.574028>,  <45.920094, 35.332676, 35.077244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.498943, 35.530170, 35.574028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.548828, 35.289059, 35.258789>,  <46.578758, 35.144390, 35.069645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.548828, 35.289059, 35.258789>,  <46.498943, 35.530170, 35.574028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.548828, 35.289059, 35.258789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797071, 0.533886, -0.282211,
		0.590867, -0.592977, 0.547042,
		0.124714, -0.602780, -0.788100,
		46.586243, 35.108223, 35.022358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.166523, 35.325165, 35.604641>,  <46.498943, 35.530170, 35.574028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.166523, 35.325165, 35.604641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.077991, 35.291866, 35.215984>,  <47.024872, 35.271885, 34.982792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.077991, 35.291866, 35.215984>,  <47.166523, 35.325165, 35.604641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.077991, 35.291866, 35.215984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824410, 0.516248, -0.232028,
		0.520923, -0.852384, -0.045629,
		-0.221332, -0.083252, -0.971638,
		47.011593, 35.266891, 34.924492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.691044, 35.089199, 35.240719>,  <47.166523, 35.325165, 35.604641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.691044, 35.089199, 35.240719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.476334, 35.307400, 34.983253>,  <47.347507, 35.438320, 34.828773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.476334, 35.307400, 34.983253>,  <47.691044, 35.089199, 35.240719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.476334, 35.307400, 34.983253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819855, 0.517401, -0.245222,
		0.199262, -0.659339, -0.724960,
		-0.536779, 0.545499, -0.643661,
		47.315300, 35.471050, 34.790154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.742241, 27.535149, 26.107121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.721191, 27.657660, 26.487314>,  <35.708561, 27.731167, 26.715431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.721191, 27.657660, 26.487314>,  <35.742241, 27.535149, 26.107121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721191, 27.657660, 26.487314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948497, 0.313072, -0.048369,
		-0.312385, 0.898987, -0.306980,
		-0.052624, 0.306280, 0.950486,
		35.705402, 27.749544, 26.772461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030727, 28.210445, 26.116404>,  <35.742241, 27.535149, 26.107121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030727, 28.210445, 26.116404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.040352, 28.081114, 26.494797>,  <36.046127, 28.003515, 26.721832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.040352, 28.081114, 26.494797>,  <36.030727, 28.210445, 26.116404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040352, 28.081114, 26.494797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905843, 0.407366, 0.116192,
		-0.422929, 0.854114, 0.302687,
		0.024063, -0.323328, 0.945981,
		36.047569, 27.984116, 26.778591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254642, 28.772346, 26.499903>,  <36.030727, 28.210445, 26.116404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254642, 28.772346, 26.499903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.318043, 28.442486, 26.717094>,  <36.356083, 28.244570, 26.847410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.318043, 28.442486, 26.717094>,  <36.254642, 28.772346, 26.499903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318043, 28.442486, 26.717094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963938, 0.248310, 0.095735,
		-0.213775, 0.508224, 0.834271,
		0.158503, -0.824652, 0.542979,
		36.365593, 28.195091, 26.879988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542595, 28.995152, 27.150412>,  <36.254642, 28.772346, 26.499903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542595, 28.995152, 27.150412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.636639, 28.615511, 27.066572>,  <36.693066, 28.387726, 27.016268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.636639, 28.615511, 27.066572>,  <36.542595, 28.995152, 27.150412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636639, 28.615511, 27.066572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971182, 0.220709, 0.089963,
		-0.039123, -0.224711, 0.973640,
		0.235107, -0.949101, -0.209601,
		36.707172, 28.330780, 27.003693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101013, 28.821636, 27.501141>,  <36.542595, 28.995152, 27.150412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101013, 28.821636, 27.501141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.131512, 28.534142, 27.224705>,  <37.149811, 28.361645, 27.058844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.131512, 28.534142, 27.224705>,  <37.101013, 28.821636, 27.501141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131512, 28.534142, 27.224705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974705, 0.199765, -0.100223,
		0.210089, -0.665965, 0.715788,
		0.076244, -0.718738, -0.691088,
		37.154385, 28.318520, 27.017378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733696, 28.424892, 27.680817>,  <37.101013, 28.821636, 27.501141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733696, 28.424892, 27.680817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.648281, 28.369347, 27.294010>,  <37.597034, 28.336020, 27.061926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.648281, 28.369347, 27.294010>,  <37.733696, 28.424892, 27.680817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648281, 28.369347, 27.294010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969213, 0.094103, -0.227532,
		0.122596, -0.985830, 0.114496,
		-0.213534, -0.138866, -0.967016,
		37.584221, 28.327686, 27.003906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254711, 27.992109, 27.499767>,  <37.733696, 28.424892, 27.680817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254711, 27.992109, 27.499767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.113960, 28.093412, 27.139313>,  <38.029510, 28.154194, 26.923040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.113960, 28.093412, 27.139313>,  <38.254711, 27.992109, 27.499767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113960, 28.093412, 27.139313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897102, -0.183555, -0.401889,
		-0.267189, -0.949826, -0.162608,
		-0.351877, 0.253256, -0.901135,
		38.008396, 28.169390, 26.868973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774574, 27.642109, 27.010988>,  <38.254711, 27.992109, 27.499767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774574, 27.642109, 27.010988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.564445, 27.901136, 26.790190>,  <38.438370, 28.056553, 26.657711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.564445, 27.901136, 26.790190>,  <38.774574, 27.642109, 27.010988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564445, 27.901136, 26.790190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837033, 0.276602, -0.472088,
		-0.153026, -0.710033, -0.687340,
		-0.525317, 0.647568, -0.551994,
		38.406849, 28.095407, 26.624592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895466, 27.476809, 26.299343>,  <38.774574, 27.642109, 27.010988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895466, 27.476809, 26.299343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.822941, 27.870073, 26.308424>,  <38.779427, 28.106033, 26.313873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.822941, 27.870073, 26.308424>,  <38.895466, 27.476809, 26.299343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822941, 27.870073, 26.308424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898285, 0.174965, -0.403079,
		-0.400264, -0.052690, -0.914884,
		-0.181311, 0.983164, 0.022702,
		38.768547, 28.165022, 26.315235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121483, 27.629976, 25.729937>,  <38.895466, 27.476809, 26.299343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121483, 27.629976, 25.729937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.110336, 27.992601, 25.898397>,  <39.103649, 28.210176, 25.999474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.110336, 27.992601, 25.898397>,  <39.121483, 27.629976, 25.729937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110336, 27.992601, 25.898397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856656, 0.238777, -0.457303,
		-0.515135, 0.348040, -0.783265,
		-0.027866, 0.906561, 0.421153,
		39.101978, 28.264570, 26.024744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511086, 28.000174, 25.342886>,  <39.121483, 27.629976, 25.729937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511086, 28.000174, 25.342886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.483841, 28.246738, 25.656675>,  <39.467495, 28.394676, 25.844950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.483841, 28.246738, 25.656675>,  <39.511086, 28.000174, 25.342886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483841, 28.246738, 25.656675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910812, 0.359318, -0.203253,
		-0.407162, 0.700664, -0.585909,
		-0.068116, 0.616410, 0.784474,
		39.463406, 28.431662, 25.892017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640144, 28.664309, 25.151747>,  <39.511086, 28.000174, 25.342886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640144, 28.664309, 25.151747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.741871, 28.635210, 25.537500>,  <39.802906, 28.617752, 25.768951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.741871, 28.635210, 25.537500>,  <39.640144, 28.664309, 25.151747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741871, 28.635210, 25.537500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943919, 0.235787, -0.231130,
		-0.210576, 0.969078, 0.128629,
		0.254312, -0.072745, 0.964382,
		39.818165, 28.613386, 25.826815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024799, 29.297787, 25.403334>,  <39.640144, 28.664309, 25.151747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024799, 29.297787, 25.403334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.141941, 29.020754, 25.667021>,  <40.212227, 28.854534, 25.825233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.141941, 29.020754, 25.667021>,  <40.024799, 29.297787, 25.403334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141941, 29.020754, 25.667021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955653, 0.234421, -0.178255,
		-0.031080, 0.682187, 0.730517,
		0.292852, -0.692580, 0.659220,
		40.229797, 28.812981, 25.864786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695156, 29.638744, 25.678677>,  <40.024799, 29.297787, 25.403334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695156, 29.638744, 25.678677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.678246, 29.255127, 25.790709>,  <40.668098, 29.024956, 25.857927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.678246, 29.255127, 25.790709>,  <40.695156, 29.638744, 25.678677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.678246, 29.255127, 25.790709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997432, -0.056737, -0.043705,
		0.057806, 0.277512, 0.958982,
		-0.042281, -0.959045, 0.280079,
		40.665562, 28.967413, 25.874733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.252499, 29.543961, 26.132175>,  <40.695156, 29.638744, 25.678677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.252499, 29.543961, 26.132175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.157894, 29.184566, 25.984238>,  <41.101131, 28.968929, 25.895475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.157894, 29.184566, 25.984238>,  <41.252499, 29.543961, 26.132175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.157894, 29.184566, 25.984238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930028, -0.099151, -0.353861,
		0.281268, -0.427659, 0.859067,
		-0.236509, -0.898486, -0.369847,
		41.086941, 28.915020, 25.873283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.986675, 29.227154, 26.105358>,  <41.252499, 29.543961, 26.132175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.986675, 29.227154, 26.105358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.730499, 29.026217, 25.872984>,  <41.576794, 28.905655, 25.733559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.730499, 29.026217, 25.872984>,  <41.986675, 29.227154, 26.105358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.730499, 29.026217, 25.872984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726483, -0.150899, -0.670412,
		0.249114, -0.851400, 0.461586,
		-0.640441, -0.502343, -0.580937,
		41.538368, 28.875513, 25.698704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.375351, 28.524469, 25.917969>,  <41.986675, 29.227154, 26.105358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.375351, 28.524469, 25.917969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.090992, 28.600388, 25.647089>,  <41.920376, 28.645939, 25.484562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.090992, 28.600388, 25.647089>,  <42.375351, 28.524469, 25.917969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.090992, 28.600388, 25.647089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686979, -0.018792, -0.726434,
		-0.150603, -0.981643, -0.117028,
		-0.710900, 0.189799, -0.677198,
		41.877724, 28.657328, 25.443930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.535427, 28.054760, 25.379250>,  <42.375351, 28.524469, 25.917969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.535427, 28.054760, 25.379250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.285713, 28.296236, 25.180925>,  <42.135887, 28.441122, 25.061932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.285713, 28.296236, 25.180925>,  <42.535427, 28.054760, 25.379250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.285713, 28.296236, 25.180925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592039, -0.048459, -0.804451,
		-0.509668, -0.795743, -0.327157,
		-0.624283, 0.603692, -0.495809,
		42.098427, 28.477345, 25.032183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.347824, 27.717594, 24.707748>,  <42.535427, 28.054760, 25.379250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.347824, 27.717594, 24.707748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.303467, 28.113028, 24.666950>,  <42.276852, 28.350288, 24.642471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.303467, 28.113028, 24.666950>,  <42.347824, 27.717594, 24.707748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.303467, 28.113028, 24.666950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673598, -0.000693, -0.739097,
		-0.730731, -0.150669, -0.665831,
		-0.110898, 0.988584, -0.101997,
		42.270199, 28.409603, 24.636351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.189442, 27.874317, 24.008841>,  <42.347824, 27.717594, 24.707748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.189442, 27.874317, 24.008841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.317543, 28.221313, 24.161100>,  <42.394405, 28.429512, 24.252457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.317543, 28.221313, 24.161100>,  <42.189442, 27.874317, 24.008841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.317543, 28.221313, 24.161100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691661, 0.060451, -0.719688,
		-0.647333, 0.493766, -0.580650,
		0.320257, 0.867491, 0.380651,
		42.413620, 28.481562, 24.275295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.494858, 28.289717, 23.383600>,  <42.189442, 27.874317, 24.008841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.494858, 28.289717, 23.383600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.635265, 28.440798, 23.726324>,  <42.719509, 28.531446, 23.931959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.635265, 28.440798, 23.726324>,  <42.494858, 28.289717, 23.383600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.635265, 28.440798, 23.726324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887948, 0.156163, -0.432621,
		-0.297205, 0.912663, -0.280564,
		0.351023, 0.377703, 0.856810,
		42.740574, 28.554110, 23.983368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.364491, 27.511209, 23.366417>,  <42.494858, 28.289717, 23.383600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.364491, 27.511209, 23.366417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.496521, 27.461065, 22.992180>,  <42.575741, 27.430979, 22.767637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.496521, 27.461065, 22.992180>,  <42.364491, 27.511209, 23.366417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.496521, 27.461065, 22.992180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840217, -0.490739, -0.230676,
		-0.430214, 0.862241, -0.267312,
		0.330079, -0.125360, -0.935592,
		42.595543, 27.423458, 22.711502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.901909, 27.805134, 22.947327>,  <42.364491, 27.511209, 23.366417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.901909, 27.805134, 22.947327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.108521, 27.553661, 22.714790>,  <42.232487, 27.402779, 22.575268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.108521, 27.553661, 22.714790>,  <41.901909, 27.805134, 22.947327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.108521, 27.553661, 22.714790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798008, -0.599590, -0.060625,
		-0.310454, 0.495231, -0.811397,
		0.516529, -0.628680, -0.581343,
		42.263481, 27.365057, 22.540388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.437588, 27.552313, 22.438684>,  <41.901909, 27.805134, 22.947327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.437588, 27.552313, 22.438684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.713211, 27.263718, 22.411377>,  <41.878586, 27.090561, 22.394993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.713211, 27.263718, 22.411377>,  <41.437588, 27.552313, 22.438684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.713211, 27.263718, 22.411377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724647, -0.687161, -0.051927,
		-0.009447, 0.085252, -0.996315,
		0.689056, -0.721486, -0.068269,
		41.919930, 27.047272, 22.390896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.203365, 27.132626, 21.914137>,  <41.437588, 27.552313, 22.438684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.203365, 27.132626, 21.914137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.449802, 26.909924, 22.137007>,  <41.597664, 26.776302, 22.270729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.449802, 26.909924, 22.137007>,  <41.203365, 27.132626, 21.914137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.449802, 26.909924, 22.137007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712297, -0.695773, 0.092372,
		0.336240, -0.453785, -0.825240,
		0.616097, -0.556757, 0.557176,
		41.634632, 26.742897, 22.304159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.171120, 26.465250, 21.767902>,  <41.203365, 27.132626, 21.914137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.171120, 26.465250, 21.767902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.348099, 26.386930, 22.117966>,  <41.454285, 26.339939, 22.328003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.348099, 26.386930, 22.117966>,  <41.171120, 26.465250, 21.767902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.348099, 26.386930, 22.117966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603107, -0.787195, 0.128788,
		0.663704, -0.584796, -0.466380,
		0.442447, -0.195800, 0.875159,
		41.480831, 26.328190, 22.380514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.314102, 25.781328, 21.771868>,  <41.171120, 26.465250, 21.767902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.314102, 25.781328, 21.771868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.304996, 25.881638, 22.158979>,  <41.299534, 25.941824, 22.391247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.304996, 25.881638, 22.158979>,  <41.314102, 25.781328, 21.771868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.304996, 25.881638, 22.158979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548899, -0.812209, 0.197551,
		0.835579, -0.526716, 0.156136,
		-0.022762, 0.250773, 0.967778,
		41.298168, 25.956869, 22.449312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.208084, 25.125576, 22.047564>,  <41.314102, 25.781328, 21.771868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.208084, 25.125576, 22.047564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.120773, 25.368610, 22.353031>,  <41.068386, 25.514431, 22.536312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.120773, 25.368610, 22.353031>,  <41.208084, 25.125576, 22.047564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.120773, 25.368610, 22.353031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727198, -0.623128, 0.287915,
		0.650797, -0.492493, 0.577852,
		-0.218279, 0.607587, 0.763670,
		41.055290, 25.550886, 22.582132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.965214, 24.625065, 22.555086>,  <41.208084, 25.125576, 22.047564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.965214, 24.625065, 22.555086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.857208, 24.986338, 22.688562>,  <40.792404, 25.203102, 22.768648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.857208, 24.986338, 22.688562>,  <40.965214, 24.625065, 22.555086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.857208, 24.986338, 22.688562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747947, -0.414997, 0.518027,
		0.606355, -0.109709, 0.787590,
		-0.270016, 0.903184, 0.333692,
		40.776203, 25.257294, 22.788670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745178, 24.538523, 23.348406>,  <40.965214, 24.625065, 22.555086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.745178, 24.538523, 23.348406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.568539, 24.856495, 23.181997>,  <40.462555, 25.047279, 23.082153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.568539, 24.856495, 23.181997>,  <40.745178, 24.538523, 23.348406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568539, 24.856495, 23.181997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862121, -0.247548, 0.442116,
		0.248467, 0.553899, 0.794645,
		-0.441600, 0.794932, -0.416020,
		40.436058, 25.094975, 23.057192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349495, 24.900158, 23.902788>,  <40.745178, 24.538523, 23.348406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349495, 24.900158, 23.902788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.179886, 25.056793, 23.576143>,  <40.078121, 25.150774, 23.380156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.179886, 25.056793, 23.576143>,  <40.349495, 24.900158, 23.902788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179886, 25.056793, 23.576143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836725, 0.175638, 0.518693,
		0.346543, 0.903222, 0.253178,
		-0.424027, 0.391590, -0.816614,
		40.052677, 25.174271, 23.331160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910107, 25.488928, 24.048594>,  <40.349495, 24.900158, 23.902788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910107, 25.488928, 24.048594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.759861, 25.396963, 23.689472>,  <39.669712, 25.341785, 23.473999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.759861, 25.396963, 23.689472>,  <39.910107, 25.488928, 24.048594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759861, 25.396963, 23.689472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926133, 0.057036, 0.372861,
		-0.034517, 0.971539, -0.234351,
		-0.375615, -0.229910, -0.897805,
		39.647175, 25.327990, 23.420130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442516, 26.038834, 23.886217>,  <39.910107, 25.488928, 24.048594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442516, 26.038834, 23.886217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.351406, 25.714155, 23.671083>,  <39.296741, 25.519348, 23.542004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.351406, 25.714155, 23.671083>,  <39.442516, 26.038834, 23.886217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351406, 25.714155, 23.671083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936248, 0.030820, 0.349984,
		-0.267505, 0.583265, -0.766970,
		-0.227772, -0.811697, -0.537836,
		39.283073, 25.470646, 23.509733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870838, 26.219717, 23.407433>,  <39.442516, 26.038834, 23.886217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870838, 26.219717, 23.407433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.858891, 25.823448, 23.460619>,  <38.851723, 25.585688, 23.492531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.858891, 25.823448, 23.460619>,  <38.870838, 26.219717, 23.407433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858891, 25.823448, 23.460619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970187, 0.060744, 0.234622,
		-0.240510, -0.121994, -0.962950,
		-0.029871, -0.990670, 0.132967,
		38.849930, 25.526247, 23.500509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232086, 26.046400, 23.096159>,  <38.870838, 26.219717, 23.407433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232086, 26.046400, 23.096159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.331478, 25.742184, 23.336105>,  <38.391113, 25.559654, 23.480072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.331478, 25.742184, 23.336105>,  <38.232086, 26.046400, 23.096159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331478, 25.742184, 23.336105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944459, -0.052721, 0.324374,
		-0.215074, -0.647146, -0.731400,
		0.248477, -0.760541, 0.599863,
		38.406021, 25.514021, 23.516064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862652, 25.462109, 22.870047>,  <38.232086, 26.046400, 23.096159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862652, 25.462109, 22.870047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.944977, 25.409161, 23.257885>,  <37.994373, 25.377392, 23.490589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.944977, 25.409161, 23.257885>,  <37.862652, 25.462109, 22.870047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944977, 25.409161, 23.257885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976944, -0.085259, 0.195735,
		0.056760, -0.987528, -0.146857,
		0.205814, -0.132361, 0.969598,
		38.006721, 25.369450, 23.548763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259022, 25.213751, 23.137115>,  <37.862652, 25.462109, 22.870047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259022, 25.213751, 23.137115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.445595, 25.299400, 23.480413>,  <37.557541, 25.350790, 23.686394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.445595, 25.299400, 23.480413>,  <37.259022, 25.213751, 23.137115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445595, 25.299400, 23.480413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884121, 0.082472, 0.459922,
		0.027698, -0.973319, 0.227779,
		0.466437, 0.214123, 0.858247,
		37.585526, 25.363638, 23.737888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813419, 24.985252, 23.554010>,  <37.259022, 25.213751, 23.137115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813419, 24.985252, 23.554010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.027203, 25.217442, 23.799744>,  <37.155472, 25.356754, 23.947184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.027203, 25.217442, 23.799744>,  <36.813419, 24.985252, 23.554010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027203, 25.217442, 23.799744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831020, 0.228349, 0.507210,
		0.154137, -0.781608, 0.604426,
		0.534460, 0.580470, 0.614335,
		37.187542, 25.391582, 23.984043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638489, 24.841221, 24.204769>,  <36.813419, 24.985252, 23.554010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638489, 24.841221, 24.204769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.785942, 25.212820, 24.217836>,  <36.874416, 25.435780, 24.225676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.785942, 25.212820, 24.217836>,  <36.638489, 24.841221, 24.204769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785942, 25.212820, 24.217836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813500, 0.305402, 0.494922,
		0.449806, -0.209019, 0.868323,
		0.368636, 0.929000, 0.032665,
		36.896534, 25.491520, 24.227636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387093, 25.127932, 24.827066>,  <36.638489, 24.841221, 24.204769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387093, 25.127932, 24.827066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.477810, 25.456339, 24.617498>,  <36.532242, 25.653383, 24.491758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.477810, 25.456339, 24.617498>,  <36.387093, 25.127932, 24.827066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477810, 25.456339, 24.617498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854021, 0.426246, 0.298267,
		0.468202, 0.379793, 0.797837,
		0.226795, 0.821019, -0.523920,
		36.545849, 25.702644, 24.460323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.051098, 25.793703, 25.252102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.120907, 25.907948, 24.875174>,  <36.162792, 25.976494, 24.649017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.120907, 25.907948, 24.875174>,  <36.051098, 25.793703, 25.252102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120907, 25.907948, 24.875174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744208, 0.664904, 0.063696,
		0.644744, 0.690166, 0.328596,
		0.174524, 0.285612, -0.942320,
		36.173264, 25.993631, 24.592478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799858, 26.516146, 25.325842>,  <36.051098, 25.793703, 25.252102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799858, 26.516146, 25.325842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.777100, 26.406090, 24.941954>,  <35.763443, 26.340055, 24.711620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.777100, 26.406090, 24.941954>,  <35.799858, 26.516146, 25.325842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777100, 26.406090, 24.941954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753772, 0.642177, -0.139415,
		0.654668, 0.715477, -0.243932,
		-0.056899, -0.275140, -0.959719,
		35.760029, 26.323547, 24.654037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767902, 27.036341, 25.018627>,  <35.799858, 26.516146, 25.325842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.767902, 27.036341, 25.018627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.650646, 26.803967, 24.714895>,  <35.580292, 26.664541, 24.532656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.650646, 26.803967, 24.714895>,  <35.767902, 27.036341, 25.018627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650646, 26.803967, 24.714895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908358, 0.416994, 0.031646,
		0.298252, 0.699021, -0.649935,
		-0.293140, -0.580936, -0.759331,
		35.562706, 26.629686, 24.487097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443394, 27.509136, 24.607485>,  <35.767902, 27.036341, 25.018627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443394, 27.509136, 24.607485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.318909, 27.142467, 24.507200>,  <35.244217, 26.922466, 24.447029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.318909, 27.142467, 24.507200>,  <35.443394, 27.509136, 24.607485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318909, 27.142467, 24.507200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944899, 0.270276, 0.184705,
		-0.101552, 0.294380, -0.950278,
		-0.311211, -0.916674, -0.250712,
		35.225544, 26.867466, 24.431986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825134, 27.612827, 24.214346>,  <35.443394, 27.509136, 24.607485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825134, 27.612827, 24.214346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.827869, 27.239498, 24.357937>,  <34.829510, 27.015501, 24.444092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.827869, 27.239498, 24.357937>,  <34.825134, 27.612827, 24.214346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827869, 27.239498, 24.357937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909749, 0.143211, 0.389676,
		-0.415102, -0.329243, -0.848109,
		0.006840, -0.933322, 0.358976,
		34.829922, 26.959501, 24.465630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244743, 27.320099, 23.994463>,  <34.825134, 27.612827, 24.214346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244743, 27.320099, 23.994463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.347706, 27.086376, 24.302315>,  <34.409481, 26.946142, 24.487026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.347706, 27.086376, 24.302315>,  <34.244743, 27.320099, 23.994463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347706, 27.086376, 24.302315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963434, -0.093851, 0.250971,
		-0.074414, -0.806087, -0.587100,
		0.257404, -0.584308, 0.769627,
		34.424927, 26.911083, 24.533203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806122, 26.792915, 24.030703>,  <34.244743, 27.320099, 23.994463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806122, 26.792915, 24.030703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.959278, 26.751961, 24.397943>,  <34.051174, 26.727388, 24.618288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.959278, 26.751961, 24.397943>,  <33.806122, 26.792915, 24.030703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959278, 26.751961, 24.397943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919030, -0.143005, 0.367333,
		0.093684, -0.984412, -0.148849,
		0.382894, -0.102384, 0.918101,
		34.074146, 26.721245, 24.673374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575783, 26.120110, 24.374662>,  <33.806122, 26.792915, 24.030703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575783, 26.120110, 24.374662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.675404, 26.380713, 24.661303>,  <33.735176, 26.537073, 24.833286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.675404, 26.380713, 24.661303>,  <33.575783, 26.120110, 24.374662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675404, 26.380713, 24.661303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869521, -0.175430, 0.461690,
		0.426506, -0.738082, 0.522807,
		0.249049, 0.651506, 0.716600,
		33.750118, 26.576164, 24.876282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431831, 25.834341, 24.940081>,  <33.575783, 26.120110, 24.374662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431831, 25.834341, 24.940081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.420280, 26.217976, 25.052736>,  <33.413349, 26.448156, 25.120331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.420280, 26.217976, 25.052736>,  <33.431831, 25.834341, 24.940081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420280, 26.217976, 25.052736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826692, -0.181304, 0.532644,
		0.561913, -0.217449, 0.798104,
		-0.028876, 0.959085, 0.281640,
		33.411617, 26.505701, 25.137228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938751, 25.819870, 25.496649>,  <33.431831, 25.834341, 24.940081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938751, 25.819870, 25.496649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.988323, 26.214521, 25.454304>,  <33.018066, 26.451311, 25.428896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.988323, 26.214521, 25.454304>,  <32.938751, 25.819870, 25.496649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988323, 26.214521, 25.454304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922629, 0.153843, 0.353678,
		0.365234, 0.053840, 0.929357,
		0.123933, 0.986628, -0.105863,
		33.025505, 26.510509, 25.422544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792011, 26.074640, 26.167343>,  <32.938751, 25.819870, 25.496649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792011, 26.074640, 26.167343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.736595, 26.360842, 25.893448>,  <32.703346, 26.532562, 25.729111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.736595, 26.360842, 25.893448>,  <32.792011, 26.074640, 26.167343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.736595, 26.360842, 25.893448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919515, 0.163865, 0.357267,
		0.367830, 0.679120, 0.635214,
		-0.138538, 0.715503, -0.684736,
		32.695034, 26.575493, 25.688026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347992, 26.598957, 26.452570>,  <32.792011, 26.074640, 26.167343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347992, 26.598957, 26.452570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.292179, 26.656595, 26.060699>,  <32.258690, 26.691177, 25.825577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.292179, 26.656595, 26.060699>,  <32.347992, 26.598957, 26.452570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292179, 26.656595, 26.060699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983826, 0.092058, 0.153664,
		0.112329, 0.985273, 0.128917,
		-0.139533, 0.144093, -0.979677,
		32.250320, 26.699823, 25.766796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.928663, 27.099354, 26.512321>,  <32.347992, 26.598957, 26.452570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.928663, 27.099354, 26.512321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.881161, 26.995434, 26.128988>,  <31.852659, 26.933083, 25.898989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.881161, 26.995434, 26.128988>,  <31.928663, 27.099354, 26.512321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881161, 26.995434, 26.128988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975214, 0.211990, 0.063381,
		0.186691, 0.942106, -0.278536,
		-0.118759, -0.259799, -0.958332,
		31.845533, 26.917494, 25.841488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647312, 27.647959, 26.157475>,  <31.928663, 27.099354, 26.512321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647312, 27.647959, 26.157475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.534380, 27.332895, 25.938427>,  <31.466619, 27.143858, 25.806999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.534380, 27.332895, 25.938427>,  <31.647312, 27.647959, 26.157475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534380, 27.332895, 25.938427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958978, 0.246894, 0.139301,
		0.025482, 0.564483, -0.825052,
		-0.282333, -0.787657, -0.547618,
		31.449680, 27.096598, 25.774141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.151251, 27.877510, 25.724194>,  <31.647312, 27.647959, 26.157475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.151251, 27.877510, 25.724194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.103411, 27.486568, 25.654366>,  <31.074707, 27.252003, 25.612469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.103411, 27.486568, 25.654366>,  <31.151251, 27.877510, 25.724194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.103411, 27.486568, 25.654366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979814, 0.144563, -0.138076,
		0.160186, 0.154533, -0.974915,
		-0.119600, -0.977354, -0.174571,
		31.067532, 27.193361, 25.601995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.709623, 27.794939, 25.190268>,  <31.151251, 27.877510, 25.724194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.709623, 27.794939, 25.190268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.671841, 27.456661, 25.400364>,  <30.649172, 27.253695, 25.526423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.671841, 27.456661, 25.400364>,  <30.709623, 27.794939, 25.190268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.671841, 27.456661, 25.400364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995495, 0.075899, -0.056815,
		0.008183, -0.528242, -0.849054,
		-0.094455, -0.845695, 0.525242,
		30.643505, 27.202953, 25.557936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.301130, 27.386877, 24.812569>,  <30.709623, 27.794939, 25.190268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.301130, 27.386877, 24.812569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.281332, 27.242733, 25.185167>,  <30.269453, 27.156246, 25.408728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.281332, 27.242733, 25.185167>,  <30.301130, 27.386877, 24.812569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.281332, 27.242733, 25.185167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994508, -0.068323, -0.079278,
		0.092211, -0.930307, -0.355001,
		-0.049498, -0.360361, 0.931499,
		30.266483, 27.134624, 25.464617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.630892, 26.976810, 24.867989>,  <30.301130, 27.386877, 24.812569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.630892, 26.976810, 24.867989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.712189, 26.994871, 25.259224>,  <29.760967, 27.005707, 25.493965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.712189, 26.994871, 25.259224>,  <29.630892, 26.976810, 24.867989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.712189, 26.994871, 25.259224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979117, 0.004639, 0.203242,
		0.004639, -0.998969, 0.045152,
		-0.203242, -0.045152, -0.978087,
		29.773161, 27.008417, 25.552650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.227921, 26.532845, 25.141161>,  <29.630892, 26.976810, 24.867989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.227921, 26.532845, 25.141161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.307961, 26.788563, 25.438148>,  <29.355986, 26.941994, 25.616341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.307961, 26.788563, 25.438148>,  <29.227921, 26.532845, 25.141161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.307961, 26.788563, 25.438148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963553, -0.008920, 0.267367,
		0.177549, -0.768909, 0.614211,
		0.200102, 0.639296, 0.742469,
		29.367990, 26.980350, 25.660889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.915064, 26.217089, 25.803974>,  <29.227921, 26.532845, 25.141161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.915064, 26.217089, 25.803974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.948212, 26.612282, 25.856169>,  <28.968100, 26.849398, 25.887486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.948212, 26.612282, 25.856169>,  <28.915064, 26.217089, 25.803974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.948212, 26.612282, 25.856169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922883, 0.026673, 0.384156,
		0.376059, -0.152257, 0.914001,
		0.082869, 0.987981, 0.130485,
		28.973072, 26.908676, 25.895315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.580574, 26.357056, 26.360600>,  <28.915064, 26.217089, 25.803974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.580574, 26.357056, 26.360600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.611742, 26.723763, 26.203899>,  <28.630444, 26.943787, 26.109880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.611742, 26.723763, 26.203899>,  <28.580574, 26.357056, 26.360600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.611742, 26.723763, 26.203899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918695, 0.218642, 0.328930,
		0.387204, 0.334267, 0.859266,
		0.077921, 0.916767, -0.391749,
		28.635118, 26.998793, 26.086374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.287737, 26.700016, 26.781673>,  <28.580574, 26.357056, 26.360600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.287737, 26.700016, 26.781673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.281921, 26.952751, 26.471687>,  <28.278433, 27.104393, 26.285696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.281921, 26.952751, 26.471687>,  <28.287737, 26.700016, 26.781673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.281921, 26.952751, 26.471687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960041, 0.207813, 0.187441,
		0.279480, 0.746722, 0.603570,
		-0.014537, 0.631838, -0.774964,
		28.277561, 27.142303, 26.239199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.065609, 27.341173, 27.052397>,  <28.287737, 26.700016, 26.781673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.065609, 27.341173, 27.052397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.983833, 27.338837, 26.660852>,  <27.934769, 27.337435, 26.425926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.983833, 27.338837, 26.660852>,  <28.065609, 27.341173, 27.052397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.983833, 27.338837, 26.660852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894146, 0.408084, 0.184310,
		0.398382, 0.912925, -0.088652,
		-0.204439, -0.005842, -0.978862,
		27.922503, 27.337084, 26.367193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.511196, 27.448559, 27.556055>,  <28.065609, 27.341173, 27.052397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.511196, 27.448559, 27.556055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.442768, 27.744896, 27.815868>,  <27.401711, 27.922697, 27.971756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.442768, 27.744896, 27.815868>,  <27.511196, 27.448559, 27.556055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.442768, 27.744896, 27.815868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928040, 0.342552, -0.146285,
		-0.330872, 0.577766, -0.746130,
		-0.171070, 0.740840, 0.649531,
		27.391447, 27.967148, 28.010727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.814373, 28.139565, 27.248993>,  <27.511196, 27.448559, 27.556055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.814373, 28.139565, 27.248993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.810188, 28.128838, 27.648827>,  <27.807676, 28.122402, 27.888727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.810188, 28.128838, 27.648827>,  <27.814373, 28.139565, 27.248993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.810188, 28.128838, 27.648827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982566, 0.185288, 0.015256,
		-0.185621, 0.982318, 0.024410,
		-0.010464, -0.026816, 0.999586,
		27.807049, 28.120792, 27.948702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.199841, 28.666037, 27.507610>,  <27.814373, 28.139565, 27.248993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.199841, 28.666037, 27.507610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.192410, 28.432564, 27.832317>,  <28.187950, 28.292480, 28.027142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.192410, 28.432564, 27.832317>,  <28.199841, 28.666037, 27.507610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.192410, 28.432564, 27.832317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964794, 0.202574, 0.167738,
		-0.262349, 0.786307, 0.559370,
		-0.018580, -0.583682, 0.811770,
		28.186836, 28.257460, 28.075848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.620924, 29.034191, 27.955690>,  <28.199841, 28.666037, 27.507610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.620924, 29.034191, 27.955690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.601875, 28.647108, 28.054708>,  <28.590446, 28.414858, 28.114119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.601875, 28.647108, 28.054708>,  <28.620924, 29.034191, 27.955690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.601875, 28.647108, 28.054708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973254, 0.010806, 0.229478,
		-0.224742, 0.251852, 0.941308,
		-0.047623, -0.967705, 0.247545,
		28.587589, 28.356796, 28.128971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.081638, 29.019480, 28.580101>,  <28.620924, 29.034191, 27.955690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.081638, 29.019480, 28.580101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.056253, 28.625334, 28.516823>,  <29.041021, 28.388845, 28.478855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.056253, 28.625334, 28.516823>,  <29.081638, 29.019480, 28.580101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.056253, 28.625334, 28.516823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972579, -0.096605, 0.211560,
		-0.223747, -0.140433, 0.964477,
		-0.063463, -0.985366, -0.158197,
		29.037214, 28.329723, 28.469364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.449701, 28.755959, 29.097923>,  <29.081638, 29.019480, 28.580101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.449701, 28.755959, 29.097923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.434671, 28.446369, 28.845081>,  <29.425653, 28.260616, 28.693377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.434671, 28.446369, 28.845081>,  <29.449701, 28.755959, 29.097923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.434671, 28.446369, 28.845081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973023, -0.172426, 0.153282,
		-0.227627, -0.609290, 0.759573,
		-0.037576, -0.773973, -0.632102,
		29.423399, 28.214178, 28.655451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.719551, 28.072220, 29.385384>,  <29.449701, 28.755959, 29.097923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.719551, 28.072220, 29.385384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.754663, 28.081663, 28.987040>,  <29.775730, 28.087330, 28.748034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.754663, 28.081663, 28.987040>,  <29.719551, 28.072220, 29.385384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.754663, 28.081663, 28.987040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983515, -0.160716, 0.082881,
		-0.158094, -0.986719, -0.037328,
		0.087779, 0.023610, -0.995860,
		29.780996, 28.088747, 28.688282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.231205, 27.652636, 29.268290>,  <29.719551, 28.072220, 29.385384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.231205, 27.652636, 29.268290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.222755, 27.819942, 28.905058>,  <30.217686, 27.920326, 28.687119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.222755, 27.819942, 28.905058>,  <30.231205, 27.652636, 29.268290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.222755, 27.819942, 28.905058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999528, 0.029096, -0.009847,
		0.022303, -0.907857, -0.418687,
		-0.021122, 0.418270, -0.908077,
		30.216419, 27.945423, 28.632635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.646433, 27.195765, 28.800833>,  <30.231205, 27.652636, 29.268290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.646433, 27.195765, 28.800833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.627428, 27.560171, 28.636984>,  <30.616026, 27.778814, 28.538673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.627428, 27.560171, 28.636984>,  <30.646433, 27.195765, 28.800833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.627428, 27.560171, 28.636984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986732, -0.020933, -0.161005,
		-0.155253, -0.411838, -0.897934,
		-0.047511, 0.911017, -0.409623,
		30.613174, 27.833477, 28.514097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.037224, 27.032591, 28.218521>,  <30.646433, 27.195765, 28.800833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.037224, 27.032591, 28.218521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.050735, 27.432158, 28.231348>,  <31.058844, 27.671898, 28.239044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.050735, 27.432158, 28.231348>,  <31.037224, 27.032591, 28.218521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050735, 27.432158, 28.231348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925904, -0.019200, -0.377270,
		-0.376245, 0.042436, -0.925548,
		0.033781, 0.998915, 0.032068,
		31.060869, 27.731833, 28.240969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154253, 27.301493, 27.530912>,  <31.037224, 27.032591, 28.218521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154253, 27.301493, 27.530912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.291418, 27.590195, 27.771404>,  <31.373716, 27.763416, 27.915699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.291418, 27.590195, 27.771404>,  <31.154253, 27.301493, 27.530912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.291418, 27.590195, 27.771404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831248, 0.064967, -0.552092,
		-0.437537, 0.689091, -0.577681,
		0.342911, 0.721757, 0.601231,
		31.394291, 27.806723, 27.951775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244930, 27.707024, 27.062618>,  <31.154253, 27.301493, 27.530912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.244930, 27.707024, 27.062618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.437204, 27.832373, 27.390213>,  <31.552568, 27.907583, 27.586769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.437204, 27.832373, 27.390213>,  <31.244930, 27.707024, 27.062618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437204, 27.832373, 27.390213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829652, 0.139886, -0.540471,
		-0.283934, 0.939270, -0.192750,
		0.480685, 0.313374, 0.818987,
		31.581409, 27.926384, 27.635908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.695898, 28.133062, 26.737001>,  <31.244930, 27.707024, 27.062618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.695898, 28.133062, 26.737001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.855417, 28.043810, 27.092793>,  <31.951128, 27.990257, 27.306267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.855417, 28.043810, 27.092793>,  <31.695898, 28.133062, 26.737001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.855417, 28.043810, 27.092793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882204, -0.171444, -0.438545,
		0.250350, 0.959593, 0.128477,
		0.398798, -0.223133, 0.889478,
		31.975058, 27.976870, 27.359636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.369198, 28.588005, 26.892111>,  <31.695898, 28.133062, 26.737001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.369198, 28.588005, 26.892111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.414345, 28.267784, 27.127525>,  <32.441433, 28.075651, 27.268774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.414345, 28.267784, 27.127525>,  <32.369198, 28.588005, 26.892111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414345, 28.267784, 27.127525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948091, -0.090456, -0.304863,
		0.297296, 0.592394, 0.748789,
		0.112867, -0.800555, 0.588535,
		32.448204, 28.027618, 27.304087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981689, 28.763168, 27.302931>,  <32.369198, 28.588005, 26.892111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981689, 28.763168, 27.302931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.954689, 28.364502, 27.321285>,  <32.938488, 28.125303, 27.332298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.954689, 28.364502, 27.321285>,  <32.981689, 28.763168, 27.302931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954689, 28.364502, 27.321285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995282, -0.070476, -0.066684,
		0.069695, 0.041167, 0.996719,
		-0.067499, -0.996664, 0.045884,
		32.934441, 28.065502, 27.335051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440903, 28.606749, 27.793663>,  <32.981689, 28.763168, 27.302931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440903, 28.606749, 27.793663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.381058, 28.261118, 27.601418>,  <33.345150, 28.053740, 27.486071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.381058, 28.261118, 27.601418>,  <33.440903, 28.606749, 27.793663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381058, 28.261118, 27.601418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966555, -0.230214, 0.113015,
		-0.208298, -0.447632, 0.869619,
		-0.149609, -0.864076, -0.480614,
		33.336174, 28.001896, 27.457233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838638, 28.033087, 28.113070>,  <33.440903, 28.606749, 27.793663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838638, 28.033087, 28.113070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.776791, 27.913500, 27.736408>,  <33.739681, 27.841747, 27.510412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.776791, 27.913500, 27.736408>,  <33.838638, 28.033087, 28.113070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776791, 27.913500, 27.736408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958938, -0.274787, -0.070218,
		-0.237761, -0.913844, 0.329178,
		-0.154622, -0.298966, -0.941653,
		33.730404, 27.823811, 27.453913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289677, 27.548580, 28.053162>,  <33.838638, 28.033087, 28.113070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289677, 27.548580, 28.053162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.204990, 27.635143, 27.671934>,  <34.154179, 27.687080, 27.443197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.204990, 27.635143, 27.671934>,  <34.289677, 27.548580, 28.053162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204990, 27.635143, 27.671934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941645, -0.215941, -0.258212,
		-0.261686, -0.952123, -0.158061,
		-0.211718, 0.216408, -0.953070,
		34.141476, 27.700066, 27.386013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547764, 26.885647, 27.598146>,  <34.289677, 27.548580, 28.053162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547764, 26.885647, 27.598146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.522793, 27.234802, 27.404583>,  <34.507812, 27.444296, 27.288445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.522793, 27.234802, 27.404583>,  <34.547764, 26.885647, 27.598146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522793, 27.234802, 27.404583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885882, -0.174858, -0.429695,
		-0.459692, -0.455508, -0.762362,
		-0.062425, 0.872890, -0.483907,
		34.504066, 27.496670, 27.259411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767174, 26.776224, 26.825996>,  <34.547764, 26.885647, 27.598146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767174, 26.776224, 26.825996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.815140, 27.159769, 26.928919>,  <34.843922, 27.389896, 26.990671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.815140, 27.159769, 26.928919>,  <34.767174, 26.776224, 26.825996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815140, 27.159769, 26.928919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914373, -0.005719, -0.404833,
		-0.386707, 0.283818, -0.877442,
		0.119917, 0.958861, 0.257304,
		34.851116, 27.447428, 27.006109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304630, 26.948351, 26.460342>,  <34.767174, 26.776224, 26.825996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304630, 26.948351, 26.460342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.298092, 27.282974, 26.679398>,  <35.294167, 27.483747, 26.810831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.298092, 27.282974, 26.679398>,  <35.304630, 26.948351, 26.460342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298092, 27.282974, 26.679398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979597, 0.123126, -0.158837,
		-0.200305, 0.533866, -0.821501,
		-0.016351, 0.836556, 0.547637,
		35.293186, 27.533941, 26.843689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.781116, 24.239220, 23.527981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.803246, 24.638577, 23.522985>,  <38.816521, 24.878191, 23.519989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.803246, 24.638577, 23.522985>,  <38.781116, 24.239220, 23.527981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803246, 24.638577, 23.522985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817020, -0.052452, -0.574220,
		-0.573951, 0.021562, -0.818606,
		0.055318, 0.998391, -0.012488,
		38.819839, 24.938093, 23.519239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978443, 24.371132, 22.842852>,  <38.781116, 24.239220, 23.527981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978443, 24.371132, 22.842852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.082474, 24.690035, 23.060747>,  <39.144894, 24.881376, 23.191484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.082474, 24.690035, 23.060747>,  <38.978443, 24.371132, 22.842852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082474, 24.690035, 23.060747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889172, 0.022216, -0.457033,
		-0.376475, 0.603231, -0.703121,
		0.260076, 0.797257, 0.544740,
		39.160496, 24.929213, 23.224169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228348, 24.848959, 22.310268>,  <38.978443, 24.371132, 22.842852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228348, 24.848959, 22.310268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.363155, 24.966831, 22.667944>,  <39.444042, 25.037556, 22.882549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.363155, 24.966831, 22.667944>,  <39.228348, 24.848959, 22.310268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363155, 24.966831, 22.667944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918964, 0.103581, -0.380495,
		-0.204746, 0.949965, -0.235893,
		0.337023, 0.294682, 0.894191,
		39.464264, 25.055235, 22.936201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546227, 25.463669, 22.221712>,  <39.228348, 24.848959, 22.310268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546227, 25.463669, 22.221712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.693352, 25.378201, 22.583719>,  <39.781628, 25.326920, 22.800924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.693352, 25.378201, 22.583719>,  <39.546227, 25.463669, 22.221712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693352, 25.378201, 22.583719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904301, 0.308980, -0.294568,
		-0.216692, 0.926756, 0.306869,
		0.367809, -0.213672, 0.905020,
		39.803696, 25.314098, 22.855225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796368, 26.104364, 22.616827>,  <39.546227, 25.463669, 22.221712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796368, 26.104364, 22.616827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.991356, 25.792973, 22.774986>,  <40.108349, 25.606136, 22.869883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.991356, 25.792973, 22.774986>,  <39.796368, 26.104364, 22.616827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991356, 25.792973, 22.774986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861009, 0.503807, -0.069579,
		-0.145039, 0.374361, 0.915870,
		0.487469, -0.778481, 0.395400,
		40.137596, 25.559429, 22.893606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215900, 26.371071, 23.084358>,  <39.796368, 26.104364, 22.616827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215900, 26.371071, 23.084358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.393105, 26.027206, 22.982597>,  <40.499428, 25.820887, 22.921541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.393105, 26.027206, 22.982597>,  <40.215900, 26.371071, 23.084358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.393105, 26.027206, 22.982597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878652, 0.472702, -0.067252,
		0.178070, -0.193737, 0.964758,
		0.443014, -0.859662, -0.254401,
		40.526009, 25.769308, 22.906277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701946, 26.310392, 23.545696>,  <40.215900, 26.371071, 23.084358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701946, 26.310392, 23.545696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.805031, 26.080547, 23.234980>,  <40.866882, 25.942640, 23.048550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.805031, 26.080547, 23.234980>,  <40.701946, 26.310392, 23.545696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.805031, 26.080547, 23.234980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850210, 0.516813, -0.100236,
		0.459053, -0.634604, 0.621730,
		0.257708, -0.574615, -0.776791,
		40.882343, 25.908163, 23.001942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362797, 26.061462, 23.768555>,  <40.701946, 26.310392, 23.545696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.362797, 26.061462, 23.768555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.334373, 26.064369, 23.369576>,  <41.317322, 26.066114, 23.130188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.334373, 26.064369, 23.369576>,  <41.362797, 26.061462, 23.768555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.334373, 26.064369, 23.369576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800729, 0.596705, -0.052692,
		0.594798, -0.802428, -0.048215,
		-0.071052, 0.007266, -0.997446,
		41.313057, 26.066549, 23.070341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.013351, 26.125385, 23.532076>,  <41.362797, 26.061462, 23.768555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.013351, 26.125385, 23.532076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.833588, 26.210062, 23.184923>,  <41.725727, 26.260868, 22.976631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.833588, 26.210062, 23.184923>,  <42.013351, 26.125385, 23.532076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.833588, 26.210062, 23.184923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743879, 0.626621, -0.232357,
		0.494644, -0.750021, -0.439084,
		-0.449412, 0.211692, -0.867880,
		41.698765, 26.273569, 22.924559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.500023, 26.127636, 23.037502>,  <42.013351, 26.125385, 23.532076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.500023, 26.127636, 23.037502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.241146, 26.306038, 22.790203>,  <42.085819, 26.413078, 22.641825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.241146, 26.306038, 22.790203>,  <42.500023, 26.127636, 23.037502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.241146, 26.306038, 22.790203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757632, 0.466211, -0.456772,
		0.084512, -0.764021, -0.639633,
		-0.647187, 0.446004, -0.618247,
		42.046989, 26.439838, 22.604729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.694660, 26.073647, 22.287899>,  <42.500023, 26.127636, 23.037502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.694660, 26.073647, 22.287899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.460907, 26.397886, 22.303022>,  <42.320656, 26.592430, 22.312096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.460907, 26.397886, 22.303022>,  <42.694660, 26.073647, 22.287899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.460907, 26.397886, 22.303022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797922, 0.582475, -0.155063,
		-0.147715, -0.060448, -0.987181,
		-0.584381, 0.810598, 0.037807,
		42.285591, 26.641066, 22.314365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.991993, 26.563673, 21.800514>,  <42.694660, 26.073647, 22.287899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.991993, 26.563673, 21.800514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.760372, 26.788437, 22.036802>,  <42.621399, 26.923294, 22.178576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.760372, 26.788437, 22.036802>,  <42.991993, 26.563673, 21.800514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.760372, 26.788437, 22.036802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703308, 0.710760, 0.013327,
		-0.412374, 0.423177, -0.806765,
		-0.579056, 0.561908, 0.590723,
		42.586655, 26.957010, 22.214020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.053425, 27.275248, 21.526009>,  <42.991993, 26.563673, 21.800514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.053425, 27.275248, 21.526009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.934151, 27.280924, 21.907770>,  <42.862587, 27.284328, 22.136827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.934151, 27.280924, 21.907770>,  <43.053425, 27.275248, 21.526009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.934151, 27.280924, 21.907770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571319, 0.803652, 0.166549,
		-0.764645, 0.594930, -0.247743,
		-0.298184, 0.014189, 0.954403,
		42.844696, 27.285181, 22.194092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.641220, 27.842030, 21.689686>,  <43.053425, 27.275248, 21.526009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.641220, 27.842030, 21.689686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.877617, 27.705324, 21.981966>,  <43.019455, 27.623301, 22.157333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.877617, 27.705324, 21.981966>,  <42.641220, 27.842030, 21.689686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.877617, 27.705324, 21.981966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588384, 0.802294, -0.100638,
		-0.551840, 0.489408, 0.675242,
		0.590996, -0.341766, 0.730698,
		43.054916, 27.602795, 22.201176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.110577, 28.352411, 21.874821>,  <42.641220, 27.842030, 21.689686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.110577, 28.352411, 21.874821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.124905, 28.729784, 21.742970>,  <43.133499, 28.956207, 21.663858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.124905, 28.729784, 21.742970>,  <43.110577, 28.352411, 21.874821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.124905, 28.729784, 21.742970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997796, 0.015323, -0.064564,
		-0.055861, 0.331213, 0.941901,
		0.035817, 0.943432, -0.329627,
		43.135651, 29.012814, 21.644081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.547230, 28.690176, 22.118544>,  <43.110577, 28.352411, 21.874821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.547230, 28.690176, 22.118544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.588108, 28.973314, 21.838968>,  <42.612637, 29.143196, 21.671223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.588108, 28.973314, 21.838968>,  <42.547230, 28.690176, 22.118544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.588108, 28.973314, 21.838968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992112, 0.123798, -0.019692,
		0.072588, 0.695436, 0.714912,
		0.102199, 0.707844, -0.698937,
		42.618767, 29.185667, 21.629288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.178192, 29.217072, 22.355347>,  <42.547230, 28.690176, 22.118544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.178192, 29.217072, 22.355347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.196400, 29.270039, 21.959288>,  <42.207325, 29.301819, 21.721651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.196400, 29.270039, 21.959288>,  <42.178192, 29.217072, 22.355347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.196400, 29.270039, 21.959288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990644, -0.121676, -0.061811,
		-0.128662, 0.983698, 0.125640,
		0.045516, 0.132417, -0.990149,
		42.210056, 29.309763, 21.662243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.596458, 29.696270, 22.151171>,  <42.178192, 29.217072, 22.355347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.596458, 29.696270, 22.151171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.670383, 29.498505, 21.811430>,  <41.714737, 29.379845, 21.607586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.670383, 29.498505, 21.811430>,  <41.596458, 29.696270, 22.151171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.670383, 29.498505, 21.811430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971906, 0.036221, -0.232565,
		0.145748, 0.868471, -0.473831,
		0.184814, -0.494415, -0.849351,
		41.725826, 29.350180, 21.556625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286053, 30.074804, 21.567827>,  <41.596458, 29.696270, 22.151171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.286053, 30.074804, 21.567827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.301884, 29.694468, 21.444969>,  <41.311382, 29.466267, 21.371254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.301884, 29.694468, 21.444969>,  <41.286053, 30.074804, 21.567827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.301884, 29.694468, 21.444969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977862, 0.026352, -0.207584,
		0.205473, 0.308560, -0.928747,
		0.039578, -0.950840, -0.307144,
		41.313759, 29.409216, 21.352827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832798, 30.110554, 20.973669>,  <41.286053, 30.074804, 21.567827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832798, 30.110554, 20.973669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.889545, 29.723354, 21.056471>,  <40.923592, 29.491035, 21.106152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.889545, 29.723354, 21.056471>,  <40.832798, 30.110554, 20.973669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889545, 29.723354, 21.056471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978484, -0.168781, -0.118669,
		0.149810, -0.185717, -0.971116,
		0.141867, -0.967999, 0.207006,
		40.932106, 29.432955, 21.118572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.454906, 29.695747, 20.492254>,  <40.832798, 30.110554, 20.973669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.454906, 29.695747, 20.492254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.505131, 29.458895, 20.810654>,  <40.535263, 29.316784, 21.001694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.505131, 29.458895, 20.810654>,  <40.454906, 29.695747, 20.492254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.505131, 29.458895, 20.810654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951150, -0.299951, -0.073098,
		0.282045, -0.747937, -0.600867,
		0.125558, -0.592131, 0.796000,
		40.542797, 29.281256, 21.049454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024227, 29.192402, 20.345942>,  <40.454906, 29.695747, 20.492254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024227, 29.192402, 20.345942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.083241, 29.143114, 20.738482>,  <40.118649, 29.113543, 20.974007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.083241, 29.143114, 20.738482>,  <40.024227, 29.192402, 20.345942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083241, 29.143114, 20.738482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972979, -0.196257, 0.121638,
		0.177609, -0.972780, -0.148843,
		0.147538, -0.123217, 0.981351,
		40.127502, 29.106150, 21.032887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730808, 28.544025, 20.456089>,  <40.024227, 29.192402, 20.345942>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.730808, 28.544025, 20.456089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.749805, 28.738445, 20.805145>,  <39.761204, 28.855097, 21.014578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.749805, 28.738445, 20.805145>,  <39.730808, 28.544025, 20.456089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.749805, 28.738445, 20.805145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982366, -0.135431, 0.128900,
		0.180834, -0.863373, 0.471048,
		0.047494, 0.486051, 0.872639,
		39.764053, 28.884260, 21.066936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330353, 28.118881, 20.905075>,  <39.730808, 28.544025, 20.456089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330353, 28.118881, 20.905075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.350792, 28.473969, 21.088093>,  <39.363056, 28.687021, 21.197903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.350792, 28.473969, 21.088093>,  <39.330353, 28.118881, 20.905075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350792, 28.473969, 21.088093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990546, -0.013351, 0.136528,
		0.127307, -0.460195, 0.878643,
		0.051099, 0.887717, 0.457544,
		39.366123, 28.740284, 21.225357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932716, 27.997965, 21.481871>,  <39.330353, 28.118881, 20.905075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932716, 27.997965, 21.481871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.939743, 28.396383, 21.447041>,  <38.943958, 28.635435, 21.426142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.939743, 28.396383, 21.447041>,  <38.932716, 27.997965, 21.481871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939743, 28.396383, 21.447041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937017, 0.046784, 0.346136,
		0.348842, 0.075511, 0.934135,
		0.017566, 0.996047, -0.087075,
		38.945011, 28.695198, 21.420918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609295, 28.207558, 22.083988>,  <38.932716, 27.997965, 21.481871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609295, 28.207558, 22.083988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.577816, 28.517971, 21.833683>,  <38.558929, 28.704220, 21.683500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.577816, 28.517971, 21.833683>,  <38.609295, 28.207558, 22.083988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577816, 28.517971, 21.833683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959661, 0.110987, 0.258327,
		0.269922, 0.620848, 0.735995,
		-0.078696, 0.776034, -0.625762,
		38.554207, 28.750782, 21.645954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242527, 28.722282, 22.514797>,  <38.609295, 28.207558, 22.083988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242527, 28.722282, 22.514797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.182690, 28.846239, 22.139225>,  <38.146786, 28.920614, 21.913881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.182690, 28.846239, 22.139225>,  <38.242527, 28.722282, 22.514797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182690, 28.846239, 22.139225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974467, 0.114597, 0.193083,
		0.167433, 0.943840, 0.284837,
		-0.149598, 0.309893, -0.938928,
		38.137810, 28.939207, 21.857546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920296, 29.482830, 22.553438>,  <38.242527, 28.722282, 22.514797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920296, 29.482830, 22.553438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.846031, 29.336494, 22.188650>,  <37.801472, 29.248693, 21.969778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.846031, 29.336494, 22.188650>,  <37.920296, 29.482830, 22.553438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846031, 29.336494, 22.188650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928366, 0.369420, 0.040803,
		0.321973, 0.854218, -0.408221,
		-0.185660, -0.365841, -0.911970,
		37.790333, 29.226742, 21.915058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238007, 30.041576, 22.196356>,  <37.920296, 29.482830, 22.553438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238007, 30.041576, 22.196356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.185104, 30.415430, 22.328396>,  <38.153362, 30.639742, 22.407619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.185104, 30.415430, 22.328396>,  <38.238007, 30.041576, 22.196356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185104, 30.415430, 22.328396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927926, 0.233838, -0.290298,
		-0.348513, 0.267917, -0.898198,
		-0.132257, 0.934634, 0.330102,
		38.145428, 30.695820, 22.427427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407623, 30.541224, 21.619896>,  <38.238007, 30.041576, 22.196356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407623, 30.541224, 21.619896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.448681, 30.782310, 21.936426>,  <38.473316, 30.926964, 22.126345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.448681, 30.782310, 21.936426>,  <38.407623, 30.541224, 21.619896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448681, 30.782310, 21.936426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954093, 0.165374, -0.249714,
		-0.281372, 0.780629, -0.558076,
		0.102643, 0.602719, 0.791324,
		38.479473, 30.963127, 22.173824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725601, 31.112240, 21.374737>,  <38.407623, 30.541224, 21.619896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725601, 31.112240, 21.374737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.805756, 31.097719, 21.766354>,  <38.853848, 31.089006, 22.001324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.805756, 31.097719, 21.766354>,  <38.725601, 31.112240, 21.374737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805756, 31.097719, 21.766354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969723, 0.149725, -0.192926,
		-0.139584, 0.988061, 0.065205,
		0.200385, -0.036301, 0.979044,
		38.865871, 31.086828, 22.060066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082222, 31.757998, 21.492085>,  <38.725601, 31.112240, 21.374737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082222, 31.757998, 21.492085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.195889, 31.523705, 21.795708>,  <39.264088, 31.383129, 21.977882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.195889, 31.523705, 21.795708>,  <39.082222, 31.757998, 21.492085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195889, 31.523705, 21.795708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923024, 0.381306, -0.051307,
		-0.259382, 0.715209, 0.648997,
		0.284162, -0.585731, 0.759059,
		39.281136, 31.347984, 22.023426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618935, 32.121925, 21.706841>,  <39.082222, 31.757998, 21.492085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.618935, 32.121925, 21.706841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.678963, 31.774237, 21.895281>,  <39.714981, 31.565624, 22.008345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.678963, 31.774237, 21.895281>,  <39.618935, 32.121925, 21.706841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.678963, 31.774237, 21.895281> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962139, 0.238053, 0.132736,
		-0.227524, 0.433344, 0.872035,
		0.150070, -0.869220, 0.471100,
		39.723984, 31.513472, 22.036612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877419, 32.323383, 22.283056>,  <39.618935, 32.121925, 21.706841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877419, 32.323383, 22.283056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.992653, 31.946472, 22.214800>,  <40.061794, 31.720325, 22.173845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.992653, 31.946472, 22.214800>,  <39.877419, 32.323383, 22.283056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992653, 31.946472, 22.214800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943289, 0.248543, 0.220073,
		-0.164958, -0.224365, 0.960442,
		0.288088, -0.942277, -0.170642,
		40.079079, 31.663790, 22.163607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524071, 32.249352, 22.656528>,  <39.877419, 32.323383, 22.283056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524071, 32.249352, 22.656528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.534100, 31.927450, 22.419298>,  <40.540115, 31.734308, 22.276960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.534100, 31.927450, 22.419298>,  <40.524071, 32.249352, 22.656528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534100, 31.927450, 22.419298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986562, 0.115731, -0.115333,
		0.161453, -0.582214, 0.796844,
		0.025071, -0.804756, -0.593076,
		40.541622, 31.686024, 22.241375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.947193, 31.812603, 22.931507>,  <40.524071, 32.249352, 22.656528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.947193, 31.812603, 22.931507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.931892, 31.739199, 22.538597>,  <40.922710, 31.695156, 22.302851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.931892, 31.739199, 22.538597>,  <40.947193, 31.812603, 22.931507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931892, 31.739199, 22.538597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978362, 0.193144, -0.074182,
		0.203333, -0.963857, 0.172150,
		-0.038251, -0.183509, -0.982274,
		40.920418, 31.684147, 22.243916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.633907, 31.682585, 22.840864>,  <40.947193, 31.812603, 22.931507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.633907, 31.682585, 22.840864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.505775, 31.713179, 22.463179>,  <41.428898, 31.731535, 22.236567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.505775, 31.713179, 22.463179>,  <41.633907, 31.682585, 22.840864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.505775, 31.713179, 22.463179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920546, 0.260372, -0.291207,
		0.223575, -0.962474, -0.153811,
		-0.320327, 0.076483, -0.944214,
		41.409676, 31.736124, 22.179914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.100246, 31.289543, 22.407164>,  <41.633907, 31.682585, 22.840864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.100246, 31.289543, 22.407164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.920914, 31.559809, 22.173077>,  <41.813316, 31.721968, 22.032623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.920914, 31.559809, 22.173077>,  <42.100246, 31.289543, 22.407164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.920914, 31.559809, 22.173077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857473, 0.140167, -0.495068,
		-0.252471, -0.723762, -0.642204,
		-0.448328, 0.675663, -0.585219,
		41.786415, 31.762508, 21.997511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255005, 31.187366, 21.663097>,  <42.100246, 31.289543, 22.407164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255005, 31.187366, 21.663097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.142925, 31.571329, 21.659788>,  <42.075676, 31.801706, 21.657803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.142925, 31.571329, 21.659788>,  <42.255005, 31.187366, 21.663097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.142925, 31.571329, 21.659788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801467, 0.229188, -0.552380,
		-0.528337, -0.161408, -0.833551,
		-0.280199, 0.959906, -0.008275,
		42.058865, 31.859301, 21.657305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.353313, 31.420088, 21.025196>,  <42.255005, 31.187366, 21.663097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.353313, 31.420088, 21.025196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.336060, 31.769861, 21.218485>,  <42.325706, 31.979725, 21.334457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.336060, 31.769861, 21.218485>,  <42.353313, 31.420088, 21.025196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.336060, 31.769861, 21.218485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758274, 0.343578, -0.554053,
		-0.650508, 0.342517, -0.677881,
		-0.043133, 0.874435, 0.483222,
		42.323120, 32.032192, 21.363451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.268566, 31.407806, 22.722984> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480995, 31.533903, 23.037584>,  <34.608452, 31.609562, 23.226345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480995, 31.533903, 23.037584>,  <34.268566, 31.407806, 22.722984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480995, 31.533903, 23.037584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744142, 0.270400, -0.610849,
		-0.405236, 0.909673, -0.090984,
		0.531071, 0.315243, 0.786502,
		34.640316, 31.628475, 23.273535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704491, 31.990438, 22.583319>,  <34.268566, 31.407806, 22.722984>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704491, 31.990438, 22.583319> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873539, 31.894268, 22.932854>,  <34.974968, 31.836567, 23.142574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873539, 31.894268, 22.932854>,  <34.704491, 31.990438, 22.583319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873539, 31.894268, 22.932854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906102, 0.132597, -0.401744,
		-0.019279, 0.961569, 0.273887,
		0.422621, -0.240425, 0.873835,
		35.000324, 31.822140, 23.195004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299629, 32.185398, 22.488724>,  <34.704491, 31.990438, 22.583319>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299629, 32.185398, 22.488724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374630, 31.959589, 22.810259>,  <35.419628, 31.824102, 23.003180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374630, 31.959589, 22.810259>,  <35.299629, 32.185398, 22.488724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374630, 31.959589, 22.810259> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958059, -0.075451, -0.276461,
		0.216719, 0.821960, 0.526701,
		0.187500, -0.564525, 0.803838,
		35.430882, 31.790232, 23.051411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900856, 32.440666, 22.851154>,  <35.299629, 32.185398, 22.488724>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900856, 32.440666, 22.851154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866478, 32.061302, 22.973225>,  <35.845852, 31.833683, 23.046467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866478, 32.061302, 22.973225>,  <35.900856, 32.440666, 22.851154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866478, 32.061302, 22.973225> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922720, -0.191296, -0.334654,
		0.375768, 0.252830, 0.891558,
		-0.085940, -0.948411, 0.305174,
		35.840694, 31.776779, 23.064777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534721, 32.372448, 23.167479>,  <35.900856, 32.440666, 22.851154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534721, 32.372448, 23.167479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389164, 32.003555, 23.115211>,  <36.301830, 31.782221, 23.083851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389164, 32.003555, 23.115211>,  <36.534721, 32.372448, 23.167479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389164, 32.003555, 23.115211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827314, -0.255569, -0.500235,
		0.427936, -0.290139, 0.855973,
		-0.363898, -0.922228, -0.130669,
		36.279995, 31.726887, 23.076012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929996, 31.799763, 23.474504>,  <36.534721, 32.372448, 23.167479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929996, 31.799763, 23.474504> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732151, 31.593651, 23.194550>,  <36.613445, 31.469984, 23.026577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732151, 31.593651, 23.194550>,  <36.929996, 31.799763, 23.474504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732151, 31.593651, 23.194550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861734, -0.395471, -0.317832,
		-0.113012, -0.760321, 0.639641,
		-0.494614, -0.515281, -0.699887,
		36.583767, 31.439066, 22.984583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098370, 31.153229, 23.656778>,  <36.929996, 31.799763, 23.474504>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098370, 31.153229, 23.656778> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978523, 31.173016, 23.275667>,  <36.906616, 31.184887, 23.047001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978523, 31.173016, 23.275667>,  <37.098370, 31.153229, 23.656778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978523, 31.173016, 23.275667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859539, -0.419391, -0.292070,
		-0.414032, -0.906457, 0.083143,
		-0.299618, 0.049462, -0.952776,
		36.888638, 31.187855, 22.989834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339195, 30.474184, 23.534405>,  <37.098370, 31.153229, 23.656778>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339195, 30.474184, 23.534405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318474, 30.688530, 23.197319>,  <37.306042, 30.817137, 22.995068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318474, 30.688530, 23.197319>,  <37.339195, 30.474184, 23.534405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318474, 30.688530, 23.197319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955649, -0.218373, -0.197610,
		-0.289918, -0.815574, -0.500786,
		-0.051808, 0.535865, -0.842712,
		37.302933, 30.849289, 22.944506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517563, 30.041914, 22.976007>,  <37.339195, 30.474184, 23.534405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517563, 30.041914, 22.976007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592606, 30.411463, 22.842583>,  <37.637630, 30.633192, 22.762527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592606, 30.411463, 22.842583>,  <37.517563, 30.041914, 22.976007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592606, 30.411463, 22.842583> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961537, -0.242098, -0.129750,
		-0.200628, -0.296392, -0.933756,
		0.187604, 0.923872, -0.333564,
		37.648888, 30.688625, 22.742514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461910, 29.956158, 22.214407>,  <37.517563, 30.041914, 22.976007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461910, 29.956158, 22.214407> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427757, 29.639423, 21.972513>,  <37.407265, 29.449383, 21.827377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427757, 29.639423, 21.972513>,  <37.461910, 29.956158, 22.214407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427757, 29.639423, 21.972513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926307, 0.286635, -0.244532,
		0.366968, 0.539293, -0.757956,
		-0.085382, -0.791836, -0.604737,
		37.402142, 29.401873, 21.791092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163353, 30.210745, 21.553865>,  <37.461910, 29.956158, 22.214407>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163353, 30.210745, 21.553865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083347, 29.819389, 21.574841>,  <37.035343, 29.584576, 21.587425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083347, 29.819389, 21.574841>,  <37.163353, 30.210745, 21.553865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083347, 29.819389, 21.574841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950572, 0.180802, -0.252434,
		0.237497, -0.100338, -0.966192,
		-0.200018, -0.978388, 0.052439,
		37.023342, 29.525873, 21.590572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741802, 30.001030, 20.961914>,  <37.163353, 30.210745, 21.553865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741802, 30.001030, 20.961914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658482, 29.689528, 21.198608>,  <36.608490, 29.502626, 21.340626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658482, 29.689528, 21.198608>,  <36.741802, 30.001030, 20.961914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658482, 29.689528, 21.198608> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976728, 0.133995, -0.167476,
		0.051133, -0.612850, -0.788543,
		-0.208298, -0.778756, 0.591736,
		36.595993, 29.455900, 21.376129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234795, 29.699621, 20.651550>,  <36.741802, 30.001030, 20.961914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234795, 29.699621, 20.651550> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214272, 29.544077, 21.019497>,  <36.201958, 29.450750, 21.240265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214272, 29.544077, 21.019497>,  <36.234795, 29.699621, 20.651550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214272, 29.544077, 21.019497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998629, 0.010392, -0.051307,
		0.010392, -0.921238, -0.388860,
		0.051307, 0.388860, -0.919867,
		36.198879, 29.427420, 21.295458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758484, 29.188652, 20.640778>,  <36.234795, 29.699621, 20.651550>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758484, 29.188652, 20.640778> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771973, 29.268404, 21.032515>,  <35.780067, 29.316256, 21.267557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771973, 29.268404, 21.032515>,  <35.758484, 29.188652, 20.640778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771973, 29.268404, 21.032515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985842, -0.154403, 0.065383,
		0.164250, -0.967681, 0.191352,
		0.033725, 0.199382, 0.979341,
		35.782089, 29.328218, 21.326317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462612, 28.642824, 21.009886>,  <35.758484, 29.188652, 20.640778>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462612, 28.642824, 21.009886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434521, 28.968124, 21.240952>,  <35.417667, 29.163303, 21.379591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434521, 28.968124, 21.240952>,  <35.462612, 28.642824, 21.009886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434521, 28.968124, 21.240952> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940366, -0.247190, 0.233684,
		0.332836, -0.526805, 0.782110,
		-0.070224, 0.813249, 0.577664,
		35.413452, 29.212099, 21.414251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122593, 28.414209, 21.616266>,  <35.462612, 28.642824, 21.009886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122593, 28.414209, 21.616266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073544, 28.809505, 21.652815>,  <35.044113, 29.046682, 21.674744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073544, 28.809505, 21.652815>,  <35.122593, 28.414209, 21.616266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073544, 28.809505, 21.652815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896841, -0.149767, 0.416227,
		0.425016, -0.030904, 0.904658,
		-0.122625, 0.988238, 0.091369,
		35.036755, 29.105976, 21.680225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961720, 28.574495, 22.351765>,  <35.122593, 28.414209, 21.616266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961720, 28.574495, 22.351765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841206, 28.900400, 22.153620>,  <34.768898, 29.095943, 22.034733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841206, 28.900400, 22.153620>,  <34.961720, 28.574495, 22.351765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841206, 28.900400, 22.153620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903575, -0.078004, 0.421269,
		0.304594, 0.574522, 0.759702,
		-0.301288, 0.814764, -0.495364,
		34.750820, 29.144829, 22.005011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621063, 29.038456, 22.834755>,  <34.961720, 28.574495, 22.351765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621063, 29.038456, 22.834755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484829, 29.106241, 22.464830>,  <34.403088, 29.146912, 22.242876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484829, 29.106241, 22.464830>,  <34.621063, 29.038456, 22.834755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484829, 29.106241, 22.464830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939435, -0.101319, 0.327409,
		-0.038218, 0.980314, 0.193709,
		-0.340590, 0.169464, -0.924814,
		34.382652, 29.157080, 22.187386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073643, 29.526630, 22.944204>,  <34.621063, 29.038456, 22.834755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073643, 29.526630, 22.944204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005222, 29.375828, 22.580093>,  <33.964169, 29.285345, 22.361628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005222, 29.375828, 22.580093>,  <34.073643, 29.526630, 22.944204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005222, 29.375828, 22.580093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940446, -0.213000, 0.264939,
		-0.293773, 0.901385, -0.318122,
		-0.171052, -0.377008, -0.910278,
		33.953907, 29.262726, 22.307011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502895, 29.874989, 22.813812>,  <34.073643, 29.526630, 22.944204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502895, 29.874989, 22.813812> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489189, 29.572382, 22.552582>,  <33.480965, 29.390818, 22.395844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489189, 29.572382, 22.552582>,  <33.502895, 29.874989, 22.813812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489189, 29.572382, 22.552582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912570, -0.242750, 0.329073,
		-0.407484, 0.607253, -0.682056,
		-0.034261, -0.756516, -0.653077,
		33.478912, 29.345427, 22.356659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006721, 29.928623, 22.423523>,  <33.502895, 29.874989, 22.813812>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006721, 29.928623, 22.423523> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064835, 29.534023, 22.393291>,  <33.099701, 29.297264, 22.375153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064835, 29.534023, 22.393291>,  <33.006721, 29.928623, 22.423523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064835, 29.534023, 22.393291> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977879, -0.154792, 0.140686,
		-0.150484, 0.053458, -0.987166,
		0.145285, -0.986500, -0.075569,
		33.108418, 29.238073, 22.370617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495014, 29.702597, 21.957054>,  <33.006721, 29.928623, 22.423523>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495014, 29.702597, 21.957054> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599701, 29.377748, 22.165655>,  <32.662514, 29.182840, 22.290815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599701, 29.377748, 22.165655>,  <32.495014, 29.702597, 21.957054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599701, 29.377748, 22.165655> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938905, -0.339373, -0.057300,
		0.223518, -0.474645, -0.851323,
		0.261719, -0.812120, 0.521503,
		32.678215, 29.134113, 22.322105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114883, 29.170004, 21.737608>,  <32.495014, 29.702597, 21.957054>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114883, 29.170004, 21.737608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.240284, 29.007349, 22.080854>,  <32.315525, 28.909756, 22.286802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.240284, 29.007349, 22.080854>,  <32.114883, 29.170004, 21.737608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240284, 29.007349, 22.080854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914743, -0.371872, 0.157975,
		0.254870, -0.834480, -0.488553,
		0.313506, -0.406637, 0.858114,
		32.334335, 28.885357, 22.338289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.299156, 30.693222, 28.328529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.146553, 30.644480, 27.962009>,  <34.054989, 30.615234, 27.742098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.146553, 30.644480, 27.962009>,  <34.299156, 30.693222, 28.328529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146553, 30.644480, 27.962009> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923513, -0.092795, -0.372174,
		-0.039676, -0.988201, 0.147938,
		-0.381511, -0.121856, -0.916297,
		34.032101, 30.607924, 27.687120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581779, 29.961220, 28.007141>,  <34.299156, 30.693222, 28.328529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581779, 29.961220, 28.007141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.470085, 30.234438, 27.737185>,  <34.403069, 30.398369, 27.575211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.470085, 30.234438, 27.737185>,  <34.581779, 29.961220, 28.007141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470085, 30.234438, 27.737185> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898771, -0.061480, -0.434086,
		-0.337993, -0.727783, -0.596735,
		-0.279234, 0.683046, -0.674890,
		34.386314, 30.439352, 27.534718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737438, 29.661009, 27.419418>,  <34.581779, 29.961220, 28.007141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737438, 29.661009, 27.419418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.714512, 30.049021, 27.324966>,  <34.700756, 30.281828, 27.268295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.714512, 30.049021, 27.324966>,  <34.737438, 29.661009, 27.419418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714512, 30.049021, 27.324966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957515, -0.013546, -0.288064,
		-0.282629, -0.242606, -0.928043,
		-0.057314, 0.970030, -0.236128,
		34.697319, 30.340031, 27.254128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059528, 29.638241, 26.754574>,  <34.737438, 29.661009, 27.419418>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059528, 29.638241, 26.754574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.048447, 30.011848, 26.897032>,  <35.041798, 30.236013, 26.982506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.048447, 30.011848, 26.897032>,  <35.059528, 29.638241, 26.754574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048447, 30.011848, 26.897032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918730, 0.164188, -0.359134,
		-0.393913, 0.317251, -0.862661,
		-0.027704, 0.934021, 0.356144,
		35.040134, 30.292055, 27.003876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416130, 29.990105, 26.317112>,  <35.059528, 29.638241, 26.754574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416130, 29.990105, 26.317112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.417236, 30.249277, 26.621790>,  <35.417900, 30.404781, 26.804596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.417236, 30.249277, 26.621790>,  <35.416130, 29.990105, 26.317112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417236, 30.249277, 26.621790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965687, 0.196077, -0.170298,
		-0.259692, 0.736029, -0.625157,
		0.002765, 0.647931, 0.761694,
		35.418064, 30.443657, 26.850298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714405, 30.619371, 26.118225>,  <35.416130, 29.990105, 26.317112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714405, 30.619371, 26.118225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.796318, 30.606346, 26.509531>,  <35.845467, 30.598532, 26.744314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.796318, 30.606346, 26.509531>,  <35.714405, 30.619371, 26.118225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796318, 30.606346, 26.509531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953429, 0.232752, -0.191833,
		-0.221446, 0.971991, 0.078709,
		0.204779, -0.032563, 0.978266,
		35.857750, 30.596577, 26.803011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328590, 30.921614, 26.145275>,  <35.714405, 30.619371, 26.118225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328590, 30.921614, 26.145275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.282188, 30.857903, 26.537434>,  <36.254349, 30.819675, 26.772728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.282188, 30.857903, 26.537434>,  <36.328590, 30.921614, 26.145275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282188, 30.857903, 26.537434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990729, 0.051708, 0.125626,
		-0.070704, 0.985879, 0.151804,
		-0.116002, -0.159278, 0.980395,
		36.247387, 30.810120, 26.831553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556831, 31.563499, 26.467667>,  <36.328590, 30.921614, 26.145275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556831, 31.563499, 26.467667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.594826, 31.247683, 26.710188>,  <36.617622, 31.058193, 26.855701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.594826, 31.247683, 26.710188>,  <36.556831, 31.563499, 26.467667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594826, 31.247683, 26.710188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965080, 0.222397, 0.138423,
		-0.244131, 0.571985, 0.783092,
		0.094981, -0.789540, 0.606305,
		36.623322, 31.010820, 26.892078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138699, 31.710869, 26.997168>,  <36.556831, 31.563499, 26.467667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138699, 31.710869, 26.997168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.094536, 31.313829, 27.017387>,  <37.068039, 31.075605, 27.029518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.094536, 31.313829, 27.017387>,  <37.138699, 31.710869, 26.997168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094536, 31.313829, 27.017387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977587, -0.099285, 0.185650,
		-0.179258, 0.069912, 0.981315,
		-0.110409, -0.992600, 0.050548,
		37.061413, 31.016050, 27.032551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418545, 31.531872, 27.668530>,  <37.138699, 31.710869, 26.997168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418545, 31.531872, 27.668530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.410931, 31.186577, 27.466755>,  <37.406361, 30.979401, 27.345690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.410931, 31.186577, 27.466755>,  <37.418545, 31.531872, 27.668530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410931, 31.186577, 27.466755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953710, -0.167129, 0.250011,
		-0.300125, -0.476328, 0.826460,
		-0.019038, -0.863238, -0.504438,
		37.405220, 30.927605, 27.315424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847256, 31.081087, 28.044769>,  <37.418545, 31.531872, 27.668530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847256, 31.081087, 28.044769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.847504, 30.914942, 27.680906>,  <37.847652, 30.815254, 27.462589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.847504, 30.914942, 27.680906>,  <37.847256, 31.081087, 28.044769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847504, 30.914942, 27.680906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986227, -0.150200, 0.069251,
		-0.165395, -0.897170, 0.409549,
		0.000616, -0.415362, -0.909656,
		37.847687, 30.790333, 27.408009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260452, 30.606266, 28.145803>,  <37.847256, 31.081087, 28.044769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260452, 30.606266, 28.145803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.226349, 30.648228, 27.749475>,  <38.205887, 30.673405, 27.511679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.226349, 30.648228, 27.749475>,  <38.260452, 30.606266, 28.145803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226349, 30.648228, 27.749475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988246, -0.117743, -0.097505,
		-0.126891, -0.987487, -0.093633,
		-0.085260, 0.104905, -0.990821,
		38.200771, 30.679699, 27.452229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655956, 29.978395, 27.894194>,  <38.260452, 30.606266, 28.145803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655956, 29.978395, 27.894194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.657677, 30.275930, 27.626854>,  <38.658710, 30.454451, 27.466450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.657677, 30.275930, 27.626854>,  <38.655956, 29.978395, 27.894194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657677, 30.275930, 27.626854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983557, -0.123821, -0.131473,
		-0.180550, -0.656791, -0.732139,
		0.004304, 0.743837, -0.668347,
		38.658966, 30.499081, 27.426350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095497, 29.779633, 27.422297>,  <38.655956, 29.978395, 27.894194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095497, 29.779633, 27.422297> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.068333, 30.168781, 27.333836>,  <39.052032, 30.402271, 27.280760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.068333, 30.168781, 27.333836>,  <39.095497, 29.779633, 27.422297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068333, 30.168781, 27.333836> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960667, 0.003939, -0.277673,
		-0.269269, -0.231310, -0.934874,
		-0.067911, 0.972872, -0.221151,
		39.047958, 30.460644, 27.267490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897591, 29.272530, 26.885244>,  <39.095497, 29.779633, 27.422297>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897591, 29.272530, 26.885244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.970921, 28.992592, 26.609097>,  <39.014919, 28.824629, 26.443407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.970921, 28.992592, 26.609097>,  <38.897591, 29.272530, 26.885244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970921, 28.992592, 26.609097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876942, -0.433792, 0.206876,
		-0.444258, 0.567491, -0.693245,
		0.183324, -0.699842, -0.690373,
		39.025917, 28.782639, 26.401985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387440, 29.364613, 26.375175>,  <38.897591, 29.272530, 26.885244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387440, 29.364613, 26.375175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.500320, 28.981359, 26.355812>,  <38.568050, 28.751408, 26.344194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.500320, 28.981359, 26.355812>,  <38.387440, 29.364613, 26.375175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500320, 28.981359, 26.355812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923360, -0.284961, 0.257301,
		-0.260322, -0.027918, -0.965118,
		0.282204, -0.958133, -0.048403,
		38.584980, 28.693920, 26.341290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814030, 29.040173, 25.973862>,  <38.387440, 29.364613, 26.375175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814030, 29.040173, 25.973862> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.003941, 28.735256, 26.149815>,  <38.117886, 28.552305, 26.255386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.003941, 28.735256, 26.149815>,  <37.814030, 29.040173, 25.973862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003941, 28.735256, 26.149815> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879994, -0.403231, 0.251028,
		-0.013982, -0.506277, -0.862257,
		0.474778, -0.762292, 0.439883,
		38.146374, 28.506569, 26.281780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537289, 28.486801, 25.648306>,  <37.814030, 29.040173, 25.973862>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537289, 28.486801, 25.648306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.670330, 28.396864, 26.014654>,  <37.750156, 28.342901, 26.234463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.670330, 28.396864, 26.014654>,  <37.537289, 28.486801, 25.648306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670330, 28.396864, 26.014654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886396, -0.406115, 0.222201,
		0.321988, -0.885729, -0.334377,
		0.332605, -0.224844, 0.915871,
		37.770111, 28.329411, 26.289415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197124, 27.876139, 25.813719>,  <37.537289, 28.486801, 25.648306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197124, 27.876139, 25.813719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.327934, 28.016657, 26.164637>,  <37.406418, 28.100967, 26.375187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.327934, 28.016657, 26.164637>,  <37.197124, 27.876139, 25.813719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327934, 28.016657, 26.164637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877817, -0.230895, 0.419673,
		0.349993, -0.907347, 0.232865,
		0.327022, 0.351296, 0.877296,
		37.426041, 28.122046, 26.427826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138535, 27.296457, 26.283060>,  <37.197124, 27.876139, 25.813719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138535, 27.296457, 26.283060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.144981, 27.644960, 26.479284>,  <37.148849, 27.854063, 26.597019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.144981, 27.644960, 26.479284>,  <37.138535, 27.296457, 26.283060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144981, 27.644960, 26.479284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924920, -0.173384, 0.338321,
		0.379820, -0.459179, 0.803051,
		0.016114, 0.871259, 0.490559,
		37.149815, 27.906338, 26.626451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906178, 26.971317, 26.870970>,  <37.138535, 27.296457, 26.283060>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906178, 26.971317, 26.870970> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.858814, 27.368109, 26.888655>,  <36.830399, 27.606184, 26.899265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.858814, 27.368109, 26.888655>,  <36.906178, 26.971317, 26.870970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858814, 27.368109, 26.888655> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953968, -0.125998, 0.272156,
		0.275545, -0.009953, 0.961237,
		-0.118405, 0.991980, 0.044213,
		36.823292, 27.665703, 26.901918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605473, 27.082323, 27.521788>,  <36.906178, 26.971317, 26.870970>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605473, 27.082323, 27.521788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.533638, 27.402214, 27.292637>,  <36.490540, 27.594149, 27.155146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.533638, 27.402214, 27.292637>,  <36.605473, 27.082323, 27.521788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533638, 27.402214, 27.292637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983437, -0.131427, 0.124815,
		0.024526, 0.585804, 0.810081,
		-0.179584, 0.799725, -0.572878,
		36.479763, 27.642132, 27.120773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096577, 27.432352, 27.941523>,  <36.605473, 27.082323, 27.521788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096577, 27.432352, 27.941523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.089874, 27.603489, 27.580044>,  <36.085854, 27.706171, 27.363155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.089874, 27.603489, 27.580044>,  <36.096577, 27.432352, 27.941523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089874, 27.603489, 27.580044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990555, 0.115914, 0.073243,
		0.136088, 0.896391, 0.421857,
		-0.016755, 0.427841, -0.903699,
		36.084846, 27.731840, 27.308933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754734, 28.046642, 28.010939>,  <36.096577, 27.432352, 27.941523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754734, 28.046642, 28.010939> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.723816, 27.941908, 27.626133>,  <35.705265, 27.879068, 27.395250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.723816, 27.941908, 27.626133>,  <35.754734, 28.046642, 28.010939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723816, 27.941908, 27.626133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981113, 0.191587, 0.026680,
		0.177324, 0.945906, -0.271697,
		-0.077291, -0.261834, -0.962013,
		35.700630, 27.863358, 27.337528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270077, 28.470381, 27.798506>,  <35.754734, 28.046642, 28.010939>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270077, 28.470381, 27.798506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.276501, 28.198265, 27.505398>,  <35.280354, 28.034996, 27.329533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.276501, 28.198265, 27.505398>,  <35.270077, 28.470381, 27.798506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276501, 28.198265, 27.505398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994216, 0.066968, -0.083960,
		0.106190, 0.729879, -0.675278,
		0.016059, -0.680287, -0.732769,
		35.281319, 27.994179, 27.285566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931141, 28.731493, 27.258415>,  <35.270077, 28.470381, 27.798506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931141, 28.731493, 27.258415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.900166, 28.348267, 27.148058>,  <34.881580, 28.118332, 27.081842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.900166, 28.348267, 27.148058>,  <34.931141, 28.731493, 27.258415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900166, 28.348267, 27.148058> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995625, 0.059797, 0.071792,
		-0.052284, 0.280247, -0.958503,
		-0.077436, -0.958064, -0.275894,
		34.876934, 28.060848, 27.065290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447449, 28.646404, 26.669361>,  <34.931141, 28.731493, 27.258415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447449, 28.646404, 26.669361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.473843, 28.289984, 26.848991>,  <34.489681, 28.076132, 26.956770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.473843, 28.289984, 26.848991>,  <34.447449, 28.646404, 26.669361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473843, 28.289984, 26.848991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995122, -0.025691, 0.095251,
		-0.073336, -0.453169, -0.888403,
		0.065989, -0.891054, 0.449075,
		34.493641, 28.022667, 26.983715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127983, 28.151314, 26.178583>,  <34.447449, 28.646404, 26.669361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127983, 28.151314, 26.178583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.105965, 28.007229, 26.551081>,  <34.092754, 27.920778, 26.774580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.105965, 28.007229, 26.551081>,  <34.127983, 28.151314, 26.178583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105965, 28.007229, 26.551081> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977032, -0.172856, -0.124619,
		0.205861, -0.916715, -0.342425,
		-0.055050, -0.360214, 0.931244,
		34.089451, 27.899164, 26.830454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111874, 27.373775, 25.828451>,  <34.127983, 28.151314, 26.178583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111874, 27.373775, 25.828451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.990383, 27.120865, 25.543364>,  <33.917488, 26.969118, 25.372311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.990383, 27.120865, 25.543364>,  <34.111874, 27.373775, 25.828451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990383, 27.120865, 25.543364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949764, -0.260188, -0.173926,
		-0.075471, -0.729743, 0.679543,
		-0.303730, -0.632279, -0.712721,
		33.899265, 26.931181, 25.329548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501968, 26.741598, 25.887369>,  <34.111874, 27.373775, 25.828451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501968, 26.741598, 25.887369> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.360909, 26.734667, 25.513132>,  <34.276272, 26.730509, 25.288589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.360909, 26.734667, 25.513132>,  <34.501968, 26.741598, 25.887369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360909, 26.734667, 25.513132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891399, -0.310397, -0.330245,
		-0.284683, -0.950449, 0.124909,
		-0.352652, -0.017329, -0.935594,
		34.255112, 26.729469, 25.232454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701473, 26.043503, 25.526115>,  <34.501968, 26.741598, 25.887369>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701473, 26.043503, 25.526115> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.628319, 26.312508, 25.239262>,  <34.584427, 26.473911, 25.067150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.628319, 26.312508, 25.239262>,  <34.701473, 26.043503, 25.526115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628319, 26.312508, 25.239262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712257, -0.412166, -0.568163,
		-0.677675, -0.614691, -0.403623,
		-0.182885, 0.672513, -0.717133,
		34.573452, 26.514261, 25.024122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746830, 25.678171, 24.903379>,  <34.701473, 26.043503, 25.526115>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746830, 25.678171, 24.903379> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.778614, 26.060266, 24.789394>,  <34.797684, 26.289524, 24.721004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.778614, 26.060266, 24.789394>,  <34.746830, 25.678171, 24.903379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778614, 26.060266, 24.789394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696934, -0.257623, -0.669264,
		-0.712720, -0.145420, -0.686209,
		0.079459, 0.955240, -0.284961,
		34.802452, 26.346838, 24.703907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822975, 25.649273, 24.174139>,  <34.746830, 25.678171, 24.903379>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822975, 25.649273, 24.174139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.962894, 26.013571, 24.261940>,  <35.046848, 26.232149, 24.314621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.962894, 26.013571, 24.261940>,  <34.822975, 25.649273, 24.174139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962894, 26.013571, 24.261940> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787102, -0.158649, -0.596071,
		-0.508045, 0.381278, -0.772345,
		0.349801, 0.910746, 0.219504,
		35.067833, 26.286795, 24.327791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123493, 25.826715, 23.536543>,  <34.822975, 25.649273, 24.174139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123493, 25.826715, 23.536543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.274426, 26.072577, 23.813620>,  <35.364986, 26.220093, 23.979866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.274426, 26.072577, 23.813620>,  <35.123493, 25.826715, 23.536543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274426, 26.072577, 23.813620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924495, -0.206303, -0.320542,
		-0.054119, 0.761340, -0.646090,
		0.377332, 0.614654, 0.692691,
		35.387627, 26.256973, 24.021427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809818, 26.008444, 23.347729>,  <35.123493, 25.826715, 23.536543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809818, 26.008444, 23.347729> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.819420, 26.120750, 23.731520>,  <35.825180, 26.188133, 23.961794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.819420, 26.120750, 23.731520>,  <35.809818, 26.008444, 23.347729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819420, 26.120750, 23.731520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998047, -0.062095, -0.006796,
		0.057671, 0.957766, -0.281707,
		0.024002, 0.280765, 0.959476,
		35.826622, 26.204981, 24.019363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293388, 26.514669, 23.379051>,  <35.809818, 26.008444, 23.347729>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293388, 26.514669, 23.379051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.268581, 26.371130, 23.751585>,  <36.253696, 26.285007, 23.975105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.268581, 26.371130, 23.751585>,  <36.293388, 26.514669, 23.379051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268581, 26.371130, 23.751585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982122, -0.188110, -0.007085,
		0.177735, 0.914245, 0.364096,
		-0.062013, -0.358846, 0.931334,
		36.249977, 26.263475, 24.030985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900974, 26.782806, 23.710024>,  <36.293388, 26.514669, 23.379051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900974, 26.782806, 23.710024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.782646, 26.465137, 23.922356>,  <36.711647, 26.274536, 24.049755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.782646, 26.465137, 23.922356>,  <36.900974, 26.782806, 23.710024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782646, 26.465137, 23.922356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943821, -0.328677, 0.034247,
		0.147273, 0.511138, 0.846788,
		-0.295824, -0.794173, 0.530828,
		36.693897, 26.226885, 24.081604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320221, 26.774845, 24.294481>,  <36.900974, 26.782806, 23.710024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320221, 26.774845, 24.294481> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.200825, 26.395012, 24.256111>,  <37.129189, 26.167112, 24.233089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.200825, 26.395012, 24.256111>,  <37.320221, 26.774845, 24.294481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200825, 26.395012, 24.256111> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933911, -0.269875, -0.234473,
		0.196763, -0.159574, 0.967378,
		-0.298487, -0.949581, -0.095927,
		37.111279, 26.110138, 24.227333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897919, 26.393324, 24.526352>,  <37.320221, 26.774845, 24.294481>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897919, 26.393324, 24.526352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.690437, 26.089323, 24.369717>,  <37.565948, 25.906923, 24.275736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.690437, 26.089323, 24.369717>,  <37.897919, 26.393324, 24.526352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690437, 26.089323, 24.369717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841135, -0.371635, -0.392912,
		0.153087, -0.533184, 0.832033,
		-0.518707, -0.760002, -0.391587,
		37.534824, 25.861322, 24.252241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232677, 25.886793, 24.763407>,  <37.897919, 26.393324, 24.526352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232677, 25.886793, 24.763407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.056232, 25.704460, 24.454180>,  <37.950363, 25.595060, 24.268644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.056232, 25.704460, 24.454180>,  <38.232677, 25.886793, 24.763407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056232, 25.704460, 24.454180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851173, -0.485539, -0.199391,
		-0.284466, -0.745969, 0.602171,
		-0.441117, -0.455832, -0.773067,
		37.923897, 25.567711, 24.222260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585453, 25.202824, 24.727745>,  <38.232677, 25.886793, 24.763407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585453, 25.202824, 24.727745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.378925, 25.219730, 24.385605>,  <38.255009, 25.229874, 24.180321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.378925, 25.219730, 24.385605>,  <38.585453, 25.202824, 24.727745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378925, 25.219730, 24.385605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808229, -0.306187, -0.503007,
		-0.283156, -0.951033, 0.123933,
		-0.516323, 0.042264, -0.855351,
		38.224030, 25.232410, 24.129000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734573, 24.566555, 24.361643>,  <38.585453, 25.202824, 24.727745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734573, 24.566555, 24.361643> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.613319, 24.845352, 24.101702>,  <38.540565, 25.012630, 23.945736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.613319, 24.845352, 24.101702>,  <38.734573, 24.566555, 24.361643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613319, 24.845352, 24.101702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871222, -0.073603, -0.485341,
		-0.386109, -0.713292, -0.584922,
		-0.303138, 0.696991, -0.649854,
		38.522377, 25.054449, 23.906746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.709698, 28.515495, 21.736206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.844248, 28.598591, 22.103617>,  <31.924978, 28.648449, 22.324064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.844248, 28.598591, 22.103617>,  <31.709698, 28.515495, 21.736206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844248, 28.598591, 22.103617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925334, -0.108288, 0.363360,
		0.174949, -0.972172, 0.155801,
		0.336377, 0.207738, 0.918529,
		31.945162, 28.660912, 22.379175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438747, 27.967327, 22.089106>,  <31.709698, 28.515495, 21.736206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438747, 27.967327, 22.089106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.504478, 28.271326, 22.340630>,  <31.543917, 28.453726, 22.491545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.504478, 28.271326, 22.340630>,  <31.438747, 27.967327, 22.089106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.504478, 28.271326, 22.340630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910401, -0.128526, 0.393256,
		0.379692, -0.637092, 0.670782,
		0.164328, 0.759997, 0.628809,
		31.553778, 28.499325, 22.529272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139549, 27.652676, 22.709633>,  <31.438747, 27.967327, 22.089106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.139549, 27.652676, 22.709633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.172039, 28.047523, 22.764765>,  <31.191534, 28.284431, 22.797844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.172039, 28.047523, 22.764765>,  <31.139549, 27.652676, 22.709633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.172039, 28.047523, 22.764765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892155, 0.010354, 0.451610,
		0.444366, -0.159649, 0.881505,
		0.081226, 0.987119, 0.137831,
		31.196407, 28.343658, 22.806114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.881588, 27.744974, 23.340355>,  <31.139549, 27.652676, 22.709633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.881588, 27.744974, 23.340355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.867863, 28.098648, 23.154005>,  <30.859629, 28.310852, 23.042196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.867863, 28.098648, 23.154005>,  <30.881588, 27.744974, 23.340355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.867863, 28.098648, 23.154005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985295, 0.048142, 0.163937,
		0.167379, 0.464648, 0.869533,
		-0.034312, 0.884186, -0.465873,
		30.857569, 28.363903, 23.014244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.698645, 28.166763, 23.846968>,  <30.881588, 27.744974, 23.340355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.698645, 28.166763, 23.846968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.594351, 28.367222, 23.516909>,  <30.531775, 28.487497, 23.318872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.594351, 28.367222, 23.516909>,  <30.698645, 28.166763, 23.846968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.594351, 28.367222, 23.516909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878181, 0.231916, 0.418345,
		0.401018, 0.833706, 0.379630,
		-0.260734, 0.501148, -0.825147,
		30.516130, 28.517567, 23.269365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.432840, 28.842894, 24.119658>,  <30.698645, 28.166763, 23.846968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.432840, 28.842894, 24.119658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.283751, 28.784956, 23.753031>,  <30.194298, 28.750193, 23.533054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.283751, 28.784956, 23.753031>,  <30.432840, 28.842894, 24.119658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.283751, 28.784956, 23.753031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925887, 0.123764, 0.356953,
		0.061736, 0.981684, -0.180239,
		-0.372722, -0.144844, -0.916569,
		30.171934, 28.741503, 23.478060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.978468, 29.400194, 24.051460>,  <30.432840, 28.842894, 24.119658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.978468, 29.400194, 24.051460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.893867, 29.105932, 23.794065>,  <29.843107, 28.929375, 23.639629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.893867, 29.105932, 23.794065>,  <29.978468, 29.400194, 24.051460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.893867, 29.105932, 23.794065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960703, 0.035385, 0.275313,
		-0.179766, 0.676429, -0.714232,
		-0.211503, -0.735657, -0.643487,
		29.830416, 28.885235, 23.601019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.278419, 29.603518, 23.720154>,  <29.978468, 29.400194, 24.051460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.278419, 29.603518, 23.720154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.339731, 29.211740, 23.667700>,  <29.376518, 28.976673, 23.636229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.339731, 29.211740, 23.667700>,  <29.278419, 29.603518, 23.720154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.339731, 29.211740, 23.667700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920394, -0.189804, 0.341831,
		-0.359694, 0.068299, -0.930567,
		0.153279, -0.979444, -0.131133,
		29.385715, 28.917908, 23.628361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.735456, 29.338846, 23.314159>,  <29.278419, 29.603518, 23.720154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.735456, 29.338846, 23.314159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.880856, 29.025358, 23.515614>,  <28.968096, 28.837265, 23.636486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.880856, 29.025358, 23.515614>,  <28.735456, 29.338846, 23.314159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.880856, 29.025358, 23.515614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929311, -0.267214, 0.254909,
		-0.065198, -0.560695, -0.825452,
		0.363499, -0.783720, 0.503638,
		28.989904, 28.790241, 23.666704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.215837, 28.826277, 23.193636>,  <28.735456, 29.338846, 23.314159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.215837, 28.826277, 23.193636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.439665, 28.702518, 23.501183>,  <28.573961, 28.628263, 23.685711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.439665, 28.702518, 23.501183>,  <28.215837, 28.826277, 23.193636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.439665, 28.702518, 23.501183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818790, -0.350022, 0.455048,
		0.128331, -0.884171, -0.449191,
		0.559566, -0.309396, 0.768869,
		28.607534, 28.609699, 23.731844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.993996, 28.184671, 23.304037>,  <28.215837, 28.826277, 23.193636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.993996, 28.184671, 23.304037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.161934, 28.288586, 23.651886>,  <28.262697, 28.350933, 23.860596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.161934, 28.288586, 23.651886>,  <27.993996, 28.184671, 23.304037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.161934, 28.288586, 23.651886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832827, -0.270557, 0.482907,
		0.360734, -0.926990, 0.102763,
		0.419847, 0.259785, 0.869621,
		28.287888, 28.366522, 23.912773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.953712, 27.626110, 23.737488>,  <27.993996, 28.184671, 23.304037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.953712, 27.626110, 23.737488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.968069, 27.961124, 23.955568>,  <27.976683, 28.162134, 24.086416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.968069, 27.961124, 23.955568>,  <27.953712, 27.626110, 23.737488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.968069, 27.961124, 23.955568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826322, -0.281956, 0.487538,
		0.562053, -0.468009, 0.681956,
		0.035890, 0.837537, 0.545201,
		27.978836, 28.212385, 24.119129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.074430, 27.414190, 24.390104>,  <27.953712, 27.626110, 23.737488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.074430, 27.414190, 24.390104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.871105, 27.758018, 24.411095>,  <27.749109, 27.964315, 24.423689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.871105, 27.758018, 24.411095>,  <28.074430, 27.414190, 24.390104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.871105, 27.758018, 24.411095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748289, -0.471022, 0.467121,
		0.426242, 0.198176, 0.882635,
		-0.508313, 0.859572, 0.052476,
		27.718611, 28.015890, 24.426838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.059206, 27.086590, 25.058002>,  <28.074430, 27.414190, 24.390104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.059206, 27.086590, 25.058002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.006599, 27.354153, 25.350649>,  <27.975035, 27.514690, 25.526237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.006599, 27.354153, 25.350649>,  <28.059206, 27.086590, 25.058002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.006599, 27.354153, 25.350649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932418, -0.167125, 0.320414,
		0.336599, 0.724314, -0.601722,
		-0.131517, 0.668908, 0.731618,
		27.967144, 27.554825, 25.570135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.498194, 27.741997, 25.089777>,  <28.059206, 27.086590, 25.058002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.498194, 27.741997, 25.089777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.402058, 27.611204, 25.455360>,  <28.344376, 27.532728, 25.674709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.402058, 27.611204, 25.455360>,  <28.498194, 27.741997, 25.089777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.402058, 27.611204, 25.455360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959079, 0.065193, 0.275532,
		-0.149678, 0.942779, 0.297933,
		-0.240342, -0.326982, 0.913958,
		28.329954, 27.513109, 25.729548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.662222, 28.217285, 25.692024>,  <28.498194, 27.741997, 25.089777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.662222, 28.217285, 25.692024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.684395, 27.833878, 25.803860>,  <28.697699, 27.603832, 25.870962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.684395, 27.833878, 25.803860>,  <28.662222, 28.217285, 25.692024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.684395, 27.833878, 25.803860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992680, 0.082997, 0.087734,
		-0.107300, 0.272680, 0.956103,
		0.055430, -0.958518, 0.279590,
		28.701023, 27.546322, 25.887737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.197027, 28.231615, 26.009090>,  <28.662222, 28.217285, 25.692024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.197027, 28.231615, 26.009090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.133465, 27.838213, 25.974537>,  <29.095327, 27.602171, 25.953804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.133465, 27.838213, 25.974537>,  <29.197027, 28.231615, 26.009090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.133465, 27.838213, 25.974537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955551, -0.175215, 0.237111,
		-0.248337, -0.044868, 0.967634,
		-0.158905, -0.983507, -0.086386,
		29.085793, 27.543161, 25.948622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.523659, 27.873348, 26.621769>,  <29.197027, 28.231615, 26.009090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.523659, 27.873348, 26.621769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.486023, 27.610369, 26.322727>,  <29.463442, 27.452581, 26.143303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.486023, 27.610369, 26.322727>,  <29.523659, 27.873348, 26.621769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.486023, 27.610369, 26.322727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971435, -0.224952, 0.075567,
		-0.217856, -0.719137, 0.659834,
		-0.094088, -0.657448, -0.747602,
		29.457796, 27.413134, 26.098446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.964054, 27.298107, 26.794054>,  <29.523659, 27.873348, 26.621769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.964054, 27.298107, 26.794054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.921049, 27.217270, 26.404675>,  <29.895247, 27.168768, 26.171047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.921049, 27.217270, 26.404675>,  <29.964054, 27.298107, 26.794054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.921049, 27.217270, 26.404675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941639, -0.334852, -0.034482,
		-0.318992, -0.920343, 0.226300,
		-0.107512, -0.202094, -0.973447,
		29.888796, 27.156641, 26.112640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.165670, 26.630564, 26.639374>,  <29.964054, 27.298107, 26.794054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.165670, 26.630564, 26.639374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.205383, 26.797892, 26.278231>,  <30.229212, 26.898289, 26.061544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.205383, 26.797892, 26.278231>,  <30.165670, 26.630564, 26.639374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205383, 26.797892, 26.278231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898531, -0.427535, -0.099282,
		-0.427535, -0.801388, -0.418319,
		0.099282, 0.418319, -0.902858,
		30.235168, 26.923388, 26.007374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493641, 26.065998, 26.218391>,  <30.165670, 26.630564, 26.639374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.493641, 26.065998, 26.218391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.542458, 26.402172, 26.007195>,  <30.571749, 26.603876, 25.880476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.542458, 26.402172, 26.007195>,  <30.493641, 26.065998, 26.218391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.542458, 26.402172, 26.007195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965263, -0.224327, -0.133959,
		-0.231027, -0.493302, -0.838618,
		0.122043, 0.840435, -0.527992,
		30.579071, 26.654303, 25.848797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.744623, 25.912048, 25.631723>,  <30.493641, 26.065998, 26.218391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.744623, 25.912048, 25.631723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.849943, 26.297663, 25.646183>,  <30.913136, 26.529032, 25.654858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.849943, 26.297663, 25.646183>,  <30.744623, 25.912048, 25.631723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849943, 26.297663, 25.646183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933092, -0.244975, -0.263300,
		-0.244975, 0.103055, -0.964037,
		0.263300, 0.964037, 0.036147,
		30.928932, 26.586874, 25.657026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.181967, 26.093252, 25.021839>,  <30.744623, 25.912048, 25.631723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.181967, 26.093252, 25.021839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.259331, 26.408180, 25.256008>,  <31.305750, 26.597137, 25.396509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.259331, 26.408180, 25.256008>,  <31.181967, 26.093252, 25.021839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.259331, 26.408180, 25.256008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976406, -0.096047, -0.193410,
		-0.096047, 0.609017, -0.787320,
		0.193410, 0.787320, 0.585422,
		31.317354, 26.644377, 25.431635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.557323, 26.495850, 24.615051>,  <31.181967, 26.093252, 25.021839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.557323, 26.495850, 24.615051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.657803, 26.624298, 24.980297>,  <31.718090, 26.701366, 25.199446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.657803, 26.624298, 24.980297>,  <31.557323, 26.495850, 24.615051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.657803, 26.624298, 24.980297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967332, -0.116589, -0.225113,
		0.034171, 0.939835, -0.339916,
		0.251199, 0.321120, 0.913116,
		31.733162, 26.720634, 25.254232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096336, 26.889481, 24.524965>,  <31.557323, 26.495850, 24.615051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096336, 26.889481, 24.524965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.136311, 26.839556, 24.919819>,  <32.160297, 26.809601, 25.156731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.136311, 26.839556, 24.919819>,  <32.096336, 26.889481, 24.524965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136311, 26.839556, 24.919819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994820, -0.005984, -0.101473,
		0.018572, 0.992162, 0.123567,
		0.099939, -0.124812, 0.987134,
		32.166290, 26.802113, 25.215960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558846, 27.426178, 24.677486>,  <32.096336, 26.889481, 24.524965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558846, 27.426178, 24.677486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.584629, 27.175962, 24.988497>,  <32.600098, 27.025833, 25.175102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.584629, 27.175962, 24.988497>,  <32.558846, 27.426178, 24.677486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.584629, 27.175962, 24.988497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994909, 0.100769, -0.001409,
		-0.077469, 0.773659, 0.628849,
		0.064458, -0.625538, 0.777526,
		32.603966, 26.988300, 25.221754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043327, 27.746866, 25.080437>,  <32.558846, 27.426178, 24.677486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043327, 27.746866, 25.080437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.047470, 27.366871, 25.205280>,  <33.049953, 27.138874, 25.280186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.047470, 27.366871, 25.205280>,  <33.043327, 27.746866, 25.080437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047470, 27.366871, 25.205280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997048, 0.033557, 0.069068,
		-0.076088, 0.310470, 0.947533,
		0.010352, -0.949991, 0.312107,
		33.050575, 27.081873, 25.298912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546684, 27.761265, 25.569927>,  <33.043327, 27.746866, 25.080437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546684, 27.761265, 25.569927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.506367, 27.386101, 25.437162>,  <33.482174, 27.161003, 25.357504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.506367, 27.386101, 25.437162>,  <33.546684, 27.761265, 25.569927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506367, 27.386101, 25.437162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994836, -0.091030, -0.044892,
		0.011891, -0.334723, 0.942241,
		-0.100798, -0.937909, -0.331912,
		33.476128, 27.104729, 25.337589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456009, 27.450096, 26.296494>,  <33.546684, 27.761265, 25.569927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456009, 27.450096, 26.296494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.544884, 27.609129, 26.652597>,  <33.598209, 27.704548, 26.866261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.544884, 27.609129, 26.652597>,  <33.456009, 27.450096, 26.296494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544884, 27.609129, 26.652597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965972, 0.213767, 0.145612,
		-0.132415, -0.892318, 0.431548,
		0.222183, 0.397582, 0.890261,
		33.611538, 27.728403, 26.919676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038219, 26.926977, 26.698023>,  <33.456009, 27.450096, 26.296494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038219, 26.926977, 26.698023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.144512, 27.234486, 26.930704>,  <33.208286, 27.418991, 27.070312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.144512, 27.234486, 26.930704>,  <33.038219, 26.926977, 26.698023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144512, 27.234486, 26.930704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964015, 0.207012, 0.166795,
		0.007807, -0.605096, 0.796115,
		0.265732, 0.768769, 0.581706,
		33.224232, 27.465117, 27.105215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727604, 26.773575, 27.397301>,  <33.038219, 26.926977, 26.698023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727604, 26.773575, 27.397301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.795486, 27.166941, 27.371689>,  <32.836216, 27.402960, 27.356321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.795486, 27.166941, 27.371689>,  <32.727604, 26.773575, 27.397301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795486, 27.166941, 27.371689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936064, 0.181172, 0.301598,
		0.308196, 0.008753, 0.951283,
		0.169706, 0.983413, -0.064030,
		32.846397, 27.461964, 27.352480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534698, 27.012476, 28.108673>,  <32.727604, 26.773575, 27.397301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534698, 27.012476, 28.108673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.525723, 27.340868, 27.880466>,  <32.520336, 27.537903, 27.743542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.525723, 27.340868, 27.880466>,  <32.534698, 27.012476, 28.108673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525723, 27.340868, 27.880466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793033, 0.332870, 0.510193,
		0.608766, 0.463886, 0.643594,
		-0.022438, 0.820979, -0.570517,
		32.518990, 27.587162, 27.709311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488708, 27.678505, 28.589802>,  <32.534698, 27.012476, 28.108673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488708, 27.678505, 28.589802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.321301, 27.729132, 28.230064>,  <32.220856, 27.759508, 28.014221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.321301, 27.729132, 28.230064>,  <32.488708, 27.678505, 28.589802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321301, 27.729132, 28.230064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805365, 0.405995, 0.431921,
		0.419797, 0.905068, -0.067983,
		-0.418519, 0.126568, -0.899346,
		32.195744, 27.767101, 27.960260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204037, 28.491245, 28.579391>,  <32.488708, 27.678505, 28.589802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204037, 28.491245, 28.579391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.004452, 28.305519, 28.286694>,  <31.884701, 28.194084, 28.111074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.004452, 28.305519, 28.286694>,  <32.204037, 28.491245, 28.579391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004452, 28.305519, 28.286694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866238, 0.241994, 0.437117,
		-0.025882, 0.851969, -0.522952,
		-0.498961, -0.464314, -0.731744,
		31.854763, 28.166225, 28.067171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.634668, 28.911507, 28.559824>,  <32.204037, 28.491245, 28.579391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.634668, 28.911507, 28.559824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.543442, 28.581007, 28.353796>,  <31.488707, 28.382708, 28.230179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.543442, 28.581007, 28.353796>,  <31.634668, 28.911507, 28.559824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.543442, 28.581007, 28.353796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951921, 0.078095, 0.296220,
		-0.204528, 0.557863, -0.804336,
		-0.228065, -0.826250, -0.515070,
		31.475021, 28.333132, 28.199276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463623, 29.512066, 28.186913>,  <31.634668, 28.911507, 28.559824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463623, 29.512066, 28.186913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.442886, 29.906080, 28.252659>,  <31.430445, 30.142488, 28.292107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.442886, 29.906080, 28.252659>,  <31.463623, 29.512066, 28.186913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442886, 29.906080, 28.252659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796613, 0.140047, -0.588043,
		-0.602262, 0.100453, -0.791953,
		-0.051839, 0.985036, 0.164367,
		31.427334, 30.201591, 28.301970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.563284, 29.796661, 27.475157>,  <31.463623, 29.512066, 28.186913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.563284, 29.796661, 27.475157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.612392, 30.109045, 27.720118>,  <31.641857, 30.296474, 27.867094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.612392, 30.109045, 27.720118>,  <31.563284, 29.796661, 27.475157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.612392, 30.109045, 27.720118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692162, 0.374841, -0.616771,
		-0.711224, 0.499600, -0.494530,
		0.122769, 0.780957, 0.612400,
		31.649223, 30.343332, 27.903837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604366, 30.326160, 27.049627>,  <31.563284, 29.796661, 27.475157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604366, 30.326160, 27.049627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.770494, 30.419641, 27.401283>,  <31.870173, 30.475731, 27.612278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.770494, 30.419641, 27.401283>,  <31.604366, 30.326160, 27.049627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770494, 30.419641, 27.401283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807881, 0.349463, -0.474557,
		-0.418134, 0.907335, -0.043666,
		0.415322, 0.233705, 0.879141,
		31.895092, 30.489754, 27.665026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262012, 30.860655, 26.890478>,  <31.604366, 30.326160, 27.049627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262012, 30.860655, 26.890478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.342495, 30.752886, 27.267185>,  <32.390785, 30.688225, 27.493210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.342495, 30.752886, 27.267185>,  <32.262012, 30.860655, 26.890478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342495, 30.752886, 27.267185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957449, 0.257165, -0.130983,
		-0.206900, 0.928050, 0.309703,
		0.201204, -0.269425, 0.941768,
		32.402855, 30.672058, 27.549715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768448, 31.325214, 27.143448>,  <32.262012, 30.860655, 26.890478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768448, 31.325214, 27.143448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.787041, 31.009523, 27.388384>,  <32.798195, 30.820108, 27.535345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.787041, 31.009523, 27.388384>,  <32.768448, 31.325214, 27.143448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787041, 31.009523, 27.388384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998904, 0.040082, -0.024164,
		-0.005473, 0.612792, 0.790225,
		0.046481, -0.789227, 0.612340,
		32.800983, 30.772755, 27.572086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190849, 31.459620, 27.789795>,  <32.768448, 31.325214, 27.143448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190849, 31.459620, 27.789795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.179070, 31.071064, 27.695526>,  <33.172001, 30.837931, 27.638966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.179070, 31.071064, 27.695526>,  <33.190849, 31.459620, 27.789795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179070, 31.071064, 27.695526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995239, -0.006582, -0.097246,
		0.092912, -0.237412, 0.966955,
		-0.029451, -0.971387, -0.235670,
		33.170235, 30.779648, 27.624825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775093, 31.257854, 28.208033>,  <33.190849, 31.459620, 27.789795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775093, 31.257854, 28.208033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.688087, 30.966452, 27.948198>,  <33.635883, 30.791609, 27.792297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.688087, 30.966452, 27.948198>,  <33.775093, 31.257854, 28.208033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688087, 30.966452, 27.948198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975965, -0.171486, -0.134479,
		-0.013426, -0.663226, 0.748299,
		-0.217513, -0.728508, -0.649588,
		33.622833, 30.747900, 27.753323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.151646, 31.729073, 24.893543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.217672, 31.338087, 24.840902>,  <28.257288, 31.103497, 24.809317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.217672, 31.338087, 24.840902>,  <28.151646, 31.729073, 24.893543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.217672, 31.338087, 24.840902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979419, 0.146736, 0.138588,
		-0.116153, -0.151771, 0.981567,
		0.165065, -0.977463, -0.131603,
		28.267191, 31.044847, 24.801422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.586575, 31.425699, 25.412872>,  <28.151646, 31.729073, 24.893543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.586575, 31.425699, 25.412872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.644573, 31.206091, 25.083618>,  <28.679373, 31.074326, 24.886066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.644573, 31.206091, 25.083618>,  <28.586575, 31.425699, 25.412872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.644573, 31.206091, 25.083618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988900, 0.107697, 0.102365,
		0.032449, -0.828840, 0.558543,
		0.144998, -0.549022, -0.823135,
		28.688072, 31.041384, 24.836678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.192080, 30.968422, 25.612385>,  <28.586575, 31.425699, 25.412872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.192080, 30.968422, 25.612385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.161106, 30.980549, 25.213770>,  <29.142523, 30.987825, 24.974602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.161106, 30.980549, 25.213770>,  <29.192080, 30.968422, 25.612385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.161106, 30.980549, 25.213770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996211, 0.042045, -0.076128,
		0.039592, -0.998656, -0.033458,
		-0.077433, 0.030317, -0.996536,
		29.137877, 30.989643, 24.914808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.734583, 30.547703, 25.391848>,  <29.192080, 30.968422, 25.612385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.734583, 30.547703, 25.391848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.612774, 30.748428, 25.068008>,  <29.539688, 30.868864, 24.873705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.612774, 30.748428, 25.068008>,  <29.734583, 30.547703, 25.391848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.612774, 30.748428, 25.068008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948202, 0.079008, -0.307687,
		-0.090437, -0.861360, -0.499881,
		-0.304524, 0.501814, -0.809598,
		29.521418, 30.898972, 24.825129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.174866, 30.256962, 24.771160>,  <29.734583, 30.547703, 25.391848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.174866, 30.256962, 24.771160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.036533, 30.625313, 24.699179>,  <29.953535, 30.846323, 24.655989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.036533, 30.625313, 24.699179>,  <30.174866, 30.256962, 24.771160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.036533, 30.625313, 24.699179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854905, 0.230202, -0.464913,
		-0.386703, -0.314625, -0.866875,
		-0.345829, 0.920879, -0.179954,
		29.932785, 30.901577, 24.645193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261497, 30.404406, 24.083496>,  <30.174866, 30.256962, 24.771160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261497, 30.404406, 24.083496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.235224, 30.759539, 24.265678>,  <30.219460, 30.972618, 24.374989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.235224, 30.759539, 24.265678>,  <30.261497, 30.404406, 24.083496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.235224, 30.759539, 24.265678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856804, 0.284131, -0.430298,
		-0.511442, 0.361974, -0.779360,
		-0.065684, 0.887831, 0.455458,
		30.215519, 31.025888, 24.402315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671835, 30.765228, 23.624702>,  <30.261497, 30.404406, 24.083496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671835, 30.765228, 23.624702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.610420, 31.012054, 23.933418>,  <30.573572, 31.160151, 24.118649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.610420, 31.012054, 23.933418>,  <30.671835, 30.765228, 23.624702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610420, 31.012054, 23.933418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863165, 0.463954, -0.199230,
		-0.481012, 0.635593, -0.603862,
		-0.153535, 0.617065, 0.771789,
		30.564360, 31.197174, 24.164955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.879086, 31.384638, 23.406786>,  <30.671835, 30.765228, 23.624702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.879086, 31.384638, 23.406786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.901491, 31.436026, 23.802837>,  <30.914934, 31.466858, 24.040468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.901491, 31.436026, 23.802837>,  <30.879086, 31.384638, 23.406786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.901491, 31.436026, 23.802837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932120, 0.348648, -0.097967,
		-0.357793, 0.928407, -0.100220,
		0.056012, 0.128469, 0.990130,
		30.918295, 31.474567, 24.099876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324715, 32.080414, 23.545668>,  <30.879086, 31.384638, 23.406786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324715, 32.080414, 23.545668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.343983, 31.835489, 23.861328>,  <31.355543, 31.688536, 24.050724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.343983, 31.835489, 23.861328>,  <31.324715, 32.080414, 23.545668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343983, 31.835489, 23.861328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942310, 0.289877, 0.167401,
		-0.331257, 0.735560, 0.590949,
		0.048169, -0.612310, 0.789149,
		31.358433, 31.651796, 24.098072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754179, 32.409790, 23.954638>,  <31.324715, 32.080414, 23.545668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754179, 32.409790, 23.954638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.774832, 32.035999, 24.095541>,  <31.787224, 31.811724, 24.180082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.774832, 32.035999, 24.095541>,  <31.754179, 32.409790, 23.954638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774832, 32.035999, 24.095541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994281, 0.081122, 0.069463,
		-0.093487, 0.346656, 0.933322,
		0.051633, -0.934478, 0.352257,
		31.790321, 31.755655, 24.201218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244873, 32.473911, 24.424921>,  <31.754179, 32.409790, 23.954638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244873, 32.473911, 24.424921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.224712, 32.084217, 24.336983>,  <32.212616, 31.850401, 24.284220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.224712, 32.084217, 24.336983>,  <32.244873, 32.473911, 24.424921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224712, 32.084217, 24.336983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985949, -0.013433, -0.166505,
		0.159261, -0.225151, 0.961220,
		-0.050401, -0.974231, -0.219848,
		32.209591, 31.791948, 24.271029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.669647, 32.125134, 24.932785>,  <32.244873, 32.473911, 24.424921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.669647, 32.125134, 24.932785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.629128, 31.887617, 24.613497>,  <32.604816, 31.745108, 24.421925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.629128, 31.887617, 24.613497>,  <32.669647, 32.125134, 24.932785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629128, 31.887617, 24.613497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994853, -0.062471, -0.079781,
		-0.002493, -0.802193, 0.597059,
		-0.101298, -0.593787, -0.798220,
		32.598740, 31.709480, 24.374031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148567, 32.129757, 25.564554>,  <32.669647, 32.125134, 24.932785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148567, 32.129757, 25.564554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.217007, 32.487904, 25.729017>,  <33.258068, 32.702789, 25.827696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.217007, 32.487904, 25.729017>,  <33.148567, 32.129757, 25.564554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217007, 32.487904, 25.729017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883935, -0.044830, 0.465456,
		0.435185, -0.443073, 0.783773,
		0.171094, 0.895364, 0.411157,
		33.268333, 32.756512, 25.852364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154884, 32.064842, 26.275545>,  <33.148567, 32.129757, 25.564554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154884, 32.064842, 26.275545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.044003, 32.431160, 26.159288>,  <32.977474, 32.650951, 26.089535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.044003, 32.431160, 26.159288>,  <33.154884, 32.064842, 26.275545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044003, 32.431160, 26.159288> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882833, -0.123403, 0.453186,
		0.379161, 0.382212, 0.842704,
		-0.277205, 0.915798, -0.290640,
		32.960842, 32.705898, 26.072096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947166, 32.500248, 26.932510>,  <33.154884, 32.064842, 26.275545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947166, 32.500248, 26.932510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.775555, 32.657463, 26.607191>,  <32.672588, 32.751793, 26.411999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.775555, 32.657463, 26.607191>,  <32.947166, 32.500248, 26.932510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775555, 32.657463, 26.607191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889147, -0.025036, 0.456937,
		0.159233, 0.919180, 0.360213,
		-0.429026, 0.393041, -0.813299,
		32.646847, 32.775375, 26.363201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432846, 32.742619, 27.258398>,  <32.947166, 32.500248, 26.932510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432846, 32.742619, 27.258398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.315948, 32.801727, 26.880455>,  <32.245811, 32.837193, 26.653688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.315948, 32.801727, 26.880455>,  <32.432846, 32.742619, 27.258398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.315948, 32.801727, 26.880455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956343, -0.046453, 0.288530,
		-0.001255, 0.987930, 0.154895,
		-0.292242, 0.147771, -0.944859,
		32.228275, 32.846058, 26.596998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.216938, 33.369923, 27.270201>,  <32.432846, 32.742619, 27.258398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.216938, 33.369923, 27.270201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.053932, 33.180370, 26.957952>,  <31.956129, 33.066639, 26.770603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.053932, 33.180370, 26.957952>,  <32.216938, 33.369923, 27.270201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053932, 33.180370, 26.957952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905475, 0.098731, 0.412755,
		-0.118527, 0.875035, -0.469325,
		-0.407512, -0.473885, -0.780620,
		31.931679, 33.038204, 26.723766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618057, 33.822803, 27.115089>,  <32.216938, 33.369923, 27.270201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618057, 33.822803, 27.115089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.564169, 33.472179, 26.930271>,  <31.531836, 33.261803, 26.819380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.564169, 33.472179, 26.930271>,  <31.618057, 33.822803, 27.115089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564169, 33.472179, 26.930271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956432, -0.006854, 0.291873,
		-0.259012, 0.481238, -0.837450,
		-0.134720, -0.876563, -0.462047,
		31.523752, 33.209209, 26.791656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927891, 33.953846, 26.851723>,  <31.618057, 33.822803, 27.115089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.927891, 33.953846, 26.851723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.020393, 33.564762, 26.844112>,  <31.075895, 33.331314, 26.839546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.020393, 33.564762, 26.844112>,  <30.927891, 33.953846, 26.851723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020393, 33.564762, 26.844112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868698, -0.215254, 0.446127,
		-0.438046, -0.086641, -0.894767,
		0.231255, -0.972707, -0.019026,
		31.089769, 33.272949, 26.838406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.344557, 33.616714, 26.531982>,  <30.927891, 33.953846, 26.851723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.344557, 33.616714, 26.531982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.537130, 33.333485, 26.738611>,  <30.652674, 33.163548, 26.862589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.537130, 33.333485, 26.738611>,  <30.344557, 33.616714, 26.531982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537130, 33.333485, 26.738611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865343, -0.290324, 0.408526,
		-0.139293, -0.643692, -0.752501,
		0.481434, -0.708077, 0.516574,
		30.681561, 33.121063, 26.893583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.924677, 32.988628, 26.518009>,  <30.344557, 33.616714, 26.531982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.924677, 32.988628, 26.518009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.158197, 32.934334, 26.838196>,  <30.298309, 32.901756, 27.030308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.158197, 32.934334, 26.838196>,  <29.924677, 32.988628, 26.518009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.158197, 32.934334, 26.838196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811305, -0.135164, 0.568784,
		0.030989, -0.981481, -0.189034,
		0.583802, -0.135738, 0.800469,
		30.333338, 32.893612, 27.078337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.656210, 32.425415, 26.792171>,  <29.924677, 32.988628, 26.518009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.656210, 32.425415, 26.792171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.881983, 32.570461, 27.088800>,  <30.017447, 32.657490, 27.266777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.881983, 32.570461, 27.088800>,  <29.656210, 32.425415, 26.792171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.881983, 32.570461, 27.088800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730149, -0.199783, 0.653429,
		0.385094, -0.910275, 0.151996,
		0.564434, 0.362611, 0.741571,
		30.051313, 32.679245, 27.311272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.516689, 32.034927, 27.354992>,  <29.656210, 32.425415, 26.792171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.516689, 32.034927, 27.354992> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.655685, 32.365776, 27.531679>,  <29.739082, 32.564285, 27.637691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.655685, 32.365776, 27.531679>,  <29.516689, 32.034927, 27.354992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.655685, 32.365776, 27.531679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849734, 0.078580, 0.521323,
		0.396490, -0.556495, 0.730143,
		0.347489, 0.827126, 0.441716,
		29.759932, 32.613914, 27.664194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.364012, 31.917158, 28.064556>,  <29.516689, 32.034927, 27.354992>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.364012, 31.917158, 28.064556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.398577, 32.314785, 28.038128>,  <29.419315, 32.553360, 28.022270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.398577, 32.314785, 28.038128>,  <29.364012, 31.917158, 28.064556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.398577, 32.314785, 28.038128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667971, 0.107016, 0.736453,
		0.739154, -0.019505, 0.673255,
		0.086413, 0.994066, -0.066072,
		29.424501, 32.613007, 28.018307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.378410, 32.052738, 28.776228>,  <29.364012, 31.917158, 28.064556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.378410, 32.052738, 28.776228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.289633, 32.393047, 28.585680>,  <29.236366, 32.597233, 28.471352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.289633, 32.393047, 28.585680>,  <29.378410, 32.052738, 28.776228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.289633, 32.393047, 28.585680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769527, 0.147198, 0.621419,
		0.598806, 0.504499, 0.622023,
		-0.221944, 0.850773, -0.476368,
		29.223049, 32.648277, 28.442770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.160194, 32.544086, 29.343121>,  <29.378410, 32.052738, 28.776228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.160194, 32.544086, 29.343121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.027439, 32.722610, 29.010696>,  <28.947786, 32.829723, 28.811241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.027439, 32.722610, 29.010696>,  <29.160194, 32.544086, 29.343121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.027439, 32.722610, 29.010696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707966, 0.464372, 0.532112,
		0.623407, 0.764962, 0.161853,
		-0.331886, 0.446309, -0.831060,
		28.927874, 32.856503, 28.761379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.192623, 31.897816, 29.500330>,  <29.160194, 32.544086, 29.343121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.192623, 31.897816, 29.500330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.268425, 31.598562, 29.754694>,  <29.313906, 31.419010, 29.907312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.268425, 31.598562, 29.754694>,  <29.192623, 31.897816, 29.500330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268425, 31.598562, 29.754694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702021, -0.349566, -0.620460,
		0.686480, 0.564002, 0.458962,
		0.189503, -0.748134, 0.635911,
		29.325275, 31.374123, 29.945467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.918547, 31.835579, 29.418016>,  <29.192623, 31.897816, 29.500330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.918547, 31.835579, 29.418016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.796553, 31.484970, 29.566980>,  <29.723356, 31.274605, 29.656359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.796553, 31.484970, 29.566980>,  <29.918547, 31.835579, 29.418016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.796553, 31.484970, 29.566980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594662, -0.480712, -0.644432,
		0.743882, 0.024915, 0.667847,
		-0.304986, -0.876524, 0.372409,
		29.705057, 31.222013, 29.678703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495962, 31.584688, 29.532927>,  <29.918547, 31.835579, 29.418016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495962, 31.584688, 29.532927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.283724, 31.246653, 29.559132>,  <30.156382, 31.043831, 29.574854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.283724, 31.246653, 29.559132>,  <30.495962, 31.584688, 29.532927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.283724, 31.246653, 29.559132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601475, -0.429841, -0.673398,
		0.597242, -0.317897, 0.736372,
		-0.530594, -0.845091, 0.065512,
		30.124546, 30.993126, 29.578785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.899416, 31.085295, 29.812723>,  <30.495962, 31.584688, 29.532927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.899416, 31.085295, 29.812723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.614162, 30.921484, 29.585135>,  <30.443010, 30.823198, 29.448582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.614162, 30.921484, 29.585135>,  <30.899416, 31.085295, 29.812723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614162, 30.921484, 29.585135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700624, -0.388827, -0.598281,
		0.023779, -0.825290, 0.564209,
		-0.713134, -0.409525, -0.568972,
		30.400223, 30.798626, 29.414442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154749, 30.475996, 29.692450>,  <30.899416, 31.085295, 29.812723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154749, 30.475996, 29.692450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.863443, 30.501146, 29.419487>,  <30.688660, 30.516235, 29.255709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.863443, 30.501146, 29.419487>,  <31.154749, 30.475996, 29.692450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.863443, 30.501146, 29.419487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639899, -0.294013, -0.709989,
		-0.245275, -0.953731, 0.173887,
		-0.728264, 0.062872, -0.682406,
		30.644964, 30.520008, 29.214766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.198168, 29.842752, 29.442505>,  <31.154749, 30.475996, 29.692450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.198168, 29.842752, 29.442505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.040846, 30.095112, 29.174990>,  <30.946453, 30.246529, 29.014481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.040846, 30.095112, 29.174990>,  <31.198168, 29.842752, 29.442505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.040846, 30.095112, 29.174990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610048, -0.365141, -0.703217,
		-0.687860, -0.684572, -0.241267,
		-0.393306, 0.630900, -0.668787,
		30.922853, 30.284382, 28.974354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.936621, 29.458284, 28.746580>,  <31.198168, 29.842752, 29.442505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.936621, 29.458284, 28.746580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.018414, 29.844900, 28.684624>,  <31.067490, 30.076870, 28.647449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.018414, 29.844900, 28.684624>,  <30.936621, 29.458284, 28.746580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.018414, 29.844900, 28.684624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621763, -0.250461, -0.742078,
		-0.756041, 0.055436, -0.652173,
		0.204482, 0.966538, -0.154891,
		31.079758, 30.134861, 28.638157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949163, 29.017080, 28.193258>,  <30.936621, 29.458284, 28.746580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949163, 29.017080, 28.193258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.974701, 28.618902, 28.164930>,  <30.990023, 28.379995, 28.147934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.974701, 28.618902, 28.164930>,  <30.949163, 29.017080, 28.193258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974701, 28.618902, 28.164930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980507, -0.075783, 0.181280,
		-0.185821, 0.057867, -0.980878,
		0.063844, -0.995444, -0.070821,
		30.993855, 28.320269, 28.143684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.414268, 28.930748, 27.876129>,  <30.949163, 29.017080, 28.193258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.414268, 28.930748, 27.876129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.500919, 28.586714, 28.060877>,  <30.552910, 28.380293, 28.171726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.500919, 28.586714, 28.060877>,  <30.414268, 28.930748, 27.876129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.500919, 28.586714, 28.060877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975481, -0.209528, 0.067344,
		0.038853, -0.465133, -0.884388,
		0.216628, -0.860086, 0.461869,
		30.565908, 28.328688, 28.199438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.071404, 28.508595, 27.457291>,  <30.414268, 28.930748, 27.876129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.071404, 28.508595, 27.457291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.127274, 28.337152, 27.814342>,  <30.160795, 28.234287, 28.028574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.127274, 28.337152, 27.814342>,  <30.071404, 28.508595, 27.457291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.127274, 28.337152, 27.814342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970652, -0.237491, 0.037849,
		0.195770, -0.871719, -0.449200,
		0.139674, -0.428607, 0.892630,
		30.169176, 28.208570, 28.082130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.725430, 27.937950, 27.419983>,  <30.071404, 28.508595, 27.457291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.725430, 27.937950, 27.419983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.761187, 28.011042, 27.811619>,  <29.782640, 28.054895, 28.046600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.761187, 28.011042, 27.811619>,  <29.725430, 27.937950, 27.419983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.761187, 28.011042, 27.811619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983127, -0.141329, 0.116137,
		0.159596, -0.972952, 0.167012,
		0.089393, 0.182729, 0.979091,
		29.788004, 28.065861, 28.105347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.518509, 27.375324, 27.659040>,  <29.725430, 27.937950, 27.419983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.518509, 27.375324, 27.659040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.468626, 27.659115, 27.936483>,  <29.438696, 27.829390, 28.102949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.468626, 27.659115, 27.936483>,  <29.518509, 27.375324, 27.659040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.468626, 27.659115, 27.936483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979895, -0.197794, 0.026139,
		0.155737, -0.676405, 0.719877,
		-0.124707, 0.709475, 0.693609,
		29.431213, 27.871958, 28.144566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.053211, 27.070686, 28.164333>,  <29.518509, 27.375324, 27.659040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.053211, 27.070686, 28.164333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.022079, 27.466063, 28.216381>,  <29.003401, 27.703287, 28.247610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.022079, 27.466063, 28.216381>,  <29.053211, 27.070686, 28.164333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.022079, 27.466063, 28.216381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994095, -0.086842, 0.065076,
		0.075624, -0.124287, 0.989360,
		-0.077830, 0.988439, 0.130120,
		28.998730, 27.762594, 28.255417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.535450, 27.139208, 28.586843>,  <29.053211, 27.070686, 28.164333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.535450, 27.139208, 28.586843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.552729, 27.523685, 28.477858>,  <28.563095, 27.754372, 28.412466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.552729, 27.523685, 28.477858>,  <28.535450, 27.139208, 28.586843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.552729, 27.523685, 28.477858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974112, 0.101093, 0.202201,
		0.221899, 0.256678, 0.940679,
		0.043196, 0.961195, -0.272465,
		28.565687, 27.812044, 28.396118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.258095, 27.524323, 29.156139>,  <28.535450, 27.139208, 28.586843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.258095, 27.524323, 29.156139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.222057, 27.730177, 28.815075>,  <28.200434, 27.853689, 28.610435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.222057, 27.730177, 28.815075>,  <28.258095, 27.524323, 29.156139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.222057, 27.730177, 28.815075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971539, 0.142914, 0.188914,
		0.219079, 0.845414, 0.487113,
		-0.090095, 0.514637, -0.852662,
		28.195028, 27.884567, 28.559277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.986261, 28.271166, 29.257013>,  <28.258095, 27.524323, 29.156139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.986261, 28.271166, 29.257013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.896366, 28.183388, 28.877258>,  <27.842430, 28.130720, 28.649405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.896366, 28.183388, 28.877258>,  <27.986261, 28.271166, 29.257013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.896366, 28.183388, 28.877258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964819, 0.186542, 0.185271,
		0.136444, 0.957625, -0.253649,
		-0.224737, -0.219446, -0.949387,
		27.828945, 28.117554, 28.592442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<43.299923, 28.470272, 25.351189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.234772, 28.560049, 24.966877>,  <43.195683, 28.613916, 24.736290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.234772, 28.560049, 24.966877>,  <43.299923, 28.470272, 25.351189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.234772, 28.560049, 24.966877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481823, 0.831679, 0.275966,
		0.860999, 0.507873, -0.027318,
		-0.162876, 0.224444, -0.960779,
		43.185909, 28.627382, 24.678644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.301567, 29.130434, 24.957043>,  <43.299923, 28.470272, 25.351189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.301567, 29.130434, 24.957043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.117466, 28.995834, 24.628426>,  <43.007004, 28.915073, 24.431255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.117466, 28.995834, 24.628426>,  <43.301567, 29.130434, 24.957043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.117466, 28.995834, 24.628426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887640, 0.157529, 0.432758,
		-0.016206, 0.928414, -0.371195,
		-0.460253, -0.336501, -0.821544,
		42.979389, 28.894884, 24.381962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.822800, 29.562336, 24.850811>,  <43.301567, 29.130434, 24.957043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.822800, 29.562336, 24.850811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.687206, 29.239048, 24.658197>,  <42.605850, 29.045076, 24.542629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.687206, 29.239048, 24.658197>,  <42.822800, 29.562336, 24.850811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.687206, 29.239048, 24.658197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912076, 0.156827, 0.378844,
		-0.230671, 0.567616, -0.790318,
		-0.338981, -0.808219, -0.481534,
		42.585510, 28.996582, 24.513737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.076675, 29.683308, 24.476353>,  <42.822800, 29.562336, 24.850811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.076675, 29.683308, 24.476353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.131561, 29.294064, 24.550356>,  <42.164494, 29.060516, 24.594759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.131561, 29.294064, 24.550356>,  <42.076675, 29.683308, 24.476353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.131561, 29.294064, 24.550356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946037, -0.073385, 0.315640,
		-0.293575, -0.218336, -0.930668,
		0.137213, -0.973111, 0.185010,
		42.172726, 29.002131, 24.605860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.423279, 29.369621, 24.394432>,  <42.076675, 29.683308, 24.476353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.423279, 29.369621, 24.394432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.630978, 29.091022, 24.592535>,  <41.755596, 28.923862, 24.711397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.630978, 29.091022, 24.592535>,  <41.423279, 29.369621, 24.394432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.630978, 29.091022, 24.592535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771173, -0.132084, 0.622772,
		-0.368343, -0.705299, -0.605703,
		0.519245, -0.696496, 0.495256,
		41.786751, 28.882074, 24.741112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951244, 28.956284, 24.626162>,  <41.423279, 29.369621, 24.394432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.951244, 28.956284, 24.626162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.236290, 28.828508, 24.876005>,  <41.407318, 28.751844, 25.025911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.236290, 28.828508, 24.876005>,  <40.951244, 28.956284, 24.626162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.236290, 28.828508, 24.876005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691748, -0.171614, 0.701451,
		-0.116875, -0.931940, -0.343262,
		0.712618, -0.319433, 0.624611,
		41.450077, 28.732677, 25.063389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770287, 28.267279, 24.841719>,  <40.951244, 28.956284, 24.626162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770287, 28.267279, 24.841719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.009949, 28.449347, 25.105183>,  <41.153748, 28.558588, 25.263262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.009949, 28.449347, 25.105183>,  <40.770287, 28.267279, 24.841719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.009949, 28.449347, 25.105183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655755, -0.193004, 0.729887,
		0.459347, -0.869235, 0.182842,
		0.599154, 0.455171, 0.658661,
		41.189693, 28.585897, 25.302780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.730167, 27.748121, 25.449329>,  <40.770287, 28.267279, 24.841719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.730167, 27.748121, 25.449329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.855110, 28.103479, 25.583900>,  <40.930077, 28.316694, 25.664642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.855110, 28.103479, 25.583900>,  <40.730167, 27.748121, 25.449329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.855110, 28.103479, 25.583900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765315, 0.025526, 0.643150,
		0.562785, -0.458365, 0.687877,
		0.312356, 0.888397, 0.336428,
		40.948818, 28.369999, 25.684830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850079, 27.720451, 26.218706>,  <40.730167, 27.748121, 25.449329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.850079, 27.720451, 26.218706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.770878, 28.095873, 26.105635>,  <40.723358, 28.321127, 26.037792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.770878, 28.095873, 26.105635>,  <40.850079, 27.720451, 26.218706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.770878, 28.095873, 26.105635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834158, -0.009893, 0.551437,
		0.514758, 0.344987, 0.784862,
		-0.198003, 0.938556, -0.282681,
		40.711475, 28.377439, 26.020830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493992, 27.984463, 26.778397>,  <40.850079, 27.720451, 26.218706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.493992, 27.984463, 26.778397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.418472, 28.258020, 26.496506>,  <40.373161, 28.422155, 26.327372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.418472, 28.258020, 26.496506>,  <40.493992, 27.984463, 26.778397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418472, 28.258020, 26.496506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907787, 0.152161, 0.390857,
		0.374538, 0.713535, 0.592105,
		-0.188794, 0.683896, -0.704728,
		40.361835, 28.463190, 26.285088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136772, 28.577906, 27.069292>,  <40.493992, 27.984463, 26.778397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136772, 28.577906, 27.069292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.060463, 28.594236, 26.676977>,  <40.014679, 28.604034, 26.441589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.060463, 28.594236, 26.676977>,  <40.136772, 28.577906, 27.069292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060463, 28.594236, 26.676977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973053, 0.123959, 0.194426,
		0.129514, 0.991447, 0.016078,
		-0.190770, 0.040826, -0.980785,
		40.003231, 28.606483, 26.382742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606880, 29.164110, 26.915344>,  <40.136772, 28.577906, 27.069292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606880, 29.164110, 26.915344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.545261, 28.889730, 26.630882>,  <39.508289, 28.725103, 26.460205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.545261, 28.889730, 26.630882>,  <39.606880, 29.164110, 26.915344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545261, 28.889730, 26.630882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965452, -0.048600, 0.256009,
		-0.210172, 0.726025, -0.654764,
		-0.154047, -0.685949, -0.711156,
		39.499046, 28.683947, 26.417536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.405514, 29.848965, 26.674963>,  <39.606880, 29.164110, 26.915344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.405514, 29.848965, 26.674963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.394890, 30.219036, 26.826405>,  <39.388515, 30.441078, 26.917271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.394890, 30.219036, 26.826405>,  <39.405514, 29.848965, 26.674963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394890, 30.219036, 26.826405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795570, 0.248890, -0.552379,
		-0.605279, 0.286533, -0.742655,
		-0.026564, 0.925177, 0.378605,
		39.386921, 30.496590, 26.939985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611885, 30.331417, 26.110086>,  <39.405514, 29.848965, 26.674963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.611885, 30.331417, 26.110086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.686440, 30.519567, 26.455111>,  <39.731171, 30.632458, 26.662125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.686440, 30.519567, 26.455111>,  <39.611885, 30.331417, 26.110086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686440, 30.519567, 26.455111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924702, 0.212638, -0.315770,
		-0.331943, 0.856465, -0.395324,
		0.186385, 0.470375, 0.862559,
		39.742355, 30.660681, 26.713879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652969, 31.052280, 25.956697>,  <39.611885, 30.331417, 26.110086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652969, 31.052280, 25.956697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.845993, 31.002209, 26.303446>,  <39.961807, 30.972166, 26.511496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.845993, 31.002209, 26.303446>,  <39.652969, 31.052280, 25.956697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845993, 31.002209, 26.303446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828027, 0.387817, -0.404931,
		-0.285499, 0.913197, 0.290795,
		0.482557, -0.125179, 0.866873,
		39.990761, 30.964655, 26.563507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079247, 31.577805, 25.963877>,  <39.652969, 31.052280, 25.956697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079247, 31.577805, 25.963877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.246876, 31.343216, 26.241129>,  <40.347454, 31.202463, 26.407480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.246876, 31.343216, 26.241129>,  <40.079247, 31.577805, 25.963877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.246876, 31.343216, 26.241129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907858, 0.259803, -0.329083,
		0.012920, 0.767174, 0.641308,
		0.419077, -0.586469, 0.693129,
		40.372601, 31.167274, 26.449068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483368, 31.999086, 26.509247>,  <40.079247, 31.577805, 25.963877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483368, 31.999086, 26.509247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.626858, 31.625734, 26.513670>,  <40.712952, 31.401724, 26.516323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.626858, 31.625734, 26.513670>,  <40.483368, 31.999086, 26.509247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.626858, 31.625734, 26.513670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915815, 0.349632, -0.197588,
		0.180559, 0.081006, 0.980223,
		0.358723, -0.933379, 0.011057,
		40.734474, 31.345720, 26.516987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.168980, 32.193439, 26.520119>,  <40.483368, 31.999086, 26.509247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.168980, 32.193439, 26.520119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.181118, 31.799440, 26.452156>,  <41.188400, 31.563042, 26.411379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.181118, 31.799440, 26.452156>,  <41.168980, 32.193439, 26.520119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.181118, 31.799440, 26.452156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924577, 0.092247, -0.369659,
		0.379785, -0.145872, 0.913501,
		0.030345, -0.984993, -0.169904,
		41.190220, 31.503942, 26.401184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.639767, 31.958811, 26.973822>,  <41.168980, 32.193439, 26.520119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.639767, 31.958811, 26.973822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.608593, 31.728230, 26.648458>,  <41.589890, 31.589882, 26.453241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.608593, 31.728230, 26.648458>,  <41.639767, 31.958811, 26.973822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.608593, 31.728230, 26.648458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996244, -0.075904, -0.041660,
		-0.037726, -0.813598, 0.580203,
		-0.077934, -0.576452, -0.813406,
		41.585213, 31.555294, 26.404436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.284554, 31.649593, 26.997913>,  <41.639767, 31.958811, 26.973822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.284554, 31.649593, 26.997913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.152718, 31.543423, 26.635494>,  <42.073616, 31.479721, 26.418043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.152718, 31.543423, 26.635494>,  <42.284554, 31.649593, 26.997913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.152718, 31.543423, 26.635494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930289, 0.072392, -0.359615,
		0.161042, -0.961409, 0.223065,
		-0.329589, -0.265428, -0.906046,
		42.053841, 31.463795, 26.363680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.625526, 31.135595, 26.743422>,  <42.284554, 31.649593, 26.997913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.625526, 31.135595, 26.743422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.505276, 31.309788, 26.404015>,  <42.433125, 31.414303, 26.200371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.505276, 31.309788, 26.404015>,  <42.625526, 31.135595, 26.743422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.505276, 31.309788, 26.404015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936341, -0.034404, -0.349403,
		-0.181351, -0.899540, -0.397416,
		-0.300629, 0.435482, -0.848515,
		42.415089, 31.440432, 26.149460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.916943, 30.769350, 26.228083>,  <42.625526, 31.135595, 26.743422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.916943, 30.769350, 26.228083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.815182, 31.118280, 26.061071>,  <42.754124, 31.327639, 25.960865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.815182, 31.118280, 26.061071>,  <42.916943, 30.769350, 26.228083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.815182, 31.118280, 26.061071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876339, 0.025333, -0.481027,
		-0.409034, -0.488271, -0.770897,
		-0.254401, 0.872324, -0.417529,
		42.738861, 31.379978, 25.935812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.331940, 30.827951, 25.610847>,  <42.916943, 30.769350, 26.228083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.331940, 30.827951, 25.610847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.171089, 31.192604, 25.644829>,  <43.074577, 31.411396, 25.665218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.171089, 31.192604, 25.644829>,  <43.331940, 30.827951, 25.610847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.171089, 31.192604, 25.644829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805789, 0.396437, -0.439933,
		-0.434737, -0.108455, -0.894003,
		-0.402129, 0.911633, 0.084954,
		43.050449, 31.466093, 25.670315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.485153, 31.086296, 25.030159>,  <43.331940, 30.827951, 25.610847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.485153, 31.086296, 25.030159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.422764, 31.417189, 25.246071>,  <43.385330, 31.615725, 25.375618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.422764, 31.417189, 25.246071>,  <43.485153, 31.086296, 25.030159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.422764, 31.417189, 25.246071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772172, 0.442895, -0.455625,
		-0.615973, 0.345738, -0.707843,
		-0.155973, 0.827230, 0.539781,
		43.375973, 31.665358, 25.408005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.570377, 31.632715, 24.565601>,  <43.485153, 31.086296, 25.030159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.570377, 31.632715, 24.565601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.612198, 31.768713, 24.939440>,  <43.637291, 31.850311, 25.163744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.612198, 31.768713, 24.939440>,  <43.570377, 31.632715, 24.565601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.612198, 31.768713, 24.939440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927165, 0.306635, -0.215268,
		-0.359770, 0.889033, -0.283171,
		0.104551, 0.339994, 0.934598,
		43.643562, 31.870710, 25.219820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.050327, 32.119644, 24.444843>,  <43.570377, 31.632715, 24.565601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.050327, 32.119644, 24.444843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.075863, 32.061787, 24.839811>,  <44.091187, 32.027073, 25.076792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.075863, 32.061787, 24.839811>,  <44.050327, 32.119644, 24.444843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.075863, 32.061787, 24.839811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947929, 0.318142, -0.014685,
		-0.312016, 0.936944, 0.157422,
		0.063841, -0.144643, 0.987422,
		44.095016, 32.018394, 25.136038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.387180, 32.700264, 24.842459>,  <44.050327, 32.119644, 24.444843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.387180, 32.700264, 24.842459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.459618, 32.366203, 25.050201>,  <44.503082, 32.165768, 25.174847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.459618, 32.366203, 25.050201>,  <44.387180, 32.700264, 24.842459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.459618, 32.366203, 25.050201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946693, 0.291091, 0.137981,
		-0.266415, 0.466681, 0.843346,
		0.181097, -0.835149, 0.519355,
		44.513947, 32.115658, 25.206007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.794006, 33.156315, 24.450579>,  <44.387180, 32.700264, 24.842459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.794006, 33.156315, 24.450579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.397507, 33.105026, 24.438028>,  <43.159607, 33.074253, 24.430498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.397507, 33.105026, 24.438028>,  <43.794006, 33.156315, 24.450579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.397507, 33.105026, 24.438028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041370, 0.527475, -0.848563,
		0.125352, -0.839839, -0.528164,
		-0.991249, -0.128220, -0.031376,
		43.100132, 33.066559, 24.428616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.308624, 33.445740, 23.999155>,  <43.794006, 33.156315, 24.450579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.308624, 33.445740, 23.999155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.096481, 33.289459, 23.698206>,  <42.969196, 33.195690, 23.517635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.096481, 33.289459, 23.698206>,  <43.308624, 33.445740, 23.999155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.096481, 33.289459, 23.698206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844427, 0.322210, 0.427929,
		0.075229, 0.862283, -0.500809,
		-0.530361, -0.390704, -0.752375,
		42.937374, 33.172249, 23.472494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.998333, 34.000671, 23.799591>,  <43.308624, 33.445740, 23.999155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.998333, 34.000671, 23.799591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.797882, 33.684956, 23.657661>,  <42.677612, 33.495525, 23.572504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.797882, 33.684956, 23.657661>,  <42.998333, 34.000671, 23.799591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.797882, 33.684956, 23.657661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858680, 0.504435, 0.090637,
		0.107446, 0.350099, -0.930530,
		-0.501123, -0.789289, -0.354822,
		42.647545, 33.448170, 23.551214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.469685, 34.351269, 23.308455>,  <42.998333, 34.000671, 23.799591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.469685, 34.351269, 23.308455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.350842, 33.976868, 23.383951>,  <42.279533, 33.752228, 23.429249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.350842, 33.976868, 23.383951>,  <42.469685, 34.351269, 23.308455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.350842, 33.976868, 23.383951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928995, 0.329045, 0.169406,
		-0.220669, -0.125007, -0.967305,
		-0.297110, -0.936003, 0.188741,
		42.261707, 33.696068, 23.440573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.816383, 34.273602, 23.067537>,  <42.469685, 34.351269, 23.308455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.816383, 34.273602, 23.067537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.830944, 33.969486, 23.326963>,  <41.839680, 33.787018, 23.482618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.830944, 33.969486, 23.326963>,  <41.816383, 34.273602, 23.067537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.830944, 33.969486, 23.326963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992155, 0.050173, 0.114500,
		-0.119594, -0.647643, -0.752500,
		0.036400, -0.760290, 0.648563,
		41.841866, 33.741398, 23.521532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.137077, 33.895420, 22.927292>,  <41.816383, 34.273602, 23.067537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.137077, 33.895420, 22.927292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.279743, 33.767078, 23.278254>,  <41.365345, 33.690071, 23.488831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.279743, 33.767078, 23.278254>,  <41.137077, 33.895420, 22.927292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.279743, 33.767078, 23.278254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915362, 0.067777, 0.396885,
		-0.186813, -0.944698, -0.269529,
		0.356669, -0.320860, 0.877403,
		41.386745, 33.670822, 23.541475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.611916, 33.342838, 23.137318>,  <41.137077, 33.895420, 22.927292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.611916, 33.342838, 23.137318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.809330, 33.484394, 23.455105>,  <40.927780, 33.569328, 23.645777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.809330, 33.484394, 23.455105>,  <40.611916, 33.342838, 23.137318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809330, 33.484394, 23.455105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862149, 0.078785, 0.500491,
		0.114528, -0.931962, 0.343991,
		0.493540, 0.353892, 0.794468,
		40.957394, 33.590561, 23.693445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.457825, 32.898220, 23.717911>,  <40.611916, 33.342838, 23.137318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.457825, 32.898220, 23.717911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.575623, 33.247738, 23.872709>,  <40.646301, 33.457447, 23.965588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.575623, 33.247738, 23.872709>,  <40.457825, 32.898220, 23.717911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.575623, 33.247738, 23.872709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778822, -0.015237, 0.627060,
		0.553816, -0.486063, 0.676040,
		0.294490, 0.873791, 0.386995,
		40.663971, 33.509876, 23.988808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309002, 32.860573, 24.490429>,  <40.457825, 32.898220, 23.717911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309002, 32.860573, 24.490429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.350258, 33.239964, 24.370590>,  <40.375011, 33.467598, 24.298687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.350258, 33.239964, 24.370590>,  <40.309002, 32.860573, 24.490429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350258, 33.239964, 24.370590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709341, 0.281285, 0.646308,
		0.697279, 0.145859, 0.701802,
		0.103137, 0.948474, -0.299598,
		40.381199, 33.524506, 24.280710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327126, 33.244217, 25.124577>,  <40.309002, 32.860573, 24.490429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.327126, 33.244217, 25.124577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.231274, 33.492554, 24.826012>,  <40.173763, 33.641556, 24.646873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.231274, 33.492554, 24.826012>,  <40.327126, 33.244217, 25.124577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231274, 33.492554, 24.826012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844981, 0.245234, 0.475254,
		0.478105, 0.744587, 0.465838,
		-0.239629, 0.620846, -0.746410,
		40.159386, 33.678806, 24.602089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882133, 33.726437, 25.567177>,  <40.327126, 33.244217, 25.124577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882133, 33.726437, 25.567177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.844013, 33.826324, 25.181730>,  <39.821140, 33.886257, 24.950462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.844013, 33.826324, 25.181730>,  <39.882133, 33.726437, 25.567177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844013, 33.826324, 25.181730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929127, 0.325110, 0.176145,
		0.357268, 0.912110, 0.201035,
		-0.095305, 0.249718, -0.963617,
		39.815422, 33.901241, 24.892645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664307, 34.317677, 25.647371>,  <39.882133, 33.726437, 25.567177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664307, 34.317677, 25.647371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.558739, 34.188450, 25.283838>,  <39.495399, 34.110912, 25.065720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.558739, 34.188450, 25.283838>,  <39.664307, 34.317677, 25.647371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558739, 34.188450, 25.283838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962184, 0.154059, 0.224650,
		0.067437, 0.933753, -0.351509,
		-0.263921, -0.323066, -0.908831,
		39.479561, 34.091530, 25.011189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312065, 34.879021, 25.395609>,  <39.664307, 34.317677, 25.647371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312065, 34.879021, 25.395609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.208691, 34.531528, 25.226601>,  <39.146667, 34.323032, 25.125196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.208691, 34.531528, 25.226601>,  <39.312065, 34.879021, 25.395609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208691, 34.531528, 25.226601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918301, 0.085141, 0.386619,
		-0.299894, 0.487914, -0.819759,
		-0.258431, -0.868730, -0.422518,
		39.131161, 34.270908, 25.099846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702694, 34.998833, 24.859991>,  <39.312065, 34.879021, 25.395609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702694, 34.998833, 24.859991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.692917, 34.602634, 24.914145>,  <38.687050, 34.364918, 24.946636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.692917, 34.602634, 24.914145>,  <38.702694, 34.998833, 24.859991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692917, 34.602634, 24.914145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999666, 0.025349, 0.004998,
		-0.008383, -0.135219, -0.990780,
		-0.024440, -0.990491, 0.135386,
		38.685585, 34.305489, 24.954760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153599, 34.780994, 24.453217>,  <38.702694, 34.998833, 24.859991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153599, 34.780994, 24.453217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.222385, 34.472630, 24.698532>,  <38.263657, 34.287609, 24.845722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.222385, 34.472630, 24.698532>,  <38.153599, 34.780994, 24.453217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222385, 34.472630, 24.698532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985076, -0.139142, 0.101319,
		0.007226, -0.621559, -0.783334,
		0.171970, -0.770911, 0.613288,
		38.273975, 34.241356, 24.882519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816708, 34.245899, 24.241249>,  <38.153599, 34.780994, 24.453217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816708, 34.245899, 24.241249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.846882, 34.141178, 24.626118>,  <37.864986, 34.078346, 24.857038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.846882, 34.141178, 24.626118>,  <37.816708, 34.245899, 24.241249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846882, 34.141178, 24.626118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996343, -0.058604, 0.062171,
		0.040111, -0.963341, -0.265263,
		0.075438, -0.261800, 0.962169,
		37.869514, 34.062637, 24.914768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323402, 33.721577, 24.272104>,  <37.816708, 34.245899, 24.241249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323402, 33.721577, 24.272104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.384247, 33.844948, 24.647707>,  <37.420753, 33.918972, 24.873068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.384247, 33.844948, 24.647707>,  <37.323402, 33.721577, 24.272104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384247, 33.844948, 24.647707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975641, -0.105082, 0.192565,
		0.158065, -0.945426, 0.284930,
		0.152115, 0.308427, 0.939007,
		37.429882, 33.937477, 24.929409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016941, 33.178974, 24.702133>,  <37.323402, 33.721577, 24.272104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016941, 33.178974, 24.702133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.053085, 33.492840, 24.947454>,  <37.074772, 33.681160, 25.094646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.053085, 33.492840, 24.947454>,  <37.016941, 33.178974, 24.702133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053085, 33.492840, 24.947454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888442, -0.214753, 0.405650,
		0.450008, -0.581535, 0.677724,
		0.090357, 0.784664, 0.613301,
		37.080193, 33.728237, 25.131445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792995, 33.010159, 25.562283>,  <37.016941, 33.178974, 24.702133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792995, 33.010159, 25.562283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.765030, 33.405704, 25.509745>,  <36.748249, 33.643032, 25.478222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.765030, 33.405704, 25.509745>,  <36.792995, 33.010159, 25.562283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765030, 33.405704, 25.509745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865104, 0.005453, 0.501563,
		0.496695, 0.148696, 0.855093,
		-0.069918, 0.988868, -0.131346,
		36.744053, 33.702366, 25.470341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522133, 33.291046, 26.190655>,  <36.792995, 33.010159, 25.562283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522133, 33.291046, 26.190655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.442509, 33.555122, 25.900959>,  <36.394733, 33.713566, 25.727140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.442509, 33.555122, 25.900959>,  <36.522133, 33.291046, 26.190655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442509, 33.555122, 25.900959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972275, -0.040516, 0.230306,
		0.122702, 0.750007, 0.649950,
		-0.199065, 0.660188, -0.724241,
		36.382790, 33.753178, 25.683687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895412, 33.626156, 26.484720>,  <36.522133, 33.291046, 26.190655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895412, 33.626156, 26.484720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.902779, 33.781075, 26.116013>,  <35.907200, 33.874027, 25.894787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.902779, 33.781075, 26.116013>,  <35.895412, 33.626156, 26.484720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902779, 33.781075, 26.116013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999653, 0.024482, -0.009687,
		0.018815, 0.921629, 0.387615,
		0.018418, 0.387298, -0.921771,
		35.908302, 33.897263, 25.839481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488380, 34.403599, 26.398178>,  <35.895412, 33.626156, 26.484720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488380, 34.403599, 26.398178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.499420, 34.186073, 26.062677>,  <35.506046, 34.055557, 25.861378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.499420, 34.186073, 26.062677>,  <35.488380, 34.403599, 26.398178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499420, 34.186073, 26.062677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999205, -0.039152, -0.007497,
		-0.028762, 0.838290, -0.544465,
		0.027601, -0.543817, -0.838750,
		35.507702, 34.022926, 25.811052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875751, 34.489819, 26.008007>,  <35.488380, 34.403599, 26.398178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875751, 34.489819, 26.008007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.978840, 34.153522, 25.817543>,  <35.040695, 33.951744, 25.703264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.978840, 34.153522, 25.817543>,  <34.875751, 34.489819, 26.008007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978840, 34.153522, 25.817543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965981, -0.235134, -0.107671,
		-0.021438, 0.487712, -0.872741,
		0.257723, -0.840743, -0.476162,
		35.056156, 33.901299, 25.674694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558945, 34.466419, 25.318722>,  <34.875751, 34.489819, 26.008007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558945, 34.466419, 25.318722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.649597, 34.090702, 25.421778>,  <34.703987, 33.865273, 25.483610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.649597, 34.090702, 25.421778>,  <34.558945, 34.466419, 25.318722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649597, 34.090702, 25.421778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967723, -0.247089, -0.049588,
		0.110237, -0.238084, -0.964968,
		0.226627, -0.939288, 0.257638,
		34.717587, 33.808914, 25.499069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190777, 33.895588, 24.849373>,  <34.558945, 34.466419, 25.318722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190777, 33.895588, 24.849373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.300125, 33.688030, 25.173351>,  <34.365734, 33.563496, 25.367739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.300125, 33.688030, 25.173351>,  <34.190777, 33.895588, 24.849373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300125, 33.688030, 25.173351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894842, -0.446088, 0.016242,
		0.352880, -0.729215, -0.586278,
		0.273375, -0.518895, 0.809947,
		34.382137, 33.532360, 25.416336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888912, 33.306526, 24.752487>,  <34.190777, 33.895588, 24.849373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888912, 33.306526, 24.752487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.966843, 33.290352, 25.144489>,  <34.013603, 33.280647, 25.379690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.966843, 33.290352, 25.144489>,  <33.888912, 33.306526, 24.752487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966843, 33.290352, 25.144489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842024, -0.519314, 0.145971,
		0.503027, -0.853626, -0.135226,
		0.194830, -0.040436, 0.980003,
		34.025291, 33.278221, 25.438490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710953, 32.647808, 24.949717>,  <33.888912, 33.306526, 24.752487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710953, 32.647808, 24.949717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.705585, 32.839668, 25.300659>,  <33.702366, 32.954784, 25.511225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.705585, 32.839668, 25.300659>,  <33.710953, 32.647808, 24.949717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705585, 32.839668, 25.300659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878393, -0.424889, 0.218850,
		0.477751, -0.767724, 0.427028,
		-0.013423, 0.479654, 0.877355,
		33.701557, 32.983566, 25.563866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383347, 31.947475, 24.850307>,  <33.710953, 32.647808, 24.949717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383347, 31.947475, 24.850307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.186718, 31.733732, 24.575260>,  <33.068741, 31.605486, 24.410233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.186718, 31.733732, 24.575260>,  <33.383347, 31.947475, 24.850307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186718, 31.733732, 24.575260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865202, -0.389371, -0.315936,
		-0.098915, -0.750233, 0.653732,
		-0.491570, -0.534360, -0.687618,
		33.039246, 31.573423, 24.368975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527054, 31.201275, 24.971436>,  <33.383347, 31.947475, 24.850307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527054, 31.201275, 24.971436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.497726, 31.340748, 24.597689>,  <33.480129, 31.424433, 24.373440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.497726, 31.340748, 24.597689>,  <33.527054, 31.201275, 24.971436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497726, 31.340748, 24.597689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991258, -0.077566, -0.106729,
		-0.109689, -0.934025, -0.339949,
		-0.073319, 0.348684, -0.934368,
		33.475731, 31.445353, 24.317379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931473, 30.776291, 24.459497>,  <33.527054, 31.201275, 24.971436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931473, 30.776291, 24.459497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.880871, 31.129009, 24.277758>,  <33.850510, 31.340639, 24.168713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.880871, 31.129009, 24.277758>,  <33.931473, 30.776291, 24.459497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880871, 31.129009, 24.277758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973549, 0.022520, -0.227367,
		-0.190259, -0.471098, -0.861318,
		-0.126509, 0.881793, -0.454352,
		33.842918, 31.393547, 24.141453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212673, 30.699780, 23.824972>,  <33.931473, 30.776291, 24.459497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212673, 30.699780, 23.824972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.197792, 31.099031, 23.844383>,  <34.188866, 31.338583, 23.856030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.197792, 31.099031, 23.844383>,  <34.212673, 30.699780, 23.824972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197792, 31.099031, 23.844383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835408, 0.057709, -0.546592,
		-0.548370, 0.020205, -0.835992,
		-0.037200, 0.998129, 0.048525,
		34.186630, 31.398470, 23.858940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370041, 30.902584, 23.216761>,  <34.212673, 30.699780, 23.824972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370041, 30.902584, 23.216761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.390888, 31.265442, 23.383791>,  <34.403397, 31.483156, 23.484009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.390888, 31.265442, 23.383791>,  <34.370041, 30.902584, 23.216761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390888, 31.265442, 23.383791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774460, 0.227271, -0.590390,
		-0.630472, 0.354168, -0.690702,
		0.052121, 0.907146, 0.417577,
		34.406525, 31.537586, 23.509064>
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
