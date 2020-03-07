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
	<3.516847, 2.141133, 5.805177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.828461, 2.355440, 5.674911>,  <4.015429, 2.484025, 5.596752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.828461, 2.355440, 5.674911>,  <3.516847, 2.141133, 5.805177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.828461, 2.355440, 5.674911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504111, 0.226403, -0.833435,
		-0.372797, 0.813445, 0.446463,
		0.779034, 0.535769, -0.325665,
		4.062171, 2.516171, 5.577212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.324998, 2.869871, 5.481095>,  <3.516847, 2.141133, 5.805177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.324998, 2.869871, 5.481095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.675457, 2.731975, 5.346325>,  <3.885732, 2.649236, 5.265463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.675457, 2.731975, 5.346325>,  <3.324998, 2.869871, 5.481095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.675457, 2.731975, 5.346325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340428, 0.052345, -0.938813,
		0.341285, 0.937237, -0.071498,
		0.876147, -0.344742, -0.336926,
		3.938301, 2.628552, 5.245247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.788050, 3.350809, 5.116568>,  <3.324998, 2.869871, 5.481095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.788050, 3.350809, 5.116568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.764896, 2.981437, 4.964817>,  <3.751004, 2.759814, 4.873766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.764896, 2.981437, 4.964817>,  <3.788050, 3.350809, 5.116568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.764896, 2.981437, 4.964817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342587, 0.375312, -0.861264,
		0.937701, 0.080116, -0.338080,
		-0.057885, -0.923430, -0.379377,
		3.747531, 2.704408, 4.851004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.258137, 3.248966, 4.527381>,  <3.788050, 3.350809, 5.116568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.258137, 3.248966, 4.527381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.904884, 3.061779, 4.540560>,  <3.692933, 2.949467, 4.548467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.904884, 3.061779, 4.540560>,  <4.258137, 3.248966, 4.527381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.904884, 3.061779, 4.540560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283857, 0.477128, -0.831729,
		0.373500, -0.743880, -0.554203,
		-0.883132, -0.467965, 0.032948,
		3.639945, 2.921389, 4.550444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.087472, 3.107892, 3.782834>,  <4.258137, 3.248966, 4.527381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.087472, 3.107892, 3.782834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.767384, 3.089789, 4.022032>,  <3.575330, 3.078928, 4.165550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.767384, 3.089789, 4.022032>,  <4.087472, 3.107892, 3.782834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.767384, 3.089789, 4.022032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489717, 0.624874, -0.608038,
		-0.346153, -0.779413, -0.522200,
		-0.800222, -0.045256, 0.597994,
		3.527317, 3.076212, 4.201430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.598402, 3.121956, 3.329147>,  <4.087472, 3.107892, 3.782834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.598402, 3.121956, 3.329147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.402992, 3.227887, 3.661703>,  <3.285747, 3.291445, 3.861237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.402992, 3.227887, 3.661703>,  <3.598402, 3.121956, 3.329147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.402992, 3.227887, 3.661703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548967, 0.647331, -0.528769,
		-0.678218, -0.714723, -0.170856,
		-0.488524, 0.264827, 0.831391,
		3.256435, 3.307335, 3.911120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.942921, 3.244241, 3.056917>,  <3.598402, 3.121956, 3.329147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.942921, 3.244241, 3.056917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.927834, 3.419736, 3.416046>,  <2.918781, 3.525033, 3.631524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.927834, 3.419736, 3.416046>,  <2.942921, 3.244241, 3.056917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.927834, 3.419736, 3.416046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559632, 0.735077, -0.382719,
		-0.827883, -0.516886, 0.217805,
		-0.037719, 0.438737, 0.897823,
		2.916518, 3.551357, 3.685393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.288855, 3.208643, 3.252109>,  <2.942921, 3.244241, 3.056917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.288855, 3.208643, 3.252109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.457401, 3.521420, 3.435856>,  <2.558529, 3.709085, 3.546104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.457401, 3.521420, 3.435856>,  <2.288855, 3.208643, 3.252109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.457401, 3.521420, 3.435856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654131, 0.612893, -0.443254,
		-0.628142, -0.113715, 0.769744,
		0.421366, 0.781941, 0.459368,
		2.583811, 3.756002, 3.573666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.162760, 4.888400, 2.713587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.202316, 5.025826, 3.087151>,  <2.226050, 5.108281, 3.311289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.202316, 5.025826, 3.087151>,  <2.162760, 4.888400, 2.713587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.202316, 5.025826, 3.087151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609073, -0.763071, 0.216223,
		0.786925, 0.547436, -0.284716,
		0.098890, 0.343564, 0.933908,
		2.231983, 5.128895, 3.367323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.849797, 4.837807, 2.923446>,  <2.162760, 4.888400, 2.713587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.849797, 4.837807, 2.923446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.610771, 4.814468, 3.243324>,  <2.467356, 4.800466, 3.435251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.610771, 4.814468, 3.243324>,  <2.849797, 4.837807, 2.923446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.610771, 4.814468, 3.243324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488407, -0.817460, 0.305315,
		0.635906, 0.573022, 0.516981,
		-0.597564, -0.058346, 0.799696,
		2.431502, 4.796965, 3.483233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.178591, 4.848052, 3.550671>,  <2.849797, 4.837807, 2.923446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.178591, 4.848052, 3.550671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.838997, 4.647675, 3.617939>,  <2.635241, 4.527448, 3.658300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.838997, 4.647675, 3.617939>,  <3.178591, 4.848052, 3.550671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.838997, 4.647675, 3.617939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493616, -0.638248, 0.590748,
		-0.188597, 0.584548, 0.789136,
		-0.848984, -0.500943, 0.168170,
		2.584301, 4.497392, 3.668390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.095056, 4.711565, 4.274298>,  <3.178591, 4.848052, 3.550671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.095056, 4.711565, 4.274298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.895424, 4.429558, 4.072758>,  <2.775645, 4.260353, 3.951833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.895424, 4.429558, 4.072758>,  <3.095056, 4.711565, 4.274298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.895424, 4.429558, 4.072758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282118, -0.681958, 0.674791,
		-0.819346, 0.194630, 0.539250,
		-0.499081, -0.705020, -0.503851,
		2.745700, 4.218052, 3.921602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.818632, 4.327878, 4.755373>,  <3.095056, 4.711565, 4.274298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.818632, 4.327878, 4.755373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.842552, 4.076557, 4.445107>,  <2.856904, 3.925764, 4.258946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.842552, 4.076557, 4.445107>,  <2.818632, 4.327878, 4.755373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.842552, 4.076557, 4.445107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278479, -0.735706, 0.617403,
		-0.958579, -0.252927, 0.130974,
		0.059800, -0.628303, -0.775667,
		2.860492, 3.888066, 4.212407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.629585, 3.727091, 5.018680>,  <2.818632, 4.327878, 4.755373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.629585, 3.727091, 5.018680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.800568, 3.592237, 4.683151>,  <2.903157, 3.511326, 4.481834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.800568, 3.592237, 4.683151>,  <2.629585, 3.727091, 5.018680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.800568, 3.592237, 4.683151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234394, -0.854803, 0.463002,
		-0.873121, -0.394529, -0.286369,
		0.427457, -0.337133, -0.838822,
		2.928805, 3.491097, 4.431505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.402425, 3.114564, 4.973661>,  <2.629585, 3.727091, 5.018680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.402425, 3.114564, 4.973661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.731766, 3.104012, 4.746895>,  <2.929370, 3.097680, 4.610835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.731766, 3.104012, 4.746895>,  <2.402425, 3.114564, 4.973661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.731766, 3.104012, 4.746895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251971, -0.878076, 0.406809,
		-0.508527, -0.477794, -0.716319,
		0.823353, -0.026382, -0.566916,
		2.978772, 3.096097, 4.576820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.461557, 2.468416, 4.883476>,  <2.402425, 3.114564, 4.973661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.461557, 2.468416, 4.883476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.819214, 2.627934, 4.802017>,  <3.033808, 2.723644, 4.753142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.819214, 2.627934, 4.802017>,  <2.461557, 2.468416, 4.883476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.819214, 2.627934, 4.802017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443707, -0.850288, 0.283081,
		-0.060267, -0.343475, -0.937226,
		0.894143, 0.398793, -0.203647,
		3.087457, 2.747571, 4.740923>
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
