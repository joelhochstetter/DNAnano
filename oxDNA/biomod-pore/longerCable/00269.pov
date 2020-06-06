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
	<24.108339, 34.833382, 34.878345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.454493, 34.789242, 35.073868>,  <24.662184, 34.762756, 35.191181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.454493, 34.789242, 35.073868>,  <24.108339, 34.833382, 34.878345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.454493, 34.789242, 35.073868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482468, -0.080104, -0.872243,
		0.135410, 0.990659, -0.016079,
		0.865383, -0.110353, 0.488808,
		24.714108, 34.756134, 35.220509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.754652, 35.289280, 34.745014>,  <24.108339, 34.833382, 34.878345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.754652, 35.289280, 34.745014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.848841, 34.904587, 34.801048>,  <24.905354, 34.673771, 34.834667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.848841, 34.904587, 34.801048>,  <24.754652, 35.289280, 34.745014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.848841, 34.904587, 34.801048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201671, -0.092650, -0.975061,
		0.950727, 0.257850, 0.172137,
		0.235471, -0.961732, 0.140085,
		24.919481, 34.616066, 34.843075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.493519, 34.985966, 34.536533>,  <24.754652, 35.289280, 34.745014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.493519, 34.985966, 34.536533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.218613, 34.699322, 34.488972>,  <25.053669, 34.527336, 34.460434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.218613, 34.699322, 34.488972>,  <25.493519, 34.985966, 34.536533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.218613, 34.699322, 34.488972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321593, -0.153388, -0.934371,
		0.651338, -0.680402, 0.335874,
		-0.687267, -0.716607, -0.118905,
		25.012432, 34.484341, 34.453300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.900566, 34.358425, 34.253433>,  <25.493519, 34.985966, 34.536533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.900566, 34.358425, 34.253433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.513262, 34.315910, 34.162945>,  <25.280880, 34.290401, 34.108650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.513262, 34.315910, 34.162945>,  <25.900566, 34.358425, 34.253433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.513262, 34.315910, 34.162945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232895, -0.055067, -0.970942,
		0.090741, -0.992809, 0.078073,
		-0.968259, -0.106287, -0.226223,
		25.222784, 34.284023, 34.095078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.930099, 33.788113, 33.904877>,  <25.900566, 34.358425, 34.253433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.930099, 33.788113, 33.904877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.572327, 33.942539, 33.814590>,  <25.357664, 34.035194, 33.760418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.572327, 33.942539, 33.814590>,  <25.930099, 33.788113, 33.904877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.572327, 33.942539, 33.814590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240866, -0.009375, -0.970513,
		-0.376801, -0.922422, -0.084605,
		-0.894430, 0.386068, -0.225713,
		25.303997, 34.058361, 33.746876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.462284, 33.396553, 33.488304>,  <25.930099, 33.788113, 33.904877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.462284, 33.396553, 33.488304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.365873, 33.779190, 33.422768>,  <25.308027, 34.008770, 33.383446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.365873, 33.779190, 33.422768>,  <25.462284, 33.396553, 33.488304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.365873, 33.779190, 33.422768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068687, -0.185205, -0.980297,
		-0.968085, -0.225024, 0.110344,
		-0.241027, 0.956590, -0.163838,
		25.293566, 34.066166, 33.373615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.799652, 33.610069, 33.268677>,  <25.462284, 33.396553, 33.488304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.799652, 33.610069, 33.268677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.048893, 33.878250, 33.107563>,  <25.198437, 34.039158, 33.010895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.048893, 33.878250, 33.107563>,  <24.799652, 33.610069, 33.268677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.048893, 33.878250, 33.107563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217215, -0.346387, -0.912597,
		-0.751373, 0.656133, -0.070202,
		0.623102, 0.670452, -0.402787,
		25.235825, 34.079384, 32.986729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.427481, 33.734665, 32.697838>,  <24.799652, 33.610069, 33.268677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.427481, 33.734665, 32.697838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.824800, 33.780514, 32.692009>,  <25.063192, 33.808025, 32.688511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.824800, 33.780514, 32.692009>,  <24.427481, 33.734665, 32.697838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.824800, 33.780514, 32.692009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056812, -0.594321, -0.802219,
		-0.100618, 0.796017, -0.596852,
		0.993302, 0.114627, -0.014576,
		25.122791, 33.814903, 32.687637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.648333, 33.824177, 32.063988>,  <24.427481, 33.734665, 32.697838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.648333, 33.824177, 32.063988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.960424, 33.679832, 32.268349>,  <25.147680, 33.593227, 32.390965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.960424, 33.679832, 32.268349>,  <24.648333, 33.824177, 32.063988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.960424, 33.679832, 32.268349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217626, -0.609158, -0.762605,
		0.586412, 0.706194, -0.396752,
		0.780231, -0.360856, 0.510903,
		25.194494, 33.571575, 32.421619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.237196, 33.787476, 31.616171>,  <24.648333, 33.824177, 32.063988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.237196, 33.787476, 31.616171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.350096, 33.547779, 31.915836>,  <25.417835, 33.403961, 32.095634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.350096, 33.547779, 31.915836>,  <25.237196, 33.787476, 31.616171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.350096, 33.547779, 31.915836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373007, -0.650920, -0.661187,
		0.883856, 0.466063, 0.039799,
		0.282249, -0.599240, 0.749165,
		25.434771, 33.368008, 32.140587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.947912, 33.573868, 31.410660>,  <25.237196, 33.787476, 31.616171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.947912, 33.573868, 31.410660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.778294, 33.296314, 31.643454>,  <25.676523, 33.129780, 31.783131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.778294, 33.296314, 31.643454>,  <25.947912, 33.573868, 31.410660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.778294, 33.296314, 31.643454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180992, -0.694590, -0.696266,
		0.887371, -0.189913, 0.420126,
		-0.424046, -0.693886, 0.581986,
		25.651079, 33.088150, 31.818050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.419439, 32.897430, 31.512466>,  <25.947912, 33.573868, 31.410660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.419439, 32.897430, 31.512466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.021732, 32.863003, 31.537832>,  <25.783108, 32.842346, 31.553051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.021732, 32.863003, 31.537832>,  <26.419439, 32.897430, 31.512466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.021732, 32.863003, 31.537832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026146, -0.770933, -0.636379,
		0.103658, -0.631075, 0.768765,
		-0.994269, -0.086066, 0.063413,
		25.723452, 32.837185, 31.556856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.199867, 32.247547, 31.797092>,  <26.419439, 32.897430, 31.512466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.199867, 32.247547, 31.797092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.867428, 32.374859, 31.614676>,  <25.667965, 32.451244, 31.505224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.867428, 32.374859, 31.614676>,  <26.199867, 32.247547, 31.797092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.867428, 32.374859, 31.614676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021823, -0.838072, -0.545123,
		-0.555696, -0.443099, 0.703467,
		-0.831099, 0.318275, -0.456043,
		25.618097, 32.470341, 31.477863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.701191, 31.755802, 31.754795>,  <26.199867, 32.247547, 31.797092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.701191, 31.755802, 31.754795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.625109, 31.998459, 31.446041>,  <25.579460, 32.144054, 31.260788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.625109, 31.998459, 31.446041>,  <25.701191, 31.755802, 31.754795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.625109, 31.998459, 31.446041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125631, -0.794814, -0.593706,
		-0.973673, -0.015952, 0.227389,
		-0.190203, 0.606643, -0.771886,
		25.568048, 32.180450, 31.214476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.077436, 31.513466, 31.524267>,  <25.701191, 31.755802, 31.754795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.077436, 31.513466, 31.524267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.295050, 31.702499, 31.246941>,  <25.425617, 31.815920, 31.080544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.295050, 31.702499, 31.246941>,  <25.077436, 31.513466, 31.524267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.295050, 31.702499, 31.246941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054701, -0.804566, -0.591338,
		-0.837278, 0.359634, -0.411860,
		0.544034, 0.472585, -0.693318,
		25.458260, 31.844275, 31.038944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.797264, 32.056114, 31.885002>,  <25.077436, 31.513466, 31.524267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.797264, 32.056114, 31.885002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.151917, 32.237694, 31.849638>,  <25.364708, 32.346642, 31.828419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.151917, 32.237694, 31.849638>,  <24.797264, 32.056114, 31.885002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.151917, 32.237694, 31.849638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240586, 0.615999, 0.750110,
		0.394970, -0.643801, 0.655377,
		0.886633, 0.453945, -0.088412,
		25.417906, 32.373878, 31.823114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.231024, 32.155537, 32.544403>,  <24.797264, 32.056114, 31.885002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.231024, 32.155537, 32.544403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.392179, 32.447704, 32.323795>,  <25.488873, 32.623005, 32.191433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.392179, 32.447704, 32.323795>,  <25.231024, 32.155537, 32.544403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.392179, 32.447704, 32.323795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059712, 0.580324, 0.812193,
		0.913299, -0.360155, 0.190191,
		0.402888, 0.730419, -0.551515,
		25.513046, 32.666828, 32.158340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.688108, 32.433804, 32.970524>,  <25.231024, 32.155537, 32.544403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.688108, 32.433804, 32.970524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.656548, 32.743584, 32.719444>,  <25.637611, 32.929451, 32.568798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.656548, 32.743584, 32.719444>,  <25.688108, 32.433804, 32.970524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.656548, 32.743584, 32.719444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102552, 0.620012, 0.777861,
		0.991594, 0.125745, 0.030502,
		-0.078901, 0.774450, -0.627696,
		25.632877, 32.975918, 32.531136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.132088, 33.007362, 33.158855>,  <25.688108, 32.433804, 32.970524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.132088, 33.007362, 33.158855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.852129, 33.191765, 32.940636>,  <25.684155, 33.302406, 32.809704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.852129, 33.191765, 32.940636>,  <26.132088, 33.007362, 33.158855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.852129, 33.191765, 32.940636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013948, 0.754841, 0.655759,
		0.714109, 0.466572, -0.521880,
		-0.699896, 0.461004, -0.545547,
		25.642160, 33.330067, 32.776970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.452126, 33.648376, 32.768047>,  <26.132088, 33.007362, 33.158855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.452126, 33.648376, 32.768047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.058046, 33.708988, 32.800114>,  <25.821600, 33.745354, 32.819355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.058046, 33.708988, 32.800114>,  <26.452126, 33.648376, 32.768047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.058046, 33.708988, 32.800114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171296, 0.851677, 0.495282,
		0.006770, 0.501682, -0.865025,
		-0.985196, 0.151528, 0.080170,
		25.762487, 33.754448, 32.824165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.264477, 34.210003, 32.328705>,  <26.452126, 33.648376, 32.768047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.264477, 34.210003, 32.328705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.032021, 34.159344, 32.650261>,  <25.892548, 34.128948, 32.843193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.032021, 34.159344, 32.650261>,  <26.264477, 34.210003, 32.328705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.032021, 34.159344, 32.650261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139696, 0.957629, 0.251857,
		-0.801724, 0.258665, -0.538824,
		-0.581140, -0.126648, 0.803888,
		25.857679, 34.121349, 32.891426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.697706, 34.733829, 32.336720>,  <26.264477, 34.210003, 32.328705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.697706, 34.733829, 32.336720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.792412, 34.625607, 32.709972>,  <25.849236, 34.560673, 32.933926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.792412, 34.625607, 32.709972>,  <25.697706, 34.733829, 32.336720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.792412, 34.625607, 32.709972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071622, 0.952969, 0.294484,
		-0.968924, -0.136556, 0.206251,
		0.236765, -0.270560, 0.933135,
		25.863441, 34.544437, 32.989914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.222273, 34.945004, 32.756207>,  <25.697706, 34.733829, 32.336720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.222273, 34.945004, 32.756207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.575039, 34.961220, 32.944069>,  <25.786699, 34.970947, 33.056786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.575039, 34.961220, 32.944069>,  <25.222273, 34.945004, 32.756207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.575039, 34.961220, 32.944069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098191, 0.990240, 0.098912,
		-0.461066, -0.133349, 0.877289,
		0.881917, 0.040537, 0.469659,
		25.839613, 34.973381, 33.084969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.892300, 35.059544, 33.358280>,  <25.222273, 34.945004, 32.756207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.892300, 35.059544, 33.358280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.841986, 34.671314, 33.276138>,  <24.811796, 34.438377, 33.226852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.841986, 34.671314, 33.276138>,  <24.892300, 35.059544, 33.358280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.841986, 34.671314, 33.276138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062921, -0.214384, 0.974720,
		-0.990060, 0.109686, 0.088036,
		-0.125787, -0.970571, -0.205352,
		24.804249, 34.380142, 33.214531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.199156, 34.773983, 33.513134>,  <24.892300, 35.059544, 33.358280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.199156, 34.773983, 33.513134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.501673, 34.517872, 33.566902>,  <24.683184, 34.364204, 33.599163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.501673, 34.517872, 33.566902>,  <24.199156, 34.773983, 33.513134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.501673, 34.517872, 33.566902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210083, -0.043093, 0.976734,
		-0.619585, -0.766937, -0.167101,
		0.756294, -0.640274, 0.134421,
		24.728561, 34.325790, 33.607227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.938818, 34.135426, 33.709755>,  <24.199156, 34.773983, 33.513134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.938818, 34.135426, 33.709755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.316093, 34.187447, 33.832054>,  <24.542459, 34.218658, 33.905434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.316093, 34.187447, 33.832054>,  <23.938818, 34.135426, 33.709755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.316093, 34.187447, 33.832054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302470, -0.044753, 0.952108,
		0.137505, -0.990497, -0.002874,
		0.943188, 0.130050, 0.305750,
		24.599051, 34.226460, 33.923779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.152643, 33.587933, 34.117790>,  <23.938818, 34.135426, 33.709755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.152643, 33.587933, 34.117790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.394577, 33.884590, 34.233810>,  <24.539738, 34.062584, 34.303425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.394577, 33.884590, 34.233810>,  <24.152643, 33.587933, 34.117790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.394577, 33.884590, 34.233810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042797, -0.333433, 0.941802,
		0.795200, -0.582049, -0.169932,
		0.604835, 0.741648, 0.290055,
		24.576027, 34.107086, 34.320827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.782722, 33.276443, 34.494160>,  <24.152643, 33.587933, 34.117790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.782722, 33.276443, 34.494160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.825312, 33.660862, 34.596180>,  <24.850864, 33.891514, 34.657394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.825312, 33.660862, 34.596180>,  <24.782722, 33.276443, 34.494160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.825312, 33.660862, 34.596180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143308, -0.268666, 0.952513,
		0.983934, -0.064865, -0.166331,
		0.106472, 0.961047, 0.255055,
		24.857254, 33.949177, 34.672695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.305128, 33.407772, 35.042725>,  <24.782722, 33.276443, 34.494160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.305128, 33.407772, 35.042725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.028282, 33.695194, 35.070030>,  <24.862175, 33.867645, 35.086414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.028282, 33.695194, 35.070030>,  <25.305128, 33.407772, 35.042725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.028282, 33.695194, 35.070030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017504, -0.077846, 0.996812,
		0.721575, 0.691103, 0.041301,
		-0.692115, 0.718552, 0.068268,
		24.820648, 33.910759, 35.090511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.530821, 33.985298, 35.441284>,  <25.305128, 33.407772, 35.042725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.530821, 33.985298, 35.441284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.133562, 33.950825, 35.472862>,  <24.895206, 33.930141, 35.491810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.133562, 33.950825, 35.472862>,  <25.530821, 33.985298, 35.441284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.133562, 33.950825, 35.472862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084799, -0.066466, 0.994179,
		-0.080439, 0.994059, 0.073319,
		-0.993146, -0.086188, 0.078949,
		24.835619, 33.924969, 35.496548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.323362, 33.811310, 35.319244>,  <25.530821, 33.985298, 35.441284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.323362, 33.811310, 35.319244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.480011, 33.759350, 34.954880>,  <26.574001, 33.728176, 34.736259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.480011, 33.759350, 34.954880>,  <26.323362, 33.811310, 35.319244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.480011, 33.759350, 34.954880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914617, -0.053212, 0.400804,
		-0.100535, -0.990098, 0.097968,
		0.391623, -0.129898, -0.910910,
		26.597498, 33.720379, 34.681606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.776396, 33.232994, 35.202709>,  <26.323362, 33.811310, 35.319244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.776396, 33.232994, 35.202709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.913485, 33.497211, 34.935509>,  <26.995739, 33.655743, 34.775188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.913485, 33.497211, 34.935509>,  <26.776396, 33.232994, 35.202709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.913485, 33.497211, 34.935509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914001, -0.070113, 0.399606,
		0.217123, -0.747505, -0.627769,
		0.342723, 0.660545, -0.667998,
		27.016302, 33.695374, 34.735111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.467804, 32.938324, 35.004261>,  <26.776396, 33.232994, 35.202709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.467804, 32.938324, 35.004261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.462597, 33.327244, 34.910915>,  <27.459473, 33.560596, 34.854908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.462597, 33.327244, 34.910915>,  <27.467804, 32.938324, 35.004261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.462597, 33.327244, 34.910915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925856, 0.099867, 0.364441,
		0.377652, -0.211321, -0.901511,
		-0.013017, 0.972301, -0.233368,
		27.458693, 33.618935, 34.840904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.088032, 33.092052, 34.713371>,  <27.467804, 32.938324, 35.004261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.088032, 33.092052, 34.713371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.960691, 33.441490, 34.860603>,  <27.884287, 33.651154, 34.948940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.960691, 33.441490, 34.860603>,  <28.088032, 33.092052, 34.713371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.960691, 33.441490, 34.860603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924212, 0.199636, 0.325543,
		0.210913, 0.443817, -0.870943,
		-0.318353, 0.873597, 0.368075,
		27.865185, 33.703568, 34.971027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.690790, 33.142799, 35.042316>,  <28.088032, 33.092052, 34.713371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.690790, 33.142799, 35.042316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.501141, 33.463104, 35.188736>,  <28.387350, 33.655285, 35.276588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.501141, 33.463104, 35.188736>,  <28.690790, 33.142799, 35.042316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.501141, 33.463104, 35.188736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850462, 0.308922, 0.425772,
		0.227860, 0.513180, -0.827482,
		-0.474125, 0.800758, 0.366049,
		28.358904, 33.703331, 35.298550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.548031, 33.734634, 34.588444>,  <28.690790, 33.142799, 35.042316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.548031, 33.734634, 34.588444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.347788, 34.053806, 34.722725>,  <28.227642, 34.245312, 34.803295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.347788, 34.053806, 34.722725>,  <28.548031, 33.734634, 34.588444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.347788, 34.053806, 34.722725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528642, -0.025302, 0.848468,
		0.685513, 0.602217, -0.409154,
		-0.500609, 0.797932, 0.335702,
		28.197605, 34.293186, 34.823437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.010073, 34.174187, 34.906853>,  <28.548031, 33.734634, 34.588444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.010073, 34.174187, 34.906853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.647945, 34.220066, 35.070435>,  <28.430670, 34.247593, 35.168583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.647945, 34.220066, 35.070435>,  <29.010073, 34.174187, 34.906853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.647945, 34.220066, 35.070435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423865, 0.182232, 0.887203,
		0.027234, 0.976543, -0.213594,
		-0.905316, 0.114697, 0.408959,
		28.376350, 34.254475, 35.193123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.143095, 34.741425, 35.261425>,  <29.010073, 34.174187, 34.906853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.143095, 34.741425, 35.261425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.819220, 34.573372, 35.425323>,  <28.624895, 34.472542, 35.523663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.819220, 34.573372, 35.425323>,  <29.143095, 34.741425, 35.261425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.819220, 34.573372, 35.425323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348081, 0.218326, 0.911687,
		-0.472488, 0.880808, -0.030536,
		-0.809688, -0.420133, 0.409749,
		28.576313, 34.447330, 35.548248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.975008, 35.076580, 35.899029>,  <29.143095, 34.741425, 35.261425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.975008, 35.076580, 35.899029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.781408, 34.727512, 35.924950>,  <28.665249, 34.518074, 35.940502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.781408, 34.727512, 35.924950>,  <28.975008, 35.076580, 35.899029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.781408, 34.727512, 35.924950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019863, 0.063080, 0.997811,
		-0.874842, 0.484229, -0.013197,
		-0.484001, -0.872665, 0.064803,
		28.636208, 34.465714, 35.944389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.278728, 34.754189, 36.409206>,  <28.975008, 35.076580, 35.899029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.278728, 34.754189, 36.409206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.885002, 34.824093, 36.399525>,  <28.648767, 34.866035, 36.393715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.885002, 34.824093, 36.399525>,  <29.278728, 34.754189, 36.409206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.885002, 34.824093, 36.399525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038407, 0.346138, 0.937397,
		0.172194, 0.921764, -0.347420,
		-0.984314, 0.174758, -0.024201,
		28.589708, 34.876522, 36.392265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.631346, 34.327667, 36.933125>,  <29.278728, 34.754189, 36.409206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.631346, 34.327667, 36.933125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.294563, 34.133827, 37.028011>,  <29.092495, 34.017525, 37.084946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.294563, 34.133827, 37.028011>,  <29.631346, 34.327667, 36.933125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.294563, 34.133827, 37.028011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122388, -0.256669, -0.958719,
		0.525483, -0.836231, 0.156795,
		-0.841955, -0.484601, 0.237220,
		29.041977, 33.988445, 37.099178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.499912, 33.557068, 36.523727>,  <29.631346, 34.327667, 36.933125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.499912, 33.557068, 36.523727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.168476, 33.746071, 36.643841>,  <28.969614, 33.859474, 36.715908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.168476, 33.746071, 36.643841>,  <29.499912, 33.557068, 36.523727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.168476, 33.746071, 36.643841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437372, -0.211501, -0.874056,
		-0.349491, -0.855570, 0.381911,
		-0.828590, 0.472512, 0.300285,
		28.919899, 33.887825, 36.733925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.039608, 33.318058, 36.036968>,  <29.499912, 33.557068, 36.523727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.039608, 33.318058, 36.036968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.834486, 33.624561, 36.191826>,  <28.711412, 33.808464, 36.284740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.834486, 33.624561, 36.191826>,  <29.039608, 33.318058, 36.036968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.834486, 33.624561, 36.191826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630956, -0.030581, -0.775216,
		-0.582175, -0.641806, 0.499156,
		-0.512803, 0.766257, 0.387148,
		28.680645, 33.854439, 36.307972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.176756, 33.292583, 36.118916>,  <29.039608, 33.318058, 36.036968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.176756, 33.292583, 36.118916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.310778, 33.661037, 36.039665>,  <28.391190, 33.882111, 35.992115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.310778, 33.661037, 36.039665>,  <28.176756, 33.292583, 36.118916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.310778, 33.661037, 36.039665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647594, 0.072404, -0.758537,
		-0.684369, 0.382454, 0.620780,
		0.335052, 0.921134, -0.198124,
		28.411293, 33.937378, 35.980228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.617201, 33.718349, 36.052837>,  <28.176756, 33.292583, 36.118916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.617201, 33.718349, 36.052837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.904594, 33.937885, 35.881935>,  <28.077030, 34.069607, 35.779392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.904594, 33.937885, 35.881935>,  <27.617201, 33.718349, 36.052837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.904594, 33.937885, 35.881935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540093, 0.053170, -0.839924,
		-0.438270, 0.834232, 0.334629,
		0.718484, 0.548844, -0.427260,
		28.120140, 34.102539, 35.753757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.253752, 34.298943, 35.792061>,  <27.617201, 33.718349, 36.052837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.253752, 34.298943, 35.792061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.602896, 34.293259, 35.596954>,  <27.812382, 34.289848, 35.479893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.602896, 34.293259, 35.596954>,  <27.253752, 34.298943, 35.792061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.602896, 34.293259, 35.596954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486174, 0.060341, -0.871776,
		0.041817, 0.998077, 0.045762,
		0.872861, -0.014206, -0.487762,
		27.864754, 34.288998, 35.450626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.330990, 34.860046, 35.270805>,  <27.253752, 34.298943, 35.792061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.330990, 34.860046, 35.270805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.517460, 34.523426, 35.161648>,  <27.629343, 34.321453, 35.096153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.517460, 34.523426, 35.161648>,  <27.330990, 34.860046, 35.270805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.517460, 34.523426, 35.161648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687166, -0.150155, -0.710814,
		0.557210, 0.518889, -0.648284,
		0.466177, -0.841551, -0.272894,
		27.657312, 34.270962, 35.079781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.399790, 34.913048, 34.530815>,  <27.330990, 34.860046, 35.270805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.399790, 34.913048, 34.530815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.401363, 34.528378, 34.640484>,  <27.402308, 34.297577, 34.706284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.401363, 34.528378, 34.640484>,  <27.399790, 34.913048, 34.530815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.401363, 34.528378, 34.640484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804356, -0.165941, -0.570505,
		0.594135, -0.218285, -0.774180,
		0.003935, -0.961673, 0.274170,
		27.402544, 34.239876, 34.722736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.448294, 34.500931, 33.864437>,  <27.399790, 34.913048, 34.530815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.448294, 34.500931, 33.864437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.290228, 34.291286, 34.166206>,  <27.195389, 34.165501, 34.347267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.290228, 34.291286, 34.166206>,  <27.448294, 34.500931, 33.864437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.290228, 34.291286, 34.166206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780648, -0.241277, -0.576519,
		0.484184, -0.816759, -0.313801,
		-0.395164, -0.524109, 0.754424,
		27.171679, 34.134052, 34.392532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.373627, 33.775761, 33.750004>,  <27.448294, 34.500931, 33.864437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.373627, 33.775761, 33.750004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.104465, 33.850803, 34.036221>,  <26.942968, 33.895828, 34.207951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.104465, 33.850803, 34.036221>,  <27.373627, 33.775761, 33.750004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.104465, 33.850803, 34.036221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708090, -0.443236, -0.549683,
		0.214033, -0.876554, 0.431095,
		-0.672903, 0.187604, 0.715546,
		26.902594, 33.907085, 34.250885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.527992, 33.110950, 34.044163>,  <27.373627, 33.775761, 33.750004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.527992, 33.110950, 34.044163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.916704, 33.175125, 34.113338>,  <28.149931, 33.213631, 34.154842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.916704, 33.175125, 34.113338>,  <27.527992, 33.110950, 34.044163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.916704, 33.175125, 34.113338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209806, -0.922951, -0.322712,
		0.107839, 0.349888, -0.930564,
		0.971778, 0.160437, 0.172939,
		28.208237, 33.223255, 34.165218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.994385, 32.945366, 33.477329>,  <27.527992, 33.110950, 34.044163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.994385, 32.945366, 33.477329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.199343, 32.878239, 33.814205>,  <28.322317, 32.837963, 34.016331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.199343, 32.878239, 33.814205>,  <27.994385, 32.945366, 33.477329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.199343, 32.878239, 33.814205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371060, -0.841174, -0.393370,
		0.774445, 0.514065, -0.368743,
		0.512395, -0.167818, 0.842192,
		28.353062, 32.827892, 34.066864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.772768, 33.018299, 33.606770>,  <27.994385, 32.945366, 33.477329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.772768, 33.018299, 33.606770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.719141, 32.743320, 33.892273>,  <28.686964, 32.578335, 34.063576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.719141, 32.743320, 33.892273>,  <28.772768, 33.018299, 33.606770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.719141, 32.743320, 33.892273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469342, -0.678401, -0.565234,
		0.872779, 0.259216, 0.413599,
		-0.134068, -0.687444, 0.713755,
		28.678921, 32.537086, 34.106400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.453854, 32.725849, 33.902676>,  <28.772768, 33.018299, 33.606770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.453854, 32.725849, 33.902676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.175280, 32.440975, 33.937950>,  <29.008135, 32.270050, 33.959114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.175280, 32.440975, 33.937950>,  <29.453854, 32.725849, 33.902676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.175280, 32.440975, 33.937950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577366, -0.629048, -0.520526,
		0.426181, -0.311598, 0.849280,
		-0.696433, -0.712183, 0.088183,
		28.966351, 32.227322, 33.964405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.161915, 32.299896, 34.180527>,  <29.453854, 32.725849, 33.902676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.161915, 32.299896, 34.180527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.533915, 32.442875, 34.214779>,  <30.757114, 32.528664, 34.235329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.533915, 32.442875, 34.214779>,  <30.161915, 32.299896, 34.180527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.533915, 32.442875, 34.214779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014355, -0.268099, 0.963284,
		0.367282, -0.894624, -0.254463,
		0.929999, 0.357449, 0.085626,
		30.812914, 32.550110, 34.240467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493809, 31.783739, 34.500820>,  <30.161915, 32.299896, 34.180527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.493809, 31.783739, 34.500820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711269, 32.113670, 34.562920>,  <30.841745, 32.311630, 34.600178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711269, 32.113670, 34.562920>,  <30.493809, 31.783739, 34.500820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711269, 32.113670, 34.562920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005642, -0.188554, 0.982047,
		0.839291, -0.533017, -0.107161,
		0.543653, 0.824828, 0.155244,
		30.874365, 32.361118, 34.609493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177258, 31.566998, 34.701389>,  <30.493809, 31.783739, 34.500820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177258, 31.566998, 34.701389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.124170, 31.936995, 34.843811>,  <31.092318, 32.158993, 34.929264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.124170, 31.936995, 34.843811>,  <31.177258, 31.566998, 34.701389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.124170, 31.936995, 34.843811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069354, -0.349684, 0.934297,
		0.988724, 0.148694, -0.017742,
		-0.132720, 0.924992, 0.356054,
		31.084354, 32.214493, 34.950626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582727, 31.599886, 35.251259>,  <31.177258, 31.566998, 34.701389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582727, 31.599886, 35.251259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357433, 31.921608, 35.327007>,  <31.222258, 32.114643, 35.372456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357433, 31.921608, 35.327007>,  <31.582727, 31.599886, 35.251259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357433, 31.921608, 35.327007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086248, -0.285153, 0.954594,
		0.821784, 0.521326, 0.229977,
		-0.563233, 0.804305, 0.189371,
		31.188463, 32.162899, 35.383820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683170, 31.669304, 35.944317>,  <31.582727, 31.599886, 35.251259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683170, 31.669304, 35.944317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359667, 31.880484, 35.840645>,  <31.165564, 32.007191, 35.778442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359667, 31.880484, 35.840645>,  <31.683170, 31.669304, 35.944317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359667, 31.880484, 35.840645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375001, -0.123420, 0.918772,
		0.453078, 0.840259, 0.297799,
		-0.808761, 0.527951, -0.259179,
		31.117039, 32.038868, 35.762890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.416445, 31.732372, 36.688568>,  <31.683170, 31.669304, 35.944317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.416445, 31.732372, 36.688568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228828, 32.058956, 36.823265>,  <31.116259, 32.254906, 36.904083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228828, 32.058956, 36.823265>,  <31.416445, 31.732372, 36.688568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228828, 32.058956, 36.823265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152837, 0.300499, -0.941457,
		-0.869852, -0.493048, -0.016161,
		-0.469040, 0.816458, 0.336746,
		31.088116, 32.303894, 36.924290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.892504, 31.751650, 36.196579>,  <31.416445, 31.732372, 36.688568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.892504, 31.751650, 36.196579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.965807, 32.125866, 36.317364>,  <31.009789, 32.350395, 36.389835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.965807, 32.125866, 36.317364>,  <30.892504, 31.751650, 36.196579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.965807, 32.125866, 36.317364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057018, 0.316766, -0.946788,
		-0.981410, 0.156290, 0.111393,
		0.183259, 0.935539, 0.301966,
		31.020784, 32.406528, 36.407955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.393915, 32.289242, 35.967758>,  <30.892504, 31.751650, 36.196579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.393915, 32.289242, 35.967758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.751469, 32.463444, 36.010307>,  <30.966000, 32.567963, 36.035835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.751469, 32.463444, 36.010307>,  <30.393915, 32.289242, 35.967758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.751469, 32.463444, 36.010307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008066, 0.252861, -0.967469,
		-0.448230, 0.863945, 0.229541,
		0.893882, 0.435500, 0.106372,
		31.019632, 32.594093, 36.042217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.387829, 33.004250, 35.704021>,  <30.393915, 32.289242, 35.967758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.387829, 33.004250, 35.704021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710623, 32.782055, 35.623806>,  <30.904299, 32.648739, 35.575676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710623, 32.782055, 35.623806>,  <30.387829, 33.004250, 35.704021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.710623, 32.782055, 35.623806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013204, 0.322514, -0.946473,
		0.590426, 0.766436, 0.252929,
		0.806984, -0.555482, -0.200540,
		30.952719, 32.615410, 35.563644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.857965, 33.464596, 35.339554>,  <30.387829, 33.004250, 35.704021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.857965, 33.464596, 35.339554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948988, 33.090103, 35.232449>,  <31.003601, 32.865410, 35.168186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948988, 33.090103, 35.232449>,  <30.857965, 33.464596, 35.339554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.948988, 33.090103, 35.232449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115590, 0.299002, -0.947226,
		0.966880, 0.184597, 0.176258,
		0.227557, -0.936227, -0.267761,
		31.017256, 32.809235, 35.152119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595634, 33.399281, 34.982533>,  <30.857965, 33.464596, 35.339554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.595634, 33.399281, 34.982533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393621, 33.077988, 34.856190>,  <31.272413, 32.885212, 34.780384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393621, 33.077988, 34.856190>,  <31.595634, 33.399281, 34.982533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.393621, 33.077988, 34.856190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081061, 0.320198, -0.943876,
		0.859285, -0.502292, -0.096600,
		-0.505033, -0.803228, -0.315858,
		31.242111, 32.837021, 34.761433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919245, 33.227398, 34.315590>,  <31.595634, 33.399281, 34.982533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919245, 33.227398, 34.315590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567070, 33.037842, 34.322063>,  <31.355764, 32.924110, 34.325947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567070, 33.037842, 34.322063>,  <31.919245, 33.227398, 34.315590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567070, 33.037842, 34.322063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058512, 0.074703, -0.995488,
		0.470539, -0.877412, -0.093499,
		-0.880437, -0.473887, 0.016188,
		31.302938, 32.895676, 34.326920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965134, 32.640430, 33.903629>,  <31.919245, 33.227398, 34.315590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965134, 32.640430, 33.903629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600878, 32.804256, 33.925518>,  <31.382324, 32.902550, 33.938652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600878, 32.804256, 33.925518>,  <31.965134, 32.640430, 33.903629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600878, 32.804256, 33.925518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020542, 0.177136, -0.983972,
		-0.412692, -0.894919, -0.169720,
		-0.910639, 0.409564, 0.054719,
		31.327686, 32.927124, 33.941933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.398478, 32.344406, 33.467880>,  <31.965134, 32.640430, 33.903629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.398478, 32.344406, 33.467880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343721, 32.737038, 33.521187>,  <31.310867, 32.972618, 33.553169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343721, 32.737038, 33.521187>,  <31.398478, 32.344406, 33.467880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343721, 32.737038, 33.521187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118754, 0.149825, -0.981555,
		-0.983442, -0.118541, -0.137077,
		-0.136892, 0.981581, 0.133267,
		31.302654, 33.031513, 33.561169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.864824, 32.531384, 33.071762>,  <31.398478, 32.344406, 33.467880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.864824, 32.531384, 33.071762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.064062, 32.873398, 33.129478>,  <31.183605, 33.078606, 33.164108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.064062, 32.873398, 33.129478>,  <30.864824, 32.531384, 33.071762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.064062, 32.873398, 33.129478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080127, 0.120306, -0.989498,
		-0.863414, 0.504423, -0.008588,
		0.498093, 0.855034, 0.144291,
		31.213490, 33.129910, 33.172768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.659542, 32.973240, 32.590797>,  <30.864824, 32.531384, 33.071762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.659542, 32.973240, 32.590797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010176, 33.141514, 32.684280>,  <31.220556, 33.242477, 32.740372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010176, 33.141514, 32.684280>,  <30.659542, 32.973240, 32.590797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010176, 33.141514, 32.684280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209332, 0.103969, -0.972301,
		-0.433333, 0.901228, 0.003075,
		0.876585, 0.420687, 0.233710,
		31.273151, 33.267719, 32.754395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.779465, 33.430519, 32.047237>,  <30.659542, 32.973240, 32.590797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.779465, 33.430519, 32.047237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131454, 33.428936, 32.237240>,  <31.342648, 33.427986, 32.351242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131454, 33.428936, 32.237240>,  <30.779465, 33.430519, 32.047237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131454, 33.428936, 32.237240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468945, 0.166705, -0.867352,
		-0.075754, 0.985999, 0.148552,
		0.879972, -0.003958, 0.475008,
		31.395447, 33.427750, 32.379742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128204, 34.030876, 31.861536>,  <30.779465, 33.430519, 32.047237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.128204, 34.030876, 31.861536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.422705, 33.782681, 31.969559>,  <31.599405, 33.633762, 32.034370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.422705, 33.782681, 31.969559>,  <31.128204, 34.030876, 31.861536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.422705, 33.782681, 31.969559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377184, 0.044946, -0.925047,
		0.561840, 0.782929, 0.267129,
		0.736253, -0.620485, 0.270056,
		31.643581, 33.596535, 32.050575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781681, 34.309288, 31.652246>,  <31.128204, 34.030876, 31.861536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781681, 34.309288, 31.652246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868855, 33.919739, 31.677757>,  <31.921158, 33.686008, 31.693064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868855, 33.919739, 31.677757>,  <31.781681, 34.309288, 31.652246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868855, 33.919739, 31.677757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459765, 0.044806, -0.886909,
		0.860884, 0.222608, 0.457520,
		0.217933, -0.973878, 0.063775,
		31.934235, 33.627575, 31.696890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523499, 34.176010, 31.589817>,  <31.781681, 34.309288, 31.652246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523499, 34.176010, 31.589817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.340481, 33.834175, 31.491566>,  <32.230671, 33.629074, 31.432615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.340481, 33.834175, 31.491566>,  <32.523499, 34.176010, 31.589817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.340481, 33.834175, 31.491566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390315, 0.055175, -0.919027,
		0.798941, -0.516368, 0.308313,
		-0.457545, -0.854587, -0.245628,
		32.203217, 33.577801, 31.417877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902607, 33.736805, 31.134958>,  <32.523499, 34.176010, 31.589817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902607, 33.736805, 31.134958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572411, 33.519341, 31.074295>,  <32.374294, 33.388863, 31.037897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572411, 33.519341, 31.074295>,  <32.902607, 33.736805, 31.134958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572411, 33.519341, 31.074295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265430, -0.136796, -0.954376,
		0.498112, -0.828081, 0.257228,
		-0.825489, -0.543663, -0.151658,
		32.324764, 33.356243, 31.028797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041367, 33.018749, 30.922190>,  <32.902607, 33.736805, 31.134958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041367, 33.018749, 30.922190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671204, 33.094543, 30.790909>,  <32.449104, 33.140018, 30.712141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671204, 33.094543, 30.790909>,  <33.041367, 33.018749, 30.922190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671204, 33.094543, 30.790909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331207, -0.016506, -0.943413,
		-0.184177, -0.981745, -0.047483,
		-0.925408, 0.189482, -0.328201,
		32.393581, 33.151386, 30.692448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917103, 32.591724, 30.341158>,  <33.041367, 33.018749, 30.922190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.917103, 32.591724, 30.341158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665554, 32.902275, 30.324368>,  <32.514626, 33.088608, 30.314293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665554, 32.902275, 30.324368>,  <32.917103, 32.591724, 30.341158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665554, 32.902275, 30.324368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248192, 0.149285, -0.957139,
		-0.736835, -0.612332, -0.286571,
		-0.628868, 0.776378, -0.041978,
		32.476894, 33.135189, 30.311773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503597, 32.480373, 29.786427>,  <32.917103, 32.591724, 30.341158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503597, 32.480373, 29.786427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.467339, 32.872841, 29.854649>,  <32.445583, 33.108322, 29.895582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.467339, 32.872841, 29.854649>,  <32.503597, 32.480373, 29.786427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467339, 32.872841, 29.854649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133530, 0.181689, -0.974248,
		-0.986891, -0.065535, -0.147484,
		-0.090644, 0.981170, 0.170557,
		32.440144, 33.167191, 29.905815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042740, 32.759918, 29.244513>,  <32.503597, 32.480373, 29.786427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042740, 32.759918, 29.244513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.256218, 33.083607, 29.342766>,  <32.384304, 33.277821, 29.401718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.256218, 33.083607, 29.342766>,  <32.042740, 32.759918, 29.244513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256218, 33.083607, 29.342766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102014, 0.226733, -0.968599,
		-0.839503, 0.541992, 0.038454,
		0.533692, 0.809220, 0.245634,
		32.416325, 33.326374, 29.416456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772326, 33.355194, 28.821407>,  <32.042740, 32.759918, 29.244513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772326, 33.355194, 28.821407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118240, 33.501930, 28.958563>,  <32.325790, 33.589970, 29.040855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118240, 33.501930, 28.958563>,  <31.772326, 33.355194, 28.821407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118240, 33.501930, 28.958563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212949, 0.350484, -0.912038,
		-0.454745, 0.861738, 0.224977,
		0.864789, 0.366836, 0.342887,
		32.377678, 33.611980, 29.061428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.703772, 34.123543, 28.688967>,  <31.772326, 33.355194, 28.821407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.703772, 34.123543, 28.688967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.093758, 34.034645, 28.691936>,  <32.327747, 33.981308, 28.693718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.093758, 34.034645, 28.691936>,  <31.703772, 34.123543, 28.688967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093758, 34.034645, 28.691936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127839, 0.532890, -0.836472,
		0.181944, 0.816478, 0.547959,
		0.974963, -0.222242, 0.007422,
		32.386246, 33.967972, 28.694162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.057732, 34.741367, 28.715584>,  <31.703772, 34.123543, 28.688967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.057732, 34.741367, 28.715584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.340820, 34.485603, 28.595400>,  <32.510674, 34.332146, 28.523289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.340820, 34.485603, 28.595400>,  <32.057732, 34.741367, 28.715584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.340820, 34.485603, 28.595400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317507, 0.667783, -0.673242,
		0.631123, 0.381071, 0.675624,
		0.707724, -0.639414, -0.300460,
		32.553139, 34.293777, 28.505262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698612, 35.155430, 28.623531>,  <32.057732, 34.741367, 28.715584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698612, 35.155430, 28.623531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719746, 34.823780, 28.400906>,  <32.732426, 34.624790, 28.267330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719746, 34.823780, 28.400906>,  <32.698612, 35.155430, 28.623531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719746, 34.823780, 28.400906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374745, 0.533072, -0.758552,
		0.925621, -0.168493, 0.338874,
		0.052834, -0.829123, -0.556564,
		32.735596, 34.575043, 28.233936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336056, 35.205971, 28.283718>,  <32.698612, 35.155430, 28.623531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336056, 35.205971, 28.283718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153301, 34.920910, 28.070786>,  <33.043648, 34.749874, 27.943026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153301, 34.920910, 28.070786>,  <33.336056, 35.205971, 28.283718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153301, 34.920910, 28.070786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322303, 0.425154, -0.845793,
		0.829082, -0.558002, 0.035445,
		-0.456884, -0.712656, -0.532333,
		33.016235, 34.707111, 27.911085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786396, 35.088612, 27.674290>,  <33.336056, 35.205971, 28.283718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786396, 35.088612, 27.674290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429234, 34.947392, 27.562521>,  <33.214935, 34.862659, 27.495461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429234, 34.947392, 27.562521>,  <33.786396, 35.088612, 27.674290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429234, 34.947392, 27.562521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100551, 0.448564, -0.888076,
		0.438864, -0.821068, -0.365028,
		-0.892910, -0.353041, -0.279418,
		33.161362, 34.841476, 27.478695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900696, 34.608620, 27.188951>,  <33.786396, 35.088612, 27.674290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900696, 34.608620, 27.188951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531616, 34.739780, 27.107861>,  <33.310169, 34.818478, 27.059206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531616, 34.739780, 27.107861>,  <33.900696, 34.608620, 27.188951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531616, 34.739780, 27.107861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236728, 0.066889, -0.969271,
		-0.304269, -0.942340, -0.139343,
		-0.922703, 0.327906, -0.202726,
		33.254807, 34.838154, 27.047043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868118, 34.516113, 26.448172>,  <33.900696, 34.608620, 27.188951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868118, 34.516113, 26.448172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567352, 34.764568, 26.536554>,  <33.386894, 34.913639, 26.589584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567352, 34.764568, 26.536554>,  <33.868118, 34.516113, 26.448172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567352, 34.764568, 26.536554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046657, 0.384448, -0.921967,
		-0.657612, -0.682928, -0.318051,
		-0.751911, 0.621136, 0.220954,
		33.341778, 34.950909, 26.602840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319023, 34.395206, 25.979298>,  <33.868118, 34.516113, 26.448172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319023, 34.395206, 25.979298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223709, 34.764160, 26.100901>,  <33.166523, 34.985535, 26.173862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223709, 34.764160, 26.100901>,  <33.319023, 34.395206, 25.979298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223709, 34.764160, 26.100901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018636, 0.308624, -0.951001,
		-0.971017, -0.232273, -0.056351,
		-0.238283, 0.922388, 0.304008,
		33.152225, 35.040878, 26.192102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806072, 34.575039, 25.617155>,  <33.319023, 34.395206, 25.979298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806072, 34.575039, 25.617155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970573, 34.920101, 25.734930>,  <33.069275, 35.127140, 25.805595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970573, 34.920101, 25.734930>,  <32.806072, 34.575039, 25.617155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970573, 34.920101, 25.734930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097697, 0.362872, -0.926703,
		-0.906271, 0.352344, 0.233512,
		0.411253, 0.862657, 0.294438,
		33.093948, 35.178898, 25.823261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513359, 34.987648, 25.227400>,  <32.806072, 34.575039, 25.617155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513359, 34.987648, 25.227400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801582, 35.232349, 25.357967>,  <32.974518, 35.379169, 25.436308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801582, 35.232349, 25.357967>,  <32.513359, 34.987648, 25.227400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801582, 35.232349, 25.357967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067047, 0.530017, -0.845332,
		-0.690146, 0.587225, 0.422925,
		0.720558, 0.611758, 0.326418,
		33.017750, 35.415878, 25.455893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323341, 35.681030, 25.108816>,  <32.513359, 34.987648, 25.227400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323341, 35.681030, 25.108816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721809, 35.689533, 25.142731>,  <32.960892, 35.694633, 25.163080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721809, 35.689533, 25.142731>,  <32.323341, 35.681030, 25.108816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721809, 35.689533, 25.142731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052716, 0.627647, -0.776711,
		-0.069723, 0.778208, 0.624124,
		0.996173, 0.021253, 0.084786,
		33.020660, 35.695908, 25.168167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503765, 36.326351, 24.944786>,  <32.323341, 35.681030, 25.108816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503765, 36.326351, 24.944786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.868267, 36.165562, 24.908960>,  <33.086967, 36.069088, 24.887465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.868267, 36.165562, 24.908960>,  <32.503765, 36.326351, 24.944786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.868267, 36.165562, 24.908960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246484, 0.706562, -0.663336,
		0.329930, 0.582394, 0.742942,
		0.911258, -0.401978, -0.089565,
		33.141644, 36.044968, 24.882092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036724, 36.883213, 25.059278>,  <32.503765, 36.326351, 24.944786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036724, 36.883213, 25.059278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201004, 36.597298, 24.832863>,  <33.299572, 36.425747, 24.697014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201004, 36.597298, 24.832863>,  <33.036724, 36.883213, 25.059278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201004, 36.597298, 24.832863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316227, 0.693947, -0.646868,
		0.855178, 0.086668, 0.511038,
		0.410696, -0.714791, -0.566041,
		33.324211, 36.382862, 24.663050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650982, 37.155289, 24.879641>,  <33.036724, 36.883213, 25.059278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650982, 37.155289, 24.879641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639786, 36.855598, 24.614952>,  <33.633068, 36.675785, 24.456139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639786, 36.855598, 24.614952>,  <33.650982, 37.155289, 24.879641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639786, 36.855598, 24.614952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431432, 0.588095, -0.684113,
		0.901711, -0.304636, 0.306780,
		-0.027990, -0.749227, -0.661721,
		33.631390, 36.630829, 24.416435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.350815, 37.133995, 24.588301>,  <33.650982, 37.155289, 24.879641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.350815, 37.133995, 24.588301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127121, 36.942806, 24.317362>,  <33.992905, 36.828094, 24.154799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127121, 36.942806, 24.317362>,  <34.350815, 37.133995, 24.588301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127121, 36.942806, 24.317362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443087, 0.518231, -0.731512,
		0.700667, -0.709209, -0.078027,
		-0.559231, -0.477974, -0.677349,
		33.959351, 36.799416, 24.114157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723850, 36.992382, 24.086367>,  <34.350815, 37.133995, 24.588301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723850, 36.992382, 24.086367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371403, 36.965469, 23.899134>,  <34.159935, 36.949322, 23.786795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371403, 36.965469, 23.899134>,  <34.723850, 36.992382, 24.086367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371403, 36.965469, 23.899134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304657, 0.676277, -0.670697,
		0.361681, -0.733568, -0.575382,
		-0.881119, -0.067285, -0.468083,
		34.107067, 36.945286, 23.758709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860905, 36.773361, 23.410131>,  <34.723850, 36.992382, 24.086367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860905, 36.773361, 23.410131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501637, 36.948933, 23.400072>,  <34.286076, 37.054276, 23.394037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501637, 36.948933, 23.400072>,  <34.860905, 36.773361, 23.410131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501637, 36.948933, 23.400072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261342, 0.487030, -0.833368,
		-0.353542, -0.755078, -0.552146,
		-0.898170, 0.438929, -0.025148,
		34.232185, 37.080612, 23.392529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664860, 36.674828, 22.725155>,  <34.860905, 36.773361, 23.410131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664860, 36.674828, 22.725155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.450520, 36.979877, 22.870079>,  <34.321915, 37.162907, 22.957033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.450520, 36.979877, 22.870079>,  <34.664860, 36.674828, 22.725155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450520, 36.979877, 22.870079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322497, 0.581454, -0.746932,
		-0.780297, -0.283397, -0.557514,
		-0.535847, 0.762625, 0.362312,
		34.289764, 37.208664, 22.978773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289722, 37.048737, 22.120708>,  <34.664860, 36.674828, 22.725155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289722, 37.048737, 22.120708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.297722, 37.323730, 22.411077>,  <34.302521, 37.488728, 22.585299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.297722, 37.323730, 22.411077>,  <34.289722, 37.048737, 22.120708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297722, 37.323730, 22.411077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313314, 0.685188, -0.657535,
		-0.949439, 0.240590, -0.201699,
		0.019995, 0.687484, 0.725924,
		34.303719, 37.529976, 22.628855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254414, 37.699154, 21.751612>,  <34.289722, 37.048737, 22.120708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254414, 37.699154, 21.751612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367886, 37.794376, 22.123171>,  <34.435970, 37.851509, 22.346107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367886, 37.794376, 22.123171>,  <34.254414, 37.699154, 21.751612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367886, 37.794376, 22.123171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440501, 0.828086, -0.346747,
		-0.851753, 0.507547, 0.130052,
		0.283684, 0.238055, 0.928899,
		34.452991, 37.865791, 22.401840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311100, 38.420010, 21.700640>,  <34.254414, 37.699154, 21.751612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311100, 38.420010, 21.700640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510178, 38.345066, 22.039391>,  <34.629623, 38.300102, 22.242641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510178, 38.345066, 22.039391>,  <34.311100, 38.420010, 21.700640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510178, 38.345066, 22.039391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618018, 0.761675, -0.194691,
		-0.608569, 0.620282, 0.494868,
		0.497692, -0.187355, 0.846877,
		34.659485, 38.288860, 22.293453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244881, 39.026245, 22.101137>,  <34.311100, 38.420010, 21.700640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244881, 39.026245, 22.101137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575821, 38.808430, 22.156218>,  <34.774387, 38.677742, 22.189266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575821, 38.808430, 22.156218>,  <34.244881, 39.026245, 22.101137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575821, 38.808430, 22.156218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557319, 0.765384, -0.321843,
		0.069861, 0.343023, 0.936726,
		0.827354, -0.544539, 0.137702,
		34.824028, 38.645069, 22.197529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701435, 39.422298, 22.492985>,  <34.244881, 39.026245, 22.101137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701435, 39.422298, 22.492985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940651, 39.152214, 22.320269>,  <35.084179, 38.990166, 22.216639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940651, 39.152214, 22.320269>,  <34.701435, 39.422298, 22.492985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940651, 39.152214, 22.320269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640983, 0.726364, -0.248067,
		0.481135, -0.128418, 0.867190,
		0.598039, -0.675207, -0.431792,
		35.120064, 38.949654, 22.190731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317947, 39.684162, 22.619556>,  <34.701435, 39.422298, 22.492985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317947, 39.684162, 22.619556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401958, 39.422222, 22.329161>,  <35.452366, 39.265060, 22.154922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401958, 39.422222, 22.329161>,  <35.317947, 39.684162, 22.619556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401958, 39.422222, 22.329161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659345, 0.643154, -0.389381,
		0.721909, -0.396898, 0.566850,
		0.210027, -0.654848, -0.725991,
		35.464966, 39.225769, 22.111362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066887, 39.580517, 22.560148>,  <35.317947, 39.684162, 22.619556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066887, 39.580517, 22.560148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.886459, 39.501846, 22.211929>,  <35.778202, 39.454643, 22.002998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.886459, 39.501846, 22.211929>,  <36.066887, 39.580517, 22.560148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886459, 39.501846, 22.211929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660244, 0.582778, -0.473760,
		0.600513, -0.788473, -0.133021,
		-0.451069, -0.196673, -0.870549,
		35.751137, 39.442844, 21.950764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625065, 39.760052, 22.126394>,  <36.066887, 39.580517, 22.560148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625065, 39.760052, 22.126394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312771, 39.704227, 21.882765>,  <36.125393, 39.670734, 21.736588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312771, 39.704227, 21.882765>,  <36.625065, 39.760052, 22.126394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312771, 39.704227, 21.882765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378052, 0.670598, -0.638260,
		0.497518, -0.728575, -0.470802,
		-0.780739, -0.139558, -0.609073,
		36.078548, 39.662361, 21.700043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847073, 39.844170, 21.361864>,  <36.625065, 39.760052, 22.126394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847073, 39.844170, 21.361864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451565, 39.893345, 21.327862>,  <36.214260, 39.922852, 21.307461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451565, 39.893345, 21.327862>,  <36.847073, 39.844170, 21.361864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451565, 39.893345, 21.327862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149168, 0.775680, -0.613245,
		-0.009456, -0.619037, -0.785305,
		-0.988767, 0.122941, -0.085006,
		36.154934, 39.930225, 21.302361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760723, 39.959240, 20.556587>,  <36.847073, 39.844170, 21.361864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760723, 39.959240, 20.556587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424007, 40.082260, 20.734034>,  <36.221977, 40.156071, 20.840502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424007, 40.082260, 20.734034>,  <36.760723, 39.959240, 20.556587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424007, 40.082260, 20.734034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085498, 0.887411, -0.452982,
		-0.532985, -0.343389, -0.773312,
		-0.841794, 0.307549, 0.443617,
		36.171471, 40.174526, 20.867119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330124, 40.293495, 20.124643>,  <36.760723, 39.959240, 20.556587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330124, 40.293495, 20.124643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.158276, 40.442677, 20.453600>,  <36.055164, 40.532185, 20.650974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.158276, 40.442677, 20.453600>,  <36.330124, 40.293495, 20.124643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158276, 40.442677, 20.453600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170667, 0.860776, -0.479518,
		-0.886734, -0.346367, -0.306158,
		-0.429622, 0.372954, 0.822393,
		36.029388, 40.554562, 20.700317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733864, 40.727448, 19.904409>,  <36.330124, 40.293495, 20.124643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733864, 40.727448, 19.904409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847282, 40.846840, 20.268938>,  <35.915333, 40.918476, 20.487656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847282, 40.846840, 20.268938>,  <35.733864, 40.727448, 19.904409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847282, 40.846840, 20.268938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082054, 0.954392, -0.287058,
		-0.955441, 0.006618, 0.295108,
		0.283549, 0.298482, 0.911323,
		35.932346, 40.936386, 20.542336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857548, 41.378895, 20.228960>,  <35.733864, 40.727448, 19.904409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857548, 41.378895, 20.228960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923527, 41.758072, 20.337914>,  <35.963112, 41.985580, 20.403286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923527, 41.758072, 20.337914>,  <35.857548, 41.378895, 20.228960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923527, 41.758072, 20.337914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408826, 0.185613, -0.893537,
		-0.897583, 0.258740, -0.356929,
		0.164943, 0.947946, 0.272383,
		35.973011, 42.042458, 20.419628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595455, 41.769600, 19.729206>,  <35.857548, 41.378895, 20.228960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595455, 41.769600, 19.729206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860649, 42.009674, 19.908195>,  <36.019764, 42.153717, 20.015589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860649, 42.009674, 19.908195>,  <35.595455, 41.769600, 19.729206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860649, 42.009674, 19.908195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355592, 0.273527, -0.893721,
		-0.658792, 0.751641, -0.032076,
		0.662984, 0.600182, 0.447475,
		36.059544, 42.189728, 20.042439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363346, 42.429016, 19.472542>,  <35.595455, 41.769600, 19.729206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363346, 42.429016, 19.472542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750412, 42.423309, 19.573271>,  <35.982651, 42.419884, 19.633709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750412, 42.423309, 19.573271>,  <35.363346, 42.429016, 19.472542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750412, 42.423309, 19.573271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245937, 0.274954, -0.929470,
		-0.055978, 0.961352, 0.269573,
		0.967668, -0.014268, 0.251824,
		36.040714, 42.419029, 19.648817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968723, 42.892197, 19.141052>,  <35.363346, 42.429016, 19.472542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968723, 42.892197, 19.141052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821693, 43.264187, 19.143215>,  <35.733475, 43.487381, 19.144512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821693, 43.264187, 19.143215>,  <35.968723, 42.892197, 19.141052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821693, 43.264187, 19.143215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766305, -0.299575, -0.568359,
		-0.526943, -0.213054, 0.822763,
		-0.367571, 0.929980, 0.005406,
		35.711422, 43.543182, 19.144836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145466, 43.191010, 18.468006>,  <35.968723, 42.892197, 19.141052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145466, 43.191010, 18.468006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544918, 43.203770, 18.451450>,  <36.784592, 43.211426, 18.441517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544918, 43.203770, 18.451450>,  <36.145466, 43.191010, 18.468006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544918, 43.203770, 18.451450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051872, -0.509405, 0.858962,
		0.006315, -0.859936, -0.510364,
		0.998634, 0.031898, -0.041390,
		36.844509, 43.213341, 18.439034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487656, 42.490387, 18.499920>,  <36.145466, 43.191010, 18.468006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487656, 42.490387, 18.499920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.687569, 42.775818, 18.696297>,  <36.807514, 42.947079, 18.814123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.687569, 42.775818, 18.696297>,  <36.487656, 42.490387, 18.499920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687569, 42.775818, 18.696297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219253, -0.444121, 0.868726,
		0.837943, -0.541812, -0.065508,
		0.499779, 0.713580, 0.490942,
		36.837502, 42.989891, 18.843578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937660, 42.170570, 18.913748>,  <36.487656, 42.490387, 18.499920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937660, 42.170570, 18.913748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.866779, 42.522587, 19.089991>,  <36.824253, 42.733795, 19.195736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.866779, 42.522587, 19.089991>,  <36.937660, 42.170570, 18.913748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866779, 42.522587, 19.089991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229405, -0.472292, 0.851066,
		0.957065, 0.049732, 0.285575,
		-0.177200, 0.880038, 0.440606,
		36.813618, 42.786598, 19.222172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220314, 42.123917, 19.679920>,  <36.937660, 42.170570, 18.913748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220314, 42.123917, 19.679920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930950, 42.390285, 19.607002>,  <36.757332, 42.550106, 19.563251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930950, 42.390285, 19.607002>,  <37.220314, 42.123917, 19.679920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930950, 42.390285, 19.607002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336935, -0.110049, 0.935074,
		0.602626, 0.737860, 0.303983,
		-0.723406, 0.665922, -0.182293,
		36.713928, 42.590061, 19.552315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213650, 42.541859, 20.215536>,  <37.220314, 42.123917, 19.679920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213650, 42.541859, 20.215536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.845531, 42.544090, 20.059061>,  <36.624660, 42.545429, 19.965176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.845531, 42.544090, 20.059061>,  <37.213650, 42.541859, 20.215536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845531, 42.544090, 20.059061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390026, -0.091311, 0.916265,
		-0.030608, 0.995807, 0.086209,
		-0.920295, 0.005578, -0.391185,
		36.569443, 42.545765, 19.941706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830154, 43.087601, 20.538948>,  <37.213650, 42.541859, 20.215536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830154, 43.087601, 20.538948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578934, 42.813843, 20.390806>,  <36.428204, 42.649590, 20.301922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578934, 42.813843, 20.390806>,  <36.830154, 43.087601, 20.538948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578934, 42.813843, 20.390806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445950, -0.073479, 0.892037,
		-0.637716, 0.725402, -0.259056,
		-0.628050, -0.684392, -0.370352,
		36.390518, 42.608524, 20.279701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184223, 43.334003, 20.575754>,  <36.830154, 43.087601, 20.538948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184223, 43.334003, 20.575754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147583, 42.935719, 20.570717>,  <36.125599, 42.696747, 20.567694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147583, 42.935719, 20.570717>,  <36.184223, 43.334003, 20.575754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147583, 42.935719, 20.570717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445984, 0.029713, 0.894548,
		-0.890342, 0.087555, -0.446795,
		-0.091598, -0.995717, -0.012594,
		36.120102, 42.637005, 20.566938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575115, 43.218861, 20.921473>,  <36.184223, 43.334003, 20.575754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575115, 43.218861, 20.921473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809303, 42.900459, 20.982929>,  <35.949814, 42.709419, 21.019804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809303, 42.900459, 20.982929>,  <35.575115, 43.218861, 20.921473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809303, 42.900459, 20.982929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280971, -0.021459, 0.959476,
		-0.760450, -0.604911, -0.236218,
		0.585467, -0.796004, 0.153644,
		35.984943, 42.661659, 21.029022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148941, 42.685783, 21.198101>,  <35.575115, 43.218861, 20.921473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148941, 42.685783, 21.198101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518826, 42.592701, 21.318604>,  <35.740757, 42.536850, 21.390905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518826, 42.592701, 21.318604>,  <35.148941, 42.685783, 21.198101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518826, 42.592701, 21.318604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325850, -0.074744, 0.942462,
		-0.196800, -0.969671, -0.144944,
		0.924711, -0.232707, 0.301258,
		35.796238, 42.522888, 21.408981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037548, 42.247105, 21.691620>,  <35.148941, 42.685783, 21.198101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037548, 42.247105, 21.691620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413273, 42.354038, 21.777624>,  <35.638706, 42.418198, 21.829226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413273, 42.354038, 21.777624>,  <35.037548, 42.247105, 21.691620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413273, 42.354038, 21.777624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171742, -0.176121, 0.969271,
		0.296984, -0.947373, -0.119520,
		0.939311, 0.267331, 0.215008,
		35.695065, 42.434238, 21.842127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311398, 41.673679, 22.071674>,  <35.037548, 42.247105, 21.691620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311398, 41.673679, 22.071674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537598, 41.994686, 22.147751>,  <35.673317, 42.187290, 22.193396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537598, 41.994686, 22.147751>,  <35.311398, 41.673679, 22.071674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537598, 41.994686, 22.147751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017293, -0.219015, 0.975568,
		0.824567, -0.554973, -0.109975,
		0.565500, 0.802519, 0.190189,
		35.707249, 42.235443, 22.204807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765392, 41.394119, 22.601793>,  <35.311398, 41.673679, 22.071674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765392, 41.394119, 22.601793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791042, 41.791576, 22.638788>,  <35.806431, 42.030052, 22.660984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791042, 41.791576, 22.638788>,  <35.765392, 41.394119, 22.601793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791042, 41.791576, 22.638788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092787, -0.086339, 0.991935,
		0.993619, -0.072191, 0.086661,
		0.064126, 0.993647, 0.092486,
		35.810280, 42.089672, 22.666534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206932, 41.398949, 23.146963>,  <35.765392, 41.394119, 22.601793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206932, 41.398949, 23.146963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011955, 41.744850, 23.098618>,  <35.894970, 41.952389, 23.069611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011955, 41.744850, 23.098618>,  <36.206932, 41.398949, 23.146963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011955, 41.744850, 23.098618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308579, -0.041115, 0.950310,
		0.816811, 0.500516, 0.286884,
		-0.487441, 0.864750, -0.120865,
		35.865723, 42.004276, 23.062359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424129, 41.851086, 23.649603>,  <36.206932, 41.398949, 23.146963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424129, 41.851086, 23.649603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056522, 41.974266, 23.551161>,  <35.835957, 42.048176, 23.492096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056522, 41.974266, 23.551161>,  <36.424129, 41.851086, 23.649603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056522, 41.974266, 23.551161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275500, -0.055203, 0.959715,
		0.281963, 0.949798, 0.135574,
		-0.919019, 0.307955, -0.246104,
		35.780815, 42.066654, 23.477329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185684, 41.981560, 24.296593>,  <36.424129, 41.851086, 23.649603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185684, 41.981560, 24.296593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.852989, 42.014709, 24.077011>,  <35.653374, 42.034599, 23.945261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.852989, 42.014709, 24.077011>,  <36.185684, 41.981560, 24.296593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852989, 42.014709, 24.077011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542641, -0.330282, 0.772305,
		-0.117307, 0.940237, 0.319677,
		-0.831733, 0.082873, -0.548955,
		35.603470, 42.039570, 23.912325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581558, 42.309277, 24.722784>,  <36.185684, 41.981560, 24.296593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581558, 42.309277, 24.722784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444309, 42.061745, 24.440136>,  <35.361958, 41.913223, 24.270548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444309, 42.061745, 24.440136>,  <35.581558, 42.309277, 24.722784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444309, 42.061745, 24.440136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453912, -0.549372, 0.701537,
		-0.822331, 0.561458, -0.092393,
		-0.343126, -0.618834, -0.706618,
		35.341373, 41.876095, 24.228151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908039, 42.220623, 24.940870>,  <35.581558, 42.309277, 24.722784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908039, 42.220623, 24.940870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988533, 41.917362, 24.692772>,  <35.036831, 41.735405, 24.543913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988533, 41.917362, 24.692772>,  <34.908039, 42.220623, 24.940870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988533, 41.917362, 24.692772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532685, -0.616088, 0.580243,
		-0.822040, 0.213630, -0.527837,
		0.201237, -0.758154, -0.620247,
		35.048904, 41.689915, 24.506699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395428, 41.777676, 25.080566>,  <34.908039, 42.220623, 24.940870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395428, 41.777676, 25.080566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652054, 41.531670, 24.897200>,  <34.806030, 41.384068, 24.787180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652054, 41.531670, 24.897200>,  <34.395428, 41.777676, 25.080566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652054, 41.531670, 24.897200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375742, -0.772989, 0.511180,
		-0.668735, -0.155711, -0.727013,
		0.641570, -0.615014, -0.458418,
		34.844524, 41.347164, 24.759674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025333, 41.224895, 25.008087>,  <34.395428, 41.777676, 25.080566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025333, 41.224895, 25.008087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398636, 41.088646, 24.962454>,  <34.622616, 41.006897, 24.935074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398636, 41.088646, 24.962454>,  <34.025333, 41.224895, 25.008087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398636, 41.088646, 24.962454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270764, -0.875736, 0.399716,
		-0.236057, -0.342147, -0.909512,
		0.933255, -0.340619, -0.114082,
		34.678612, 40.986462, 24.928228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981129, 40.572479, 24.813437>,  <34.025333, 41.224895, 25.008087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981129, 40.572479, 24.813437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366417, 40.562187, 24.920433>,  <34.597588, 40.556011, 24.984631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366417, 40.562187, 24.920433>,  <33.981129, 40.572479, 24.813437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366417, 40.562187, 24.920433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169094, -0.831678, 0.528885,
		0.208859, -0.554662, -0.805436,
		0.963216, -0.025732, 0.267493,
		34.655380, 40.554466, 25.000681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254875, 39.876209, 24.639723>,  <33.981129, 40.572479, 24.813437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254875, 39.876209, 24.639723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509281, 40.023407, 24.911037>,  <34.661922, 40.111725, 25.073826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509281, 40.023407, 24.911037>,  <34.254875, 39.876209, 24.639723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509281, 40.023407, 24.911037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005087, -0.880952, 0.473178,
		0.771663, -0.297496, -0.562167,
		0.636011, 0.367994, 0.678285,
		34.700085, 40.133804, 25.114523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881710, 39.444824, 24.629980>,  <34.254875, 39.876209, 24.639723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881710, 39.444824, 24.629980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826202, 39.615681, 24.987368>,  <34.792900, 39.718197, 25.201801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826202, 39.615681, 24.987368>,  <34.881710, 39.444824, 24.629980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826202, 39.615681, 24.987368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110885, -0.903228, 0.414588,
		0.984098, -0.041542, 0.172702,
		-0.138767, 0.427145, 0.893471,
		34.784573, 39.743824, 25.255409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236641, 38.971024, 25.036417>,  <34.881710, 39.444824, 24.629980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236641, 38.971024, 25.036417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026955, 39.190502, 25.296917>,  <34.901142, 39.322189, 25.453217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026955, 39.190502, 25.296917>,  <35.236641, 38.971024, 25.036417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026955, 39.190502, 25.296917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167603, -0.816269, 0.552824,
		0.834929, 0.180648, 0.519865,
		-0.524216, 0.548700, 0.651250,
		34.869690, 39.355114, 25.492292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402046, 38.595188, 25.651314>,  <35.236641, 38.971024, 25.036417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402046, 38.595188, 25.651314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073391, 38.802319, 25.746620>,  <34.876198, 38.926598, 25.803804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073391, 38.802319, 25.746620>,  <35.402046, 38.595188, 25.651314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073391, 38.802319, 25.746620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172140, -0.623894, 0.762315,
		0.543398, 0.585330, 0.601753,
		-0.821636, 0.517826, 0.238264,
		34.826900, 38.957668, 25.818100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390591, 38.775490, 26.317892>,  <35.402046, 38.595188, 25.651314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390591, 38.775490, 26.317892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000473, 38.806671, 26.235210>,  <34.766403, 38.825378, 26.185602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000473, 38.806671, 26.235210>,  <35.390591, 38.775490, 26.317892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000473, 38.806671, 26.235210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214339, -0.560484, 0.799948,
		-0.053493, 0.824488, 0.563345,
		-0.975294, 0.077955, -0.206702,
		34.707886, 38.830059, 26.173201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061012, 38.927666, 26.974800>,  <35.390591, 38.775490, 26.317892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061012, 38.927666, 26.974800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761005, 38.817535, 26.734245>,  <34.581001, 38.751457, 26.589912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761005, 38.817535, 26.734245>,  <35.061012, 38.927666, 26.974800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761005, 38.817535, 26.734245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508410, -0.341602, 0.790460,
		-0.423071, 0.898611, 0.116229,
		-0.750020, -0.275328, -0.601385,
		34.535999, 38.734936, 26.553829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543831, 39.292953, 27.253811>,  <35.061012, 38.927666, 26.974800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543831, 39.292953, 27.253811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390877, 38.988510, 27.044243>,  <34.299107, 38.805843, 26.918503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390877, 38.988510, 27.044243>,  <34.543831, 39.292953, 27.253811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390877, 38.988510, 27.044243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561327, -0.259047, 0.786007,
		-0.733959, 0.594646, -0.328178,
		-0.382382, -0.761111, -0.523921,
		34.276161, 38.760178, 26.887066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802925, 39.266598, 27.368999>,  <34.543831, 39.292953, 27.253811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802925, 39.266598, 27.368999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917133, 38.903187, 27.246981>,  <33.985661, 38.685139, 27.173769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917133, 38.903187, 27.246981>,  <33.802925, 39.266598, 27.368999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917133, 38.903187, 27.246981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517620, -0.414072, 0.748741,
		-0.806564, -0.055884, -0.588500,
		0.285524, -0.908527, -0.305049,
		34.002792, 38.630630, 27.155466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163395, 38.963520, 27.502296>,  <33.802925, 39.266598, 27.368999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163395, 38.963520, 27.502296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425190, 38.664917, 27.454334>,  <33.582268, 38.485756, 27.425556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425190, 38.664917, 27.454334>,  <33.163395, 38.963520, 27.502296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425190, 38.664917, 27.454334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544143, -0.575176, 0.610804,
		-0.524935, -0.334517, -0.782651,
		0.654486, -0.746505, -0.119905,
		33.621536, 38.440964, 27.418362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794659, 38.288177, 27.439167>,  <33.163395, 38.963520, 27.502296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794659, 38.288177, 27.439167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164307, 38.169941, 27.536024>,  <33.386093, 38.098999, 27.594139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164307, 38.169941, 27.536024>,  <32.794659, 38.288177, 27.439167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164307, 38.169941, 27.536024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377903, -0.613262, 0.693613,
		-0.056525, -0.732487, -0.678430,
		0.924118, -0.295587, 0.242144,
		33.441544, 38.081264, 27.608667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775421, 37.562931, 27.390699>,  <32.794659, 38.288177, 27.439167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775421, 37.562931, 27.390699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092571, 37.652008, 27.617594>,  <33.282860, 37.705456, 27.753731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092571, 37.652008, 27.617594>,  <32.775421, 37.562931, 27.390699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092571, 37.652008, 27.617594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274107, -0.701022, 0.658357,
		0.544257, -0.677478, -0.494781,
		0.792875, 0.222693, 0.567237,
		33.330433, 37.718815, 27.787766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049961, 36.929714, 27.614052>,  <32.775421, 37.562931, 27.390699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049961, 36.929714, 27.614052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203815, 37.204903, 27.860224>,  <33.296127, 37.370018, 28.007927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203815, 37.204903, 27.860224>,  <33.049961, 36.929714, 27.614052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203815, 37.204903, 27.860224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232498, -0.573019, 0.785872,
		0.893310, -0.445357, -0.060449,
		0.384631, 0.687973, 0.615428,
		33.319206, 37.411293, 28.044851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420021, 36.522373, 28.191002>,  <33.049961, 36.929714, 27.614052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420021, 36.522373, 28.191002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345325, 36.884708, 28.343102>,  <33.300507, 37.102108, 28.434361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345325, 36.884708, 28.343102>,  <33.420021, 36.522373, 28.191002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345325, 36.884708, 28.343102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451868, -0.422880, 0.785486,
		0.872321, -0.025141, 0.488287,
		-0.186739, 0.905837, 0.380247,
		33.289303, 37.156460, 28.457176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420193, 36.372669, 28.910761>,  <33.420021, 36.522373, 28.191002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420193, 36.372669, 28.910761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275021, 36.745171, 28.897823>,  <33.187916, 36.968670, 28.890060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275021, 36.745171, 28.897823>,  <33.420193, 36.372669, 28.910761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275021, 36.745171, 28.897823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490700, -0.161498, 0.856232,
		0.792145, 0.326626, 0.515579,
		-0.362932, 0.931254, -0.032345,
		33.166142, 37.024548, 28.888119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830521, 36.785904, 29.483862>,  <33.420193, 36.372669, 28.910761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830521, 36.785904, 29.483862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473652, 36.944176, 29.396711>,  <33.259533, 37.039139, 29.344421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473652, 36.944176, 29.396711>,  <33.830521, 36.785904, 29.483862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473652, 36.944176, 29.396711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288027, -0.126770, 0.949194,
		0.347956, 0.909597, 0.227067,
		-0.892170, 0.395679, -0.217878,
		33.206001, 37.062878, 29.331348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616974, 37.154373, 30.072054>,  <33.830521, 36.785904, 29.483862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616974, 37.154373, 30.072054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275532, 37.128094, 29.865351>,  <33.070667, 37.112328, 29.741329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275532, 37.128094, 29.865351>,  <33.616974, 37.154373, 30.072054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275532, 37.128094, 29.865351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515178, -0.040384, 0.856131,
		-0.077113, 0.997022, 0.000627,
		-0.853607, -0.065696, -0.516758,
		33.019451, 37.108383, 29.710323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174137, 37.592884, 30.350515>,  <33.616974, 37.154373, 30.072054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174137, 37.592884, 30.350515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950676, 37.314541, 30.169987>,  <32.816597, 37.147537, 30.061670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950676, 37.314541, 30.169987>,  <33.174137, 37.592884, 30.350515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950676, 37.314541, 30.169987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424450, -0.227637, 0.876370,
		-0.712562, 0.681153, -0.168184,
		-0.558657, -0.695853, -0.451321,
		32.783077, 37.105785, 30.034590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531662, 37.623543, 30.625896>,  <33.174137, 37.592884, 30.350515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531662, 37.623543, 30.625896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526825, 37.253826, 30.473293>,  <32.523922, 37.031998, 30.381731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526825, 37.253826, 30.473293>,  <32.531662, 37.623543, 30.625896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526825, 37.253826, 30.473293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343211, -0.354520, 0.869783,
		-0.939181, 0.141454, -0.312938,
		-0.012092, -0.924287, -0.381507,
		32.523197, 36.976540, 30.358841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.915884, 37.384228, 30.696245>,  <32.531662, 37.623543, 30.625896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.915884, 37.384228, 30.696245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136654, 37.052223, 30.664095>,  <32.269115, 36.853020, 30.644804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136654, 37.052223, 30.664095>,  <31.915884, 37.384228, 30.696245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136654, 37.052223, 30.664095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421690, -0.360954, 0.831799,
		-0.719415, -0.425196, -0.549227,
		0.551923, -0.830012, -0.080375,
		32.302231, 36.803219, 30.639982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578619, 37.028183, 31.116976>,  <31.915884, 37.384228, 30.696245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578619, 37.028183, 31.116976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878151, 36.770878, 31.053143>,  <32.057869, 36.616497, 31.014843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878151, 36.770878, 31.053143>,  <31.578619, 37.028183, 31.116976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878151, 36.770878, 31.053143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263497, -0.509895, 0.818888,
		-0.608130, -0.571159, -0.551322,
		0.748832, -0.643261, -0.159584,
		32.102798, 36.577900, 31.005268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.249216, 36.352886, 31.210354>,  <31.578619, 37.028183, 31.116976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.249216, 36.352886, 31.210354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642487, 36.329933, 31.279718>,  <31.878448, 36.316162, 31.321337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642487, 36.329933, 31.279718>,  <31.249216, 36.352886, 31.210354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642487, 36.329933, 31.279718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182277, -0.369600, 0.911137,
		0.011810, -0.927418, -0.373841,
		0.983176, -0.057382, 0.173412,
		31.937439, 36.312717, 31.331741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385448, 35.683407, 31.398088>,  <31.249216, 36.352886, 31.210354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.385448, 35.683407, 31.398088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694622, 35.893867, 31.539927>,  <31.880125, 36.020145, 31.625029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694622, 35.893867, 31.539927>,  <31.385448, 35.683407, 31.398088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694622, 35.893867, 31.539927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012386, -0.546246, 0.837533,
		0.634369, -0.651748, -0.415694,
		0.772932, 0.526156, 0.354594,
		31.926502, 36.051716, 31.646305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962425, 35.186626, 31.645878>,  <31.385448, 35.683407, 31.398088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962425, 35.186626, 31.645878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.024075, 35.531887, 31.838217>,  <32.061066, 35.739044, 31.953621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.024075, 35.531887, 31.838217>,  <31.962425, 35.186626, 31.645878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.024075, 35.531887, 31.838217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005876, -0.487456, 0.873128,
		0.988034, -0.131742, -0.080200,
		0.154122, 0.863152, 0.480849,
		32.070312, 35.790833, 31.982471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346451, 34.988449, 32.272682>,  <31.962425, 35.186626, 31.645878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346451, 34.988449, 32.272682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209866, 35.358650, 32.338215>,  <32.127914, 35.580772, 32.377533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209866, 35.358650, 32.338215>,  <32.346451, 34.988449, 32.272682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209866, 35.358650, 32.338215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041244, -0.159387, 0.986354,
		0.938991, 0.343558, 0.016253,
		-0.341461, 0.925507, 0.163833,
		32.107426, 35.636303, 32.387363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770470, 35.267033, 32.737858>,  <32.346451, 34.988449, 32.272682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770470, 35.267033, 32.737858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437756, 35.486012, 32.774593>,  <32.238129, 35.617397, 32.796635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437756, 35.486012, 32.774593>,  <32.770470, 35.267033, 32.737858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437756, 35.486012, 32.774593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006503, -0.155818, 0.987764,
		0.555059, 0.822206, 0.126047,
		-0.831786, 0.547448, 0.091835,
		32.188221, 35.650246, 32.802143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867756, 35.952904, 32.997425>,  <32.770470, 35.267033, 32.737858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867756, 35.952904, 32.997425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138649, 36.029060, 33.281708>,  <33.301186, 36.074753, 33.452278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138649, 36.029060, 33.281708>,  <32.867756, 35.952904, 32.997425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138649, 36.029060, 33.281708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386807, 0.729561, -0.564022,
		-0.625890, 0.656881, 0.420438,
		0.677231, 0.190388, 0.710711,
		33.341820, 36.086178, 33.494923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988506, 36.714199, 32.977261>,  <32.867756, 35.952904, 32.997425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988506, 36.714199, 32.977261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325165, 36.575745, 33.143066>,  <33.527161, 36.492672, 33.242550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325165, 36.575745, 33.143066>,  <32.988506, 36.714199, 32.977261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325165, 36.575745, 33.143066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534072, 0.647250, -0.543907,
		-0.080030, 0.679158, 0.729616,
		0.841643, -0.346138, 0.414518,
		33.577656, 36.471905, 33.267422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.364773, 37.340115, 33.225777>,  <32.988506, 36.714199, 32.977261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.364773, 37.340115, 33.225777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630375, 37.042755, 33.193630>,  <33.789738, 36.864342, 33.174343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630375, 37.042755, 33.193630>,  <33.364773, 37.340115, 33.225777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630375, 37.042755, 33.193630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594786, 0.590266, -0.545726,
		0.453127, 0.314566, 0.834101,
		0.664008, -0.743394, -0.080366,
		33.829578, 36.819736, 33.169521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995361, 37.619499, 33.240940>,  <33.364773, 37.340115, 33.225777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995361, 37.619499, 33.240940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071297, 37.265411, 33.071075>,  <34.116859, 37.052959, 32.969154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071297, 37.265411, 33.071075>,  <33.995361, 37.619499, 33.240940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071297, 37.265411, 33.071075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682163, 0.430004, -0.591397,
		0.706126, -0.177420, 0.685499,
		0.189842, -0.885223, -0.424666,
		34.128250, 36.999844, 32.943676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734005, 37.537945, 33.235020>,  <33.995361, 37.619499, 33.240940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734005, 37.537945, 33.235020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613010, 37.270855, 32.962948>,  <34.540413, 37.110603, 32.799706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613010, 37.270855, 32.962948>,  <34.734005, 37.537945, 33.235020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613010, 37.270855, 32.962948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687826, 0.341100, -0.640738,
		0.659846, -0.661663, 0.356097,
		-0.302489, -0.667721, -0.680183,
		34.522263, 37.070538, 32.758892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389732, 37.410748, 32.906456>,  <34.734005, 37.537945, 33.235020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389732, 37.410748, 32.906456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099083, 37.298782, 32.655483>,  <34.924694, 37.231606, 32.504898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099083, 37.298782, 32.655483>,  <35.389732, 37.410748, 32.906456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099083, 37.298782, 32.655483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601061, 0.183369, -0.777883,
		0.332790, -0.942351, 0.035003,
		-0.726620, -0.279911, -0.627434,
		34.881096, 37.214809, 32.467255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714539, 36.897953, 32.449986>,  <35.389732, 37.410748, 32.906456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714539, 36.897953, 32.449986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.396309, 37.059998, 32.269787>,  <35.205372, 37.157223, 32.161667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.396309, 37.059998, 32.269787>,  <35.714539, 36.897953, 32.449986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396309, 37.059998, 32.269787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556868, 0.196057, -0.807130,
		-0.238653, -0.893000, -0.381570,
		-0.795577, 0.405108, -0.450494,
		35.157635, 37.181530, 32.134640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664749, 36.636272, 31.817122>,  <35.714539, 36.897953, 32.449986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664749, 36.636272, 31.817122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475765, 36.988808, 31.814922>,  <35.362373, 37.200329, 31.813602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475765, 36.988808, 31.814922>,  <35.664749, 36.636272, 31.817122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475765, 36.988808, 31.814922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442023, 0.231551, -0.866603,
		-0.762494, -0.411866, -0.498969,
		-0.472461, 0.881335, -0.005498,
		35.334026, 37.253208, 31.813272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523258, 36.781502, 31.080385>,  <35.664749, 36.636272, 31.817122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523258, 36.781502, 31.080385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457073, 37.138229, 31.248804>,  <35.417362, 37.352264, 31.349855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457073, 37.138229, 31.248804>,  <35.523258, 36.781502, 31.080385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457073, 37.138229, 31.248804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341495, 0.452329, -0.823881,
		-0.925205, 0.007467, -0.379394,
		-0.165459, 0.891820, 0.421047,
		35.407436, 37.405777, 31.375118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039112, 37.111927, 30.647038>,  <35.523258, 36.781502, 31.080385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039112, 37.111927, 30.647038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249119, 37.395157, 30.835920>,  <35.375122, 37.565094, 30.949249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249119, 37.395157, 30.835920>,  <35.039112, 37.111927, 30.647038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249119, 37.395157, 30.835920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176711, 0.452043, -0.874317,
		-0.832542, 0.542479, 0.112207,
		0.525021, 0.708077, 0.472207,
		35.406624, 37.607578, 30.977583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786613, 37.845486, 30.323015>,  <35.039112, 37.111927, 30.647038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786613, 37.845486, 30.323015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.132851, 37.921818, 30.508198>,  <35.340591, 37.967617, 30.619308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.132851, 37.921818, 30.508198>,  <34.786613, 37.845486, 30.323015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132851, 37.921818, 30.508198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320635, 0.498927, -0.805149,
		-0.384629, 0.845373, 0.370682,
		0.865594, 0.190831, 0.462958,
		35.392529, 37.979069, 30.647085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940323, 38.485001, 30.127647>,  <34.786613, 37.845486, 30.323015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940323, 38.485001, 30.127647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289265, 38.384132, 30.295176>,  <35.498631, 38.323612, 30.395693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289265, 38.384132, 30.295176>,  <34.940323, 38.485001, 30.127647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289265, 38.384132, 30.295176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476554, 0.629777, -0.613414,
		-0.109080, 0.734704, 0.669560,
		0.872352, -0.252171, 0.418823,
		35.550972, 38.308479, 30.420822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374905, 39.168884, 30.168184>,  <34.940323, 38.485001, 30.127647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374905, 39.168884, 30.168184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631664, 38.862316, 30.177710>,  <35.785721, 38.678375, 30.183426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631664, 38.862316, 30.177710>,  <35.374905, 39.168884, 30.168184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631664, 38.862316, 30.177710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659394, 0.535874, -0.527294,
		0.391367, 0.354172, 0.849349,
		0.641897, -0.766421, 0.023815,
		35.824234, 38.632389, 30.184855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082684, 39.420212, 30.375679>,  <35.374905, 39.168884, 30.168184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082684, 39.420212, 30.375679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142281, 39.072937, 30.186344>,  <36.178040, 38.864571, 30.072742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142281, 39.072937, 30.186344>,  <36.082684, 39.420212, 30.375679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142281, 39.072937, 30.186344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497861, 0.479446, -0.722680,
		0.854363, -0.127984, 0.503671,
		0.148991, -0.868189, -0.473339,
		36.186977, 38.812481, 30.044342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760845, 39.469471, 30.114239>,  <36.082684, 39.420212, 30.375679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760845, 39.469471, 30.114239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547852, 39.202904, 29.905489>,  <36.420055, 39.042965, 29.780239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547852, 39.202904, 29.905489>,  <36.760845, 39.469471, 30.114239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547852, 39.202904, 29.905489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433931, 0.314445, -0.844291,
		0.726751, -0.676026, 0.121743,
		-0.532481, -0.666418, -0.521872,
		36.388107, 39.002979, 29.748928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220116, 39.304886, 29.648891>,  <36.760845, 39.469471, 30.114239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220116, 39.304886, 29.648891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867207, 39.191242, 29.498760>,  <36.655460, 39.123055, 29.408682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867207, 39.191242, 29.498760>,  <37.220116, 39.304886, 29.648891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867207, 39.191242, 29.498760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270189, 0.347264, -0.898001,
		0.385474, -0.893692, -0.229617,
		-0.882274, -0.284116, -0.375327,
		36.602524, 39.106007, 29.386162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375622, 39.033131, 29.105007>,  <37.220116, 39.304886, 29.648891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375622, 39.033131, 29.105007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990917, 39.111202, 29.028147>,  <36.760094, 39.158043, 28.982031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990917, 39.111202, 29.028147>,  <37.375622, 39.033131, 29.105007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990917, 39.111202, 29.028147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250026, 0.339225, -0.906870,
		-0.111817, -0.920235, -0.375052,
		-0.961761, 0.195176, -0.192152,
		36.702389, 39.169754, 28.970501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322186, 38.874809, 28.349030>,  <37.375622, 39.033131, 29.105007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322186, 38.874809, 28.349030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001465, 39.095985, 28.439695>,  <36.809032, 39.228691, 28.494095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001465, 39.095985, 28.439695>,  <37.322186, 38.874809, 28.349030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001465, 39.095985, 28.439695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056626, 0.307292, -0.949929,
		-0.594903, -0.774489, -0.215076,
		-0.801800, 0.552937, 0.226665,
		36.760925, 39.261868, 28.507694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971462, 38.844700, 27.810667>,  <37.322186, 38.874809, 28.349030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971462, 38.844700, 27.810667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.823898, 39.168293, 27.993727>,  <36.735359, 39.362450, 28.103563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.823898, 39.168293, 27.993727>,  <36.971462, 38.844700, 27.810667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823898, 39.168293, 27.993727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046162, 0.475828, -0.878326,
		-0.928317, -0.345153, -0.138195,
		-0.368914, 0.808986, 0.457652,
		36.713223, 39.410988, 28.131021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565422, 39.159260, 27.395159>,  <36.971462, 38.844700, 27.810667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565422, 39.159260, 27.395159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565556, 39.469681, 27.647429>,  <36.565636, 39.655933, 27.798790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565556, 39.469681, 27.647429>,  <36.565422, 39.159260, 27.395159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565556, 39.469681, 27.647429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094853, 0.627805, -0.772569,
		-0.995491, 0.060077, -0.073403,
		0.000330, 0.776048, 0.630673,
		36.565655, 39.702496, 27.836630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946167, 39.479309, 27.305567>,  <36.565422, 39.159260, 27.395159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946167, 39.479309, 27.305567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.218472, 39.730930, 27.455692>,  <36.381855, 39.881901, 27.545767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.218472, 39.730930, 27.455692>,  <35.946167, 39.479309, 27.305567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218472, 39.730930, 27.455692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084760, 0.576573, -0.812638,
		-0.727585, 0.521401, 0.445827,
		0.680761, 0.629051, 0.375312,
		36.422699, 39.919647, 27.568285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732117, 40.162968, 26.994236>,  <35.946167, 39.479309, 27.305567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732117, 40.162968, 26.994236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.121330, 40.153934, 27.086050>,  <36.354858, 40.148514, 27.141138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.121330, 40.153934, 27.086050>,  <35.732117, 40.162968, 26.994236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121330, 40.153934, 27.086050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215432, 0.444407, -0.869535,
		-0.082375, 0.895540, 0.437289,
		0.973038, -0.022578, 0.229536,
		36.413242, 40.147160, 27.154911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987000, 40.818642, 26.756741>,  <35.732117, 40.162968, 26.994236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987000, 40.818642, 26.756741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323536, 40.604809, 26.788666>,  <36.525455, 40.476509, 26.807821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323536, 40.604809, 26.788666>,  <35.987000, 40.818642, 26.756741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323536, 40.604809, 26.788666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317818, 0.369841, -0.873046,
		0.437197, 0.759894, 0.481062,
		0.841339, -0.534583, 0.079815,
		36.575939, 40.444435, 26.812611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519421, 41.299873, 26.626991>,  <35.987000, 40.818642, 26.756741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519421, 41.299873, 26.626991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728062, 40.961044, 26.586206>,  <36.853245, 40.757748, 26.561735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728062, 40.961044, 26.586206>,  <36.519421, 41.299873, 26.626991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728062, 40.961044, 26.586206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464215, 0.382035, -0.799095,
		0.715846, 0.369477, 0.592495,
		0.521601, -0.847075, -0.101961,
		36.884541, 40.706921, 26.555618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268299, 41.401619, 26.558277>,  <36.519421, 41.299873, 26.626991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268299, 41.401619, 26.558277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223488, 41.042900, 26.387068>,  <37.196602, 40.827667, 26.284342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223488, 41.042900, 26.387068>,  <37.268299, 41.401619, 26.558277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223488, 41.042900, 26.387068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522559, 0.313200, -0.792993,
		0.845211, -0.312502, 0.433544,
		-0.112026, -0.896799, -0.428021,
		37.189880, 40.773861, 26.258661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938526, 41.323879, 26.158161>,  <37.268299, 41.401619, 26.558277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938526, 41.323879, 26.158161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.665920, 41.069641, 26.013077>,  <37.502357, 40.917099, 25.926027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.665920, 41.069641, 26.013077>,  <37.938526, 41.323879, 26.158161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665920, 41.069641, 26.013077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391353, 0.102268, -0.914540,
		0.618374, -0.765217, 0.179046,
		-0.681511, -0.635598, -0.362710,
		37.461468, 40.878963, 25.904264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352989, 40.770977, 25.712694>,  <37.938526, 41.323879, 26.158161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352989, 40.770977, 25.712694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969383, 40.792168, 25.601353>,  <37.739220, 40.804882, 25.534548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969383, 40.792168, 25.601353>,  <38.352989, 40.770977, 25.712694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969383, 40.792168, 25.601353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276441, -0.040658, -0.960171,
		-0.062182, -0.997768, 0.024348,
		-0.959017, 0.052975, -0.278352,
		37.681679, 40.808060, 25.517847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249996, 40.270676, 25.283485>,  <38.352989, 40.770977, 25.712694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249996, 40.270676, 25.283485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.918312, 40.470844, 25.183893>,  <37.719303, 40.590946, 25.124138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.918312, 40.470844, 25.183893>,  <38.249996, 40.270676, 25.283485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918312, 40.470844, 25.183893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329406, 0.077651, -0.940990,
		-0.451563, -0.862290, -0.229232,
		-0.829206, 0.500426, -0.248980,
		37.669552, 40.620972, 25.109200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010696, 39.917984, 24.623531>,  <38.249996, 40.270676, 25.283485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010696, 39.917984, 24.623531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846592, 40.282558, 24.611050>,  <37.748127, 40.501301, 24.603561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846592, 40.282558, 24.611050>,  <38.010696, 39.917984, 24.623531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846592, 40.282558, 24.611050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249923, 0.079459, -0.965000,
		-0.877053, -0.403703, -0.260387,
		-0.410264, 0.911433, -0.031205,
		37.723515, 40.555988, 24.601688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590187, 40.035831, 24.014580>,  <38.010696, 39.917984, 24.623531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590187, 40.035831, 24.014580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.686466, 40.413013, 24.106573>,  <37.744232, 40.639324, 24.161770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.686466, 40.413013, 24.106573>,  <37.590187, 40.035831, 24.014580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686466, 40.413013, 24.106573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196704, 0.184643, -0.962920,
		-0.950460, 0.277010, -0.141041,
		0.240696, 0.942960, 0.229984,
		37.758675, 40.695900, 24.175568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351036, 40.436131, 23.515774>,  <37.590187, 40.035831, 24.014580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351036, 40.436131, 23.515774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599052, 40.698746, 23.687592>,  <37.747864, 40.856316, 23.790682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599052, 40.698746, 23.687592>,  <37.351036, 40.436131, 23.515774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599052, 40.698746, 23.687592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337664, 0.270883, -0.901446,
		-0.708187, 0.703978, -0.053729,
		0.620044, 0.656534, 0.429544,
		37.785065, 40.895706, 23.816454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311764, 40.992561, 23.041477>,  <37.351036, 40.436131, 23.515774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311764, 40.992561, 23.041477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657257, 41.037106, 23.238073>,  <37.864552, 41.063831, 23.356031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657257, 41.037106, 23.238073>,  <37.311764, 40.992561, 23.041477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657257, 41.037106, 23.238073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495074, -0.005299, -0.868835,
		-0.094150, 0.993766, -0.059709,
		0.863735, 0.111361, 0.491489,
		37.916378, 41.070515, 23.385519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637222, 41.573971, 22.749702>,  <37.311764, 40.992561, 23.041477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637222, 41.573971, 22.749702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.942677, 41.379128, 22.919210>,  <38.125950, 41.262222, 23.020916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.942677, 41.379128, 22.919210>,  <37.637222, 41.573971, 22.749702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942677, 41.379128, 22.919210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461588, -0.047032, -0.885847,
		0.451432, 0.872075, 0.188927,
		0.763639, -0.487107, 0.423771,
		38.171768, 41.232994, 23.046341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229599, 41.927174, 22.458059>,  <37.637222, 41.573971, 22.749702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229599, 41.927174, 22.458059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351650, 41.558136, 22.552471>,  <38.424881, 41.336712, 22.609118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351650, 41.558136, 22.552471>,  <38.229599, 41.927174, 22.458059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351650, 41.558136, 22.552471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636891, 0.013434, -0.770837,
		0.708001, 0.385531, 0.591693,
		0.305130, -0.922597, 0.236029,
		38.443188, 41.281357, 22.623280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931408, 41.839291, 22.346216>,  <38.229599, 41.927174, 22.458059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931408, 41.839291, 22.346216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.815975, 41.457016, 22.369463>,  <38.746716, 41.227650, 22.383411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.815975, 41.457016, 22.369463>,  <38.931408, 41.839291, 22.346216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815975, 41.457016, 22.369463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406837, -0.177340, -0.896122,
		0.866722, -0.234958, 0.439987,
		-0.288578, -0.955691, 0.058115,
		38.729401, 41.170307, 22.386898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533329, 41.535404, 22.108133>,  <38.931408, 41.839291, 22.346216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533329, 41.535404, 22.108133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238789, 41.267685, 22.068489>,  <39.062065, 41.107056, 22.044703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238789, 41.267685, 22.068489>,  <39.533329, 41.535404, 22.108133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238789, 41.267685, 22.068489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383348, -0.292003, -0.876230,
		0.557517, -0.683211, 0.471591,
		-0.736356, -0.669296, -0.099111,
		39.017883, 41.066895, 22.038755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924923, 40.865871, 21.905306>,  <39.533329, 41.535404, 22.108133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924923, 40.865871, 21.905306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.549397, 40.858185, 21.767750>,  <39.324081, 40.853573, 21.685215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.549397, 40.858185, 21.767750>,  <39.924923, 40.865871, 21.905306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.549397, 40.858185, 21.767750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326403, -0.368387, -0.870490,
		-0.109959, -0.929474, 0.352118,
		-0.938813, -0.019214, -0.343891,
		39.267754, 40.852421, 21.664583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797836, 40.311405, 21.546663>,  <39.924923, 40.865871, 21.905306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797836, 40.311405, 21.546663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487595, 40.510971, 21.391989>,  <39.301449, 40.630711, 21.299185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487595, 40.510971, 21.391989>,  <39.797836, 40.311405, 21.546663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487595, 40.510971, 21.391989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233738, -0.342050, -0.910147,
		-0.586351, -0.796296, 0.148680,
		-0.775603, 0.498914, -0.386686,
		39.254913, 40.660645, 21.275984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571316, 39.822739, 21.108040>,  <39.797836, 40.311405, 21.546663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571316, 39.822739, 21.108040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917084, 39.634411, 21.037487>,  <40.124542, 39.521412, 20.995155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917084, 39.634411, 21.037487>,  <39.571316, 39.822739, 21.108040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917084, 39.634411, 21.037487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121705, -0.536328, 0.835189,
		-0.487826, -0.700483, -0.520912,
		0.864415, -0.470824, -0.176383,
		40.176407, 39.493164, 20.984573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473412, 39.185631, 21.232843>,  <39.571316, 39.822739, 21.108040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473412, 39.185631, 21.232843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868977, 39.230675, 21.271572>,  <40.106316, 39.257702, 21.294809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868977, 39.230675, 21.271572>,  <39.473412, 39.185631, 21.232843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868977, 39.230675, 21.271572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034107, -0.462319, 0.886058,
		0.144544, -0.879534, -0.453351,
		0.988910, 0.112612, 0.096823,
		40.165649, 39.264458, 21.300619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708176, 38.467743, 21.504421>,  <39.473412, 39.185631, 21.232843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708176, 38.467743, 21.504421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014957, 38.712505, 21.581734>,  <40.199028, 38.859360, 21.628120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014957, 38.712505, 21.581734>,  <39.708176, 38.467743, 21.504421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014957, 38.712505, 21.581734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035297, -0.340973, 0.939410,
		0.640730, -0.713663, -0.283109,
		0.766954, 0.611901, 0.193281,
		40.245045, 38.896076, 21.639717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119846, 38.046333, 21.917395>,  <39.708176, 38.467743, 21.504421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119846, 38.046333, 21.917395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.249992, 38.420723, 21.971193>,  <40.328079, 38.645359, 22.003473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.249992, 38.420723, 21.971193>,  <40.119846, 38.046333, 21.917395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249992, 38.420723, 21.971193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017838, -0.136135, 0.990530,
		0.945422, -0.324679, -0.027597,
		0.325361, 0.935976, 0.134496,
		40.347599, 38.701515, 22.011541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671612, 38.044727, 22.394821>,  <40.119846, 38.046333, 21.917395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671612, 38.044727, 22.394821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532001, 38.418865, 22.417818>,  <40.448235, 38.643349, 22.431616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532001, 38.418865, 22.417818>,  <40.671612, 38.044727, 22.394821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532001, 38.418865, 22.417818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145129, -0.114559, 0.982758,
		0.925807, 0.334665, 0.175730,
		-0.349026, 0.935348, 0.057490,
		40.427292, 38.699471, 22.435064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931602, 38.217873, 23.040028>,  <40.671612, 38.044727, 22.394821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931602, 38.217873, 23.040028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684948, 38.526134, 22.975723>,  <40.536953, 38.711094, 22.937140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684948, 38.526134, 22.975723>,  <40.931602, 38.217873, 23.040028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684948, 38.526134, 22.975723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204310, 0.040551, 0.978066,
		0.760272, 0.635959, 0.132448,
		-0.616639, 0.770657, -0.160762,
		40.499958, 38.757332, 22.927494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.926369, 38.625027, 23.634567>,  <40.931602, 38.217873, 23.040028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.926369, 38.625027, 23.634567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.566826, 38.730362, 23.494448>,  <40.351101, 38.793564, 23.410376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.566826, 38.730362, 23.494448>,  <40.926369, 38.625027, 23.634567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.566826, 38.730362, 23.494448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361163, 0.007641, 0.932471,
		0.248232, 0.964673, 0.088240,
		-0.898856, 0.263338, -0.350301,
		40.297169, 38.809364, 23.389357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715916, 39.159794, 24.109726>,  <40.926369, 38.625027, 23.634567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.715916, 39.159794, 24.109726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.398468, 38.998508, 23.927481>,  <40.208000, 38.901737, 23.818134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.398468, 38.998508, 23.927481>,  <40.715916, 39.159794, 24.109726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398468, 38.998508, 23.927481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511969, 0.037998, 0.858163,
		-0.328709, 0.914318, -0.236588,
		-0.793623, -0.403212, -0.455612,
		40.160381, 38.877544, 23.790796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159031, 39.635719, 24.266293>,  <40.715916, 39.159794, 24.109726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.159031, 39.635719, 24.266293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.998013, 39.284740, 24.161951>,  <39.901402, 39.074154, 24.099346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.998013, 39.284740, 24.161951>,  <40.159031, 39.635719, 24.266293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.998013, 39.284740, 24.161951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641619, 0.067209, 0.764074,
		-0.652901, 0.474945, -0.590040,
		-0.402549, -0.877446, -0.260853,
		39.877247, 39.021507, 24.083694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488068, 39.754143, 24.379654>,  <40.159031, 39.635719, 24.266293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488068, 39.754143, 24.379654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.545437, 39.359055, 24.354862>,  <39.579857, 39.122002, 24.339987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.545437, 39.359055, 24.354862>,  <39.488068, 39.754143, 24.379654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545437, 39.359055, 24.354862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495452, -0.125873, 0.859467,
		-0.856713, -0.092561, -0.507420,
		0.143424, -0.987719, -0.061978,
		39.588463, 39.062740, 24.336269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966320, 39.553539, 24.767258>,  <39.488068, 39.754143, 24.379654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966320, 39.553539, 24.767258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180218, 39.216404, 24.743008>,  <39.308556, 39.014122, 24.728458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180218, 39.216404, 24.743008>,  <38.966320, 39.553539, 24.767258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180218, 39.216404, 24.743008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361453, -0.292995, 0.885158,
		-0.763805, -0.451422, -0.461323,
		0.534746, -0.842835, -0.060624,
		39.340641, 38.963554, 24.724821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509434, 38.957874, 24.971590>,  <38.966320, 39.553539, 24.767258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509434, 38.957874, 24.971590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882332, 38.835754, 25.049265>,  <39.106071, 38.762482, 25.095871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882332, 38.835754, 25.049265>,  <38.509434, 38.957874, 24.971590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882332, 38.835754, 25.049265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277431, -0.258625, 0.925281,
		-0.232260, -0.916466, -0.325800,
		0.932249, -0.305293, 0.194188,
		39.162006, 38.744167, 25.107521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423355, 38.274055, 25.265720>,  <38.509434, 38.957874, 24.971590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423355, 38.274055, 25.265720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793026, 38.400101, 25.352070>,  <39.014828, 38.475727, 25.403879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793026, 38.400101, 25.352070>,  <38.423355, 38.274055, 25.265720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793026, 38.400101, 25.352070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044701, -0.472059, 0.880433,
		0.379339, -0.823326, -0.422181,
		0.924178, 0.315110, 0.215873,
		39.070278, 38.494633, 25.416832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755741, 37.706573, 25.375341>,  <38.423355, 38.274055, 25.265720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755741, 37.706573, 25.375341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.949749, 37.999027, 25.567257>,  <39.066154, 38.174500, 25.682405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.949749, 37.999027, 25.567257>,  <38.755741, 37.706573, 25.375341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949749, 37.999027, 25.567257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102003, -0.497596, 0.861391,
		0.868533, -0.466732, -0.166767,
		0.485021, 0.731136, 0.479787,
		39.095257, 38.218369, 25.711193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091286, 37.370235, 25.902359>,  <38.755741, 37.706573, 25.375341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091286, 37.370235, 25.902359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.109959, 37.755604, 26.007915>,  <39.121162, 37.986824, 26.071249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.109959, 37.755604, 26.007915>,  <39.091286, 37.370235, 25.902359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109959, 37.755604, 26.007915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053697, -0.266216, 0.962417,
		0.997465, -0.030760, -0.064161,
		0.046684, 0.963423, 0.263889,
		39.123962, 38.044632, 26.087082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623512, 37.420380, 26.339624>,  <39.091286, 37.370235, 25.902359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623512, 37.420380, 26.339624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383545, 37.734222, 26.402233>,  <39.239567, 37.922527, 26.439798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383545, 37.734222, 26.402233>,  <39.623512, 37.420380, 26.339624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383545, 37.734222, 26.402233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101581, -0.268752, 0.957838,
		0.793590, 0.558720, 0.240929,
		-0.599914, 0.784604, 0.156524,
		39.203571, 37.969604, 26.449190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853580, 37.662155, 26.987911>,  <39.623512, 37.420380, 26.339624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.853580, 37.662155, 26.987911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.481976, 37.806087, 26.953362>,  <39.259014, 37.892445, 26.932632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.481976, 37.806087, 26.953362>,  <39.853580, 37.662155, 26.987911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481976, 37.806087, 26.953362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189192, -0.261247, 0.946550,
		0.318029, 0.895698, 0.310778,
		-0.929012, 0.359827, -0.086374,
		39.203270, 37.914036, 26.927448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726185, 38.230930, 27.533060>,  <39.853580, 37.662155, 26.987911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.726185, 38.230930, 27.533060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368755, 38.088844, 27.423256>,  <39.154297, 38.003593, 27.357374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368755, 38.088844, 27.423256>,  <39.726185, 38.230930, 27.533060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368755, 38.088844, 27.423256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269400, -0.064840, 0.960843,
		-0.359101, 0.932535, -0.037755,
		-0.893571, -0.355211, -0.274509,
		39.100685, 37.982281, 27.340902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136208, 38.625069, 27.944159>,  <39.726185, 38.230930, 27.533060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.136208, 38.625069, 27.944159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967278, 38.290836, 27.803619>,  <38.865917, 38.090298, 27.719296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967278, 38.290836, 27.803619>,  <39.136208, 38.625069, 27.944159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967278, 38.290836, 27.803619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324475, -0.222567, 0.919337,
		-0.846378, 0.502265, -0.177129,
		-0.422327, -0.835580, -0.351348,
		38.840580, 38.040161, 27.698215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425552, 38.611511, 28.164888>,  <39.136208, 38.625069, 27.944159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425552, 38.611511, 28.164888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.511303, 38.226597, 28.097900>,  <38.562756, 37.995647, 28.057709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.511303, 38.226597, 28.097900>,  <38.425552, 38.611511, 28.164888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511303, 38.226597, 28.097900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486137, -0.253829, 0.836207,
		-0.847179, -0.097854, -0.522219,
		0.214380, -0.962287, -0.167468,
		38.575619, 37.937912, 28.047661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777252, 38.295158, 28.504259>,  <38.425552, 38.611511, 28.164888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777252, 38.295158, 28.504259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.021725, 37.990894, 28.416758>,  <38.168407, 37.808334, 28.364256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.021725, 37.990894, 28.416758>,  <37.777252, 38.295158, 28.504259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021725, 37.990894, 28.416758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468013, -0.570206, 0.675151,
		-0.638298, -0.310257, -0.704497,
		0.611179, -0.760661, -0.218757,
		38.205078, 37.762695, 28.351131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391884, 37.661736, 28.501465>,  <37.777252, 38.295158, 28.504259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391884, 37.661736, 28.501465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.765934, 37.555889, 28.595715>,  <37.990364, 37.492382, 28.652264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.765934, 37.555889, 28.595715>,  <37.391884, 37.661736, 28.501465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765934, 37.555889, 28.595715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336668, -0.456336, 0.823658,
		-0.110431, -0.849550, -0.515820,
		0.935126, -0.264617, 0.235623,
		38.046471, 37.476505, 28.666401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357635, 36.952335, 28.713942>,  <37.391884, 37.661736, 28.501465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357635, 36.952335, 28.713942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698704, 37.107838, 28.853550>,  <37.903347, 37.201138, 28.937315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698704, 37.107838, 28.853550>,  <37.357635, 36.952335, 28.713942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698704, 37.107838, 28.853550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275175, -0.233694, 0.932559,
		0.444100, -0.891211, -0.092290,
		0.852674, 0.388754, 0.349023,
		37.954506, 37.224464, 28.958258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503826, 36.493641, 29.169695>,  <37.357635, 36.952335, 28.713942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503826, 36.493641, 29.169695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.723267, 36.806305, 29.288383>,  <37.854931, 36.993904, 29.359596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.723267, 36.806305, 29.288383>,  <37.503826, 36.493641, 29.169695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723267, 36.806305, 29.288383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113326, -0.282099, 0.952669,
		0.828369, -0.556260, -0.066177,
		0.548600, 0.781661, 0.296721,
		37.887848, 37.040802, 29.377399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924007, 36.211391, 29.693962>,  <37.503826, 36.493641, 29.169695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924007, 36.211391, 29.693962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996635, 36.600170, 29.753777>,  <38.040211, 36.833435, 29.789665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996635, 36.600170, 29.753777>,  <37.924007, 36.211391, 29.693962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996635, 36.600170, 29.753777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066376, -0.163828, 0.984253,
		0.981136, -0.168781, -0.094259,
		0.181565, 0.971943, 0.149535,
		38.051105, 36.891754, 29.798637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598167, 36.215828, 30.108444>,  <37.924007, 36.211391, 29.693962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598167, 36.215828, 30.108444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.377361, 36.544167, 30.167076>,  <38.244877, 36.741169, 30.202255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.377361, 36.544167, 30.167076>,  <38.598167, 36.215828, 30.108444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377361, 36.544167, 30.167076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045704, -0.145742, 0.988267,
		0.832578, 0.552242, 0.042937,
		-0.552019, 0.820846, 0.146581,
		38.211754, 36.790421, 30.211050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958954, 36.590019, 30.646292>,  <38.598167, 36.215828, 30.108444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958954, 36.590019, 30.646292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.587868, 36.739330, 30.647234>,  <38.365215, 36.828918, 30.647799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.587868, 36.739330, 30.647234>,  <38.958954, 36.590019, 30.646292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587868, 36.739330, 30.647234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107470, -0.273129, 0.955955,
		0.357479, 0.886603, 0.293503,
		-0.927717, 0.373277, 0.002355,
		38.309551, 36.851315, 30.647940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921089, 37.043587, 31.176750>,  <38.958954, 36.590019, 30.646292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921089, 37.043587, 31.176750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.536720, 36.963654, 31.100132>,  <38.306099, 36.915691, 31.054161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.536720, 36.963654, 31.100132>,  <38.921089, 37.043587, 31.176750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536720, 36.963654, 31.100132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199058, 0.018000, 0.979822,
		-0.192356, 0.979664, -0.057076,
		-0.960924, -0.199836, -0.191548,
		38.248444, 36.903702, 31.042667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529179, 37.436794, 31.621321>,  <38.921089, 37.043587, 31.176750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529179, 37.436794, 31.621321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.291027, 37.137878, 31.503281>,  <38.148136, 36.958530, 31.432457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.291027, 37.137878, 31.503281>,  <38.529179, 37.436794, 31.621321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291027, 37.137878, 31.503281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238595, -0.186273, 0.953087,
		-0.767197, 0.637861, -0.067395,
		-0.595383, -0.747286, -0.295098,
		38.112411, 36.913692, 31.414751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977520, 37.493275, 32.066231>,  <38.529179, 37.436794, 31.621321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977520, 37.493275, 32.066231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979019, 37.119022, 31.925045>,  <37.979919, 36.894470, 31.840332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979019, 37.119022, 31.925045>,  <37.977520, 37.493275, 32.066231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979019, 37.119022, 31.925045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107298, -0.351308, 0.930091,
		-0.994220, 0.034388, -0.101707,
		0.003746, -0.935628, -0.352967,
		37.980145, 36.838333, 31.819155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490120, 37.257477, 32.461597>,  <37.977520, 37.493275, 32.066231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490120, 37.257477, 32.461597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702148, 36.945557, 32.328369>,  <37.829365, 36.758404, 32.248432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702148, 36.945557, 32.328369>,  <37.490120, 37.257477, 32.461597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702148, 36.945557, 32.328369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167940, -0.481559, 0.860173,
		-0.831156, -0.400017, -0.386221,
		0.530072, -0.779800, -0.333072,
		37.861172, 36.711617, 32.228447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195107, 36.648022, 32.712719>,  <37.490120, 37.257477, 32.461597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195107, 36.648022, 32.712719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557674, 36.519154, 32.603458>,  <37.775215, 36.441833, 32.537903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557674, 36.519154, 32.603458>,  <37.195107, 36.648022, 32.712719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557674, 36.519154, 32.603458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006375, -0.636186, 0.771509,
		-0.422336, -0.701050, -0.574596,
		0.906417, -0.322173, -0.273154,
		37.829597, 36.422501, 32.521511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128078, 35.884548, 32.740757>,  <37.195107, 36.648022, 32.712719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128078, 35.884548, 32.740757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512539, 35.993946, 32.755634>,  <37.743217, 36.059586, 32.764561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512539, 35.993946, 32.755634>,  <37.128078, 35.884548, 32.740757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512539, 35.993946, 32.755634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154222, -0.643903, 0.749403,
		0.228907, -0.714556, -0.661069,
		0.961154, 0.273495, 0.037193,
		37.800884, 36.075996, 32.766792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424923, 35.287411, 32.847012>,  <37.128078, 35.884548, 32.740757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424923, 35.287411, 32.847012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712479, 35.538776, 32.965874>,  <37.885010, 35.689594, 33.037193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712479, 35.538776, 32.965874>,  <37.424923, 35.287411, 32.847012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712479, 35.538776, 32.965874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238552, -0.624552, 0.743658,
		0.652915, -0.463716, -0.598890,
		0.718884, 0.628412, 0.297159,
		37.928143, 35.727299, 33.055023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921528, 34.887917, 33.015503>,  <37.424923, 35.287411, 32.847012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921528, 34.887917, 33.015503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.034294, 35.219879, 33.208076>,  <38.101952, 35.419056, 33.323620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.034294, 35.219879, 33.208076>,  <37.921528, 34.887917, 33.015503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034294, 35.219879, 33.208076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199047, -0.541460, 0.816824,
		0.938566, -0.134444, -0.317835,
		0.281912, 0.829907, 0.481435,
		38.118866, 35.468853, 33.352509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490669, 34.684544, 33.324261>,  <37.921528, 34.887917, 33.015503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490669, 34.684544, 33.324261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.398918, 35.005871, 33.544102>,  <38.343868, 35.198666, 33.676006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.398918, 35.005871, 33.544102>,  <38.490669, 34.684544, 33.324261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398918, 35.005871, 33.544102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353015, -0.457555, 0.816103,
		0.907065, 0.381212, -0.178633,
		-0.229374, 0.803319, 0.549606,
		38.330105, 35.246868, 33.708984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073574, 34.671421, 33.764244>,  <38.490669, 34.684544, 33.324261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073574, 34.671421, 33.764244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778015, 34.885815, 33.927589>,  <38.600681, 35.014450, 34.025597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778015, 34.885815, 33.927589>,  <39.073574, 34.671421, 33.764244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778015, 34.885815, 33.927589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233011, -0.365405, 0.901213,
		0.632250, 0.761054, 0.145107,
		-0.738895, 0.535981, 0.408361,
		38.556347, 35.046608, 34.050098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347015, 35.070137, 34.377132>,  <39.073574, 34.671421, 33.764244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347015, 35.070137, 34.377132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948456, 35.060585, 34.409660>,  <38.709320, 35.054852, 34.429176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948456, 35.060585, 34.409660>,  <39.347015, 35.070137, 34.377132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948456, 35.060585, 34.409660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083307, -0.452344, 0.887944,
		0.015576, 0.891524, 0.452706,
		-0.996402, -0.023883, 0.081316,
		38.649536, 35.053421, 34.434055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117321, 35.536636, 35.041718>,  <39.347015, 35.070137, 34.377132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117321, 35.536636, 35.041718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833752, 35.273209, 34.940754>,  <38.663609, 35.115150, 34.880177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833752, 35.273209, 34.940754>,  <39.117321, 35.536636, 35.041718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833752, 35.273209, 34.940754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058052, -0.411160, 0.909713,
		-0.702889, 0.630266, 0.329713,
		-0.708926, -0.658568, -0.252412,
		38.621075, 35.075638, 34.865032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638828, 35.509636, 35.590546>,  <39.117321, 35.536636, 35.041718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638828, 35.509636, 35.590546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597950, 35.175621, 35.374302>,  <38.573425, 34.975212, 35.244556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597950, 35.175621, 35.374302>,  <38.638828, 35.509636, 35.590546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597950, 35.175621, 35.374302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060904, -0.537187, 0.841262,
		-0.992898, 0.118897, 0.004039,
		-0.102194, -0.835041, -0.540614,
		38.567291, 34.925110, 35.212116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115017, 35.150452, 35.921925>,  <38.638828, 35.509636, 35.590546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115017, 35.150452, 35.921925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.338818, 34.881241, 35.728432>,  <38.473099, 34.719715, 35.612335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.338818, 34.881241, 35.728432>,  <38.115017, 35.150452, 35.921925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338818, 34.881241, 35.728432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187713, -0.465568, 0.864876,
		-0.807294, -0.574700, -0.134149,
		0.559499, -0.673028, -0.483729,
		38.506668, 34.679333, 35.583313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714081, 34.497658, 35.935455>,  <38.115017, 35.150452, 35.921925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714081, 34.497658, 35.935455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113808, 34.485340, 35.927380>,  <38.353645, 34.477951, 35.922535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113808, 34.485340, 35.927380>,  <37.714081, 34.497658, 35.935455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113808, 34.485340, 35.927380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001096, -0.572991, 0.819561,
		-0.036805, -0.818983, -0.572637,
		0.999322, -0.030792, -0.020191,
		38.413605, 34.476101, 35.921322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814842, 33.935917, 36.263657>,  <37.714081, 34.497658, 35.935455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814842, 33.935917, 36.263657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.185520, 34.084866, 36.243385>,  <38.407928, 34.174236, 36.231224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.185520, 34.084866, 36.243385>,  <37.814842, 33.935917, 36.263657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185520, 34.084866, 36.243385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242240, -0.488785, 0.838098,
		0.287316, -0.788940, -0.543160,
		0.926698, 0.372374, -0.050677,
		38.463531, 34.196579, 36.228184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261494, 33.289268, 36.321960>,  <37.814842, 33.935917, 36.263657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261494, 33.289268, 36.321960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496845, 33.604183, 36.395695>,  <38.638058, 33.793133, 36.439938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496845, 33.604183, 36.395695>,  <38.261494, 33.289268, 36.321960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496845, 33.604183, 36.395695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508229, -0.537400, 0.672982,
		0.628896, -0.302283, -0.716320,
		0.588382, 0.787290, 0.184340,
		38.673359, 33.840370, 36.450996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022671, 33.045311, 36.323509>,  <38.261494, 33.289268, 36.321960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022671, 33.045311, 36.323509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977802, 33.377296, 36.542076>,  <38.950882, 33.576488, 36.673218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977802, 33.377296, 36.542076>,  <39.022671, 33.045311, 36.323509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977802, 33.377296, 36.542076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439234, -0.451838, 0.776477,
		0.891342, 0.327107, -0.313864,
		-0.112175, 0.829966, 0.546419,
		38.944149, 33.626286, 36.706001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630180, 33.359516, 36.460220>,  <39.022671, 33.045311, 36.323509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630180, 33.359516, 36.460220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366951, 33.441284, 36.750092>,  <39.209015, 33.490345, 36.924015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366951, 33.441284, 36.750092>,  <39.630180, 33.359516, 36.460220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366951, 33.441284, 36.750092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693489, -0.210332, 0.689081,
		0.293288, 0.956018, -0.003353,
		-0.658069, 0.204424, 0.724677,
		39.169529, 33.502613, 36.967495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079281, 33.712635, 36.881290>,  <39.630180, 33.359516, 36.460220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079281, 33.712635, 36.881290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.753647, 33.634529, 37.100067>,  <39.558266, 33.587666, 37.231331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.753647, 33.634529, 37.100067>,  <40.079281, 33.712635, 36.881290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753647, 33.634529, 37.100067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580157, -0.230896, 0.781092,
		-0.026233, 0.953184, 0.301252,
		-0.814082, -0.195264, 0.546939,
		39.509422, 33.575951, 37.264149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233185, 33.975372, 37.598248>,  <40.079281, 33.712635, 36.881290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233185, 33.975372, 37.598248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.934967, 33.711723, 37.637703>,  <39.756039, 33.553535, 37.661377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.934967, 33.711723, 37.637703>,  <40.233185, 33.975372, 37.598248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.934967, 33.711723, 37.637703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356693, -0.269603, 0.894474,
		-0.562975, 0.702049, 0.436104,
		-0.745540, -0.659122, 0.098636,
		39.711304, 33.513988, 37.667294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971176, 34.025227, 38.352383>,  <40.233185, 33.975372, 37.598248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.971176, 34.025227, 38.352383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900414, 33.671986, 38.178562>,  <39.857956, 33.460041, 38.074268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900414, 33.671986, 38.178562>,  <39.971176, 34.025227, 38.352383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900414, 33.671986, 38.178562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616820, -0.443533, 0.650239,
		-0.766966, -0.153010, 0.623179,
		-0.176908, -0.883100, -0.434555,
		39.847340, 33.407055, 38.048195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574421, 33.753532, 38.970665>,  <39.971176, 34.025227, 38.352383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574421, 33.753532, 38.970665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592308, 33.417950, 38.753719>,  <39.603039, 33.216602, 38.623550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592308, 33.417950, 38.753719>,  <39.574421, 33.753532, 38.970665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592308, 33.417950, 38.753719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185696, -0.526466, 0.829669,
		-0.981589, -0.137817, 0.132247,
		0.044719, -0.838952, -0.542365,
		39.605724, 33.166264, 38.591011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194946, 33.309830, 39.414867>,  <39.574421, 33.753532, 38.970665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194946, 33.309830, 39.414867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.432945, 33.103977, 39.167927>,  <39.575745, 32.980465, 39.019760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.432945, 33.103977, 39.167927>,  <39.194946, 33.309830, 39.414867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432945, 33.103977, 39.167927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256569, -0.606309, 0.752703,
		-0.761675, -0.606252, -0.228714,
		0.594999, -0.514634, -0.617356,
		39.611446, 32.949589, 38.982719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222622, 32.734123, 39.711658>,  <39.194946, 33.309830, 39.414867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222622, 32.734123, 39.711658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.494610, 32.663746, 39.426933>,  <39.657803, 32.621521, 39.256100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.494610, 32.663746, 39.426933>,  <39.222622, 32.734123, 39.711658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494610, 32.663746, 39.426933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298218, -0.820505, 0.487686,
		-0.669851, -0.543891, -0.505453,
		0.679975, -0.175942, -0.711814,
		39.698601, 32.610962, 39.213390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090836, 32.075111, 39.297371>,  <39.222622, 32.734123, 39.711658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090836, 32.075111, 39.297371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.481068, 32.161415, 39.313797>,  <39.715206, 32.213196, 39.323654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.481068, 32.161415, 39.313797>,  <39.090836, 32.075111, 39.297371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481068, 32.161415, 39.313797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167015, -0.850219, 0.499233,
		0.142631, -0.480184, -0.865494,
		0.975583, 0.215757, 0.041070,
		39.773743, 32.226143, 39.326118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318504, 31.550072, 39.040092>,  <39.090836, 32.075111, 39.297371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318504, 31.550072, 39.040092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568573, 31.746056, 39.283108>,  <39.718613, 31.863646, 39.428917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568573, 31.746056, 39.283108>,  <39.318504, 31.550072, 39.040092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568573, 31.746056, 39.283108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202298, -0.853528, 0.480173,
		0.753814, -0.177287, -0.632719,
		0.625172, 0.489959, 0.607537,
		39.756126, 31.893044, 39.465370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012573, 31.267002, 38.987801>,  <39.318504, 31.550072, 39.040092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012573, 31.267002, 38.987801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.943657, 31.422871, 39.349678>,  <39.902306, 31.516392, 39.566803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.943657, 31.422871, 39.349678>,  <40.012573, 31.267002, 38.987801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943657, 31.422871, 39.349678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108438, -0.905344, 0.410601,
		0.979059, 0.168847, 0.113730,
		-0.172293, 0.389670, 0.904695,
		39.891968, 31.539772, 39.621086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541260, 31.068811, 39.374256>,  <40.012573, 31.267002, 38.987801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541260, 31.068811, 39.374256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265186, 31.164688, 39.647369>,  <40.099541, 31.222214, 39.811237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265186, 31.164688, 39.647369>,  <40.541260, 31.068811, 39.374256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.265186, 31.164688, 39.647369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281110, -0.780637, 0.558196,
		0.666802, 0.577196, 0.471403,
		-0.690183, 0.239690, 0.682785,
		40.058132, 31.236595, 39.852203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888222, 31.125397, 40.047226>,  <40.541260, 31.068811, 39.374256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888222, 31.125397, 40.047226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.497261, 31.077799, 40.117111>,  <40.262684, 31.049240, 40.159042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.497261, 31.077799, 40.117111>,  <40.888222, 31.125397, 40.047226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.497261, 31.077799, 40.117111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194885, -0.827403, 0.526710,
		0.081886, 0.548857, 0.831896,
		-0.977402, -0.118994, 0.174717,
		40.204041, 31.042101, 40.169525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.949959, 30.974932, 40.669510>,  <40.888222, 31.125397, 40.047226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.949959, 30.974932, 40.669510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580082, 30.842546, 40.594246>,  <40.358154, 30.763115, 40.549088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580082, 30.842546, 40.594246>,  <40.949959, 30.974932, 40.669510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580082, 30.842546, 40.594246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181171, -0.817222, 0.547106,
		-0.334843, 0.471816, 0.815641,
		-0.924693, -0.330965, -0.188162,
		40.302673, 30.743258, 40.537796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624443, 30.925817, 41.286118>,  <40.949959, 30.974932, 40.669510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624443, 30.925817, 41.286118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.459595, 30.663441, 41.033165>,  <40.360687, 30.506016, 40.881393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.459595, 30.663441, 41.033165>,  <40.624443, 30.925817, 41.286118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.459595, 30.663441, 41.033165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253258, -0.749176, 0.612043,
		-0.875226, 0.092078, 0.474869,
		-0.412116, -0.655940, -0.632379,
		40.335960, 30.466660, 40.843452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139584, 30.419643, 41.656776>,  <40.624443, 30.925817, 41.286118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139584, 30.419643, 41.656776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273136, 30.255499, 41.317337>,  <40.353268, 30.157013, 41.113674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273136, 30.255499, 41.317337>,  <40.139584, 30.419643, 41.656776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273136, 30.255499, 41.317337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080190, -0.884635, 0.459337,
		-0.939198, -0.221414, -0.262456,
		0.333882, -0.410361, -0.848603,
		40.373302, 30.132391, 41.062756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806133, 29.728069, 41.428875>,  <40.139584, 30.419643, 41.656776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806133, 29.728069, 41.428875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.195576, 29.725969, 41.337608>,  <40.429241, 29.724709, 41.282848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.195576, 29.725969, 41.337608>,  <39.806133, 29.728069, 41.428875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195576, 29.725969, 41.337608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115600, -0.850658, 0.512852,
		-0.196784, -0.525693, -0.827601,
		0.973608, -0.005251, -0.228166,
		40.487659, 29.724394, 41.269157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665478, 29.337858, 42.021862>,  <39.806133, 29.728069, 41.428875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665478, 29.337858, 42.021862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852432, 29.001135, 41.913860>,  <39.964607, 28.799101, 41.849060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852432, 29.001135, 41.913860>,  <39.665478, 29.337858, 42.021862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852432, 29.001135, 41.913860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212216, 0.403326, -0.890108,
		0.858203, 0.358726, 0.367156,
		0.467389, -0.841810, -0.270008,
		39.992649, 28.748592, 41.832859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370815, 29.442810, 41.853382>,  <39.665478, 29.337858, 42.021862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370815, 29.442810, 41.853382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227150, 29.149534, 41.622410>,  <40.140949, 28.973568, 41.483826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227150, 29.149534, 41.622410>,  <40.370815, 29.442810, 41.853382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227150, 29.149534, 41.622410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315664, 0.486817, -0.814473,
		0.878269, -0.474806, 0.056594,
		-0.359165, -0.733191, -0.577435,
		40.119400, 28.929577, 41.449181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.965084, 29.115183, 41.349934>,  <40.370815, 29.442810, 41.853382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.965084, 29.115183, 41.349934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.582199, 29.128180, 41.234917>,  <40.352467, 29.135977, 41.165905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.582199, 29.128180, 41.234917>,  <40.965084, 29.115183, 41.349934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582199, 29.128180, 41.234917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252129, 0.581314, -0.773631,
		0.142018, -0.813030, -0.564635,
		-0.957216, 0.032491, -0.287545,
		40.295033, 29.137926, 41.148655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963978, 29.412346, 40.590076>,  <40.965084, 29.115183, 41.349934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.963978, 29.412346, 40.590076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.604588, 29.467720, 40.756725>,  <40.388954, 29.500944, 40.856716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.604588, 29.467720, 40.756725>,  <40.963978, 29.412346, 40.590076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604588, 29.467720, 40.756725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126566, 0.827013, -0.547751,
		-0.420379, -0.544872, -0.725532,
		-0.898478, 0.138435, 0.416621,
		40.335045, 29.509251, 40.881710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.392944, 29.462358, 40.097710>,  <40.963978, 29.412346, 40.590076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.392944, 29.462358, 40.097710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.280701, 29.661337, 40.426052>,  <40.213352, 29.780724, 40.623058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.280701, 29.661337, 40.426052>,  <40.392944, 29.462358, 40.097710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.280701, 29.661337, 40.426052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253752, 0.786341, -0.563274,
		-0.925671, -0.366355, -0.094428,
		-0.280611, 0.497445, 0.820857,
		40.196518, 29.810570, 40.672310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759861, 29.668646, 40.043732>,  <40.392944, 29.462358, 40.097710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759861, 29.668646, 40.043732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895855, 29.931257, 40.313065>,  <39.977451, 30.088825, 40.474663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895855, 29.931257, 40.313065>,  <39.759861, 29.668646, 40.043732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895855, 29.931257, 40.313065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265954, 0.753879, -0.600779,
		-0.902041, 0.025181, 0.430915,
		0.339986, 0.656530, 0.673333,
		39.997852, 30.128216, 40.515064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188824, 30.289524, 40.043652>,  <39.759861, 29.668646, 40.043732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188824, 30.289524, 40.043652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527046, 30.431732, 40.202969>,  <39.729980, 30.517057, 40.298557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527046, 30.431732, 40.202969>,  <39.188824, 30.289524, 40.043652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527046, 30.431732, 40.202969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202760, 0.903979, -0.376445,
		-0.493882, 0.237548, 0.836452,
		0.845558, 0.355518, 0.398294,
		39.780712, 30.538387, 40.322456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940491, 30.928438, 40.393837>,  <39.188824, 30.289524, 40.043652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940491, 30.928438, 40.393837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.329857, 30.940853, 40.303059>,  <39.563477, 30.948301, 40.248592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.329857, 30.940853, 40.303059>,  <38.940491, 30.928438, 40.393837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329857, 30.940853, 40.303059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085786, 0.968064, -0.235566,
		0.212390, 0.248772, 0.944988,
		0.973412, 0.031035, -0.226948,
		39.621880, 30.950163, 40.234974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224365, 31.372175, 40.836506>,  <38.940491, 30.928438, 40.393837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224365, 31.372175, 40.836506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.482269, 31.363871, 40.530865>,  <39.637012, 31.358889, 40.347481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.482269, 31.363871, 40.530865>,  <39.224365, 31.372175, 40.836506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482269, 31.363871, 40.530865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064733, 0.994557, -0.081646,
		0.761642, 0.102105, 0.639904,
		0.644757, -0.020761, -0.764105,
		39.675697, 31.357643, 40.301632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600319, 31.993092, 40.803398>,  <39.224365, 31.372175, 40.836506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600319, 31.993092, 40.803398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663815, 31.865225, 40.429745>,  <39.701912, 31.788506, 40.205551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663815, 31.865225, 40.429745>,  <39.600319, 31.993092, 40.803398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663815, 31.865225, 40.429745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179255, 0.921079, -0.345659,
		0.970911, 0.222319, 0.088912,
		0.158742, -0.319667, -0.934138,
		39.711437, 31.769325, 40.149502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979969, 32.549797, 40.392574>,  <39.600319, 31.993092, 40.803398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979969, 32.549797, 40.392574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832222, 32.305462, 40.112446>,  <39.743576, 32.158863, 39.944366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832222, 32.305462, 40.112446>,  <39.979969, 32.549797, 40.392574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832222, 32.305462, 40.112446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127564, 0.779809, -0.612883,
		0.920488, -0.137040, -0.365953,
		-0.369363, -0.610835, -0.700323,
		39.721413, 32.122211, 39.902348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148739, 32.904964, 39.853027>,  <39.979969, 32.549797, 40.392574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148739, 32.904964, 39.853027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.358822, 32.642059, 39.636818>,  <40.484871, 32.484318, 39.507092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.358822, 32.642059, 39.636818>,  <40.148739, 32.904964, 39.853027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.358822, 32.642059, 39.636818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738691, -0.036778, -0.673040,
		0.422484, 0.752764, -0.504830,
		0.525207, -0.657262, -0.540522,
		40.516384, 32.444881, 39.474663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395557, 33.150452, 39.104729>,  <40.148739, 32.904964, 39.853027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395557, 33.150452, 39.104729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336666, 32.755413, 39.126583>,  <40.301331, 32.518391, 39.139698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336666, 32.755413, 39.126583>,  <40.395557, 33.150452, 39.104729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336666, 32.755413, 39.126583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514073, 0.029211, -0.857249,
		0.845016, -0.154301, -0.511995,
		-0.147230, -0.987592, 0.054638,
		40.292496, 32.459137, 39.142975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824791, 32.800591, 38.608383>,  <40.395557, 33.150452, 39.104729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824791, 32.800591, 38.608383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.497421, 32.592575, 38.706150>,  <40.300999, 32.467766, 38.764809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.497421, 32.592575, 38.706150>,  <40.824791, 32.800591, 38.608383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.497421, 32.592575, 38.706150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525911, 0.506538, -0.683255,
		0.231515, -0.687733, -0.688058,
		-0.818425, -0.520041, 0.244415,
		40.251892, 32.436562, 38.779476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496048, 32.394115, 38.044212>,  <40.824791, 32.800591, 38.608383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496048, 32.394115, 38.044212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210251, 32.465767, 38.314743>,  <40.038773, 32.508759, 38.477062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210251, 32.465767, 38.314743>,  <40.496048, 32.394115, 38.044212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210251, 32.465767, 38.314743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605830, 0.325136, -0.726125,
		-0.349965, -0.928548, -0.123786,
		-0.714489, 0.179125, 0.676328,
		39.995903, 32.519505, 38.517643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777786, 32.243622, 37.791088>,  <40.496048, 32.394115, 38.044212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777786, 32.243622, 37.791088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704674, 32.518883, 38.071953>,  <39.660805, 32.684040, 38.240471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704674, 32.518883, 38.071953>,  <39.777786, 32.243622, 37.791088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704674, 32.518883, 38.071953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550800, 0.519912, -0.652924,
		-0.814377, -0.506094, 0.284006,
		-0.182783, 0.688157, 0.702161,
		39.649837, 32.725330, 38.282600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105755, 32.340462, 37.754215>,  <39.777786, 32.243622, 37.791088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.105755, 32.340462, 37.754215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310371, 32.658112, 37.885483>,  <39.433140, 32.848701, 37.964245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310371, 32.658112, 37.885483>,  <39.105755, 32.340462, 37.754215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310371, 32.658112, 37.885483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429394, 0.567071, -0.702888,
		-0.744275, 0.218642, 0.631071,
		0.511543, 0.794120, 0.328173,
		39.463833, 32.896347, 37.983936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642891, 32.808273, 37.857567>,  <39.105755, 32.340462, 37.754215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642891, 32.808273, 37.857567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.982395, 33.009621, 37.792797>,  <39.186100, 33.130428, 37.753937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.982395, 33.009621, 37.792797>,  <38.642891, 32.808273, 37.857567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982395, 33.009621, 37.792797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453641, 0.535848, -0.712093,
		-0.271680, 0.677853, 0.683158,
		0.848764, 0.503370, -0.161922,
		39.237022, 33.160633, 37.744221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436970, 33.491043, 37.956455>,  <38.642891, 32.808273, 37.857567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436970, 33.491043, 37.956455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.776524, 33.519047, 37.746891>,  <38.980255, 33.535847, 37.621151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.776524, 33.519047, 37.746891>,  <38.436970, 33.491043, 37.956455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776524, 33.519047, 37.746891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430986, 0.665500, -0.609394,
		0.306003, 0.743108, 0.595107,
		0.848889, 0.070007, -0.523915,
		39.031189, 33.540051, 37.589718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580379, 34.202255, 37.810703>,  <38.436970, 33.491043, 37.956455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580379, 34.202255, 37.810703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802811, 33.993103, 37.552284>,  <38.936268, 33.867611, 37.397232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802811, 33.993103, 37.552284>,  <38.580379, 34.202255, 37.810703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802811, 33.993103, 37.552284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265891, 0.624540, -0.734337,
		0.787453, 0.580124, 0.208261,
		0.556075, -0.522882, -0.646046,
		38.969631, 33.836239, 37.358471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115410, 34.658154, 37.454655>,  <38.580379, 34.202255, 37.810703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115410, 34.658154, 37.454655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.075878, 34.335506, 37.221554>,  <39.052158, 34.141918, 37.081692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.075878, 34.335506, 37.221554>,  <39.115410, 34.658154, 37.454655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075878, 34.335506, 37.221554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180466, 0.561384, -0.807639,
		0.978604, -0.184982, 0.090088,
		-0.098825, -0.806617, -0.582755,
		39.046230, 34.093521, 37.046726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572571, 34.683025, 36.799519>,  <39.115410, 34.658154, 37.454655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572571, 34.683025, 36.799519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.277428, 34.432991, 36.697670>,  <39.100342, 34.282970, 36.636562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.277428, 34.432991, 36.697670>,  <39.572571, 34.683025, 36.799519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277428, 34.432991, 36.697670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036744, 0.413887, -0.909587,
		0.673952, -0.661793, -0.328359,
		-0.737861, -0.625083, -0.254622,
		39.056068, 34.245468, 36.621284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680546, 34.593483, 36.065491>,  <39.572571, 34.683025, 36.799519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680546, 34.593483, 36.065491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305878, 34.459404, 36.106064>,  <39.081078, 34.378956, 36.130405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305878, 34.459404, 36.106064>,  <39.680546, 34.593483, 36.065491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305878, 34.459404, 36.106064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178594, 0.208064, -0.961672,
		0.301250, -0.918885, -0.254753,
		-0.936671, -0.335201, 0.101428,
		39.024876, 34.358845, 36.136494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621044, 34.154411, 35.499424>,  <39.680546, 34.593483, 36.065491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621044, 34.154411, 35.499424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245346, 34.228149, 35.615242>,  <39.019928, 34.272392, 35.684734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245346, 34.228149, 35.615242>,  <39.621044, 34.154411, 35.499424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245346, 34.228149, 35.615242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246170, 0.226087, -0.942489,
		-0.239209, -0.956504, -0.166970,
		-0.939244, 0.184349, 0.289545,
		38.963573, 34.283455, 35.702106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202480, 33.804592, 34.920357>,  <39.621044, 34.154411, 35.499424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202480, 33.804592, 34.920357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978252, 34.065739, 35.124130>,  <38.843716, 34.222427, 35.246395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978252, 34.065739, 35.124130>,  <39.202480, 33.804592, 34.920357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978252, 34.065739, 35.124130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192801, 0.495381, -0.847010,
		-0.805348, -0.573031, -0.151825,
		-0.560574, 0.652865, 0.509435,
		38.810081, 34.261597, 35.276962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793320, 34.165443, 34.651653>,  <39.202480, 33.804592, 34.920357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.793320, 34.165443, 34.651653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.108250, 33.919353, 34.635593>,  <40.297207, 33.771698, 34.625957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.108250, 33.919353, 34.635593>,  <39.793320, 34.165443, 34.651653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108250, 33.919353, 34.635593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508233, -0.684514, 0.522628,
		-0.349019, -0.391072, -0.851615,
		0.787327, -0.615226, -0.040153,
		40.344448, 33.734787, 34.623547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053368, 34.645214, 35.221191>,  <39.793320, 34.165443, 34.651653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053368, 34.645214, 35.221191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241779, 34.689926, 35.571194>,  <40.354824, 34.716755, 35.781197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241779, 34.689926, 35.571194>,  <40.053368, 34.645214, 35.221191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241779, 34.689926, 35.571194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602521, 0.765265, 0.226579,
		-0.644285, -0.633935, 0.427812,
		0.471026, 0.111784, 0.875008,
		40.383087, 34.723461, 35.833694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683941, 34.797474, 34.973270>,  <40.053368, 34.645214, 35.221191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683941, 34.797474, 34.973270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792919, 34.438114, 35.111050>,  <40.858307, 34.222496, 35.193718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792919, 34.438114, 35.111050>,  <40.683941, 34.797474, 34.973270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792919, 34.438114, 35.111050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903691, 0.116024, -0.412167,
		0.330327, 0.423570, 0.843488,
		0.272447, -0.898402, 0.344451,
		40.874653, 34.168594, 35.214386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399490, 34.784367, 35.269318>,  <40.683941, 34.797474, 34.973270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.399490, 34.784367, 35.269318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.314476, 34.409882, 35.157360>,  <41.263466, 34.185192, 35.090187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.314476, 34.409882, 35.157360>,  <41.399490, 34.784367, 35.269318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.314476, 34.409882, 35.157360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846424, -0.033268, -0.531470,
		0.488256, -0.349865, 0.799500,
		-0.212540, -0.936209, -0.279891,
		41.250713, 34.129021, 35.073391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.948822, 34.280743, 35.504387>,  <41.399490, 34.784367, 35.269318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.948822, 34.280743, 35.504387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.775452, 34.221378, 35.148834>,  <41.671429, 34.185760, 34.935501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.775452, 34.221378, 35.148834>,  <41.948822, 34.280743, 35.504387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.775452, 34.221378, 35.148834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886326, 0.108190, -0.450246,
		0.162990, -0.982990, 0.084647,
		-0.433429, -0.148410, -0.888883,
		41.645424, 34.176857, 34.882168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.337906, 33.784725, 35.106667>,  <41.948822, 34.280743, 35.504387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.337906, 33.784725, 35.106667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.133072, 33.991585, 34.832344>,  <42.010174, 34.115700, 34.667751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.133072, 33.991585, 34.832344>,  <42.337906, 33.784725, 35.106667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.133072, 33.991585, 34.832344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843709, 0.153167, -0.514486,
		-0.161022, -0.842080, -0.514755,
		-0.512081, 0.517147, -0.685807,
		41.979446, 34.146729, 34.626602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.652203, 34.516544, 35.028873>,  <42.337906, 33.784725, 35.106667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.652203, 34.516544, 35.028873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581009, 34.190643, 34.808144>,  <42.538292, 33.995102, 34.675705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581009, 34.190643, 34.808144>,  <42.652203, 34.516544, 35.028873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.581009, 34.190643, 34.808144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681055, 0.302775, -0.666702,
		0.710273, -0.494481, 0.501000,
		-0.177981, -0.814749, -0.551821,
		42.527615, 33.946220, 34.642597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.179169, 34.018581, 35.047909>,  <42.652203, 34.516544, 35.028873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.179169, 34.018581, 35.047909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.993752, 33.994915, 34.694271>,  <42.882500, 33.980717, 34.482086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.993752, 33.994915, 34.694271>,  <43.179169, 34.018581, 35.047909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.993752, 33.994915, 34.694271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847130, 0.262961, -0.461760,
		0.259794, -0.962992, -0.071790,
		-0.463549, -0.059147, -0.884095,
		42.854687, 33.977165, 34.429043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.500984, 33.501266, 34.633335>,  <43.179169, 34.018581, 35.047909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.500984, 33.501266, 34.633335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.336933, 33.804508, 34.430527>,  <43.238503, 33.986454, 34.308842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.336933, 33.804508, 34.430527>,  <43.500984, 33.501266, 34.633335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.336933, 33.804508, 34.430527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910895, 0.312799, -0.269121,
		-0.045425, -0.572220, -0.818841,
		-0.410129, 0.758103, -0.507024,
		43.213894, 34.031940, 34.278419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.557579, 32.804741, 34.732433>,  <43.500984, 33.501266, 34.633335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.557579, 32.804741, 34.732433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.815567, 32.514904, 34.635288>,  <43.970360, 32.341000, 34.577000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.815567, 32.514904, 34.635288>,  <43.557579, 32.804741, 34.732433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.815567, 32.514904, 34.635288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363000, 0.570132, -0.737008,
		0.672495, 0.387186, 0.630744,
		0.644966, -0.724594, -0.242863,
		44.009056, 32.297527, 34.562428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.310150, 32.963936, 34.652882>,  <43.557579, 32.804741, 34.732433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.310150, 32.963936, 34.652882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.242680, 32.671200, 34.388771>,  <44.202198, 32.495560, 34.230305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.242680, 32.671200, 34.388771>,  <44.310150, 32.963936, 34.652882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.242680, 32.671200, 34.388771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294576, 0.601827, -0.742314,
		0.940624, -0.319712, 0.114067,
		-0.168678, -0.731840, -0.660272,
		44.192078, 32.451649, 34.190689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.899315, 32.955334, 34.116261>,  <44.310150, 32.963936, 34.652882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.899315, 32.955334, 34.116261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.592701, 32.753120, 33.957840>,  <44.408733, 32.631794, 33.862789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.592701, 32.753120, 33.957840>,  <44.899315, 32.955334, 34.116261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.592701, 32.753120, 33.957840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122526, 0.490260, -0.862921,
		0.630402, -0.709989, -0.313862,
		-0.766539, -0.505531, -0.396052,
		44.362740, 32.601460, 33.839024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.101654, 33.613121, 33.762287>,  <44.899315, 32.955334, 34.116261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.101654, 33.613121, 33.762287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.058357, 33.641403, 33.365643>,  <45.032379, 33.658371, 33.127655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.058357, 33.641403, 33.365643>,  <45.101654, 33.613121, 33.762287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.058357, 33.641403, 33.365643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003884, 0.997430, 0.071541,
		0.994116, 0.011596, -0.107693,
		-0.108246, 0.070702, -0.991607,
		45.025883, 33.662613, 33.068161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.601341, 34.093143, 33.540226>,  <45.101654, 33.613121, 33.762287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.601341, 34.093143, 33.540226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.362534, 34.086979, 33.219395>,  <45.219250, 34.083282, 33.026897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.362534, 34.086979, 33.219395>,  <45.601341, 34.093143, 33.540226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.362534, 34.086979, 33.219395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093275, 0.994368, 0.050326,
		0.796782, 0.104860, -0.595098,
		-0.597024, -0.015409, -0.802075,
		45.183426, 34.082355, 32.978771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.856941, 34.510052, 33.037243>,  <45.601341, 34.093143, 33.540226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.856941, 34.510052, 33.037243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.457981, 34.514378, 33.008747>,  <45.218605, 34.516972, 32.991650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.457981, 34.514378, 33.008747>,  <45.856941, 34.510052, 33.037243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.457981, 34.514378, 33.008747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004431, 0.996012, 0.089112,
		0.071923, 0.088565, -0.993470,
		-0.997400, 0.010811, -0.071243,
		45.158760, 34.517620, 32.987373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.552681, 34.339340, 33.236866>,  <45.856941, 34.510052, 33.037243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.552681, 34.339340, 33.236866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.924950, 34.209106, 33.303608>,  <47.148312, 34.130966, 33.343655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.924950, 34.209106, 33.303608>,  <46.552681, 34.339340, 33.236866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.924950, 34.209106, 33.303608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077865, 0.269345, 0.959891,
		-0.357467, -0.906337, 0.225320,
		0.930674, -0.325585, 0.166854,
		47.204151, 34.111431, 33.353664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.534985, 33.810123, 33.801361>,  <46.552681, 34.339340, 33.236866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.534985, 33.810123, 33.801361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.885757, 34.002243, 33.794380>,  <47.096222, 34.117516, 33.790192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.885757, 34.002243, 33.794380>,  <46.534985, 33.810123, 33.801361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.885757, 34.002243, 33.794380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146942, 0.302509, 0.941752,
		0.457608, -0.823284, 0.335856,
		0.876928, 0.480304, -0.017455,
		47.148834, 34.146336, 33.789143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.566422, 34.185635, 34.435528>,  <46.534985, 33.810123, 33.801361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.566422, 34.185635, 34.435528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.933907, 34.253490, 34.292877>,  <47.154400, 34.294205, 34.207287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.933907, 34.253490, 34.292877>,  <46.566422, 34.185635, 34.435528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.933907, 34.253490, 34.292877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210019, 0.554883, 0.804982,
		0.334446, -0.814448, 0.474151,
		0.918715, 0.169642, -0.356628,
		47.209522, 34.304382, 34.185890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.058517, 33.940113, 34.896145>,  <46.566422, 34.185635, 34.435528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.058517, 33.940113, 34.896145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.240086, 34.227711, 34.685623>,  <47.349026, 34.400269, 34.559311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.240086, 34.227711, 34.685623>,  <47.058517, 33.940113, 34.896145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.240086, 34.227711, 34.685623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165807, 0.512192, 0.842714,
		0.875479, -0.469791, 0.113280,
		0.453920, 0.718996, -0.526308,
		47.376263, 34.443409, 34.527729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.816914, 34.199860, 35.107975>,  <47.058517, 33.940113, 34.896145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.816914, 34.199860, 35.107975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.631794, 34.504463, 34.926460>,  <47.520721, 34.687225, 34.817551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.631794, 34.504463, 34.926460>,  <47.816914, 34.199860, 35.107975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.631794, 34.504463, 34.926460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104462, 0.555194, 0.825135,
		0.880288, 0.334467, -0.336490,
		-0.462798, 0.761506, -0.453791,
		47.492954, 34.732914, 34.790321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.109978, 34.919170, 35.228561>,  <47.816914, 34.199860, 35.107975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.109978, 34.919170, 35.228561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.732422, 34.981556, 35.112114>,  <47.505890, 35.018986, 35.042248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.732422, 34.981556, 35.112114>,  <48.109978, 34.919170, 35.228561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.732422, 34.981556, 35.112114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066992, 0.772732, 0.631187,
		0.323394, 0.615273, -0.718926,
		-0.943890, 0.155960, -0.291116,
		47.449253, 35.028343, 35.024780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.729389, 33.333469, 25.311024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.395870, 33.502666, 25.169115>,  <36.195759, 33.604183, 25.083971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.395870, 33.502666, 25.169115>,  <36.729389, 33.333469, 25.311024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395870, 33.502666, 25.169115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496654, -0.294104, 0.816601,
		0.241074, 0.857078, 0.455303,
		-0.833797, 0.422990, -0.354771,
		36.145733, 33.629562, 25.062683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404343, 33.661739, 25.896612>,  <36.729389, 33.333469, 25.311024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404343, 33.661739, 25.896612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.084572, 33.667572, 25.656378>,  <35.892708, 33.671070, 25.512238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.084572, 33.667572, 25.656378>,  <36.404343, 33.661739, 25.896612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084572, 33.667572, 25.656378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583013, -0.260033, 0.769726,
		-0.144948, 0.965490, 0.216380,
		-0.799429, 0.014582, -0.600584,
		35.844742, 33.671947, 25.476202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027954, 34.104393, 26.239126>,  <36.404343, 33.661739, 25.896612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027954, 34.104393, 26.239126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.783688, 33.906582, 25.991728>,  <35.637127, 33.787895, 25.843288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.783688, 33.906582, 25.991728>,  <36.027954, 34.104393, 26.239126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783688, 33.906582, 25.991728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519519, -0.339279, 0.784213,
		-0.597654, 0.800210, -0.049729,
		-0.610663, -0.494523, -0.618496,
		35.600487, 33.758224, 25.806179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341633, 34.257671, 26.551016>,  <36.027954, 34.104393, 26.239126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341633, 34.257671, 26.551016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.292191, 33.932056, 26.324011>,  <35.262527, 33.736687, 26.187807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.292191, 33.932056, 26.324011>,  <35.341633, 34.257671, 26.551016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292191, 33.932056, 26.324011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584986, -0.402187, 0.704299,
		-0.801569, 0.419042, -0.426486,
		-0.123604, -0.814033, -0.567514,
		35.255108, 33.687847, 26.153757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604755, 34.025990, 26.661892>,  <35.341633, 34.257671, 26.551016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604755, 34.025990, 26.661892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.787514, 33.700745, 26.517620>,  <34.897167, 33.505596, 26.431057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.787514, 33.700745, 26.517620>,  <34.604755, 34.025990, 26.661892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787514, 33.700745, 26.517620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402789, -0.550644, 0.731131,
		-0.793101, -0.188771, -0.579100,
		0.456894, -0.813116, -0.360681,
		34.924583, 33.456810, 26.409416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070335, 33.670666, 26.612745>,  <34.604755, 34.025990, 26.661892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070335, 33.670666, 26.612745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.401962, 33.452007, 26.659782>,  <34.600937, 33.320812, 26.688005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.401962, 33.452007, 26.659782>,  <34.070335, 33.670666, 26.612745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401962, 33.452007, 26.659782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399854, -0.432599, 0.808069,
		-0.390855, -0.716963, -0.577231,
		0.829065, -0.546646, 0.117597,
		34.650681, 33.288013, 26.695061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806625, 33.066730, 26.807524>,  <34.070335, 33.670666, 26.612745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806625, 33.066730, 26.807524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.192642, 33.056515, 26.911865>,  <34.424252, 33.050385, 26.974470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.192642, 33.056515, 26.911865>,  <33.806625, 33.066730, 26.807524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192642, 33.056515, 26.911865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225703, -0.586942, 0.777533,
		0.133251, -0.809226, -0.572186,
		0.965040, -0.025537, 0.260856,
		34.482155, 33.048855, 26.990122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931973, 32.373146, 27.028160>,  <33.806625, 33.066730, 26.807524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931973, 32.373146, 27.028160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.220528, 32.582264, 27.209839>,  <34.393661, 32.707733, 27.318846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.220528, 32.582264, 27.209839>,  <33.931973, 32.373146, 27.028160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220528, 32.582264, 27.209839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126154, -0.545671, 0.828449,
		0.680947, -0.654929, -0.327687,
		0.721385, 0.522791, 0.454195,
		34.436943, 32.739101, 27.346098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285469, 31.835224, 27.499634>,  <33.931973, 32.373146, 27.028160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285469, 31.835224, 27.499634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.393536, 32.190399, 27.648537>,  <34.458378, 32.403503, 27.737879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.393536, 32.190399, 27.648537>,  <34.285469, 31.835224, 27.499634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393536, 32.190399, 27.648537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115564, -0.353935, 0.928103,
		0.955853, -0.293764, 0.006992,
		0.270168, 0.887938, 0.372258,
		34.474586, 32.456779, 27.760214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828255, 31.663076, 27.944942>,  <34.285469, 31.835224, 27.499634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828255, 31.663076, 27.944942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.706013, 32.022003, 28.072332>,  <34.632668, 32.237358, 28.148767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.706013, 32.022003, 28.072332>,  <34.828255, 31.663076, 27.944942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706013, 32.022003, 28.072332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010238, -0.337556, 0.941250,
		0.952103, 0.284391, 0.112346,
		-0.305606, 0.897317, 0.318476,
		34.614330, 32.291199, 28.167875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163269, 31.706900, 28.540522>,  <34.828255, 31.663076, 27.944942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163269, 31.706900, 28.540522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.872231, 31.974627, 28.600685>,  <34.697609, 32.135262, 28.636784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.872231, 31.974627, 28.600685>,  <35.163269, 31.706900, 28.540522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872231, 31.974627, 28.600685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077871, -0.298420, 0.951253,
		0.681574, 0.680413, 0.269249,
		-0.727594, 0.669316, 0.150411,
		34.653954, 32.175423, 28.645809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377296, 32.276707, 28.997833>,  <35.163269, 31.706900, 28.540522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377296, 32.276707, 28.997833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.977650, 32.267715, 29.012005>,  <34.737862, 32.262321, 29.020508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.977650, 32.267715, 29.012005>,  <35.377296, 32.276707, 28.997833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977650, 32.267715, 29.012005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031405, 0.159330, 0.986726,
		-0.027824, 0.986969, -0.158484,
		-0.999119, -0.022477, 0.035429,
		34.677914, 32.260971, 29.022635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181423, 32.694118, 29.578972>,  <35.377296, 32.276707, 28.997833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181423, 32.694118, 29.578972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.845497, 32.492592, 29.498106>,  <34.643940, 32.371674, 29.449587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.845497, 32.492592, 29.498106>,  <35.181423, 32.694118, 29.578972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845497, 32.492592, 29.498106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266265, 0.057752, 0.962168,
		-0.473084, 0.861876, -0.182651,
		-0.839818, -0.503820, -0.202166,
		34.593552, 32.341446, 29.437456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599609, 33.057793, 29.868637>,  <35.181423, 32.694118, 29.578972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599609, 33.057793, 29.868637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.499744, 32.670521, 29.861752>,  <34.439827, 32.438156, 29.857620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.499744, 32.670521, 29.861752>,  <34.599609, 33.057793, 29.868637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499744, 32.670521, 29.861752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114836, 0.011952, 0.993313,
		-0.961500, 0.249967, -0.114166,
		-0.249660, -0.968181, -0.017213,
		34.424847, 32.380066, 29.856588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996937, 33.010933, 30.359434>,  <34.599609, 33.057793, 29.868637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996937, 33.010933, 30.359434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.145073, 32.642097, 30.314524>,  <34.233955, 32.420795, 30.287579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.145073, 32.642097, 30.314524>,  <33.996937, 33.010933, 30.359434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145073, 32.642097, 30.314524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027853, -0.131838, 0.990880,
		-0.928479, -0.363834, -0.074508,
		0.370339, -0.922087, -0.112275,
		34.256176, 32.365471, 30.280842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691574, 32.540546, 30.902525>,  <33.996937, 33.010933, 30.359434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691574, 32.540546, 30.902525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.975471, 32.291996, 30.769768>,  <34.145809, 32.142864, 30.690113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.975471, 32.291996, 30.769768>,  <33.691574, 32.540546, 30.902525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975471, 32.291996, 30.769768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078408, -0.398523, 0.913801,
		-0.700084, -0.674586, -0.234128,
		0.709743, -0.621380, -0.331893,
		34.188393, 32.105583, 30.670200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559021, 31.836840, 31.171370>,  <33.691574, 32.540546, 30.902525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559021, 31.836840, 31.171370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.949501, 31.868650, 31.090658>,  <34.183788, 31.887737, 31.042231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.949501, 31.868650, 31.090658>,  <33.559021, 31.836840, 31.171370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949501, 31.868650, 31.090658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216788, -0.329862, 0.918800,
		0.006512, -0.940673, -0.339251,
		0.976197, 0.079529, -0.201778,
		34.242359, 31.892509, 31.030125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790569, 31.263197, 31.538086>,  <33.559021, 31.836840, 31.171370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790569, 31.263197, 31.538086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.135555, 31.449905, 31.459824>,  <34.342545, 31.561932, 31.412867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.135555, 31.449905, 31.459824>,  <33.790569, 31.263197, 31.538086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135555, 31.449905, 31.459824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345841, -0.261271, 0.901183,
		0.369530, -0.844903, -0.386766,
		0.862463, 0.466773, -0.195655,
		34.394295, 31.589937, 31.401127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269402, 30.721241, 31.513086>,  <33.790569, 31.263197, 31.538086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269402, 30.721241, 31.513086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.468147, 31.055222, 31.607725>,  <34.587395, 31.255610, 31.664509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.468147, 31.055222, 31.607725>,  <34.269402, 30.721241, 31.513086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468147, 31.055222, 31.607725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270966, -0.408264, 0.871721,
		0.824441, -0.369018, -0.429096,
		0.496865, 0.834953, 0.236598,
		34.617207, 31.305708, 31.678705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907658, 30.520210, 31.800711>,  <34.269402, 30.721241, 31.513086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907658, 30.520210, 31.800711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.854748, 30.898083, 31.920765>,  <34.823002, 31.124805, 31.992798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.854748, 30.898083, 31.920765>,  <34.907658, 30.520210, 31.800711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854748, 30.898083, 31.920765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253590, -0.260466, 0.931584,
		0.958224, 0.199340, -0.205108,
		-0.132278, 0.944680, 0.300135,
		34.815063, 31.181486, 32.010807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421101, 30.644218, 32.302567>,  <34.907658, 30.520210, 31.800711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421101, 30.644218, 32.302567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.155754, 30.933350, 32.379993>,  <34.996548, 31.106829, 32.426449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.155754, 30.933350, 32.379993>,  <35.421101, 30.644218, 32.302567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155754, 30.933350, 32.379993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075921, -0.192323, 0.978390,
		0.744433, 0.663727, 0.072703,
		-0.663367, 0.722826, 0.193563,
		34.956745, 31.150198, 32.438061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683498, 31.151306, 32.863110>,  <35.421101, 30.644218, 32.302567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683498, 31.151306, 32.863110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.284664, 31.172115, 32.840816>,  <35.045364, 31.184601, 32.827442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.284664, 31.172115, 32.840816>,  <35.683498, 31.151306, 32.863110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284664, 31.172115, 32.840816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060869, -0.103032, 0.992814,
		0.045908, 0.993316, 0.105899,
		-0.997089, 0.052025, -0.055732,
		34.985538, 31.187723, 32.824097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413139, 30.995102, 32.819233>,  <35.683498, 31.151306, 32.863110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413139, 30.995102, 32.819233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.667706, 31.241457, 33.004990>,  <36.820446, 31.389271, 33.116444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.667706, 31.241457, 33.004990>,  <36.413139, 30.995102, 32.819233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667706, 31.241457, 33.004990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179994, 0.704007, -0.687005,
		-0.750051, 0.353634, 0.558898,
		0.636416, 0.615887, 0.464389,
		36.858631, 31.426224, 33.144306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075665, 31.693083, 32.644554>,  <36.413139, 30.995102, 32.819233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075665, 31.693083, 32.644554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.464954, 31.698101, 32.736366>,  <36.698528, 31.701111, 32.791454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.464954, 31.698101, 32.736366>,  <36.075665, 31.693083, 32.644554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464954, 31.698101, 32.736366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164125, 0.661207, -0.732030,
		-0.160951, 0.750098, 0.641442,
		0.973220, 0.012544, 0.229532,
		36.756920, 31.701864, 32.805225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298157, 32.346741, 32.440071>,  <36.075665, 31.693083, 32.644554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298157, 32.346741, 32.440071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.615108, 32.102745, 32.437588>,  <36.805279, 31.956347, 32.436100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.615108, 32.102745, 32.437588>,  <36.298157, 32.346741, 32.440071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615108, 32.102745, 32.437588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222931, 0.299027, -0.927839,
		0.567831, 0.733820, 0.372930,
		0.792383, -0.609993, -0.006206,
		36.852825, 31.919746, 32.435726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844360, 32.893627, 32.293915>,  <36.298157, 32.346741, 32.440071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844360, 32.893627, 32.293915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.980404, 32.524033, 32.223972>,  <37.062031, 32.302277, 32.182007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.980404, 32.524033, 32.223972>,  <36.844360, 32.893627, 32.293915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980404, 32.524033, 32.223972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305732, 0.284483, -0.908624,
		0.889300, 0.255572, 0.379248,
		0.340109, -0.923987, -0.174854,
		37.082436, 32.246838, 32.171516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674076, 32.847706, 32.255692>,  <36.844360, 32.893627, 32.293915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674076, 32.847706, 32.255692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.504520, 32.561581, 32.033466>,  <37.402786, 32.389908, 31.900131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.504520, 32.561581, 32.033466>,  <37.674076, 32.847706, 32.255692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504520, 32.561581, 32.033466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513727, 0.315296, -0.797917,
		0.745926, -0.623634, 0.233825,
		-0.423885, -0.715310, -0.555566,
		37.377354, 32.346989, 31.866796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184376, 32.607269, 31.792992>,  <37.674076, 32.847706, 32.255692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184376, 32.607269, 31.792992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.846893, 32.466057, 31.631239>,  <37.644402, 32.381329, 31.534187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.846893, 32.466057, 31.631239>,  <38.184376, 32.607269, 31.792992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846893, 32.466057, 31.631239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381042, 0.136740, -0.914390,
		0.378106, -0.925564, 0.019152,
		-0.843708, -0.353034, -0.404381,
		37.593781, 32.360146, 31.509924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327358, 32.075005, 31.276684>,  <38.184376, 32.607269, 31.792992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327358, 32.075005, 31.276684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.957050, 32.186016, 31.173973>,  <37.734867, 32.252621, 31.112347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.957050, 32.186016, 31.173973>,  <38.327358, 32.075005, 31.276684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957050, 32.186016, 31.173973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286003, 0.069819, -0.955682,
		-0.247300, -0.958177, -0.144010,
		-0.925767, 0.277527, -0.256775,
		37.679321, 32.269276, 31.096941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195282, 31.703402, 30.748760>,  <38.327358, 32.075005, 31.276684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195282, 31.703402, 30.748760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.903664, 31.971264, 30.692106>,  <37.728695, 32.131981, 30.658113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.903664, 31.971264, 30.692106>,  <38.195282, 31.703402, 30.748760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903664, 31.971264, 30.692106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219715, 0.032978, -0.975007,
		-0.648247, -0.741940, -0.171175,
		-0.729041, 0.669655, -0.141637,
		37.684952, 32.172161, 30.649614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008949, 31.569477, 30.086946>,  <38.195282, 31.703402, 30.748760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008949, 31.569477, 30.086946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.853298, 31.931976, 30.153032>,  <37.759907, 32.149475, 30.192684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.853298, 31.931976, 30.153032>,  <38.008949, 31.569477, 30.086946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853298, 31.931976, 30.153032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218306, 0.264964, -0.939221,
		-0.894943, -0.329408, -0.300944,
		-0.389126, 0.906247, 0.165217,
		37.736561, 32.203850, 30.202597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672268, 31.677343, 29.484034>,  <38.008949, 31.569477, 30.086946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672268, 31.677343, 29.484034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.692371, 32.036995, 29.657949>,  <37.704433, 32.252785, 29.762299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.692371, 32.036995, 29.657949>,  <37.672268, 31.677343, 29.484034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692371, 32.036995, 29.657949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202811, 0.417081, -0.885952,
		-0.977927, 0.132703, -0.161393,
		0.050255, 0.899129, 0.434789,
		37.707447, 32.306732, 29.788385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301685, 32.136860, 29.109890>,  <37.672268, 31.677343, 29.484034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301685, 32.136860, 29.109890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.568287, 32.353054, 29.315277>,  <37.728249, 32.482773, 29.438509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.568287, 32.353054, 29.315277>,  <37.301685, 32.136860, 29.109890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568287, 32.353054, 29.315277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204759, 0.529546, -0.823198,
		-0.716833, 0.653800, 0.242274,
		0.666501, 0.540487, 0.513468,
		37.768238, 32.515202, 29.469318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183002, 32.890862, 28.890554>,  <37.301685, 32.136860, 29.109890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183002, 32.890862, 28.890554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.555126, 32.873806, 29.036268>,  <37.778400, 32.863575, 29.123697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.555126, 32.873806, 29.036268>,  <37.183002, 32.890862, 28.890554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555126, 32.873806, 29.036268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337154, 0.490425, -0.803624,
		-0.144392, 0.870440, 0.470622,
		0.930311, -0.042635, 0.364285,
		37.834221, 32.861015, 29.145554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500809, 33.581123, 28.888935>,  <37.183002, 32.890862, 28.890554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500809, 33.581123, 28.888935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.800945, 33.318535, 28.857851>,  <37.981026, 33.160980, 28.839201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.800945, 33.318535, 28.857851>,  <37.500809, 33.581123, 28.888935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800945, 33.318535, 28.857851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292351, 0.434972, -0.851663,
		0.592894, 0.616317, 0.518296,
		0.750338, -0.656470, -0.077711,
		38.026047, 33.121593, 28.834538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921379, 34.066975, 28.599678>,  <37.500809, 33.581123, 28.888935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921379, 34.066975, 28.599678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.088936, 33.705051, 28.569092>,  <38.189472, 33.487896, 28.550739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.088936, 33.705051, 28.569092>,  <37.921379, 34.066975, 28.599678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088936, 33.705051, 28.569092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525877, 0.310388, -0.791905,
		0.740257, 0.291514, 0.605838,
		0.418896, -0.904809, -0.076467,
		38.214603, 33.433609, 28.546152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543495, 34.166332, 28.445662>,  <37.921379, 34.066975, 28.599678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543495, 34.166332, 28.445662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.522438, 33.785324, 28.325706>,  <38.509804, 33.556721, 28.253733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.522438, 33.785324, 28.325706>,  <38.543495, 34.166332, 28.445662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522438, 33.785324, 28.325706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595756, 0.211055, -0.774939,
		0.801438, -0.219456, 0.556360,
		-0.052643, -0.952521, -0.299889,
		38.506645, 33.499569, 28.235739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197750, 33.934669, 28.241837>,  <38.543495, 34.166332, 28.445662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197750, 33.934669, 28.241837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.950905, 33.689156, 28.044884>,  <38.802799, 33.541847, 27.926712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.950905, 33.689156, 28.044884>,  <39.197750, 33.934669, 28.241837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950905, 33.689156, 28.044884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486863, 0.193751, -0.851719,
		0.618172, -0.765329, 0.179263,
		-0.617113, -0.613785, -0.492381,
		38.765770, 33.505020, 27.897169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.586815, 33.650982, 27.777723>,  <39.197750, 33.934669, 28.241837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.586815, 33.650982, 27.777723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.219402, 33.611153, 27.624683>,  <38.998955, 33.587254, 27.532860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.219402, 33.611153, 27.624683>,  <39.586815, 33.650982, 27.777723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219402, 33.611153, 27.624683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350227, 0.244010, -0.904323,
		0.183400, -0.964648, -0.189260,
		-0.918534, -0.099569, -0.382598,
		38.943844, 33.581280, 27.509905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594299, 33.166252, 27.274645>,  <39.586815, 33.650982, 27.777723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594299, 33.166252, 27.274645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.304512, 33.433945, 27.208582>,  <39.130638, 33.594559, 27.168945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.304512, 33.433945, 27.208582>,  <39.594299, 33.166252, 27.274645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.304512, 33.433945, 27.208582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434616, 0.257512, -0.863016,
		-0.535024, -0.697009, -0.477417,
		-0.724471, 0.669227, -0.165156,
		39.087170, 33.634712, 27.159035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.648830, 32.650650, 26.225609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.606350, 33.029972, 26.345228>,  <38.580860, 33.257565, 26.417000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.606350, 33.029972, 26.345228>,  <38.648830, 32.650650, 26.225609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606350, 33.029972, 26.345228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155460, 0.312888, -0.936981,
		-0.982116, -0.053020, -0.180654,
		-0.106204, 0.948309, 0.299050,
		38.574490, 33.314465, 26.434944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192440, 33.014206, 25.856035>,  <38.648830, 32.650650, 26.225609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192440, 33.014206, 25.856035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.452496, 33.289028, 25.985819>,  <38.608528, 33.453922, 26.063688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.452496, 33.289028, 25.985819>,  <38.192440, 33.014206, 25.856035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452496, 33.289028, 25.985819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122477, 0.326676, -0.937167,
		-0.749882, 0.649025, 0.128235,
		0.650136, 0.687059, 0.324458,
		38.647537, 33.495148, 26.083157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986065, 33.496262, 25.434774>,  <38.192440, 33.014206, 25.856035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986065, 33.496262, 25.434774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.299706, 33.678406, 25.603460>,  <38.487888, 33.787693, 25.704672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.299706, 33.678406, 25.603460>,  <37.986065, 33.496262, 25.434774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299706, 33.678406, 25.603460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203762, 0.452948, -0.867940,
		-0.586236, 0.766478, 0.262371,
		0.784097, 0.455356, 0.421713,
		38.534935, 33.815014, 25.729975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848301, 34.226761, 25.399303>,  <37.986065, 33.496262, 25.434774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848301, 34.226761, 25.399303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.242180, 34.157135, 25.402641>,  <38.478508, 34.115360, 25.404644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.242180, 34.157135, 25.402641>,  <37.848301, 34.226761, 25.399303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242180, 34.157135, 25.402641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091158, 0.473708, -0.875951,
		0.148521, 0.863309, 0.482327,
		0.984699, -0.174065, 0.008342,
		38.537590, 34.104916, 25.405144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120193, 34.757713, 25.010695>,  <37.848301, 34.226761, 25.399303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120193, 34.757713, 25.010695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.470055, 34.566109, 25.040442>,  <38.679974, 34.451145, 25.058290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.470055, 34.566109, 25.040442>,  <38.120193, 34.757713, 25.010695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470055, 34.566109, 25.040442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309677, 0.434122, -0.845954,
		0.372934, 0.762947, 0.528045,
		0.874654, -0.479008, 0.074369,
		38.732452, 34.422405, 25.062752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607086, 35.264961, 25.066107>,  <38.120193, 34.757713, 25.010695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.607086, 35.264961, 25.066107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.815014, 34.953579, 24.925373>,  <38.939770, 34.766750, 24.840933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.815014, 34.953579, 24.925373>,  <38.607086, 35.264961, 25.066107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815014, 34.953579, 24.925373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278491, 0.543775, -0.791677,
		0.807606, 0.313549, 0.499460,
		0.519823, -0.778458, -0.351835,
		38.970963, 34.720043, 24.819822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268208, 35.570583, 24.703745>,  <38.607086, 35.264961, 25.066107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268208, 35.570583, 24.703745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.239243, 35.191986, 24.577948>,  <39.221863, 34.964828, 24.502470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.239243, 35.191986, 24.577948>,  <39.268208, 35.570583, 24.703745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239243, 35.191986, 24.577948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089560, 0.307876, -0.947202,
		0.993346, -0.096754, 0.062474,
		-0.072411, -0.946494, -0.314492,
		39.217518, 34.908039, 24.483601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887909, 35.314262, 24.222645>,  <39.268208, 35.570583, 24.703745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887909, 35.314262, 24.222645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.557266, 35.102707, 24.145712>,  <39.358879, 34.975773, 24.099552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.557266, 35.102707, 24.145712>,  <39.887909, 35.314262, 24.222645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557266, 35.102707, 24.145712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104380, 0.191748, -0.975878,
		0.553012, -0.826746, -0.103295,
		-0.826609, -0.528890, -0.192334,
		39.309284, 34.944038, 24.088011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075012, 34.852978, 23.700796>,  <39.887909, 35.314262, 24.222645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075012, 34.852978, 23.700796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.676140, 34.881351, 23.710520>,  <39.436817, 34.898376, 23.716354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.676140, 34.881351, 23.710520>,  <40.075012, 34.852978, 23.700796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676140, 34.881351, 23.710520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011542, 0.175125, -0.984479,
		-0.074096, -0.981987, -0.173813,
		-0.997184, 0.070939, 0.024310,
		39.376984, 34.902634, 23.717813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848942, 34.513710, 23.116734>,  <40.075012, 34.852978, 23.700796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848942, 34.513710, 23.116734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.525780, 34.725452, 23.220324>,  <39.331882, 34.852497, 23.282478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.525780, 34.725452, 23.220324>,  <39.848942, 34.513710, 23.116734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525780, 34.725452, 23.220324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166455, 0.216578, -0.961970,
		-0.565309, -0.820293, -0.086863,
		-0.807910, 0.529352, 0.258975,
		39.283405, 34.884258, 23.298016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174835, 34.341732, 22.635923>,  <39.848942, 34.513710, 23.116734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.174835, 34.341732, 22.635923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.146408, 34.702644, 22.806025>,  <39.129353, 34.919193, 22.908085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.146408, 34.702644, 22.806025>,  <39.174835, 34.341732, 22.635923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146408, 34.702644, 22.806025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036342, 0.423708, -0.905070,
		-0.996809, -0.079774, 0.002680,
		-0.071065, 0.902279, 0.425255,
		39.125088, 34.973328, 22.933601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783764, 34.773548, 22.199570>,  <39.174835, 34.341732, 22.635923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783764, 34.773548, 22.199570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.939953, 35.062473, 22.427883>,  <39.033669, 35.235828, 22.564871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.939953, 35.062473, 22.427883>,  <38.783764, 34.773548, 22.199570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939953, 35.062473, 22.427883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062693, 0.639428, -0.766290,
		-0.918476, 0.263433, 0.294965,
		0.390475, 0.722312, 0.570784,
		39.057095, 35.279167, 22.599119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389324, 35.345703, 22.136686>,  <38.783764, 34.773548, 22.199570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389324, 35.345703, 22.136686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.760990, 35.465530, 22.223324>,  <38.983990, 35.537426, 22.275307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.760990, 35.465530, 22.223324>,  <38.389324, 35.345703, 22.136686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760990, 35.465530, 22.223324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023653, 0.536542, -0.843542,
		-0.368909, 0.788913, 0.491450,
		0.929165, 0.299566, 0.216595,
		39.039738, 35.555401, 22.288301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293846, 36.124008, 22.047039>,  <38.389324, 35.345703, 22.136686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293846, 36.124008, 22.047039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.686077, 36.046574, 22.034401>,  <38.921413, 36.000111, 22.026817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.686077, 36.046574, 22.034401>,  <38.293846, 36.124008, 22.047039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686077, 36.046574, 22.034401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113803, 0.692681, -0.712210,
		0.159763, 0.694778, 0.701255,
		0.980574, -0.193589, -0.031597,
		38.980247, 35.988499, 22.024921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653915, 36.800602, 21.868507>,  <38.293846, 36.124008, 22.047039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653915, 36.800602, 21.868507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.966022, 36.552277, 21.838118>,  <39.153286, 36.403282, 21.819883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.966022, 36.552277, 21.838118>,  <38.653915, 36.800602, 21.868507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966022, 36.552277, 21.838118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461938, 0.653921, -0.599167,
		0.421651, 0.432417, 0.797011,
		0.780272, -0.620809, -0.075976,
		39.200104, 36.366035, 21.815325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264431, 37.190998, 21.930159>,  <38.653915, 36.800602, 21.868507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264431, 37.190998, 21.930159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.392494, 36.865250, 21.736542>,  <39.469334, 36.669800, 21.620373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.392494, 36.865250, 21.736542>,  <39.264431, 37.190998, 21.930159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392494, 36.865250, 21.736542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439060, 0.580301, -0.685914,
		0.839478, 0.007080, 0.543348,
		0.320161, -0.814372, -0.484041,
		39.488541, 36.620937, 21.591330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958759, 37.357567, 21.769163>,  <39.264431, 37.190998, 21.930159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958759, 37.357567, 21.769163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.801746, 37.094452, 21.512032>,  <39.707539, 36.936581, 21.357752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.801746, 37.094452, 21.512032>,  <39.958759, 37.357567, 21.769163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801746, 37.094452, 21.512032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270439, 0.585483, -0.764247,
		0.879081, -0.473835, -0.051927,
		-0.392529, -0.657792, -0.642830,
		39.683987, 36.897114, 21.319183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356655, 37.511543, 21.220964>,  <39.958759, 37.357567, 21.769163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356655, 37.511543, 21.220964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.067436, 37.280956, 21.068708>,  <39.893906, 37.142605, 20.977354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.067436, 37.280956, 21.068708>,  <40.356655, 37.511543, 21.220964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067436, 37.280956, 21.068708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099507, 0.458355, -0.883181,
		0.683591, -0.676461, -0.274052,
		-0.723051, -0.576464, -0.380640,
		39.850521, 37.108017, 20.954517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.651768, 37.175877, 20.563646>,  <40.356655, 37.511543, 21.220964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.651768, 37.175877, 20.563646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.252327, 37.193306, 20.551723>,  <40.012661, 37.203766, 20.544569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.252327, 37.193306, 20.551723>,  <40.651768, 37.175877, 20.563646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.252327, 37.193306, 20.551723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047507, 0.495409, -0.867360,
		-0.023030, -0.867566, -0.496788,
		-0.998605, 0.043576, -0.029806,
		39.952744, 37.206379, 20.542782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.420238, 36.907764, 19.864134>,  <40.651768, 37.175877, 20.563646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.420238, 36.907764, 19.864134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.128693, 37.139118, 20.010683>,  <39.953766, 37.277931, 20.098614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.128693, 37.139118, 20.010683>,  <40.420238, 36.907764, 19.864134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128693, 37.139118, 20.010683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215875, 0.313683, -0.924662,
		-0.649738, -0.753042, -0.103773,
		-0.728862, 0.578386, 0.366375,
		39.910034, 37.312634, 20.120596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039017, 36.958645, 19.375462>,  <40.420238, 36.907764, 19.864134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039017, 36.958645, 19.375462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.901566, 37.279114, 19.571440>,  <39.819096, 37.471394, 19.689028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.901566, 37.279114, 19.571440>,  <40.039017, 36.958645, 19.375462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901566, 37.279114, 19.571440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039008, 0.509090, -0.859829,
		-0.938296, -0.314571, -0.143685,
		-0.343626, 0.801169, 0.489948,
		39.798477, 37.519466, 19.718424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542870, 37.239849, 18.930912>,  <40.039017, 36.958645, 19.375462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542870, 37.239849, 18.930912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.566486, 37.532822, 19.202223>,  <39.580658, 37.708603, 19.365009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.566486, 37.532822, 19.202223>,  <39.542870, 37.239849, 18.930912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566486, 37.532822, 19.202223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147102, 0.678429, -0.719788,
		-0.987358, -0.057278, 0.147797,
		0.059042, 0.732429, 0.678278,
		39.584198, 37.752552, 19.405706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911583, 37.521698, 18.951462>,  <39.542870, 37.239849, 18.930912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911583, 37.521698, 18.951462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.235096, 37.746239, 19.021616>,  <39.429203, 37.880962, 19.063707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.235096, 37.746239, 19.021616>,  <38.911583, 37.521698, 18.951462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235096, 37.746239, 19.021616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238215, 0.585348, -0.774998,
		-0.537707, 0.585023, 0.607140,
		0.808780, 0.561352, 0.175384,
		39.477730, 37.914642, 19.074232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729534, 38.258244, 18.755379>,  <38.911583, 37.521698, 18.951462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729534, 38.258244, 18.755379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.129383, 38.250843, 18.747185>,  <39.369293, 38.246403, 18.742268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.129383, 38.250843, 18.747185>,  <38.729534, 38.258244, 18.755379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129383, 38.250843, 18.747185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003053, 0.811688, -0.584083,
		0.027433, 0.583798, 0.811435,
		0.999619, -0.018500, -0.020484,
		39.429268, 38.245293, 18.741039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207058, 38.683205, 19.007338>,  <38.729534, 38.258244, 18.755379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207058, 38.683205, 19.007338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.819729, 38.777252, 19.040964>,  <37.587330, 38.833679, 19.061140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.819729, 38.777252, 19.040964>,  <38.207058, 38.683205, 19.007338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819729, 38.777252, 19.040964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069218, -0.576247, 0.814339,
		0.239907, 0.782726, 0.574268,
		-0.968325, 0.235115, 0.084067,
		37.529232, 38.847786, 19.066185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090027, 38.698154, 19.640659>,  <38.207058, 38.683205, 19.007338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090027, 38.698154, 19.640659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.714252, 38.652832, 19.511280>,  <37.488789, 38.625641, 19.433653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.714252, 38.652832, 19.511280>,  <38.090027, 38.698154, 19.640659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714252, 38.652832, 19.511280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201935, -0.579548, 0.789523,
		-0.276909, 0.807024, 0.521569,
		-0.939438, -0.113303, -0.323448,
		37.432423, 38.618839, 19.414246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574844, 38.818233, 20.245268>,  <38.090027, 38.698154, 19.640659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574844, 38.818233, 20.245268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.355423, 38.618523, 19.976995>,  <37.223770, 38.498695, 19.816032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.355423, 38.618523, 19.976995>,  <37.574844, 38.818233, 20.245268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355423, 38.618523, 19.976995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440031, -0.509675, 0.739326,
		-0.710959, 0.700679, 0.059886,
		-0.548553, -0.499279, -0.670679,
		37.190857, 38.468739, 19.775791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893578, 38.803104, 20.559299>,  <37.574844, 38.818233, 20.245268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893578, 38.803104, 20.559299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.920090, 38.502861, 20.296335>,  <36.935997, 38.322716, 20.138557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.920090, 38.502861, 20.296335>,  <36.893578, 38.803104, 20.559299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920090, 38.502861, 20.296335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537758, -0.581859, 0.610128,
		-0.840490, 0.313086, -0.442215,
		0.066285, -0.750611, -0.657411,
		36.939976, 38.277679, 20.099112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226933, 38.396763, 20.523842>,  <36.893578, 38.803104, 20.559299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226933, 38.396763, 20.523842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.509892, 38.148258, 20.389009>,  <36.679668, 37.999153, 20.308111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.509892, 38.148258, 20.389009>,  <36.226933, 38.396763, 20.523842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509892, 38.148258, 20.389009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323984, -0.708850, 0.626551,
		-0.628191, -0.334012, -0.702717,
		0.707397, -0.621263, -0.337078,
		36.722111, 37.961880, 20.287886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855995, 37.813744, 20.391045>,  <36.226933, 38.396763, 20.523842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855995, 37.813744, 20.391045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.236683, 37.696598, 20.427845>,  <36.465096, 37.626312, 20.449926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.236683, 37.696598, 20.427845>,  <35.855995, 37.813744, 20.391045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236683, 37.696598, 20.427845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271199, -0.661737, 0.698967,
		-0.143820, -0.690171, -0.709211,
		0.951718, -0.292863, 0.092003,
		36.522198, 37.608738, 20.455446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765499, 37.147659, 20.457502>,  <35.855995, 37.813744, 20.391045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765499, 37.147659, 20.457502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.141468, 37.225048, 20.570013>,  <36.367050, 37.271481, 20.637520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.141468, 37.225048, 20.570013>,  <35.765499, 37.147659, 20.457502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141468, 37.225048, 20.570013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023952, -0.784515, 0.619648,
		0.340549, -0.589157, -0.732749,
		0.939922, 0.193470, 0.281277,
		36.423443, 37.283089, 20.654396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123905, 36.509678, 20.452784>,  <35.765499, 37.147659, 20.457502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123905, 36.509678, 20.452784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.347008, 36.731514, 20.699793>,  <36.480869, 36.864616, 20.847998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.347008, 36.731514, 20.699793>,  <36.123905, 36.509678, 20.452784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347008, 36.731514, 20.699793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055610, -0.767298, 0.638874,
		0.828138, -0.321998, -0.458809,
		0.557760, 0.554590, 0.617523,
		36.514336, 36.897892, 20.885050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526768, 36.079258, 20.691643>,  <36.123905, 36.509678, 20.452784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526768, 36.079258, 20.691643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.560432, 36.367878, 20.966534>,  <36.580631, 36.541050, 21.131468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.560432, 36.367878, 20.966534>,  <36.526768, 36.079258, 20.691643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560432, 36.367878, 20.966534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008774, -0.690183, 0.723581,
		0.996414, -0.054866, -0.064416,
		0.084159, 0.721552, 0.687227,
		36.585682, 36.584343, 21.172701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096489, 35.937706, 21.147696>,  <36.526768, 36.079258, 20.691643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096489, 35.937706, 21.147696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.868591, 36.192028, 21.355980>,  <36.731853, 36.344620, 21.480951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.868591, 36.192028, 21.355980>,  <37.096489, 35.937706, 21.147696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868591, 36.192028, 21.355980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165813, -0.531644, 0.830579,
		0.804918, 0.559561, 0.197478,
		-0.569748, 0.635804, 0.520712,
		36.697666, 36.382771, 21.512194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449883, 36.120979, 21.866888>,  <37.096489, 35.937706, 21.147696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449883, 36.120979, 21.866888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.058151, 36.178776, 21.923508>,  <36.823112, 36.213455, 21.957479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.058151, 36.178776, 21.923508>,  <37.449883, 36.120979, 21.866888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058151, 36.178776, 21.923508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069850, -0.415168, 0.907059,
		0.189828, 0.898197, 0.396494,
		-0.979330, 0.144490, 0.141550,
		36.764351, 36.222122, 21.965973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392437, 36.474751, 22.520750>,  <37.449883, 36.120979, 21.866888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392437, 36.474751, 22.520750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.043926, 36.299412, 22.432455>,  <36.834820, 36.194210, 22.379478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.043926, 36.299412, 22.432455>,  <37.392437, 36.474751, 22.520750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043926, 36.299412, 22.432455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052409, -0.364096, 0.929886,
		-0.487981, 0.821759, 0.294256,
		-0.871279, -0.438345, -0.220740,
		36.782543, 36.167908, 22.366234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092937, 36.448727, 23.147169>,  <37.392437, 36.474751, 22.520750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092937, 36.448727, 23.147169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.879787, 36.184933, 22.935083>,  <36.751900, 36.026657, 22.807831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.879787, 36.184933, 22.935083>,  <37.092937, 36.448727, 23.147169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879787, 36.184933, 22.935083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120894, -0.560827, 0.819059,
		-0.837516, 0.500553, 0.219121,
		-0.532871, -0.659484, -0.530216,
		36.719925, 35.987087, 22.776018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466885, 36.262081, 23.553942>,  <37.092937, 36.448727, 23.147169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466885, 36.262081, 23.553942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.531708, 35.971291, 23.287035>,  <36.570602, 35.796818, 23.126892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.531708, 35.971291, 23.287035>,  <36.466885, 36.262081, 23.553942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531708, 35.971291, 23.287035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109708, -0.685286, 0.719963,
		-0.980663, -0.043474, -0.190814,
		0.162062, -0.726975, -0.667265,
		36.580326, 35.753197, 23.086855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950932, 35.741631, 23.704390>,  <36.466885, 36.262081, 23.553942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950932, 35.741631, 23.704390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.232456, 35.539768, 23.504402>,  <36.401371, 35.418652, 23.384409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.232456, 35.539768, 23.504402>,  <35.950932, 35.741631, 23.704390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232456, 35.539768, 23.504402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160252, -0.798446, 0.580347,
		-0.692076, -0.328334, -0.642828,
		0.703811, -0.504659, -0.499969,
		36.443600, 35.388371, 23.354412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707634, 35.154053, 23.754848>,  <35.950932, 35.741631, 23.704390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707634, 35.154053, 23.754848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.080013, 35.068851, 23.636219>,  <36.303440, 35.017731, 23.565042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.080013, 35.068851, 23.636219>,  <35.707634, 35.154053, 23.754848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080013, 35.068851, 23.636219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065428, -0.896383, 0.438426,
		-0.359230, -0.388749, -0.848426,
		0.930953, -0.213007, -0.296573,
		36.359299, 35.004948, 23.547247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644257, 34.472202, 23.497683>,  <35.707634, 35.154053, 23.754848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644257, 34.472202, 23.497683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.019562, 34.551556, 23.611034>,  <36.244747, 34.599167, 23.679045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.019562, 34.551556, 23.611034>,  <35.644257, 34.472202, 23.497683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019562, 34.551556, 23.611034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032069, -0.865564, 0.499771,
		0.344428, -0.459830, -0.818490,
		0.938265, 0.198383, 0.283378,
		36.301041, 34.611069, 23.696049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967258, 33.776936, 23.549307>,  <35.644257, 34.472202, 23.497683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967258, 33.776936, 23.549307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.177120, 34.036118, 23.770178>,  <36.303036, 34.191628, 23.902700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.177120, 34.036118, 23.770178>,  <35.967258, 33.776936, 23.549307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177120, 34.036118, 23.770178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050826, -0.671300, 0.739441,
		0.849798, -0.359884, -0.385132,
		0.524652, 0.647951, 0.552178,
		36.334515, 34.230503, 23.935831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304501, 33.324623, 23.932371>,  <35.967258, 33.776936, 23.549307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304501, 33.324623, 23.932371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.326118, 33.680038, 24.114614>,  <36.339088, 33.893288, 24.223961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.326118, 33.680038, 24.114614>,  <36.304501, 33.324623, 23.932371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326118, 33.680038, 24.114614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021690, -0.457214, 0.889092,
		0.998303, -0.038167, -0.043982,
		0.054043, 0.888537, 0.455611,
		36.342331, 33.946598, 24.251297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691139, 33.204063, 24.563248>,  <36.304501, 33.324623, 23.932371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691139, 33.204063, 24.563248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.468815, 33.533817, 24.606068>,  <36.335419, 33.731670, 24.631760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.468815, 33.533817, 24.606068>,  <36.691139, 33.204063, 24.563248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468815, 33.533817, 24.606068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346807, -0.346978, 0.871396,
		0.755509, 0.447210, 0.478758,
		-0.555815, 0.824384, 0.107050,
		36.302071, 33.781132, 24.638182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.991734, 32.765774, 29.710243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.636482, 32.810299, 29.531878>,  <38.423332, 32.837013, 29.424858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.636482, 32.810299, 29.531878>,  <38.991734, 32.765774, 29.710243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636482, 32.810299, 29.531878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458046, -0.293987, 0.838907,
		-0.037714, 0.949306, 0.312084,
		-0.888128, 0.111310, -0.445914,
		38.370045, 32.843693, 29.398104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519535, 33.261292, 30.181736>,  <38.991734, 32.765774, 29.710243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519535, 33.261292, 30.181736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.270435, 33.048500, 29.952238>,  <38.120975, 32.920826, 29.814539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.270435, 33.048500, 29.952238>,  <38.519535, 33.261292, 30.181736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270435, 33.048500, 29.952238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557490, -0.212832, 0.802439,
		-0.548994, 0.819572, -0.164035,
		-0.622745, -0.531981, -0.573746,
		38.083611, 32.888905, 29.780113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808285, 33.447762, 30.301306>,  <38.519535, 33.261292, 30.181736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808285, 33.447762, 30.301306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.756073, 33.082985, 30.145706>,  <37.724747, 32.864117, 30.052347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.756073, 33.082985, 30.145706>,  <37.808285, 33.447762, 30.301306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756073, 33.082985, 30.145706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585802, -0.245605, 0.772344,
		-0.799874, 0.328689, -0.502160,
		-0.130527, -0.911944, -0.389000,
		37.716915, 32.809402, 30.029007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171028, 33.414513, 30.468035>,  <37.808285, 33.447762, 30.301306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171028, 33.414513, 30.468035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.345486, 33.062641, 30.392204>,  <37.450161, 32.851517, 30.346706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.345486, 33.062641, 30.392204>,  <37.171028, 33.414513, 30.468035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345486, 33.062641, 30.392204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346376, -0.358549, 0.866872,
		-0.830543, -0.312417, -0.461080,
		0.436145, -0.879681, -0.189576,
		37.476330, 32.798737, 30.335331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701767, 32.964382, 30.562346>,  <37.171028, 33.414513, 30.468035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701767, 32.964382, 30.562346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.023666, 32.727394, 30.577070>,  <37.216808, 32.585201, 30.585905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.023666, 32.727394, 30.577070>,  <36.701767, 32.964382, 30.562346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023666, 32.727394, 30.577070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282858, -0.328209, 0.901260,
		-0.521889, -0.735702, -0.431711,
		0.804751, -0.592471, 0.036810,
		37.265091, 32.549652, 30.588114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450520, 32.397243, 30.901659>,  <36.701767, 32.964382, 30.562346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450520, 32.397243, 30.901659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.844864, 32.395660, 30.968666>,  <37.081470, 32.394711, 31.008871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.844864, 32.395660, 30.968666>,  <36.450520, 32.397243, 30.901659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844864, 32.395660, 30.968666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155859, -0.388798, 0.908044,
		0.061535, -0.921315, -0.383918,
		0.985861, -0.003960, 0.167520,
		37.140621, 32.394474, 31.018923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575203, 31.701483, 31.025770>,  <36.450520, 32.397243, 30.901659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575203, 31.701483, 31.025770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.868362, 31.927120, 31.177908>,  <37.044258, 32.062504, 31.269190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.868362, 31.927120, 31.177908>,  <36.575203, 31.701483, 31.025770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868362, 31.927120, 31.177908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050819, -0.512097, 0.857423,
		0.678438, -0.647733, -0.346648,
		0.732898, 0.564092, 0.380343,
		37.088230, 32.096348, 31.292011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949806, 31.230026, 31.224808>,  <36.575203, 31.701483, 31.025770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949806, 31.230026, 31.224808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.047955, 31.557049, 31.433189>,  <37.106846, 31.753263, 31.558218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.047955, 31.557049, 31.433189>,  <36.949806, 31.230026, 31.224808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047955, 31.557049, 31.433189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018303, -0.533378, 0.845679,
		0.969256, -0.217042, -0.115914,
		0.245374, 0.817558, 0.520953,
		37.121567, 31.802317, 31.589476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242809, 30.932119, 31.909912>,  <36.949806, 31.230026, 31.224808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242809, 30.932119, 31.909912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.205856, 31.324331, 31.979229>,  <37.183685, 31.559658, 32.020821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.205856, 31.324331, 31.979229>,  <37.242809, 30.932119, 31.909912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205856, 31.324331, 31.979229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035998, -0.170635, 0.984677,
		0.995073, 0.097205, -0.019533,
		-0.092383, 0.980528, 0.173294,
		37.178143, 31.618490, 32.031216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833530, 31.087223, 32.436779>,  <37.242809, 30.932119, 31.909912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833530, 31.087223, 32.436779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.538685, 31.357199, 32.450191>,  <37.361778, 31.519184, 32.458241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.538685, 31.357199, 32.450191>,  <37.833530, 31.087223, 32.436779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538685, 31.357199, 32.450191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075601, -0.131672, 0.988406,
		0.671527, 0.726032, 0.148083,
		-0.737113, 0.674937, 0.033532,
		37.317551, 31.559679, 32.460251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057461, 31.696087, 32.923626>,  <37.833530, 31.087223, 32.436779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057461, 31.696087, 32.923626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.661224, 31.660122, 32.882359>,  <37.423481, 31.638542, 32.857597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.661224, 31.660122, 32.882359>,  <38.057461, 31.696087, 32.923626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661224, 31.660122, 32.882359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080334, -0.228248, 0.970283,
		-0.110790, 0.969442, 0.218877,
		-0.990592, -0.089915, -0.103167,
		37.364048, 31.633148, 32.851410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866680, 32.273972, 33.486813>,  <38.057461, 31.696087, 32.923626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866680, 32.273972, 33.486813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.522877, 32.226635, 33.685707>,  <37.316597, 32.198231, 33.805046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.522877, 32.226635, 33.685707>,  <37.866680, 32.273972, 33.486813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522877, 32.226635, 33.685707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388887, 0.479898, 0.786426,
		-0.331693, 0.869306, -0.366452,
		-0.859504, -0.118343, 0.497240,
		37.265026, 32.191132, 33.834881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552155, 32.884247, 33.868992>,  <37.866680, 32.273972, 33.486813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552155, 32.884247, 33.868992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.405304, 32.585587, 34.090889>,  <37.317196, 32.406391, 34.224026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.405304, 32.585587, 34.090889>,  <37.552155, 32.884247, 33.868992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405304, 32.585587, 34.090889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233376, 0.503374, 0.831956,
		-0.900419, 0.434895, -0.010551,
		-0.367125, -0.746647, 0.554742,
		37.295166, 32.361591, 34.257313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090282, 33.101707, 34.387951>,  <37.552155, 32.884247, 33.868992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090282, 33.101707, 34.387951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.394936, 33.353626, 34.326935>,  <38.577728, 33.504776, 34.290325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.394936, 33.353626, 34.326935>,  <38.090282, 33.101707, 34.387951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394936, 33.353626, 34.326935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483966, 0.709381, 0.512401,
		0.430916, -0.316439, 0.845090,
		0.761635, 0.629797, -0.152538,
		38.623425, 33.542564, 34.281174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291233, 33.871815, 34.530350>,  <38.090282, 33.101707, 34.387951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291233, 33.871815, 34.530350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.401791, 34.197327, 34.734844>,  <38.468124, 34.392635, 34.857540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.401791, 34.197327, 34.734844>,  <38.291233, 33.871815, 34.530350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401791, 34.197327, 34.734844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473146, 0.578248, -0.664652,
		-0.836504, -0.058183, 0.544863,
		0.276395, 0.813784, 0.511236,
		38.484711, 34.441463, 34.888214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723888, 34.222023, 34.550400>,  <38.291233, 33.871815, 34.530350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723888, 34.222023, 34.550400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.000122, 34.492119, 34.654045>,  <38.165863, 34.654179, 34.716232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.000122, 34.492119, 34.654045>,  <37.723888, 34.222023, 34.550400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000122, 34.492119, 34.654045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417537, 0.664744, -0.619498,
		-0.590556, 0.319626, 0.741001,
		0.690584, 0.675244, 0.259113,
		38.207298, 34.694691, 34.731777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352478, 34.921822, 34.578903>,  <37.723888, 34.222023, 34.550400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352478, 34.921822, 34.578903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.746880, 34.969036, 34.531792>,  <37.983521, 34.997364, 34.503525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.746880, 34.969036, 34.531792>,  <37.352478, 34.921822, 34.578903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746880, 34.969036, 34.531792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166441, 0.739469, -0.652291,
		0.010097, 0.662761, 0.748763,
		0.986000, 0.118039, -0.117777,
		38.042679, 35.004448, 34.496460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395611, 35.607933, 34.589226>,  <37.352478, 34.921822, 34.578903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395611, 35.607933, 34.589226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.731136, 35.455719, 34.433495>,  <37.932453, 35.364391, 34.340054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.731136, 35.455719, 34.433495>,  <37.395611, 35.607933, 34.589226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731136, 35.455719, 34.433495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058738, 0.647704, -0.759624,
		0.541236, 0.660054, 0.520954,
		0.838817, -0.380536, -0.389331,
		37.982780, 35.341557, 34.316696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782242, 36.206745, 34.358574>,  <37.395611, 35.607933, 34.589226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782242, 36.206745, 34.358574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.954952, 35.909763, 34.153698>,  <38.058578, 35.731575, 34.030773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.954952, 35.909763, 34.153698>,  <37.782242, 36.206745, 34.358574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954952, 35.909763, 34.153698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071187, 0.594126, -0.801216,
		0.899169, 0.309481, 0.309380,
		0.431772, -0.742452, -0.512189,
		38.084484, 35.687027, 34.000042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333878, 36.533115, 33.999588>,  <37.782242, 36.206745, 34.358574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333878, 36.533115, 33.999588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.276180, 36.203236, 33.780838>,  <38.241562, 36.005310, 33.649590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.276180, 36.203236, 33.780838>,  <38.333878, 36.533115, 33.999588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276180, 36.203236, 33.780838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057927, 0.544667, -0.836649,
		0.987845, -0.152363, -0.030794,
		-0.144246, -0.824696, -0.546872,
		38.232906, 35.955826, 33.616776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753300, 36.659077, 33.446228>,  <38.333878, 36.533115, 33.999588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753300, 36.659077, 33.446228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.508549, 36.364002, 33.332081>,  <38.361698, 36.186958, 33.263592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.508549, 36.364002, 33.332081>,  <38.753300, 36.659077, 33.446228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508549, 36.364002, 33.332081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011285, 0.352607, -0.935703,
		0.790875, -0.575753, -0.207426,
		-0.611874, -0.737683, -0.285365,
		38.324986, 36.142696, 33.246471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042629, 36.330830, 32.904472>,  <38.753300, 36.659077, 33.446228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042629, 36.330830, 32.904472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.655548, 36.248001, 32.846966>,  <38.423298, 36.198303, 32.812462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.655548, 36.248001, 32.846966>,  <39.042629, 36.330830, 32.904472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655548, 36.248001, 32.846966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066085, 0.341958, -0.937388,
		0.243270, -0.916616, -0.317230,
		-0.967704, -0.207074, -0.143763,
		38.365238, 36.185879, 32.803837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964882, 35.874821, 32.284519>,  <39.042629, 36.330830, 32.904472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964882, 35.874821, 32.284519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.606556, 36.041916, 32.345196>,  <38.391560, 36.142174, 32.381603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.606556, 36.041916, 32.345196>,  <38.964882, 35.874821, 32.284519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606556, 36.041916, 32.345196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006113, 0.329709, -0.944063,
		-0.444387, -0.846632, -0.292804,
		-0.895814, 0.417739, 0.151694,
		38.337811, 36.167236, 32.390705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540325, 35.749660, 31.708769>,  <38.964882, 35.874821, 32.284519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540325, 35.749660, 31.708769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.312954, 36.029652, 31.881708>,  <38.176533, 36.197647, 31.985472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.312954, 36.029652, 31.881708>,  <38.540325, 35.749660, 31.708769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312954, 36.029652, 31.881708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250183, 0.353556, -0.901336,
		-0.783774, -0.620509, -0.025848,
		-0.568425, 0.699976, 0.432349,
		38.142426, 36.239643, 32.011414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982334, 35.637177, 31.353830>,  <38.540325, 35.749660, 31.708769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982334, 35.637177, 31.353830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.986301, 36.012573, 31.491898>,  <37.988682, 36.237812, 31.574738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.986301, 36.012573, 31.491898>,  <37.982334, 35.637177, 31.353830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986301, 36.012573, 31.491898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172239, 0.341628, -0.923918,
		-0.985005, -0.050290, 0.165032,
		0.009916, 0.938489, 0.345167,
		37.989277, 36.294121, 31.595448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367207, 35.916222, 31.009958>,  <37.982334, 35.637177, 31.353830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367207, 35.916222, 31.009958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.605488, 36.213062, 31.132870>,  <37.748455, 36.391167, 31.206615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.605488, 36.213062, 31.132870>,  <37.367207, 35.916222, 31.009958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605488, 36.213062, 31.132870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088072, 0.319906, -0.943347,
		-0.798362, 0.589016, 0.125210,
		0.595702, 0.742105, 0.307276,
		37.784199, 36.435696, 31.225052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105125, 36.438492, 30.701380>,  <37.367207, 35.916222, 31.009958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105125, 36.438492, 30.701380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.450375, 36.601639, 30.820482>,  <37.657524, 36.699528, 30.891945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.450375, 36.601639, 30.820482>,  <37.105125, 36.438492, 30.701380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450375, 36.601639, 30.820482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137038, 0.378326, -0.915472,
		-0.486042, 0.830971, 0.270649,
		0.863124, 0.407869, 0.297757,
		37.709312, 36.723999, 30.909809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047920, 37.206532, 30.687223>,  <37.105125, 36.438492, 30.701380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047920, 37.206532, 30.687223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.426826, 37.083153, 30.652460>,  <37.654171, 37.009125, 30.631603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.426826, 37.083153, 30.652460>,  <37.047920, 37.206532, 30.687223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426826, 37.083153, 30.652460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027022, 0.347111, -0.937435,
		0.319319, 0.885648, 0.337140,
		0.947262, -0.308451, -0.086907,
		37.711006, 36.990616, 30.626389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700317, 37.828266, 30.758520>,  <37.047920, 37.206532, 30.687223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700317, 37.828266, 30.758520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.343327, 37.987865, 30.674351>,  <36.129131, 38.083626, 30.623848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.343327, 37.987865, 30.674351>,  <36.700317, 37.828266, 30.758520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343327, 37.987865, 30.674351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374293, -0.394677, 0.839127,
		0.251761, 0.827665, 0.501584,
		-0.892480, 0.398999, -0.210425,
		36.075584, 38.107567, 30.611223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487667, 38.210182, 31.395117>,  <36.700317, 37.828266, 30.758520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487667, 38.210182, 31.395117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.157364, 38.152630, 31.176971>,  <35.959183, 38.118099, 31.046083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.157364, 38.152630, 31.176971>,  <36.487667, 38.210182, 31.395117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157364, 38.152630, 31.176971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512023, -0.214300, 0.831810,
		-0.236551, 0.966113, 0.103291,
		-0.825758, -0.143878, -0.545365,
		35.909637, 38.109467, 31.013361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882057, 38.521175, 31.729202>,  <36.487667, 38.210182, 31.395117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882057, 38.521175, 31.729202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.745010, 38.251213, 31.467785>,  <35.662785, 38.089237, 31.310934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.745010, 38.251213, 31.467785>,  <35.882057, 38.521175, 31.729202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745010, 38.251213, 31.467785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583674, -0.392190, 0.710994,
		-0.736166, 0.625054, -0.259554,
		-0.342615, -0.674904, -0.653544,
		35.642227, 38.048740, 31.271721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132618, 38.603939, 31.823904>,  <35.882057, 38.521175, 31.729202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132618, 38.603939, 31.823904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.183720, 38.238052, 31.670559>,  <35.214378, 38.018520, 31.578552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.183720, 38.238052, 31.670559>,  <35.132618, 38.603939, 31.823904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183720, 38.238052, 31.670559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606803, -0.377831, 0.699310,
		-0.784519, 0.143290, -0.603322,
		0.127749, -0.914719, -0.383364,
		35.222046, 37.963638, 31.555550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555038, 38.307789, 31.648214>,  <35.132618, 38.603939, 31.823904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555038, 38.307789, 31.648214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.794079, 37.990849, 31.697306>,  <34.937504, 37.800686, 31.726761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.794079, 37.990849, 31.697306>,  <34.555038, 38.307789, 31.648214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794079, 37.990849, 31.697306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698085, -0.438880, 0.565739,
		-0.394395, -0.423765, -0.815399,
		0.597603, -0.792343, 0.122732,
		34.973358, 37.753143, 31.734123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123646, 37.766373, 31.605137>,  <34.555038, 38.307789, 31.648214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123646, 37.766373, 31.605137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.437740, 37.559700, 31.741636>,  <34.626198, 37.435696, 31.823536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.437740, 37.559700, 31.741636>,  <34.123646, 37.766373, 31.605137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437740, 37.559700, 31.741636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571151, -0.391515, 0.721459,
		-0.239160, -0.761418, -0.602533,
		0.785232, -0.516681, 0.341250,
		34.673309, 37.404697, 31.844011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985794, 37.000854, 31.577990>,  <34.123646, 37.766373, 31.605137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985794, 37.000854, 31.577990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.257889, 37.075909, 31.861416>,  <34.421146, 37.120941, 32.031471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.257889, 37.075909, 31.861416>,  <33.985794, 37.000854, 31.577990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257889, 37.075909, 31.861416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519029, -0.559281, 0.646385,
		0.517574, -0.807463, -0.283055,
		0.680239, 0.187639, 0.708566,
		34.461960, 37.132202, 32.073986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202808, 36.280853, 31.807484>,  <33.985794, 37.000854, 31.577990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202808, 36.280853, 31.807484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.288704, 36.519409, 32.116859>,  <34.340240, 36.662544, 32.302486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.288704, 36.519409, 32.116859>,  <34.202808, 36.280853, 31.807484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288704, 36.519409, 32.116859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455904, -0.639134, 0.619403,
		0.863736, -0.485622, 0.134651,
		0.214736, 0.596389, 0.773440,
		34.353127, 36.698326, 32.348892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470852, 35.888248, 32.370789>,  <34.202808, 36.280853, 31.807484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470852, 35.888248, 32.370789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.360683, 36.225182, 32.556095>,  <34.294582, 36.427341, 32.667278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.360683, 36.225182, 32.556095>,  <34.470852, 35.888248, 32.370789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360683, 36.225182, 32.556095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291693, -0.532415, 0.794638,
		0.916002, 0.083725, 0.392340,
		-0.275419, 0.842333, 0.463271,
		34.278057, 36.477882, 32.695076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746441, 35.878681, 33.034485>,  <34.470852, 35.888248, 32.370789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746441, 35.878681, 33.034485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.452141, 36.147652, 33.066776>,  <34.275562, 36.309032, 33.086151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.452141, 36.147652, 33.066776>,  <34.746441, 35.878681, 33.034485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452141, 36.147652, 33.066776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347872, -0.477493, 0.806836,
		0.581084, 0.565547, 0.585233,
		-0.735749, 0.672426, 0.080726,
		34.231415, 36.349380, 33.090996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602001, 35.811878, 33.746250>,  <34.746441, 35.878681, 33.034485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602001, 35.811878, 33.746250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.297825, 36.039619, 33.621311>,  <34.115318, 36.176266, 33.546349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.297825, 36.039619, 33.621311>,  <34.602001, 35.811878, 33.746250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297825, 36.039619, 33.621311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577356, -0.372557, 0.726541,
		0.297293, 0.732828, 0.612029,
		-0.760445, 0.569354, -0.312344,
		34.069691, 36.210426, 33.527607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394989, 36.333267, 34.230869>,  <34.602001, 35.811878, 33.746250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394989, 36.333267, 34.230869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.072109, 36.252918, 34.008850>,  <33.878380, 36.204708, 33.875637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.072109, 36.252918, 34.008850>,  <34.394989, 36.333267, 34.230869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072109, 36.252918, 34.008850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489115, -0.298789, 0.819446,
		-0.330443, 0.932940, 0.142935,
		-0.807202, -0.200868, -0.555047,
		33.829948, 36.192657, 33.842335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.379993, 40.643398, 28.041849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100159, 40.410637, 27.875975>,  <36.932259, 40.270981, 27.776451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100159, 40.410637, 27.875975>,  <37.379993, 40.643398, 28.041849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100159, 40.410637, 27.875975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417513, -0.138080, 0.898118,
		-0.579880, 0.801448, -0.146355,
		-0.699587, -0.581906, -0.414685,
		36.890282, 40.236065, 27.751570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859234, 40.724274, 28.457708>,  <37.379993, 40.643398, 28.041849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859234, 40.724274, 28.457708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783005, 40.375896, 28.276539>,  <36.737267, 40.166870, 28.167837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783005, 40.375896, 28.276539>,  <36.859234, 40.724274, 28.457708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783005, 40.375896, 28.276539> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333521, -0.376491, 0.864302,
		-0.923280, 0.315769, -0.218730,
		-0.190570, -0.870944, -0.452922,
		36.725834, 40.114613, 28.140661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210911, 40.524975, 28.704773>,  <36.859234, 40.724274, 28.457708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210911, 40.524975, 28.704773> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369286, 40.185677, 28.564083>,  <36.464310, 39.982098, 28.479670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369286, 40.185677, 28.564083>,  <36.210911, 40.524975, 28.704773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369286, 40.185677, 28.564083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432017, -0.510059, 0.743775,
		-0.810306, -0.142536, -0.568408,
		0.395936, -0.848247, -0.351726,
		36.488068, 39.931202, 28.458565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744717, 40.059509, 28.771517>,  <36.210911, 40.524975, 28.704773>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744717, 40.059509, 28.771517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060436, 39.822556, 28.706913>,  <36.249866, 39.680382, 28.668150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060436, 39.822556, 28.706913>,  <35.744717, 40.059509, 28.771517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060436, 39.822556, 28.706913> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382456, -0.680107, 0.625445,
		-0.480350, -0.431892, -0.763370,
		0.789298, -0.592388, -0.161510,
		36.297226, 39.644840, 28.658461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519955, 39.424232, 28.727839>,  <35.744717, 40.059509, 28.771517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519955, 39.424232, 28.727839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894478, 39.319366, 28.821302>,  <36.119190, 39.256447, 28.877380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894478, 39.319366, 28.821302>,  <35.519955, 39.424232, 28.727839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894478, 39.319366, 28.821302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344522, -0.556801, 0.755829,
		-0.068052, -0.788189, -0.611660,
		0.936308, -0.262166, 0.233657,
		36.175369, 39.240715, 28.891399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557823, 38.646027, 28.772114>,  <35.519955, 39.424232, 28.727839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557823, 38.646027, 28.772114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863079, 38.794563, 28.983669>,  <36.046230, 38.883686, 29.110603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863079, 38.794563, 28.983669>,  <35.557823, 38.646027, 28.772114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863079, 38.794563, 28.983669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228166, -0.610880, 0.758133,
		0.604619, -0.699233, -0.381457,
		0.763136, 0.371346, 0.528891,
		36.092018, 38.905968, 29.142336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813175, 38.073578, 29.108086>,  <35.557823, 38.646027, 28.772114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813175, 38.073578, 29.108086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008118, 38.362698, 29.304060>,  <36.125084, 38.536171, 29.421644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008118, 38.362698, 29.304060>,  <35.813175, 38.073578, 29.108086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008118, 38.362698, 29.304060> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037889, -0.578057, 0.815117,
		0.872379, -0.378691, -0.309107,
		0.487359, 0.722803, 0.489936,
		36.154324, 38.579540, 29.451040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355633, 37.723099, 29.405907>,  <35.813175, 38.073578, 29.108086>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355633, 37.723099, 29.405907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277428, 38.059017, 29.608494>,  <36.230503, 38.260571, 29.730045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277428, 38.059017, 29.608494>,  <36.355633, 37.723099, 29.405907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277428, 38.059017, 29.608494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178825, -0.538305, 0.823559,
		0.964259, 0.070449, 0.255424,
		-0.195515, 0.839801, 0.506467,
		36.218773, 38.310959, 29.760433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686382, 37.654472, 30.041332>,  <36.355633, 37.723099, 29.405907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686382, 37.654472, 30.041332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412132, 37.938492, 30.105524>,  <36.247581, 38.108902, 30.144039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412132, 37.938492, 30.105524>,  <36.686382, 37.654472, 30.041332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412132, 37.938492, 30.105524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262981, -0.447156, 0.854923,
		0.678795, 0.543952, 0.493310,
		-0.685623, 0.710048, 0.160478,
		36.206444, 38.151505, 30.153667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411579, 37.922722, 30.385359>,  <36.686382, 37.654472, 30.041332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411579, 37.922722, 30.385359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639706, 37.601006, 30.318596>,  <37.776581, 37.407978, 30.278538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639706, 37.601006, 30.318596>,  <37.411579, 37.922722, 30.385359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639706, 37.601006, 30.318596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230681, 0.351836, -0.907192,
		0.788365, 0.478889, 0.386193,
		0.570321, -0.804286, -0.166905,
		37.810802, 37.359718, 30.268524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033791, 38.180283, 30.002924>,  <37.411579, 37.922722, 30.385359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033791, 38.180283, 30.002924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027248, 37.783119, 29.955809>,  <38.023323, 37.544823, 29.927540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027248, 37.783119, 29.955809>,  <38.033791, 38.180283, 30.002924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027248, 37.783119, 29.955809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337135, 0.105428, -0.935535,
		0.941315, -0.055007, 0.333018,
		-0.016352, -0.992904, -0.117786,
		38.022343, 37.485249, 29.920473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677738, 37.989552, 29.760136>,  <38.033791, 38.180283, 30.002924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677738, 37.989552, 29.760136> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424522, 37.703049, 29.642672>,  <38.272594, 37.531147, 29.572193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424522, 37.703049, 29.642672>,  <38.677738, 37.989552, 29.760136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424522, 37.703049, 29.642672> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377891, 0.045157, -0.924748,
		0.675618, -0.696374, 0.242081,
		-0.633039, -0.716257, -0.293662,
		38.234612, 37.488171, 29.554573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122772, 37.556015, 29.467394>,  <38.677738, 37.989552, 29.760136>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122772, 37.556015, 29.467394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759903, 37.480103, 29.317184>,  <38.542179, 37.434555, 29.227058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759903, 37.480103, 29.317184>,  <39.122772, 37.556015, 29.467394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759903, 37.480103, 29.317184> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383856, -0.007815, -0.923360,
		0.172300, -0.981796, 0.079937,
		-0.907175, -0.189779, -0.375521,
		38.487751, 37.423168, 29.204529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254040, 37.142700, 28.958357>,  <39.122772, 37.556015, 29.467394>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254040, 37.142700, 28.958357> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886456, 37.283085, 28.886436>,  <38.665905, 37.367317, 28.843285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886456, 37.283085, 28.886436>,  <39.254040, 37.142700, 28.958357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886456, 37.283085, 28.886436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295480, 0.310904, -0.903344,
		-0.261140, -0.883269, -0.389412,
		-0.918965, 0.350963, -0.179799,
		38.610767, 37.388374, 28.832497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117321, 36.829647, 28.336376>,  <39.254040, 37.142700, 28.958357>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117321, 36.829647, 28.336376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836571, 37.114552, 28.333431>,  <38.668121, 37.285492, 28.331665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836571, 37.114552, 28.333431>,  <39.117321, 36.829647, 28.336376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836571, 37.114552, 28.333431> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111589, 0.099744, -0.988736,
		-0.703502, -0.694794, -0.149488,
		-0.701879, 0.712259, -0.007362,
		38.626007, 37.328228, 28.331223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714615, 36.703823, 27.771387>,  <39.117321, 36.829647, 28.336376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714615, 36.703823, 27.771387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654915, 37.090542, 27.854357>,  <38.619095, 37.322575, 27.904139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654915, 37.090542, 27.854357>,  <38.714615, 36.703823, 27.771387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654915, 37.090542, 27.854357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073990, 0.220104, -0.972666,
		-0.986027, -0.129824, -0.104384,
		-0.149251, 0.966799, 0.207423,
		38.610138, 37.380581, 27.916584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307858, 36.967915, 27.227116>,  <38.714615, 36.703823, 27.771387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307858, 36.967915, 27.227116> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473785, 37.293930, 27.388924>,  <38.573341, 37.489540, 27.486008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473785, 37.293930, 27.388924>,  <38.307858, 36.967915, 27.227116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473785, 37.293930, 27.388924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204091, 0.349902, -0.914284,
		-0.886718, 0.461824, -0.021196,
		0.414822, 0.815038, 0.404518,
		38.598232, 37.538441, 27.510279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979427, 37.549026, 26.870134>,  <38.307858, 36.967915, 27.227116>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979427, 37.549026, 26.870134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334663, 37.667702, 27.010571>,  <38.547806, 37.738907, 27.094833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334663, 37.667702, 27.010571>,  <37.979427, 37.549026, 26.870134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334663, 37.667702, 27.010571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202391, 0.433386, -0.878188,
		-0.412709, 0.850970, 0.324839,
		0.888093, 0.296692, 0.351091,
		38.601089, 37.756710, 27.115898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000626, 38.264599, 26.662043>,  <37.979427, 37.549026, 26.870134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000626, 38.264599, 26.662043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375671, 38.186203, 26.776915>,  <38.600697, 38.139168, 26.845839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375671, 38.186203, 26.776915>,  <38.000626, 38.264599, 26.662043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375671, 38.186203, 26.776915> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347684, 0.529579, -0.773732,
		-0.000444, 0.825309, 0.564681,
		0.937612, -0.195987, 0.287182,
		38.656956, 38.127407, 26.863070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382336, 38.948620, 26.665251>,  <38.000626, 38.264599, 26.662043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382336, 38.948620, 26.665251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638245, 38.646843, 26.606598>,  <38.791790, 38.465775, 26.571405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638245, 38.646843, 26.606598>,  <38.382336, 38.948620, 26.665251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638245, 38.646843, 26.606598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414541, 0.499397, -0.760762,
		0.647181, 0.425931, 0.632250,
		0.639776, -0.754444, -0.146634,
		38.830177, 38.420509, 26.562607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042442, 39.337006, 26.487295>,  <38.382336, 38.948620, 26.665251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042442, 39.337006, 26.487295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074287, 38.957550, 26.364822>,  <39.093395, 38.729877, 26.291338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074287, 38.957550, 26.364822>,  <39.042442, 39.337006, 26.487295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074287, 38.957550, 26.364822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424322, 0.310190, -0.850725,
		0.902005, -0.062189, 0.427224,
		0.079615, -0.948638, -0.306181,
		39.098171, 38.672958, 26.272968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702274, 39.228386, 26.257374>,  <39.042442, 39.337006, 26.487295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.702274, 39.228386, 26.257374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531162, 38.902096, 26.101633>,  <39.428493, 38.706322, 26.008188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531162, 38.902096, 26.101633>,  <39.702274, 39.228386, 26.257374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531162, 38.902096, 26.101633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421818, 0.200808, -0.884164,
		0.799419, -0.542467, 0.258185,
		-0.427784, -0.815724, -0.389352,
		39.402828, 38.657379, 25.984827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239674, 38.918888, 25.839380>,  <39.702274, 39.228386, 26.257374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.239674, 38.918888, 25.839380> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889042, 38.773418, 25.713301>,  <39.678661, 38.686138, 25.637653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889042, 38.773418, 25.713301>,  <40.239674, 38.918888, 25.839380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889042, 38.773418, 25.713301> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276798, 0.154793, -0.948379,
		0.393693, -0.918574, -0.035024,
		-0.876578, -0.363676, -0.315200,
		39.626068, 38.664314, 25.618740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.135403, 36.297081, 23.262796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.412777, 36.436646, 23.514957>,  <33.579201, 36.520386, 23.666254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.412777, 36.436646, 23.514957>,  <33.135403, 36.297081, 23.262796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412777, 36.436646, 23.514957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053697, -0.847471, 0.528119,
		0.718513, -0.400068, -0.568933,
		0.693437, 0.348910, 0.630401,
		33.620808, 36.541317, 23.704079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576691, 35.713711, 23.493317>,  <33.135403, 36.297081, 23.262796>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576691, 35.713711, 23.493317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.610073, 35.984459, 23.785860>,  <33.630104, 36.146908, 23.961386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.610073, 35.984459, 23.785860>,  <33.576691, 35.713711, 23.493317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610073, 35.984459, 23.785860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021745, -0.734979, 0.677741,
		0.996274, -0.040660, -0.076059,
		0.083458, 0.676870, 0.731356,
		33.635109, 36.187519, 24.005266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914482, 35.446213, 24.046104>,  <33.576691, 35.713711, 23.493317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914482, 35.446213, 24.046104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.777195, 35.756775, 24.257538>,  <33.694824, 35.943111, 24.384398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.777195, 35.756775, 24.257538>,  <33.914482, 35.446213, 24.046104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777195, 35.756775, 24.257538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129375, -0.596483, 0.792130,
		0.930305, 0.203484, 0.305168,
		-0.343213, 0.776403, 0.528585,
		33.674232, 35.989697, 24.416113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265896, 35.378967, 24.774544>,  <33.914482, 35.446213, 24.046104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265896, 35.378967, 24.774544> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.932446, 35.595913, 24.816317>,  <33.732376, 35.726082, 24.841381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.932446, 35.595913, 24.816317>,  <34.265896, 35.378967, 24.774544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932446, 35.595913, 24.816317> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172444, -0.435200, 0.883665,
		0.524720, 0.718637, 0.456322,
		-0.833626, 0.542367, 0.104433,
		33.682358, 35.758621, 24.847647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267326, 35.689384, 25.380220>,  <34.265896, 35.378967, 24.774544>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267326, 35.689384, 25.380220> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.877060, 35.683929, 25.292690>,  <33.642899, 35.680656, 25.240171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.877060, 35.683929, 25.292690>,  <34.267326, 35.689384, 25.380220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877060, 35.683929, 25.292690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208440, -0.251839, 0.945055,
		-0.068000, 0.967673, 0.242868,
		-0.975668, -0.013641, -0.218827,
		33.584358, 35.679836, 25.227043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079296, 36.113174, 25.878592>,  <34.267326, 35.689384, 25.380220>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079296, 36.113174, 25.878592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.767242, 35.895226, 25.755627>,  <33.580009, 35.764454, 25.681849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.767242, 35.895226, 25.755627>,  <34.079296, 36.113174, 25.878592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767242, 35.895226, 25.755627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128955, -0.340771, 0.931260,
		-0.612178, 0.766150, 0.195582,
		-0.780134, -0.544876, -0.307411,
		33.533203, 35.731762, 25.663403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541710, 36.290951, 26.344339>,  <34.079296, 36.113174, 25.878592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541710, 36.290951, 26.344339> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.392223, 35.960861, 26.174944>,  <33.302532, 35.762806, 26.073307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.392223, 35.960861, 26.174944>,  <33.541710, 36.290951, 26.344339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392223, 35.960861, 26.174944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369367, -0.286402, 0.884048,
		-0.850825, 0.486806, -0.197778,
		-0.373716, -0.825224, -0.423489,
		33.280109, 35.713295, 26.047897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758968, 36.236626, 26.585402>,  <33.541710, 36.290951, 26.344339>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758968, 36.236626, 26.585402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.886417, 35.875420, 26.470127>,  <32.962887, 35.658695, 26.400963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.886417, 35.875420, 26.470127>,  <32.758968, 36.236626, 26.585402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886417, 35.875420, 26.470127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447646, -0.411341, 0.793985,
		-0.835519, -0.123979, -0.535292,
		0.318625, -0.903011, -0.288185,
		32.982006, 35.604515, 26.383671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296326, 35.694370, 26.716988>,  <32.758968, 36.236626, 26.585402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296326, 35.694370, 26.716988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.631992, 35.477505, 26.699751>,  <32.833393, 35.347385, 26.689409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.631992, 35.477505, 26.699751>,  <32.296326, 35.694370, 26.716988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631992, 35.477505, 26.699751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175484, -0.344907, 0.922087,
		-0.514788, -0.766221, -0.384575,
		0.839165, -0.542167, -0.043094,
		32.883743, 35.314854, 26.686823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035625, 35.027889, 26.701157>,  <32.296326, 35.694370, 26.716988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035625, 35.027889, 26.701157> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.416939, 34.964897, 26.804274>,  <32.645725, 34.927101, 26.866144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.416939, 34.964897, 26.804274>,  <32.035625, 35.027889, 26.701157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416939, 34.964897, 26.804274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299659, -0.384948, 0.872937,
		-0.038234, -0.909404, -0.414154,
		0.953280, -0.157480, 0.257793,
		32.702923, 34.917652, 26.881611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983858, 34.402176, 27.104290>,  <32.035625, 35.027889, 26.701157>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983858, 34.402176, 27.104290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.357307, 34.507984, 27.200933>,  <32.581375, 34.571468, 27.258919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.357307, 34.507984, 27.200933>,  <31.983858, 34.402176, 27.104290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357307, 34.507984, 27.200933> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065807, -0.536297, 0.841460,
		0.352161, -0.801506, -0.483291,
		0.933623, 0.264526, 0.241608,
		32.637394, 34.587341, 27.273417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314964, 33.805218, 27.262539>,  <31.983858, 34.402176, 27.104290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314964, 33.805218, 27.262539> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.517262, 34.090748, 27.456312>,  <32.638641, 34.262066, 27.572577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.517262, 34.090748, 27.456312>,  <32.314964, 33.805218, 27.262539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.517262, 34.090748, 27.456312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030470, -0.546410, 0.836964,
		0.862145, -0.438051, -0.254593,
		0.505745, 0.713826, 0.484432,
		32.668983, 34.304897, 27.601643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921749, 33.440968, 27.599222>,  <32.314964, 33.805218, 27.262539>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921749, 33.440968, 27.599222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.881447, 33.789627, 27.791086>,  <32.857265, 33.998821, 27.906204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.881447, 33.789627, 27.791086>,  <32.921749, 33.440968, 27.599222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881447, 33.789627, 27.791086> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176973, -0.458725, 0.870776,
		0.979045, 0.172622, -0.108040,
		-0.100754, 0.871649, 0.479662,
		32.851219, 34.051121, 27.934984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530998, 33.484093, 28.102232>,  <32.921749, 33.440968, 27.599222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530998, 33.484093, 28.102232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.238152, 33.727795, 28.224096>,  <33.062443, 33.874016, 28.297215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.238152, 33.727795, 28.224096>,  <33.530998, 33.484093, 28.102232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238152, 33.727795, 28.224096> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019265, -0.428556, 0.903310,
		0.680911, 0.667194, 0.302014,
		-0.732112, 0.609256, 0.304662,
		33.018517, 33.910572, 28.315495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158020, 33.449818, 28.528042>,  <33.530998, 33.484093, 28.102232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158020, 33.449818, 28.528042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.304634, 33.090446, 28.431307>,  <34.392601, 32.874825, 28.373266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.304634, 33.090446, 28.431307>,  <34.158020, 33.449818, 28.528042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304634, 33.090446, 28.431307> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164640, 0.318456, -0.933530,
		0.915722, 0.302355, 0.264642,
		0.366534, -0.898425, -0.241837,
		34.414593, 32.820919, 28.358755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897411, 33.544891, 28.287386>,  <34.158020, 33.449818, 28.528042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897411, 33.544891, 28.287386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.759300, 33.208553, 28.120649>,  <34.676434, 33.006748, 28.020607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.759300, 33.208553, 28.120649>,  <34.897411, 33.544891, 28.287386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759300, 33.208553, 28.120649> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466478, 0.231646, -0.853662,
		0.814361, -0.489196, 0.312256,
		-0.345275, -0.840849, -0.416843,
		34.655716, 32.956299, 27.995596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473530, 33.253803, 27.961327>,  <34.897411, 33.544891, 28.287386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473530, 33.253803, 27.961327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.176708, 33.080807, 27.756464>,  <34.998615, 32.977009, 27.633547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.176708, 33.080807, 27.756464>,  <35.473530, 33.253803, 27.961327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176708, 33.080807, 27.756464> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490034, 0.171344, -0.854698,
		0.457406, -0.885206, 0.084791,
		-0.742055, -0.432495, -0.512155,
		34.954090, 32.951057, 27.602818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695076, 32.946041, 27.434954>,  <35.473530, 33.253803, 27.961327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695076, 32.946041, 27.434954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.329857, 32.962933, 27.272694>,  <35.110725, 32.973068, 27.175337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.329857, 32.962933, 27.272694>,  <35.695076, 32.946041, 27.434954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329857, 32.962933, 27.272694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407465, 0.137260, -0.902847,
		0.017552, -0.989634, -0.142532,
		-0.913052, 0.042230, -0.405650,
		35.055943, 32.975601, 27.150999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749226, 32.620655, 26.739449>,  <35.695076, 32.946041, 27.434954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749226, 32.620655, 26.739449> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.403278, 32.820744, 26.722544>,  <35.195709, 32.940796, 26.712400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.403278, 32.820744, 26.722544>,  <35.749226, 32.620655, 26.739449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403278, 32.820744, 26.722544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121256, 0.126468, -0.984532,
		-0.487139, -0.856612, -0.170033,
		-0.864866, 0.500222, -0.042262,
		35.143818, 32.970810, 26.709866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401337, 32.316780, 26.174225>,  <35.749226, 32.620655, 26.739449>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401337, 32.316780, 26.174225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.240673, 32.678818, 26.230045>,  <35.144276, 32.896042, 26.263538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.240673, 32.678818, 26.230045>,  <35.401337, 32.316780, 26.174225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240673, 32.678818, 26.230045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239055, 0.250727, -0.938077,
		-0.884037, -0.343428, -0.317074,
		-0.401661, 0.905093, 0.139553,
		35.120174, 32.950344, 26.271912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281429, 32.562649, 25.535194>,  <35.401337, 32.316780, 26.174225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281429, 32.562649, 25.535194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.239941, 32.923683, 25.702326>,  <35.215046, 33.140305, 25.802605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.239941, 32.923683, 25.702326>,  <35.281429, 32.562649, 25.535194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239941, 32.923683, 25.702326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301288, 0.428871, -0.851643,
		-0.947875, 0.037550, -0.316424,
		-0.103726, 0.902585, 0.417829,
		35.208824, 33.194458, 25.827675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811081, 33.025219, 25.175932>,  <35.281429, 32.562649, 25.535194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811081, 33.025219, 25.175932> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.063507, 33.273880, 25.361534>,  <35.214962, 33.423077, 25.472897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.063507, 33.273880, 25.361534>,  <34.811081, 33.025219, 25.175932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063507, 33.273880, 25.361534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336110, 0.319970, -0.885804,
		-0.699133, 0.714957, -0.007023,
		0.631065, 0.621655, 0.464007,
		35.252827, 33.460377, 25.500736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810726, 33.546829, 24.694805>,  <34.811081, 33.025219, 25.175932>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810726, 33.546829, 24.694805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.124680, 33.603523, 24.936089>,  <35.313053, 33.637539, 25.080858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.124680, 33.603523, 24.936089>,  <34.810726, 33.546829, 24.694805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124680, 33.603523, 24.936089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479978, 0.476600, -0.736528,
		-0.391885, 0.867619, 0.306045,
		0.784887, 0.141739, 0.603210,
		35.360146, 33.646046, 25.117052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105026, 34.264446, 24.641506>,  <34.810726, 33.546829, 24.694805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105026, 34.264446, 24.641506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.426334, 34.066895, 24.774677>,  <35.619118, 33.948364, 24.854580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.426334, 34.066895, 24.774677>,  <35.105026, 34.264446, 24.641506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426334, 34.066895, 24.774677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590887, 0.590485, -0.549710,
		0.074903, 0.638287, 0.766146,
		0.803270, -0.493880, 0.332926,
		35.667316, 33.918732, 24.874556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604511, 34.809452, 25.026594>,  <35.105026, 34.264446, 24.641506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604511, 34.809452, 25.026594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.822063, 34.498653, 24.899805>,  <35.952595, 34.312176, 24.823730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.822063, 34.498653, 24.899805>,  <35.604511, 34.809452, 25.026594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822063, 34.498653, 24.899805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549806, 0.615306, -0.564900,
		0.633960, 0.132965, 0.761850,
		0.543882, -0.776994, -0.316974,
		35.985229, 34.265556, 24.804712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355743, 35.109154, 24.944918>,  <35.604511, 34.809452, 25.026594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355743, 35.109154, 24.944918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.375988, 34.760464, 24.749969>,  <36.388134, 34.551250, 24.633001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.375988, 34.760464, 24.749969>,  <36.355743, 35.109154, 24.944918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375988, 34.760464, 24.749969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372988, 0.469183, -0.800467,
		0.926455, -0.141274, 0.348888,
		0.050607, -0.871728, -0.487370,
		36.391171, 34.498947, 24.603758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121990, 34.902027, 24.694342>,  <36.355743, 35.109154, 24.944918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121990, 34.902027, 24.694342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.865517, 34.689228, 24.473124>,  <36.711632, 34.561546, 24.340393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.865517, 34.689228, 24.473124>,  <37.121990, 34.902027, 24.694342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865517, 34.689228, 24.473124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371591, 0.415315, -0.830321,
		0.671420, -0.737894, -0.068605,
		-0.641182, -0.532002, -0.553046,
		36.673161, 34.529629, 24.307209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558289, 34.604027, 24.102123>,  <37.121990, 34.902027, 24.694342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558289, 34.604027, 24.102123> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.183487, 34.646637, 23.969051>,  <36.958607, 34.672203, 23.889208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.183487, 34.646637, 23.969051>,  <37.558289, 34.604027, 24.102123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183487, 34.646637, 23.969051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332662, 0.562702, -0.756771,
		0.106582, -0.819767, -0.562692,
		-0.937004, 0.106528, -0.332679,
		36.902386, 34.678596, 23.869247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180351, 34.361023, 23.910248>,  <37.558289, 34.604027, 24.102123>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180351, 34.361023, 23.910248> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.527447, 34.551300, 23.967871>,  <38.735703, 34.665466, 24.002443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.527447, 34.551300, 23.967871>,  <38.180351, 34.361023, 23.910248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527447, 34.551300, 23.967871> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192682, -0.589126, 0.784732,
		0.458157, -0.653183, -0.602863,
		0.867736, 0.475691, 0.144056,
		38.787769, 34.694008, 24.011087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654953, 33.782234, 24.047638>,  <38.180351, 34.361023, 23.910248>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654953, 33.782234, 24.047638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.809174, 34.126106, 24.181684>,  <38.901707, 34.332428, 24.262112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.809174, 34.126106, 24.181684>,  <38.654953, 33.782234, 24.047638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809174, 34.126106, 24.181684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192864, -0.430257, 0.881863,
		0.902305, -0.275372, -0.331687,
		0.385551, 0.859680, 0.335114,
		38.924839, 34.384010, 24.282219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401215, 33.609486, 24.253323>,  <38.654953, 33.782234, 24.047638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401215, 33.609486, 24.253323> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.266460, 33.929295, 24.452232>,  <39.185608, 34.121178, 24.571577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.266460, 33.929295, 24.452232>,  <39.401215, 33.609486, 24.253323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266460, 33.929295, 24.452232> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180134, -0.463660, 0.867509,
		0.924154, 0.381825, 0.012179,
		-0.336884, 0.799518, 0.497274,
		39.165394, 34.169151, 24.601414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810471, 33.719337, 24.889063>,  <39.401215, 33.609486, 24.253323>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810471, 33.719337, 24.889063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.464714, 33.912205, 24.946106>,  <39.257259, 34.027924, 24.980331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.464714, 33.912205, 24.946106>,  <39.810471, 33.719337, 24.889063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464714, 33.912205, 24.946106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029392, -0.331584, 0.942968,
		0.501955, 0.810904, 0.300791,
		-0.864394, 0.482169, 0.142606,
		39.205395, 34.056854, 24.988888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831074, 34.042934, 25.555971>,  <39.810471, 33.719337, 24.889063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831074, 34.042934, 25.555971> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.433701, 34.054810, 25.511757>,  <39.195278, 34.061935, 25.485228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.433701, 34.054810, 25.511757>,  <39.831074, 34.042934, 25.555971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433701, 34.054810, 25.511757> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114438, -0.241742, 0.963569,
		0.001881, 0.969887, 0.243550,
		-0.993429, 0.029684, -0.110537,
		39.135674, 34.063713, 25.478596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624378, 34.412010, 26.142128>,  <39.831074, 34.042934, 25.555971>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624378, 34.412010, 26.142128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.279774, 34.247116, 26.023560>,  <39.073013, 34.148178, 25.952417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.279774, 34.247116, 26.023560>,  <39.624378, 34.412010, 26.142128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279774, 34.247116, 26.023560> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226360, -0.210749, 0.950971,
		-0.454496, 0.886366, 0.088248,
		-0.861507, -0.412237, -0.296423,
		39.021320, 34.123444, 25.934633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077782, 34.688076, 26.518806>,  <39.624378, 34.412010, 26.142128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077782, 34.688076, 26.518806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.992844, 34.317711, 26.393839>,  <38.941883, 34.095493, 26.318859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.992844, 34.317711, 26.393839>,  <39.077782, 34.688076, 26.518806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992844, 34.317711, 26.393839> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242950, -0.259649, 0.934643,
		-0.946513, 0.274364, -0.169816,
		-0.212341, -0.925909, -0.312418,
		38.929142, 34.039940, 26.300114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482536, 34.538303, 26.908251>,  <39.077782, 34.688076, 26.518806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482536, 34.538303, 26.908251> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.547188, 34.168240, 26.770868>,  <38.585979, 33.946201, 26.688438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.547188, 34.168240, 26.770868>,  <38.482536, 34.538303, 26.908251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547188, 34.168240, 26.770868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252872, -0.375239, 0.891769,
		-0.953903, -0.057288, -0.294597,
		0.161632, -0.925156, -0.343455,
		38.595676, 33.890694, 26.667831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896156, 34.136566, 26.939306>,  <38.482536, 34.538303, 26.908251>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896156, 34.136566, 26.939306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.224575, 33.909546, 26.963879>,  <38.421627, 33.773335, 26.978622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.224575, 33.909546, 26.963879>,  <37.896156, 34.136566, 26.939306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224575, 33.909546, 26.963879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254392, -0.267418, 0.929393,
		-0.511049, -0.778700, -0.363942,
		0.821044, -0.567550, 0.061432,
		38.470890, 33.739281, 26.982307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735580, 33.446159, 27.171402>,  <37.896156, 34.136566, 26.939306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735580, 33.446159, 27.171402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.120445, 33.478966, 27.275339>,  <38.351364, 33.498650, 27.337702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.120445, 33.478966, 27.275339>,  <37.735580, 33.446159, 27.171402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120445, 33.478966, 27.275339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187862, -0.491069, 0.850623,
		0.197368, -0.867251, -0.457079,
		0.962161, 0.082018, 0.259845,
		38.409092, 33.503571, 27.353292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034065, 32.715199, 27.227432>,  <37.735580, 33.446159, 27.171402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034065, 32.715199, 27.227432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.252789, 32.979561, 27.433033>,  <38.384022, 33.138180, 27.556393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.252789, 32.979561, 27.433033>,  <38.034065, 32.715199, 27.227432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252789, 32.979561, 27.433033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152437, -0.525062, 0.837301,
		0.823263, -0.536198, -0.186362,
		0.546811, 0.660910, 0.514000,
		38.416832, 33.177834, 27.587233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294788, 32.311993, 27.691994>,  <38.034065, 32.715199, 27.227432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294788, 32.311993, 27.691994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.348755, 32.667503, 27.867205>,  <38.381134, 32.880810, 27.972330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.348755, 32.667503, 27.867205>,  <38.294788, 32.311993, 27.691994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348755, 32.667503, 27.867205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118296, -0.424459, 0.897686,
		0.983771, -0.172925, 0.047874,
		0.134912, 0.888781, 0.438026,
		38.389229, 32.934139, 27.998613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532440, 32.102036, 28.314226>,  <38.294788, 32.311993, 27.691994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532440, 32.102036, 28.314226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.470200, 32.492443, 28.375128>,  <38.432858, 32.726688, 28.411669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.470200, 32.492443, 28.375128>,  <38.532440, 32.102036, 28.314226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470200, 32.492443, 28.375128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168980, -0.125562, 0.977589,
		0.973260, 0.177838, -0.145390,
		-0.155597, 0.976016, 0.152255,
		38.423519, 32.785248, 28.420805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041008, 32.372925, 28.779022>,  <38.532440, 32.102036, 28.314226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041008, 32.372925, 28.779022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.719109, 32.607735, 28.814297>,  <38.525967, 32.748619, 28.835463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.719109, 32.607735, 28.814297>,  <39.041008, 32.372925, 28.779022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719109, 32.607735, 28.814297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051588, -0.217159, 0.974772,
		0.591364, 0.779901, 0.205043,
		-0.804753, 0.587023, 0.088187,
		38.477684, 32.783840, 28.840754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.346386, 38.243752, 25.312038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.970623, 38.354733, 25.231512>,  <39.745163, 38.421322, 25.183197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.970623, 38.354733, 25.231512>,  <40.346386, 38.243752, 25.312038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970623, 38.354733, 25.231512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219936, 0.037371, -0.974798,
		-0.262938, -0.960012, -0.096129,
		-0.939410, 0.277453, -0.201315,
		39.688801, 38.437969, 25.171118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080982, 37.901863, 24.768717>,  <40.346386, 38.243752, 25.312038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080982, 37.901863, 24.768717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.830303, 38.212593, 24.744104>,  <39.679893, 38.399033, 24.729338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.830303, 38.212593, 24.744104>,  <40.080982, 37.901863, 24.768717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830303, 38.212593, 24.744104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246678, 0.122867, -0.961277,
		-0.739187, -0.617611, -0.268627,
		-0.626700, 0.776828, -0.061529,
		39.642292, 38.445641, 24.725645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684490, 37.770950, 24.314249>,  <40.080982, 37.901863, 24.768717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684490, 37.770950, 24.314249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.664341, 38.170242, 24.326899>,  <39.652252, 38.409817, 24.334488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.664341, 38.170242, 24.326899>,  <39.684490, 37.770950, 24.314249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664341, 38.170242, 24.326899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176756, 0.040077, -0.983438,
		-0.982965, -0.043951, -0.178462,
		-0.050375, 0.998230, 0.031626,
		39.649227, 38.469711, 24.336386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331799, 37.872562, 23.733442>,  <39.684490, 37.770950, 24.314249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331799, 37.872562, 23.733442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.488991, 38.230015, 23.820145>,  <39.583305, 38.444489, 23.872166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.488991, 38.230015, 23.820145>,  <39.331799, 37.872562, 23.733442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488991, 38.230015, 23.820145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183353, 0.154835, -0.970777,
		-0.901080, 0.421243, -0.103002,
		0.392985, 0.893633, 0.216755,
		39.606888, 38.498104, 23.885172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094784, 38.313927, 23.217852>,  <39.331799, 37.872562, 23.733442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094784, 38.313927, 23.217852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.416718, 38.477058, 23.390326>,  <39.609879, 38.574936, 23.493809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.416718, 38.477058, 23.390326>,  <39.094784, 38.313927, 23.217852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416718, 38.477058, 23.390326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346485, 0.266981, -0.899260,
		-0.481861, 0.873154, 0.073569,
		0.804834, 0.407827, 0.431183,
		39.658169, 38.599407, 23.519680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125607, 39.047234, 22.925463>,  <39.094784, 38.313927, 23.217852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125607, 39.047234, 22.925463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.496235, 38.975571, 23.057745>,  <39.718613, 38.932571, 23.137114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.496235, 38.975571, 23.057745>,  <39.125607, 39.047234, 22.925463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496235, 38.975571, 23.057745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364639, 0.212353, -0.906611,
		0.092204, 0.960629, 0.262089,
		0.926572, -0.179161, 0.330703,
		39.774208, 38.921822, 23.156956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492203, 39.553005, 22.604662>,  <39.125607, 39.047234, 22.925463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492203, 39.553005, 22.604662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.781342, 39.292217, 22.696253>,  <39.954823, 39.135742, 22.751207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.781342, 39.292217, 22.696253>,  <39.492203, 39.553005, 22.604662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781342, 39.292217, 22.696253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426270, 0.159912, -0.890349,
		0.543868, 0.741188, 0.393508,
		0.722843, -0.651973, 0.228975,
		39.998196, 39.096626, 22.764946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053104, 39.918983, 22.461964>,  <39.492203, 39.553005, 22.604662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053104, 39.918983, 22.461964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.144859, 39.529678, 22.466557>,  <40.199913, 39.296093, 22.469313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.144859, 39.529678, 22.466557>,  <40.053104, 39.918983, 22.461964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144859, 39.529678, 22.466557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548905, 0.119614, -0.827282,
		0.803793, 0.196072, 0.561669,
		0.229390, -0.973267, 0.011480,
		40.213676, 39.237698, 22.470001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757877, 39.899551, 22.413044>,  <40.053104, 39.918983, 22.461964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.757877, 39.899551, 22.413044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.617718, 39.553574, 22.269329>,  <40.533623, 39.345985, 22.183100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.617718, 39.553574, 22.269329>,  <40.757877, 39.899551, 22.413044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.617718, 39.553574, 22.269329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482522, 0.162072, -0.860758,
		0.802741, -0.474972, 0.360567,
		-0.350399, -0.864947, -0.359287,
		40.512600, 39.294090, 22.161543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.169430, 39.765312, 21.815010>,  <40.757877, 39.899551, 22.413044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.169430, 39.765312, 21.815010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.877567, 39.494106, 21.779469>,  <40.702450, 39.331383, 21.758144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.877567, 39.494106, 21.779469>,  <41.169430, 39.765312, 21.815010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877567, 39.494106, 21.779469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004280, 0.134465, -0.990909,
		0.683796, -0.722647, -0.101016,
		-0.729660, -0.678013, -0.088853,
		40.658669, 39.290703, 21.752813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.442017, 39.332825, 21.345514>,  <41.169430, 39.765312, 21.815010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.442017, 39.332825, 21.345514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.045113, 39.288223, 21.323637>,  <40.806973, 39.261463, 21.310511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.045113, 39.288223, 21.323637>,  <41.442017, 39.332825, 21.345514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.045113, 39.288223, 21.323637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026306, 0.241703, -0.969994,
		0.121381, -0.963922, -0.236898,
		-0.992257, -0.111507, -0.054695,
		40.747437, 39.254772, 21.307228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281891, 38.819359, 20.771002>,  <41.442017, 39.332825, 21.345514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.281891, 38.819359, 20.771002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.968628, 39.057896, 20.841484>,  <40.780670, 39.201015, 20.883774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.968628, 39.057896, 20.841484>,  <41.281891, 38.819359, 20.771002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.968628, 39.057896, 20.841484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099613, 0.159390, -0.982177,
		-0.613794, -0.786751, -0.065425,
		-0.783156, 0.596338, 0.176204,
		40.733681, 39.236797, 20.894344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.687279, 38.636757, 20.361248>,  <41.281891, 38.819359, 20.771002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.687279, 38.636757, 20.361248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.631947, 39.020996, 20.457685>,  <40.598747, 39.251537, 20.515549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.631947, 39.020996, 20.457685>,  <40.687279, 38.636757, 20.361248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.631947, 39.020996, 20.457685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260689, 0.199534, -0.944578,
		-0.955462, -0.193510, 0.222816,
		-0.138326, 0.960593, 0.241093,
		40.590450, 39.309174, 20.530014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.520767, 38.462955, 19.749531>,  <40.687279, 38.636757, 20.361248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.520767, 38.462955, 19.749531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.144012, 38.442089, 19.616787>,  <39.917961, 38.429569, 19.537142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.144012, 38.442089, 19.616787>,  <40.520767, 38.462955, 19.749531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144012, 38.442089, 19.616787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249630, -0.552376, 0.795340,
		-0.224801, 0.831961, 0.507253,
		-0.941886, -0.052168, -0.331857,
		39.861446, 38.426437, 19.517229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929893, 38.708092, 20.159952>,  <40.520767, 38.462955, 19.749531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929893, 38.708092, 20.159952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.802181, 38.417873, 19.916100>,  <39.725555, 38.243744, 19.769787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.802181, 38.417873, 19.916100>,  <39.929893, 38.708092, 20.159952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802181, 38.417873, 19.916100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105768, -0.612001, 0.783752,
		-0.941741, 0.314713, 0.118659,
		-0.319277, -0.725541, -0.609633,
		39.706398, 38.200211, 19.733210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235447, 38.515831, 20.287565>,  <39.929893, 38.708092, 20.159952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235447, 38.515831, 20.287565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.443565, 38.212605, 20.130276>,  <39.568436, 38.030670, 20.035902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.443565, 38.212605, 20.130276>,  <39.235447, 38.515831, 20.287565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443565, 38.212605, 20.130276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332804, -0.604044, 0.724135,
		-0.786466, -0.245901, -0.566571,
		0.520300, -0.758065, -0.393223,
		39.599655, 37.985184, 20.012308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875664, 37.948246, 20.511080>,  <39.235447, 38.515831, 20.287565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875664, 37.948246, 20.511080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.200291, 37.747589, 20.391273>,  <39.395065, 37.627193, 20.319389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.200291, 37.747589, 20.391273>,  <38.875664, 37.948246, 20.511080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200291, 37.747589, 20.391273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123771, -0.648624, 0.750978,
		-0.571000, -0.572396, -0.588490,
		0.811566, -0.501647, -0.299518,
		39.443760, 37.597095, 20.301418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669811, 37.291729, 20.497095>,  <38.875664, 37.948246, 20.511080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669811, 37.291729, 20.497095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.068401, 37.258389, 20.500885>,  <39.307556, 37.238384, 20.503159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.068401, 37.258389, 20.500885>,  <38.669811, 37.291729, 20.497095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068401, 37.258389, 20.500885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066255, -0.712752, 0.698280,
		-0.051446, -0.696446, -0.715763,
		0.996476, -0.083346, 0.009475,
		39.367344, 37.233383, 20.503727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769669, 36.609070, 20.504419>,  <38.669811, 37.291729, 20.497095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769669, 36.609070, 20.504419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.125065, 36.746166, 20.626474>,  <39.338303, 36.828423, 20.699707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.125065, 36.746166, 20.626474>,  <38.769669, 36.609070, 20.504419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125065, 36.746166, 20.626474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015010, -0.686297, 0.727167,
		0.458642, -0.641504, -0.614915,
		0.888494, 0.342739, 0.305136,
		39.391613, 36.848988, 20.718016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301147, 36.027393, 20.472588>,  <38.769669, 36.609070, 20.504419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301147, 36.027393, 20.472588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.419891, 36.299236, 20.740917>,  <39.491138, 36.462341, 20.901915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.419891, 36.299236, 20.740917>,  <39.301147, 36.027393, 20.472588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419891, 36.299236, 20.740917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067896, -0.685691, 0.724719,
		0.952506, -0.260683, -0.157408,
		0.296856, 0.679612, 0.670824,
		39.508949, 36.503120, 20.942163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695656, 35.591999, 20.889772>,  <39.301147, 36.027393, 20.472588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695656, 35.591999, 20.889772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.642830, 35.913639, 21.121630>,  <39.611134, 36.106625, 21.260744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.642830, 35.913639, 21.121630>,  <39.695656, 35.591999, 20.889772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642830, 35.913639, 21.121630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044805, -0.579324, 0.813865,
		0.990229, 0.133450, 0.040478,
		-0.132060, 0.804099, 0.579642,
		39.603210, 36.154869, 21.295523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091793, 35.482426, 21.469059>,  <39.695656, 35.591999, 20.889772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.091793, 35.482426, 21.469059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.813881, 35.751141, 21.571804>,  <39.647133, 35.912369, 21.633451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.813881, 35.751141, 21.571804>,  <40.091793, 35.482426, 21.469059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813881, 35.751141, 21.571804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076255, -0.423934, 0.902477,
		0.715167, 0.607437, 0.345769,
		-0.694781, 0.671788, 0.256864,
		39.605446, 35.952679, 21.648863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216953, 35.648911, 22.155188>,  <40.091793, 35.482426, 21.469059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216953, 35.648911, 22.155188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.839912, 35.776207, 22.114733>,  <39.613689, 35.852585, 22.090460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.839912, 35.776207, 22.114733>,  <40.216953, 35.648911, 22.155188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839912, 35.776207, 22.114733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216380, -0.351419, 0.910870,
		0.254335, 0.880470, 0.400108,
		-0.942599, 0.318242, -0.101138,
		39.557133, 35.871681, 22.084391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058968, 36.055252, 22.819218>,  <40.216953, 35.648911, 22.155188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058968, 36.055252, 22.819218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.723232, 35.905006, 22.662029>,  <39.521790, 35.814861, 22.567717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.723232, 35.905006, 22.662029>,  <40.058968, 36.055252, 22.819218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723232, 35.905006, 22.662029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265082, -0.348315, 0.899115,
		-0.474596, 0.858832, 0.192786,
		-0.839339, -0.375612, -0.392969,
		39.471432, 35.792324, 22.544138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692787, 36.060764, 23.380424>,  <40.058968, 36.055252, 22.819218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692787, 36.060764, 23.380424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.468204, 35.857986, 23.118809>,  <39.333454, 35.736320, 22.961840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.468204, 35.857986, 23.118809>,  <39.692787, 36.060764, 23.380424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468204, 35.857986, 23.118809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472288, -0.452693, 0.756315,
		-0.679493, 0.733534, 0.014743,
		-0.561457, -0.506948, -0.654041,
		39.299767, 35.705902, 22.922596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994743, 36.122402, 23.600842>,  <39.692787, 36.060764, 23.380424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994743, 36.122402, 23.600842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.045216, 35.790581, 23.383249>,  <39.075500, 35.591488, 23.252693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.045216, 35.790581, 23.383249>,  <38.994743, 36.122402, 23.600842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045216, 35.790581, 23.383249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403027, -0.543938, 0.736003,
		-0.906447, 0.126366, -0.402970,
		0.126185, -0.829556, -0.543981,
		39.083073, 35.541714, 23.220055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377625, 35.763153, 23.700403>,  <38.994743, 36.122402, 23.600842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377625, 35.763153, 23.700403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.629868, 35.484871, 23.562807>,  <38.781216, 35.317902, 23.480249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.629868, 35.484871, 23.562807>,  <38.377625, 35.763153, 23.700403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629868, 35.484871, 23.562807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237740, -0.595082, 0.767696,
		-0.738791, -0.402336, -0.540660,
		0.630609, -0.695704, -0.343990,
		38.819050, 35.276161, 23.459610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081100, 35.073143, 23.829172>,  <38.377625, 35.763153, 23.700403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081100, 35.073143, 23.829172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.476357, 35.035423, 23.780695>,  <38.713509, 35.012791, 23.751608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.476357, 35.035423, 23.780695>,  <38.081100, 35.073143, 23.829172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476357, 35.035423, 23.780695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033646, -0.637111, 0.770037,
		-0.149823, -0.764982, -0.626382,
		0.988140, -0.094295, -0.121193,
		38.772797, 35.007133, 23.744337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629410, 34.862064, 23.269484>,  <38.081100, 35.073143, 23.829172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629410, 34.862064, 23.269484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.233215, 34.874542, 23.323101>,  <36.995499, 34.882027, 23.355272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.233215, 34.874542, 23.323101>,  <37.629410, 34.862064, 23.269484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233215, 34.874542, 23.323101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097385, 0.529378, -0.842778,
		-0.097247, -0.847813, -0.521303,
		-0.990484, 0.031190, 0.134044,
		36.936069, 34.883900, 23.363314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210766, 34.646347, 22.590809>,  <37.629410, 34.862064, 23.269484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210766, 34.646347, 22.590809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.947533, 34.856464, 22.806583>,  <36.789593, 34.982536, 22.936049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.947533, 34.856464, 22.806583>,  <37.210766, 34.646347, 22.590809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947533, 34.856464, 22.806583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163147, 0.599935, -0.783237,
		-0.735060, -0.603441, -0.309105,
		-0.658080, 0.525297, 0.539438,
		36.750107, 35.014053, 22.968414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616108, 34.808105, 22.158800>,  <37.210766, 34.646347, 22.590809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616108, 34.808105, 22.158800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.615135, 35.083828, 22.448586>,  <36.614552, 35.249264, 22.622458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.615135, 35.083828, 22.448586>,  <36.616108, 34.808105, 22.158800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615135, 35.083828, 22.448586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151116, 0.715893, -0.681661,
		-0.988513, -0.111137, 0.102423,
		-0.002434, 0.689308, 0.724464,
		36.614407, 35.290619, 22.665924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970684, 35.233593, 22.057938>,  <36.616108, 34.808105, 22.158800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970684, 35.233593, 22.057938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.221745, 35.456379, 22.275503>,  <36.372383, 35.590050, 22.406042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.221745, 35.456379, 22.275503>,  <35.970684, 35.233593, 22.057938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221745, 35.456379, 22.275503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090318, 0.746054, -0.659732,
		-0.773235, 0.364959, 0.518568,
		0.627655, 0.556964, 0.543912,
		36.410042, 35.623466, 22.438677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625038, 35.819756, 21.904755>,  <35.970684, 35.233593, 22.057938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625038, 35.819756, 21.904755> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.973083, 35.914684, 22.077536>,  <36.181911, 35.971642, 22.181206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.973083, 35.914684, 22.077536>,  <35.625038, 35.819756, 21.904755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973083, 35.914684, 22.077536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010071, 0.867688, -0.497007,
		-0.492753, 0.436801, 0.752595,
		0.870111, 0.237322, 0.431955,
		36.234116, 35.985882, 22.207123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510212, 36.529953, 22.110525>,  <35.625038, 35.819756, 21.904755>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510212, 36.529953, 22.110525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.898926, 36.437241, 22.093018>,  <36.132153, 36.381615, 22.082512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.898926, 36.437241, 22.093018>,  <35.510212, 36.529953, 22.110525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898926, 36.437241, 22.093018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156060, 0.770924, -0.617513,
		0.176870, 0.593258, 0.785342,
		0.971783, -0.231780, -0.043770,
		36.190460, 36.367706, 22.079887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906803, 37.126770, 22.216248>,  <35.510212, 36.529953, 22.110525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906803, 37.126770, 22.216248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.134384, 36.882652, 21.995766>,  <36.270935, 36.736179, 21.863476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.134384, 36.882652, 21.995766>,  <35.906803, 37.126770, 22.216248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134384, 36.882652, 21.995766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254476, 0.768025, -0.587690,
		0.782003, 0.194102, 0.592279,
		0.568957, -0.610297, -0.551204,
		36.305073, 36.699562, 21.830404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850296, 37.894726, 22.467678>,  <35.906803, 37.126770, 22.216248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850296, 37.894726, 22.467678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.529343, 38.120655, 22.390585>,  <35.336769, 38.256214, 22.344328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.529343, 38.120655, 22.390585>,  <35.850296, 37.894726, 22.467678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529343, 38.120655, 22.390585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492654, -0.444592, 0.748084,
		0.336849, 0.695205, 0.634999,
		-0.802387, 0.564826, -0.192735,
		35.288628, 38.290104, 22.332764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514053, 38.051346, 23.178905>,  <35.850296, 37.894726, 22.467678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514053, 38.051346, 23.178905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.232410, 38.097477, 22.898642>,  <35.063423, 38.125156, 22.730482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.232410, 38.097477, 22.898642>,  <35.514053, 38.051346, 23.178905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232410, 38.097477, 22.898642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619036, -0.583104, 0.526102,
		-0.347882, 0.804169, 0.481965,
		-0.704111, 0.115332, -0.700661,
		35.021175, 38.132076, 22.688444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945492, 38.090275, 23.562225>,  <35.514053, 38.051346, 23.178905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945492, 38.090275, 23.562225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.784744, 38.027912, 23.201294>,  <34.688297, 37.990494, 22.984735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.784744, 38.027912, 23.201294>,  <34.945492, 38.090275, 23.562225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784744, 38.027912, 23.201294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766231, -0.482301, 0.424590,
		-0.501389, 0.862020, 0.074363,
		-0.401870, -0.155905, -0.902327,
		34.664185, 37.981140, 22.930595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336754, 38.290287, 23.666405>,  <34.945492, 38.090275, 23.562225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336754, 38.290287, 23.666405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.322929, 38.048668, 23.347927>,  <34.314636, 37.903694, 23.156839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.322929, 38.048668, 23.347927>,  <34.336754, 38.290287, 23.666405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322929, 38.048668, 23.347927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664381, -0.581259, 0.469825,
		-0.746595, 0.545216, -0.381230,
		-0.034562, -0.604051, -0.796196,
		34.312561, 37.867451, 23.109068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607979, 38.217064, 23.547573>,  <34.336754, 38.290287, 23.666405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607979, 38.217064, 23.547573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.802216, 37.918060, 23.366278>,  <33.918758, 37.738659, 23.257500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.802216, 37.918060, 23.366278>,  <33.607979, 38.217064, 23.547573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802216, 37.918060, 23.366278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639594, -0.657235, 0.398701,
		-0.595918, 0.096282, -0.797253,
		0.485594, -0.747511, -0.453239,
		33.947895, 37.693806, 23.230305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115864, 37.695988, 23.356638>,  <33.607979, 38.217064, 23.547573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115864, 37.695988, 23.356638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.451180, 37.477898, 23.356779>,  <33.652370, 37.347046, 23.356863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.451180, 37.477898, 23.356779>,  <33.115864, 37.695988, 23.356638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451180, 37.477898, 23.356779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476079, -0.731665, 0.487868,
		-0.265739, -0.409143, -0.872917,
		0.838291, -0.545223, 0.000352,
		33.702667, 37.314331, 23.356884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882183, 37.071037, 23.320467>,  <33.115864, 37.695988, 23.356638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882183, 37.071037, 23.320467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.257454, 37.010223, 23.444859>,  <33.482616, 36.973736, 23.519493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.257454, 37.010223, 23.444859>,  <32.882183, 37.071037, 23.320467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257454, 37.010223, 23.444859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304493, -0.789754, 0.532515,
		0.164640, -0.594285, -0.787222,
		0.938178, -0.152030, 0.310981,
		33.538906, 36.964615, 23.538153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.141563, 41.346107, 20.980267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.473900, 41.136299, 21.054651>,  <38.673302, 41.010414, 21.099281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.473900, 41.136299, 21.054651>,  <38.141563, 41.346107, 20.980267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473900, 41.136299, 21.054651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182228, 0.059311, 0.981466,
		-0.525825, -0.849331, -0.046304,
		0.830844, -0.524517, 0.185960,
		38.723152, 40.978943, 21.110439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001499, 40.777302, 21.242151>,  <38.141563, 41.346107, 20.980267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001499, 40.777302, 21.242151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.373589, 40.813896, 21.384315>,  <38.596844, 40.835854, 21.469614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.373589, 40.813896, 21.384315>,  <38.001499, 40.777302, 21.242151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373589, 40.813896, 21.384315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334567, -0.186622, 0.923708,
		0.150831, -0.978163, -0.142993,
		0.930223, 0.091483, 0.355410,
		38.652657, 40.841339, 21.490938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089230, 40.160545, 21.785036>,  <38.001499, 40.777302, 21.242151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089230, 40.160545, 21.785036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.343193, 40.457188, 21.871681>,  <38.495571, 40.635174, 21.923668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.343193, 40.457188, 21.871681>,  <38.089230, 40.160545, 21.785036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343193, 40.457188, 21.871681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200876, -0.112273, 0.973162,
		0.746019, -0.661377, 0.077687,
		0.634905, 0.741603, 0.216613,
		38.533665, 40.679668, 21.936665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460835, 39.926353, 22.356363>,  <38.089230, 40.160545, 21.785036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460835, 39.926353, 22.356363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.508553, 40.323452, 22.350405>,  <38.537182, 40.561710, 22.346828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.508553, 40.323452, 22.350405>,  <38.460835, 39.926353, 22.356363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508553, 40.323452, 22.350405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107440, 0.027825, 0.993822,
		0.987029, -0.116955, 0.109980,
		0.119292, 0.992747, -0.014899,
		38.544342, 40.621277, 22.345936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910408, 40.114628, 22.988548>,  <38.460835, 39.926353, 22.356363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910408, 40.114628, 22.988548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.758274, 40.467209, 22.876564>,  <38.666992, 40.678757, 22.809374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.758274, 40.467209, 22.876564>,  <38.910408, 40.114628, 22.988548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758274, 40.467209, 22.876564> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038151, 0.287498, 0.957021,
		0.924061, 0.374671, -0.075718,
		-0.380337, 0.881457, -0.279960,
		38.644173, 40.731647, 22.792576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069160, 40.531384, 23.616993>,  <38.910408, 40.114628, 22.988548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069160, 40.531384, 23.616993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.776402, 40.724606, 23.424751>,  <38.600746, 40.840538, 23.309406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.776402, 40.724606, 23.424751>,  <39.069160, 40.531384, 23.616993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776402, 40.724606, 23.424751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474864, 0.144261, 0.868155,
		0.488697, 0.863625, 0.123799,
		-0.731901, 0.483052, -0.480605,
		38.556831, 40.869522, 23.280569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115498, 41.184582, 23.903429>,  <39.069160, 40.531384, 23.616993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115498, 41.184582, 23.903429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.744122, 41.135677, 23.763119>,  <38.521294, 41.106335, 23.678932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.744122, 41.135677, 23.763119>,  <39.115498, 41.184582, 23.903429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744122, 41.135677, 23.763119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364900, 0.123312, 0.922845,
		-0.069571, 0.984808, -0.159100,
		-0.928444, -0.122259, -0.350778,
		38.465588, 41.098999, 23.657885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668713, 41.730022, 24.120737>,  <39.115498, 41.184582, 23.903429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668713, 41.730022, 24.120737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.396343, 41.446461, 24.047195>,  <38.232922, 41.276325, 24.003071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.396343, 41.446461, 24.047195>,  <38.668713, 41.730022, 24.120737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396343, 41.446461, 24.047195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453550, 0.211087, 0.865872,
		-0.575007, 0.672981, -0.465256,
		-0.680925, -0.708900, -0.183854,
		38.192066, 41.233791, 23.992039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050102, 41.873188, 24.582138>,  <38.668713, 41.730022, 24.120737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050102, 41.873188, 24.582138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.954319, 41.507618, 24.451052>,  <37.896851, 41.288277, 24.372400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.954319, 41.507618, 24.451052>,  <38.050102, 41.873188, 24.582138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954319, 41.507618, 24.451052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502985, -0.171939, 0.847020,
		-0.830463, 0.367658, -0.418521,
		-0.239454, -0.913928, -0.327715,
		37.882484, 41.233440, 24.352737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333546, 41.819576, 24.676121>,  <38.050102, 41.873188, 24.582138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333546, 41.819576, 24.676121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.457691, 41.439373, 24.670263>,  <37.532177, 41.211250, 24.666748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.457691, 41.439373, 24.670263>,  <37.333546, 41.819576, 24.676121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457691, 41.439373, 24.670263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552249, -0.192821, 0.811074,
		-0.773754, -0.243641, -0.584760,
		0.310365, -0.950505, -0.014645,
		37.550800, 41.154221, 24.665871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729809, 41.407887, 24.823090>,  <37.333546, 41.819576, 24.676121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729809, 41.407887, 24.823090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.042587, 41.172283, 24.904707>,  <37.230255, 41.030922, 24.953676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.042587, 41.172283, 24.904707>,  <36.729809, 41.407887, 24.823090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042587, 41.172283, 24.904707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454961, -0.315516, 0.832743,
		-0.426111, -0.743991, -0.514691,
		0.781946, -0.589005, 0.204042,
		37.277172, 40.995583, 24.965919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438881, 40.791290, 25.116575>,  <36.729809, 41.407887, 24.823090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438881, 40.791290, 25.116575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.816383, 40.792931, 25.248823>,  <37.042885, 40.793915, 25.328173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.816383, 40.792931, 25.248823>,  <36.438881, 40.791290, 25.116575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816383, 40.792931, 25.248823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307327, -0.357966, 0.881709,
		0.121969, -0.933726, -0.336571,
		0.943755, 0.004103, 0.330620,
		37.099510, 40.794163, 25.348009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868473, 40.520004, 24.749821>,  <36.438881, 40.791290, 25.116575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868473, 40.520004, 24.749821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.504272, 40.674923, 24.807768>,  <35.285751, 40.767872, 24.842537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.504272, 40.674923, 24.807768>,  <35.868473, 40.520004, 24.749821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504272, 40.674923, 24.807768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185145, 0.695106, -0.694658,
		-0.369736, -0.605666, -0.704602,
		-0.910504, 0.387293, 0.144870,
		35.231121, 40.791111, 24.851229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595917, 40.497158, 24.115107>,  <35.868473, 40.520004, 24.749821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595917, 40.497158, 24.115107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.361950, 40.769466, 24.291481>,  <35.221569, 40.932850, 24.397306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.361950, 40.769466, 24.291481>,  <35.595917, 40.497158, 24.115107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361950, 40.769466, 24.291481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109209, 0.604782, -0.788867,
		-0.803707, -0.413268, -0.428094,
		-0.584917, 0.680770, 0.440935,
		35.186474, 40.973698, 24.423761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191868, 40.739746, 23.647524>,  <35.595917, 40.497158, 24.115107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191868, 40.739746, 23.647524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.163021, 41.030003, 23.921236>,  <35.145714, 41.204159, 24.085463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.163021, 41.030003, 23.921236>,  <35.191868, 40.739746, 23.647524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163021, 41.030003, 23.921236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057475, 0.687949, -0.723480,
		-0.995739, -0.012849, -0.091322,
		-0.072121, 0.725645, 0.684279,
		35.141384, 41.247696, 24.126520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836437, 41.197445, 23.308489>,  <35.191868, 40.739746, 23.647524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836437, 41.197445, 23.308489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.998718, 41.412224, 23.604351>,  <35.096088, 41.541092, 23.781868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.998718, 41.412224, 23.604351>,  <34.836437, 41.197445, 23.308489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998718, 41.412224, 23.604351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188809, 0.742557, -0.642620,
		-0.894291, 0.400366, 0.199876,
		0.405703, 0.536951, 0.739655,
		35.120430, 41.573311, 23.826248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540276, 41.866688, 23.240095>,  <34.836437, 41.197445, 23.308489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540276, 41.866688, 23.240095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.876888, 41.896729, 23.454081>,  <35.078857, 41.914753, 23.582472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.876888, 41.896729, 23.454081>,  <34.540276, 41.866688, 23.240095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876888, 41.896729, 23.454081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415265, 0.543450, -0.729532,
		-0.345516, 0.836075, 0.426142,
		0.841531, 0.075103, 0.534964,
		35.129349, 41.919258, 23.614569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646862, 42.602093, 23.221598>,  <34.540276, 41.866688, 23.240095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646862, 42.602093, 23.221598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.984627, 42.394615, 23.275154>,  <35.187286, 42.270130, 23.307287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.984627, 42.394615, 23.275154>,  <34.646862, 42.602093, 23.221598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984627, 42.394615, 23.275154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351753, 0.348369, -0.868855,
		0.404023, 0.780769, 0.476618,
		0.844414, -0.518689, 0.133889,
		35.237949, 42.239010, 23.315321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044380, 43.060303, 22.964214>,  <34.646862, 42.602093, 23.221598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044380, 43.060303, 22.964214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.301498, 42.757015, 23.007891>,  <35.455769, 42.575043, 23.034096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.301498, 42.757015, 23.007891>,  <35.044380, 43.060303, 22.964214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301498, 42.757015, 23.007891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571009, 0.379229, -0.728103,
		0.510652, 0.530369, 0.676715,
		0.642793, -0.758218, 0.109191,
		35.494335, 42.529549, 23.040648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659489, 43.369225, 22.772131>,  <35.044380, 43.060303, 22.964214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659489, 43.369225, 22.772131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.735641, 42.976971, 22.753799>,  <35.781334, 42.741619, 22.742800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.735641, 42.976971, 22.753799>,  <35.659489, 43.369225, 22.772131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735641, 42.976971, 22.753799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624350, 0.156976, -0.765210,
		0.757589, 0.117072, 0.642148,
		0.190386, -0.980639, -0.045830,
		35.792759, 42.682777, 22.740051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400776, 43.286457, 22.590754>,  <35.659489, 43.369225, 22.772131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400776, 43.286457, 22.590754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.207287, 42.965317, 22.451357>,  <36.091194, 42.772633, 22.367720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.207287, 42.965317, 22.451357>,  <36.400776, 43.286457, 22.590754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207287, 42.965317, 22.451357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401587, 0.150189, -0.903422,
		0.777653, -0.576951, 0.249766,
		-0.483718, -0.802852, -0.348491,
		36.062172, 42.724461, 22.346809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864899, 42.936165, 22.210861>,  <36.400776, 43.286457, 22.590754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864899, 42.936165, 22.210861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.526306, 42.757114, 22.095556>,  <36.323151, 42.649685, 22.026373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.526306, 42.757114, 22.095556>,  <36.864899, 42.936165, 22.210861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526306, 42.757114, 22.095556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328481, -0.012982, -0.944421,
		0.419009, -0.894124, 0.158027,
		-0.846482, -0.447630, -0.288263,
		36.272362, 42.622826, 22.009077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024658, 42.473221, 21.706663>,  <36.864899, 42.936165, 22.210861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024658, 42.473221, 21.706663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.629665, 42.481770, 21.644146>,  <36.392670, 42.486900, 21.606636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.629665, 42.481770, 21.644146>,  <37.024658, 42.473221, 21.706663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629665, 42.481770, 21.644146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150708, -0.164885, -0.974731,
		-0.046604, -0.986081, 0.159599,
		-0.987479, 0.021374, -0.156294,
		36.333420, 42.488182, 21.597258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918255, 41.853275, 21.225180>,  <37.024658, 42.473221, 21.706663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918255, 41.853275, 21.225180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.644146, 42.134933, 21.150799>,  <36.479679, 42.303928, 21.106171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.644146, 42.134933, 21.150799>,  <36.918255, 41.853275, 21.225180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644146, 42.134933, 21.150799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012001, -0.244375, -0.969607,
		-0.728184, -0.666680, 0.159014,
		-0.685276, 0.704144, -0.185951,
		36.438564, 42.346176, 21.095015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903542, 41.153648, 21.153799>,  <36.918255, 41.853275, 21.225180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903542, 41.153648, 21.153799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.566971, 41.248566, 20.959604>,  <36.365028, 41.305515, 20.843088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.566971, 41.248566, 20.959604>,  <36.903542, 41.153648, 21.153799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566971, 41.248566, 20.959604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472520, -0.758960, 0.448001,
		-0.262158, 0.606361, 0.750732,
		-0.841426, 0.237289, -0.485485,
		36.314545, 41.319752, 20.813959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345364, 41.186501, 21.727194>,  <36.903542, 41.153648, 21.153799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345364, 41.186501, 21.727194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.205738, 41.130905, 21.356501>,  <36.121964, 41.097549, 21.134085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.205738, 41.130905, 21.356501>,  <36.345364, 41.186501, 21.727194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205738, 41.130905, 21.356501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425326, -0.857712, 0.288840,
		-0.835015, 0.494988, 0.240284,
		-0.349067, -0.138987, -0.926734,
		36.101017, 41.089211, 21.078480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692131, 41.003834, 21.890398>,  <36.345364, 41.186501, 21.727194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692131, 41.003834, 21.890398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.773567, 40.885693, 21.517019>,  <35.822430, 40.814808, 21.292992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.773567, 40.885693, 21.517019>,  <35.692131, 41.003834, 21.890398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773567, 40.885693, 21.517019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566254, -0.813293, 0.133827,
		-0.798690, 0.501322, -0.332821,
		0.203591, -0.295348, -0.933445,
		35.834644, 40.797089, 21.236986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109234, 40.598328, 21.513212>,  <35.692131, 41.003834, 21.890398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109234, 40.598328, 21.513212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.419342, 40.473133, 21.293762>,  <35.605408, 40.398018, 21.162092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.419342, 40.473133, 21.293762>,  <35.109234, 40.598328, 21.513212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419342, 40.473133, 21.293762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262907, -0.949679, 0.170261,
		-0.574307, 0.012238, -0.818549,
		0.775275, -0.312984, -0.548625,
		35.651924, 40.379238, 21.129175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880444, 40.041801, 20.998154>,  <35.109234, 40.598328, 21.513212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880444, 40.041801, 20.998154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.267071, 39.987816, 21.085354>,  <35.499046, 39.955425, 21.137674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.267071, 39.987816, 21.085354>,  <34.880444, 40.041801, 20.998154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267071, 39.987816, 21.085354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193766, -0.941321, 0.276350,
		0.167913, -0.309353, -0.936005,
		0.966571, -0.134963, 0.218003,
		35.557041, 39.947327, 21.150755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073822, 39.430809, 20.829035>,  <34.880444, 40.041801, 20.998154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073822, 39.430809, 20.829035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.370258, 39.509640, 21.085766>,  <35.548119, 39.556938, 21.239805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.370258, 39.509640, 21.085766>,  <35.073822, 39.430809, 20.829035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370258, 39.509640, 21.085766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161314, -0.875682, 0.455148,
		0.651736, -0.440842, -0.617169,
		0.741092, 0.197079, 0.641827,
		35.592587, 39.568764, 21.278315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374252, 38.863777, 20.835291>,  <35.073822, 39.430809, 20.829035>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374252, 38.863777, 20.835291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.481853, 39.044872, 21.175329>,  <35.546413, 39.153530, 21.379353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.481853, 39.044872, 21.175329>,  <35.374252, 38.863777, 20.835291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481853, 39.044872, 21.175329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335793, -0.783164, 0.523351,
		0.902708, -0.426238, -0.058643,
		0.268999, 0.452742, 0.850097,
		35.562553, 39.180695, 21.430359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834648, 38.454098, 21.229532>,  <35.374252, 38.863777, 20.835291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834648, 38.454098, 21.229532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.664433, 38.692188, 21.502184>,  <35.562302, 38.835041, 21.665775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.664433, 38.692188, 21.502184>,  <35.834648, 38.454098, 21.229532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664433, 38.692188, 21.502184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114063, -0.782507, 0.612105,
		0.897722, 0.182727, 0.400883,
		-0.425541, 0.595226, 0.681631,
		35.536770, 38.870754, 21.706673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890575, 38.007122, 21.760273>,  <35.834648, 38.454098, 21.229532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890575, 38.007122, 21.760273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.653912, 38.309765, 21.871620>,  <35.511913, 38.491348, 21.938429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.653912, 38.309765, 21.871620>,  <35.890575, 38.007122, 21.760273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653912, 38.309765, 21.871620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484450, -0.609664, 0.627390,
		0.644398, 0.236344, 0.727250,
		-0.591658, 0.756605, 0.278370,
		35.476414, 38.536747, 21.955132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580360, 37.482357, 22.052834>,  <35.890575, 38.007122, 21.760273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580360, 37.482357, 22.052834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.597336, 37.195248, 21.774841>,  <36.607521, 37.022980, 21.608046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.597336, 37.195248, 21.774841>,  <36.580360, 37.482357, 22.052834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597336, 37.195248, 21.774841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288973, 0.674694, -0.679178,
		0.956396, -0.172004, 0.236054,
		0.042443, -0.717776, -0.694979,
		36.610069, 36.979916, 21.566347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221447, 37.635044, 21.655453>,  <36.580360, 37.482357, 22.052834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221447, 37.635044, 21.655453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.988251, 37.391529, 21.440231>,  <36.848331, 37.245422, 21.311098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.988251, 37.391529, 21.440231>,  <37.221447, 37.635044, 21.655453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988251, 37.391529, 21.440231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150631, 0.569768, -0.807883,
		0.798392, -0.552037, -0.240468,
		-0.582992, -0.608786, -0.538052,
		36.813354, 37.208893, 21.278816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623249, 37.525436, 21.067307>,  <37.221447, 37.635044, 21.655453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623249, 37.525436, 21.067307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.260803, 37.422577, 20.932945>,  <37.043335, 37.360863, 20.852327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.260803, 37.422577, 20.932945>,  <37.623249, 37.525436, 21.067307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260803, 37.422577, 20.932945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165412, 0.515455, -0.840800,
		0.389350, -0.817424, -0.424527,
		-0.906116, -0.257144, -0.335905,
		36.988968, 37.345432, 20.832174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726170, 37.214966, 20.408197>,  <37.623249, 37.525436, 21.067307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726170, 37.214966, 20.408197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.342854, 37.327415, 20.428812>,  <37.112865, 37.394886, 20.441181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.342854, 37.327415, 20.428812>,  <37.726170, 37.214966, 20.408197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342854, 37.327415, 20.428812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068570, 0.401195, -0.913423,
		-0.277460, -0.871787, -0.403736,
		-0.958287, 0.281122, 0.051537,
		37.055367, 37.411751, 20.444273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401875, 36.978218, 19.748175>,  <37.726170, 37.214966, 20.408197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401875, 36.978218, 19.748175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.181705, 37.266468, 19.916813>,  <37.049606, 37.439419, 20.017996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.181705, 37.266468, 19.916813>,  <37.401875, 36.978218, 19.748175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181705, 37.266468, 19.916813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024318, 0.490921, -0.870865,
		-0.834534, -0.489594, -0.252688,
		-0.550420, 0.720621, 0.421596,
		37.016579, 37.482655, 20.043291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118393, 37.303711, 19.192705>,  <37.401875, 36.978218, 19.748175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118393, 37.303711, 19.192705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.075844, 37.585121, 19.473770>,  <37.050312, 37.753967, 19.642408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.075844, 37.585121, 19.473770>,  <37.118393, 37.303711, 19.192705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075844, 37.585121, 19.473770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094967, 0.710630, -0.697128,
		-0.989780, -0.007429, -0.142407,
		-0.106377, 0.703527, 0.702662,
		37.043930, 37.796181, 19.684568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640503, 37.802002, 18.843628>,  <37.118393, 37.303711, 19.192705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640503, 37.802002, 18.843628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.820465, 37.990295, 19.147205>,  <36.928440, 38.103271, 19.329351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.820465, 37.990295, 19.147205>,  <36.640503, 37.802002, 18.843628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820465, 37.990295, 19.147205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044324, 0.836989, -0.545422,
		-0.891977, 0.279026, 0.355699,
		0.449903, 0.470738, 0.758942,
		36.955437, 38.131516, 19.374887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242641, 38.451317, 18.955400>,  <36.640503, 37.802002, 18.843628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242641, 38.451317, 18.955400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.625034, 38.462189, 19.072268>,  <36.854469, 38.468712, 19.142387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.625034, 38.462189, 19.072268>,  <36.242641, 38.451317, 18.955400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625034, 38.462189, 19.072268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099006, 0.907428, -0.408378,
		-0.276221, 0.419328, 0.864793,
		0.955981, 0.027183, 0.292166,
		36.911827, 38.470345, 19.159918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273857, 39.090836, 19.128515>,  <36.242641, 38.451317, 18.955400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273857, 39.090836, 19.128515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.666458, 39.019802, 19.099916>,  <36.902020, 38.977180, 19.082758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.666458, 39.019802, 19.099916>,  <36.273857, 39.090836, 19.128515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666458, 39.019802, 19.099916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128340, 0.887506, -0.442564,
		0.142047, 0.425202, 0.893882,
		0.981505, -0.177586, -0.071497,
		36.960911, 38.966526, 19.078466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.821140, 31.568668, 32.955017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.218563, 31.536863, 32.922707>,  <34.457016, 31.517780, 32.903320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.218563, 31.536863, 32.922707>,  <33.821140, 31.568668, 32.955017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218563, 31.536863, 32.922707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063049, 0.204502, -0.976834,
		0.094191, 0.975631, 0.198171,
		0.993556, -0.079515, -0.080775,
		34.516628, 31.513008, 32.898476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138531, 32.138077, 32.606289>,  <33.821140, 31.568668, 32.955017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138531, 32.138077, 32.606289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.396675, 31.833992, 32.576378>,  <34.551559, 31.651541, 32.558430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.396675, 31.833992, 32.576378>,  <34.138531, 32.138077, 32.606289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396675, 31.833992, 32.576378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083726, 0.167696, -0.982277,
		0.759278, 0.627659, 0.171874,
		0.645357, -0.760212, -0.074776,
		34.590282, 31.605928, 32.553944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650143, 32.407185, 32.391796>,  <34.138531, 32.138077, 32.606289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650143, 32.407185, 32.391796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.700672, 32.033539, 32.258244>,  <34.730991, 31.809353, 32.178112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.700672, 32.033539, 32.258244>,  <34.650143, 32.407185, 32.391796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700672, 32.033539, 32.258244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025418, 0.339516, -0.940257,
		0.991663, 0.110291, 0.066633,
		0.126325, -0.934111, -0.333883,
		34.738571, 31.753305, 32.158077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150455, 32.452282, 31.866571>,  <34.650143, 32.407185, 32.391796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150455, 32.452282, 31.866571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.974293, 32.097340, 31.811956>,  <34.868595, 31.884375, 31.779188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.974293, 32.097340, 31.811956>,  <35.150455, 32.452282, 31.866571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974293, 32.097340, 31.811956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059402, 0.180545, -0.981771,
		0.895830, -0.424271, -0.132224,
		-0.440409, -0.887354, -0.136535,
		34.842171, 31.831133, 31.770996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553936, 32.116272, 31.378046>,  <35.150455, 32.452282, 31.866571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553936, 32.116272, 31.378046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.191231, 31.949049, 31.356087>,  <34.973610, 31.848715, 31.342911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.191231, 31.949049, 31.356087>,  <35.553936, 32.116272, 31.378046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191231, 31.949049, 31.356087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032663, 0.060158, -0.997654,
		0.420384, -0.906424, -0.040894,
		-0.906758, -0.418062, -0.054896,
		34.919205, 31.823631, 31.339619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514130, 31.718235, 30.820435>,  <35.553936, 32.116272, 31.378046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514130, 31.718235, 30.820435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.122669, 31.781593, 30.872816>,  <34.887791, 31.819609, 30.904245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.122669, 31.781593, 30.872816>,  <35.514130, 31.718235, 30.820435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122669, 31.781593, 30.872816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125808, 0.042119, -0.991160,
		-0.162515, -0.986476, -0.021292,
		-0.978653, 0.158399, 0.130952,
		34.829075, 31.829113, 30.912102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301086, 31.586248, 30.228216>,  <35.514130, 31.718235, 30.820435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301086, 31.586248, 30.228216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.947876, 31.713125, 30.366579>,  <34.735950, 31.789251, 30.449596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.947876, 31.713125, 30.366579>,  <35.301086, 31.586248, 30.228216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947876, 31.713125, 30.366579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282974, 0.228158, -0.931595,
		-0.374417, -0.920506, -0.111712,
		-0.883027, 0.317194, 0.345906,
		34.682968, 31.808283, 30.470350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683651, 31.133949, 30.084238>,  <35.301086, 31.586248, 30.228216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683651, 31.133949, 30.084238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.552582, 31.508619, 30.133663>,  <34.473942, 31.733421, 30.163319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.552582, 31.508619, 30.133663>,  <34.683651, 31.133949, 30.084238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552582, 31.508619, 30.133663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304209, 0.019218, -0.952411,
		-0.894476, -0.349667, 0.278649,
		-0.327672, 0.936677, 0.123562,
		34.454281, 31.789623, 30.170732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098515, 31.181454, 29.563519>,  <34.683651, 31.133949, 30.084238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098515, 31.181454, 29.563519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.212433, 31.549488, 29.671103>,  <34.280785, 31.770308, 29.735653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.212433, 31.549488, 29.671103>,  <34.098515, 31.181454, 29.563519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212433, 31.549488, 29.671103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311094, 0.354105, -0.881947,
		-0.906705, 0.167499, 0.387079,
		0.284792, 0.920084, 0.268961,
		34.297871, 31.825514, 29.751791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533024, 31.648220, 29.301157>,  <34.098515, 31.181454, 29.563519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533024, 31.648220, 29.301157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.858055, 31.876108, 29.350376>,  <34.053074, 32.012840, 29.379908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.858055, 31.876108, 29.350376>,  <33.533024, 31.648220, 29.301157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858055, 31.876108, 29.350376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131465, 0.384818, -0.913582,
		-0.567838, 0.726177, 0.387591,
		0.812574, 0.569721, 0.123048,
		34.101826, 32.047024, 29.387291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354630, 32.213413, 28.949421>,  <33.533024, 31.648220, 29.301157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354630, 32.213413, 28.949421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.750843, 32.256893, 28.982933>,  <33.988571, 32.282982, 29.003040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.750843, 32.256893, 28.982933>,  <33.354630, 32.213413, 28.949421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750843, 32.256893, 28.982933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035839, 0.384425, -0.922460,
		-0.132477, 0.916734, 0.376892,
		0.990538, 0.108698, 0.083782,
		34.048004, 32.289501, 29.008068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680004, 32.995377, 28.829521>,  <33.354630, 32.213413, 28.949421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680004, 32.995377, 28.829521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.995922, 32.762962, 28.750914>,  <34.185474, 32.623512, 28.703749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.995922, 32.762962, 28.750914>,  <33.680004, 32.995377, 28.829521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995922, 32.762962, 28.750914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181789, 0.527733, -0.829729,
		0.585811, 0.619593, 0.522427,
		0.789797, -0.581036, -0.196517,
		34.232861, 32.588650, 28.691959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638824, 33.695358, 28.951305>,  <33.680004, 32.995377, 28.829521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638824, 33.695358, 28.951305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.264587, 33.815590, 28.877199>,  <33.040047, 33.887730, 28.832735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.264587, 33.815590, 28.877199>,  <33.638824, 33.695358, 28.951305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264587, 33.815590, 28.877199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246210, -0.179283, 0.952490,
		0.253085, 0.936754, 0.241742,
		-0.935590, 0.300580, -0.185265,
		32.983910, 33.905766, 28.821619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510353, 34.091183, 29.559788>,  <33.638824, 33.695358, 28.951305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510353, 34.091183, 29.559788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.159641, 33.978313, 29.404024>,  <32.949215, 33.910591, 29.310566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.159641, 33.978313, 29.404024>,  <33.510353, 34.091183, 29.559788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159641, 33.978313, 29.404024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335752, -0.220532, 0.915771,
		-0.344281, 0.933673, 0.098619,
		-0.876779, -0.282171, -0.389408,
		32.896606, 33.893661, 29.287201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929794, 34.414783, 29.903006>,  <33.510353, 34.091183, 29.559788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929794, 34.414783, 29.903006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.758816, 34.090477, 29.743032>,  <32.656231, 33.895893, 29.647049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.758816, 34.090477, 29.743032>,  <32.929794, 34.414783, 29.903006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758816, 34.090477, 29.743032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382281, -0.238785, 0.892661,
		-0.819240, 0.534447, -0.207875,
		-0.427443, -0.810770, -0.399931,
		32.630585, 33.847244, 29.623053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195438, 34.390957, 30.041677>,  <32.929794, 34.414783, 29.903006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195438, 34.390957, 30.041677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.280163, 34.002262, 29.999973>,  <32.330997, 33.769047, 29.974951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.280163, 34.002262, 29.999973>,  <32.195438, 34.390957, 30.041677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280163, 34.002262, 29.999973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436748, -0.189549, 0.879387,
		-0.874293, -0.140728, -0.464551,
		0.211810, -0.971734, -0.104259,
		32.343704, 33.710743, 29.968695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533182, 34.024307, 30.087923>,  <32.195438, 34.390957, 30.041677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533182, 34.024307, 30.087923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.831520, 33.773319, 30.177362>,  <32.010525, 33.622726, 30.231026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.831520, 33.773319, 30.177362>,  <31.533182, 34.024307, 30.087923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831520, 33.773319, 30.177362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436491, -0.206813, 0.875616,
		-0.503180, -0.750673, -0.428136,
		0.745845, -0.627469, 0.223598,
		32.055275, 33.585079, 30.244442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.172319, 33.525600, 30.412218>,  <31.533182, 34.024307, 30.087923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.172319, 33.525600, 30.412218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.541607, 33.392929, 30.489840>,  <31.763180, 33.313328, 30.536413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.541607, 33.392929, 30.489840>,  <31.172319, 33.525600, 30.412218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.541607, 33.392929, 30.489840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334858, -0.446654, 0.829681,
		-0.188508, -0.830959, -0.523423,
		0.923220, -0.331674, 0.194055,
		31.818573, 33.293427, 30.548056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188320, 32.771492, 30.852875>,  <31.172319, 33.525600, 30.412218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188320, 32.771492, 30.852875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.532949, 32.966312, 30.910101>,  <31.739727, 33.083206, 30.944437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.532949, 32.966312, 30.910101>,  <31.188320, 32.771492, 30.852875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532949, 32.966312, 30.910101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003554, -0.276031, 0.961142,
		0.507619, -0.828604, -0.236091,
		0.861574, 0.487054, 0.143063,
		31.791422, 33.112427, 30.953020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614857, 32.441898, 31.269310>,  <31.188320, 32.771492, 30.852875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614857, 32.441898, 31.269310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.804750, 32.790607, 31.317699>,  <31.918686, 32.999832, 31.346733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.804750, 32.790607, 31.317699>,  <31.614857, 32.441898, 31.269310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804750, 32.790607, 31.317699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031453, -0.154165, 0.987544,
		0.879568, -0.465014, -0.100607,
		0.474732, 0.871777, 0.120972,
		31.947170, 33.052139, 31.353991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.023991, 32.390091, 31.854334>,  <31.614857, 32.441898, 31.269310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.023991, 32.390091, 31.854334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.029774, 32.785492, 31.794138>,  <32.033241, 33.022732, 31.758020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.029774, 32.785492, 31.794138>,  <32.023991, 32.390091, 31.854334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.029774, 32.785492, 31.794138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072902, 0.149061, 0.986137,
		0.997234, -0.025225, -0.069909,
		0.014454, 0.988506, -0.150488,
		32.034111, 33.082043, 31.748991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514278, 32.702137, 32.398678>,  <32.023991, 32.390091, 31.854334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514278, 32.702137, 32.398678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.244350, 32.965584, 32.265503>,  <32.082394, 33.123653, 32.185600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.244350, 32.965584, 32.265503>,  <32.514278, 32.702137, 32.398678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244350, 32.965584, 32.265503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220159, 0.250934, 0.942636,
		0.704381, 0.709405, -0.024334,
		-0.674817, 0.658617, -0.332935,
		32.041904, 33.163170, 32.165623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594093, 33.315319, 32.832363>,  <32.514278, 32.702137, 32.398678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594093, 33.315319, 32.832363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.219635, 33.341228, 32.694130>,  <31.994959, 33.356773, 32.611191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.219635, 33.341228, 32.694130>,  <32.594093, 33.315319, 32.832363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219635, 33.341228, 32.694130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329701, 0.179762, 0.926813,
		0.122153, 0.981575, -0.146930,
		-0.936149, 0.064771, -0.345585,
		31.938789, 33.360661, 32.590454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288670, 33.924568, 33.077038>,  <32.594093, 33.315319, 32.832363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288670, 33.924568, 33.077038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.988918, 33.677761, 32.980942>,  <31.809067, 33.529678, 32.923283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.988918, 33.677761, 32.980942>,  <32.288670, 33.924568, 33.077038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988918, 33.677761, 32.980942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401751, 0.135293, 0.905700,
		-0.526331, 0.775232, -0.349274,
		-0.749381, -0.617019, -0.240241,
		31.764105, 33.492657, 32.908871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.761181, 34.277233, 33.267750>,  <32.288670, 33.924568, 33.077038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.761181, 34.277233, 33.267750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.610281, 33.906971, 33.256142>,  <31.519741, 33.684814, 33.249176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.610281, 33.906971, 33.256142>,  <31.761181, 34.277233, 33.267750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610281, 33.906971, 33.256142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383473, 0.127603, 0.914694,
		-0.842989, 0.356198, -0.403102,
		-0.377250, -0.925656, -0.029024,
		31.497107, 33.629272, 33.247433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113932, 34.287842, 33.525139>,  <31.761181, 34.277233, 33.267750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.113932, 34.287842, 33.525139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.177513, 33.893932, 33.553295>,  <31.215662, 33.657585, 33.570187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.177513, 33.893932, 33.553295>,  <31.113932, 34.287842, 33.525139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.177513, 33.893932, 33.553295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400600, 0.000829, 0.916252,
		-0.902360, -0.173838, -0.394369,
		0.158953, -0.984774, 0.070388,
		31.225199, 33.598499, 33.574413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.348633, 34.925850, 33.361847>,  <31.113932, 34.287842, 33.525139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.348633, 34.925850, 33.361847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.612614, 35.203934, 33.475788>,  <31.771002, 35.370785, 33.544155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.612614, 35.203934, 33.475788>,  <31.348633, 34.925850, 33.361847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.612614, 35.203934, 33.475788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185797, 0.518392, -0.834715,
		-0.727970, 0.497948, 0.471283,
		0.659954, 0.695210, 0.284856,
		31.810600, 35.412498, 33.561245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.003399, 35.719669, 33.255074>,  <31.348633, 34.925850, 33.361847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.003399, 35.719669, 33.255074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.402227, 35.735947, 33.280972>,  <31.641525, 35.745712, 33.296513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.402227, 35.735947, 33.280972>,  <31.003399, 35.719669, 33.255074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402227, 35.735947, 33.280972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029487, 0.576585, -0.816505,
		-0.070562, 0.816023, 0.573696,
		0.997071, 0.040698, 0.064747,
		31.701349, 35.748158, 33.300396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.126923, 36.359680, 32.989902>,  <31.003399, 35.719669, 33.255074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.126923, 36.359680, 32.989902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.474613, 36.165638, 32.951694>,  <31.683228, 36.049213, 32.928768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.474613, 36.165638, 32.951694>,  <31.126923, 36.359680, 32.989902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.474613, 36.165638, 32.951694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135943, 0.420252, -0.897167,
		0.475359, 0.766854, 0.431240,
		0.869225, -0.485101, -0.095522,
		31.735380, 36.020107, 32.923038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624422, 36.784035, 32.821056>,  <31.126923, 36.359680, 32.989902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624422, 36.784035, 32.821056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.758982, 36.433613, 32.682861>,  <31.839718, 36.223358, 32.599945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.758982, 36.433613, 32.682861>,  <31.624422, 36.784035, 32.821056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758982, 36.433613, 32.682861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207877, 0.426898, -0.880082,
		0.918490, 0.224239, 0.325720,
		0.336398, -0.876056, -0.345488,
		31.859901, 36.170795, 32.579216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.271614, 36.927086, 32.537663>,  <31.624422, 36.784035, 32.821056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.271614, 36.927086, 32.537663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.182068, 36.573650, 32.373154>,  <32.128342, 36.361588, 32.274448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.182068, 36.573650, 32.373154>,  <32.271614, 36.927086, 32.537663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182068, 36.573650, 32.373154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267129, 0.350197, -0.897777,
		0.937297, -0.310846, 0.157636,
		-0.223867, -0.883593, -0.411275,
		32.114906, 36.308571, 32.249771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918819, 36.706146, 32.136314>,  <32.271614, 36.927086, 32.537663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918819, 36.706146, 32.136314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.621655, 36.491898, 31.975719>,  <32.443356, 36.363350, 31.879362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.621655, 36.491898, 31.975719>,  <32.918819, 36.706146, 32.136314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621655, 36.491898, 31.975719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249052, 0.335551, -0.908504,
		0.621333, -0.774929, -0.115887,
		-0.742912, -0.535622, -0.401486,
		32.398781, 36.331211, 31.855274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220749, 36.319565, 31.631956>,  <32.918819, 36.706146, 32.136314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220749, 36.319565, 31.631956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.834610, 36.307606, 31.528255>,  <32.602928, 36.300430, 31.466036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.834610, 36.307606, 31.528255>,  <33.220749, 36.319565, 31.631956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834610, 36.307606, 31.528255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255334, 0.097137, -0.961961,
		0.053939, -0.994822, -0.086138,
		-0.965347, -0.029893, -0.259252,
		32.545006, 36.298637, 31.450480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237637, 36.017933, 30.989298>,  <33.220749, 36.319565, 31.631956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237637, 36.017933, 30.989298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.864746, 36.162235, 31.000700>,  <32.641014, 36.248817, 31.007542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.864746, 36.162235, 31.000700>,  <33.237637, 36.017933, 30.989298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864746, 36.162235, 31.000700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062939, 0.239199, -0.968929,
		-0.356368, -0.901464, -0.245692,
		-0.932223, 0.360759, 0.028505,
		32.585079, 36.270462, 31.009251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879627, 35.627552, 30.442562>,  <33.237637, 36.017933, 30.989298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879627, 35.627552, 30.442562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.696587, 35.978546, 30.500015>,  <32.586761, 36.189140, 30.534487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.696587, 35.978546, 30.500015>,  <32.879627, 35.627552, 30.442562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696587, 35.978546, 30.500015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073713, 0.198422, -0.977341,
		-0.886099, -0.436640, -0.155479,
		-0.457597, 0.877482, 0.143635,
		32.559307, 36.241791, 30.543106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464474, 35.767429, 29.861525>,  <32.879627, 35.627552, 30.442562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464474, 35.767429, 29.861525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.526653, 36.123413, 30.033016>,  <32.563961, 36.337002, 30.135910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.526653, 36.123413, 30.033016>,  <32.464474, 35.767429, 29.861525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526653, 36.123413, 30.033016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152407, 0.407201, -0.900533,
		-0.976016, 0.205332, -0.072335,
		0.155453, 0.889959, 0.428728,
		32.573288, 36.390400, 30.161634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342625, 36.093353, 29.317011>,  <32.464474, 35.767429, 29.861525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342625, 36.093353, 29.317011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.469120, 36.400051, 29.540472>,  <32.545017, 36.584068, 29.674549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.469120, 36.400051, 29.540472>,  <32.342625, 36.093353, 29.317011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469120, 36.400051, 29.540472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248000, 0.501583, -0.828801,
		-0.915691, 0.400643, -0.031534,
		0.316236, 0.766746, 0.558655,
		32.563992, 36.630074, 29.708069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940338, 36.711605, 29.219177>,  <32.342625, 36.093353, 29.317011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940338, 36.711605, 29.219177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.297634, 36.833710, 29.351200>,  <32.512012, 36.906971, 29.430414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.297634, 36.833710, 29.351200>,  <31.940338, 36.711605, 29.219177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297634, 36.833710, 29.351200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147322, 0.494868, -0.856389,
		-0.424759, 0.813585, 0.397063,
		0.893239, 0.305263, 0.330059,
		32.565605, 36.925289, 29.450218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.967627, 37.424858, 29.019394>,  <31.940338, 36.711605, 29.219177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.967627, 37.424858, 29.019394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.338978, 37.308861, 29.112358>,  <32.561790, 37.239262, 29.168137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.338978, 37.308861, 29.112358>,  <31.967627, 37.424858, 29.019394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338978, 37.308861, 29.112358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359689, 0.543894, -0.758157,
		0.093454, 0.787454, 0.609248,
		0.928380, -0.289993, 0.232410,
		32.617493, 37.221863, 29.182081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378132, 37.994202, 29.022930>,  <31.967627, 37.424858, 29.019394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378132, 37.994202, 29.022930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.674339, 37.728867, 28.979813>,  <32.852062, 37.569668, 28.953943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.674339, 37.728867, 28.979813>,  <32.378132, 37.994202, 29.022930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674339, 37.728867, 28.979813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385382, 0.550557, -0.740518,
		0.550557, 0.506826, 0.663335,
		0.740518, -0.663335, -0.107792,
		32.896496, 37.529865, 28.947475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077099, 38.307877, 28.972506>,  <32.378132, 37.994202, 29.022930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077099, 38.307877, 28.972506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.158695, 37.954948, 28.802847>,  <33.207653, 37.743191, 28.701052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.158695, 37.954948, 28.802847>,  <33.077099, 38.307877, 28.972506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158695, 37.954948, 28.802847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515520, 0.465135, -0.719645,
		0.832242, -0.071856, 0.549736,
		0.203991, -0.882319, -0.424148,
		33.219894, 37.690254, 28.675602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861389, 38.239281, 28.916862>,  <33.077099, 38.307877, 28.972506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861389, 38.239281, 28.916862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.667812, 37.995403, 28.665760>,  <33.551666, 37.849079, 28.515099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.667812, 37.995403, 28.665760>,  <33.861389, 38.239281, 28.916862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667812, 37.995403, 28.665760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454765, 0.437668, -0.775652,
		0.747657, -0.660851, 0.065461,
		-0.483940, -0.609691, -0.627757,
		33.522629, 37.812496, 28.477432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356571, 37.812653, 28.547626>,  <33.861389, 38.239281, 28.916862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356571, 37.812653, 28.547626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.024879, 37.813625, 28.324064>,  <33.825867, 37.814209, 28.189926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.024879, 37.813625, 28.324064>,  <34.356571, 37.812653, 28.547626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024879, 37.813625, 28.324064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524291, 0.349858, -0.776349,
		0.193649, -0.936800, -0.291387,
		-0.829228, 0.002432, -0.558906,
		33.776112, 37.814354, 28.156393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652142, 37.825802, 27.886307>,  <34.356571, 37.812653, 28.547626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652142, 37.825802, 27.886307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.266960, 37.889404, 27.799177>,  <34.035851, 37.927567, 27.746901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.266960, 37.889404, 27.799177>,  <34.652142, 37.825802, 27.886307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266960, 37.889404, 27.799177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269497, 0.537346, -0.799143,
		-0.010022, -0.828237, -0.560288,
		-0.962949, 0.159005, -0.217822,
		33.978077, 37.937107, 27.733829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609051, 37.549564, 27.303167>,  <34.652142, 37.825802, 27.886307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609051, 37.549564, 27.303167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.310944, 37.812870, 27.345619>,  <34.132080, 37.970852, 27.371090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.310944, 37.812870, 27.345619>,  <34.609051, 37.549564, 27.303167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310944, 37.812870, 27.345619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248493, 0.421918, -0.871915,
		-0.618728, -0.623439, -0.478016,
		-0.745269, 0.658263, 0.106132,
		34.087364, 38.010349, 27.377459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101227, 37.439056, 26.716797>,  <34.609051, 37.549564, 27.303167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101227, 37.439056, 26.716797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.085079, 37.817116, 26.846453>,  <34.075390, 38.043953, 26.924246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.085079, 37.817116, 26.846453>,  <34.101227, 37.439056, 26.716797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085079, 37.817116, 26.846453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279741, 0.322121, -0.904424,
		-0.959226, 0.054167, -0.277399,
		-0.040367, 0.945147, 0.324140,
		34.072968, 38.100658, 26.943695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807217, 37.720589, 26.219213>,  <34.101227, 37.439056, 26.716797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807217, 37.720589, 26.219213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.951580, 38.030807, 26.426397>,  <34.038197, 38.216938, 26.550707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.951580, 38.030807, 26.426397>,  <33.807217, 37.720589, 26.219213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951580, 38.030807, 26.426397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271992, 0.443713, -0.853896,
		-0.892058, 0.449055, -0.050804,
		0.360905, 0.775544, 0.517957,
		34.059853, 38.263470, 26.581785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604141, 38.229694, 25.765032>,  <33.807217, 37.720589, 26.219213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604141, 38.229694, 25.765032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.877472, 38.407646, 25.996599>,  <34.041470, 38.514416, 26.135540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.877472, 38.407646, 25.996599>,  <33.604141, 38.229694, 25.765032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877472, 38.407646, 25.996599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228646, 0.622642, -0.748357,
		-0.693385, 0.643741, 0.323750,
		0.683329, 0.444875, 0.578920,
		34.082470, 38.541107, 26.170275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.566689, 38.914299, 25.612581>,  <33.604141, 38.229694, 25.765032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.566689, 38.914299, 25.612581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.913441, 38.879620, 25.808947>,  <34.121494, 38.858810, 25.926765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.913441, 38.879620, 25.808947>,  <33.566689, 38.914299, 25.612581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913441, 38.879620, 25.808947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407308, 0.690961, -0.597222,
		-0.287422, 0.717674, 0.634296,
		0.866885, -0.086699, 0.490912,
		34.173508, 38.853611, 25.956221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745335, 39.669868, 25.627211>,  <33.566689, 38.914299, 25.612581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745335, 39.669868, 25.627211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.077644, 39.510139, 25.782309>,  <34.277031, 39.414303, 25.875368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.077644, 39.510139, 25.782309>,  <33.745335, 39.669868, 25.627211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077644, 39.510139, 25.782309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536078, 0.761483, -0.364369,
		-0.149760, 0.510572, 0.846693,
		0.830778, -0.399325, 0.387746,
		34.326878, 39.390343, 25.898632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174782, 40.179615, 26.139881>,  <33.745335, 39.669868, 25.627211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174782, 40.179615, 26.139881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.412727, 39.911495, 25.962418>,  <34.555496, 39.750622, 25.855940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.412727, 39.911495, 25.962418>,  <34.174782, 40.179615, 26.139881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412727, 39.911495, 25.962418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482518, 0.739198, -0.469854,
		0.642895, 0.065426, 0.763155,
		0.594863, -0.670303, -0.443657,
		34.591187, 39.710403, 25.829321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871277, 40.280453, 26.377186>,  <34.174782, 40.179615, 26.139881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871277, 40.280453, 26.377186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.840397, 40.116093, 26.013824>,  <34.821869, 40.017475, 25.795807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.840397, 40.116093, 26.013824>,  <34.871277, 40.280453, 26.377186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840397, 40.116093, 26.013824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258887, 0.871611, -0.416259,
		0.962817, -0.267311, 0.039085,
		-0.077204, -0.410901, -0.908406,
		34.817234, 39.992821, 25.741302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421902, 40.650036, 26.057341>,  <34.871277, 40.280453, 26.377186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421902, 40.650036, 26.057341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.229221, 40.464470, 25.759953>,  <35.113613, 40.353130, 25.581520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.229221, 40.464470, 25.759953>,  <35.421902, 40.650036, 26.057341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229221, 40.464470, 25.759953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204796, 0.765301, -0.610224,
		0.852068, -0.446207, -0.273641,
		-0.481704, -0.463912, -0.743470,
		35.084709, 40.325294, 25.536911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856388, 40.526165, 25.525091>,  <35.421902, 40.650036, 26.057341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856388, 40.526165, 25.525091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.481781, 40.542210, 25.385761>,  <35.257019, 40.551838, 25.302164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.481781, 40.542210, 25.385761>,  <35.856388, 40.526165, 25.525091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481781, 40.542210, 25.385761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269312, 0.718433, -0.641347,
		0.224521, -0.694439, -0.683626,
		-0.936516, 0.040113, -0.348324,
		35.200825, 40.554245, 25.281263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516880, 40.128983, 25.446466>,  <35.856388, 40.526165, 25.525091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516880, 40.128983, 25.446466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.816769, 40.345432, 25.598837>,  <36.996700, 40.475304, 25.690258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.816769, 40.345432, 25.598837>,  <36.516880, 40.128983, 25.446466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816769, 40.345432, 25.598837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150959, -0.420600, 0.894599,
		0.644310, -0.728200, -0.233643,
		0.749718, 0.541128, 0.380925,
		37.041683, 40.507771, 25.713114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910225, 39.590260, 25.794153>,  <36.516880, 40.128983, 25.446466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910225, 39.590260, 25.794153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.010002, 39.948627, 25.941175>,  <37.069870, 40.163651, 26.029388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.010002, 39.948627, 25.941175>,  <36.910225, 39.590260, 25.794153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010002, 39.948627, 25.941175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086435, -0.357443, 0.929927,
		0.964524, -0.263736, -0.011724,
		0.249446, 0.895923, 0.367558,
		37.084835, 40.217403, 26.051443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363430, 39.486294, 26.344488>,  <36.910225, 39.590260, 25.794153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363430, 39.486294, 26.344488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.215832, 39.851986, 26.411451>,  <37.127274, 40.071400, 26.451630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.215832, 39.851986, 26.411451>,  <37.363430, 39.486294, 26.344488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215832, 39.851986, 26.411451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058378, -0.202562, 0.977528,
		0.927594, 0.350934, 0.128116,
		-0.368999, 0.914229, 0.167408,
		37.105133, 40.126255, 26.461674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652702, 39.680450, 26.901386>,  <37.363430, 39.486294, 26.344488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652702, 39.680450, 26.901386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.337574, 39.925526, 26.876247>,  <37.148499, 40.072571, 26.861164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.337574, 39.925526, 26.876247>,  <37.652702, 39.680450, 26.901386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337574, 39.925526, 26.876247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145974, -0.086607, 0.985490,
		0.598358, 0.785563, 0.157668,
		-0.787820, 0.612691, -0.062849,
		37.101227, 40.109333, 26.857393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714752, 40.196301, 27.388859>,  <37.652702, 39.680450, 26.901386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714752, 40.196301, 27.388859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.320827, 40.184132, 27.320482>,  <37.084473, 40.176830, 27.279455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.320827, 40.184132, 27.320482>,  <37.714752, 40.196301, 27.388859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320827, 40.184132, 27.320482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171057, 0.001181, 0.985260,
		-0.029772, 0.999536, -0.006367,
		-0.984811, -0.030422, -0.170943,
		37.025383, 40.175003, 27.269199>
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
