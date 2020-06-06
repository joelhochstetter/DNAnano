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
	<24.581535, 34.700645, 35.466095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.426004, 34.706551, 35.097618>,  <24.332685, 34.710094, 34.876534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.426004, 34.706551, 35.097618>,  <24.581535, 34.700645, 35.466095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.426004, 34.706551, 35.097618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825070, -0.439343, -0.355298,
		-0.409965, -0.898198, 0.158648,
		-0.388829, 0.014764, -0.921191,
		24.309355, 34.710979, 34.821262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.836721, 34.107075, 35.103352>,  <24.581535, 34.700645, 35.466095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.836721, 34.107075, 35.103352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.737747, 34.325851, 34.783443>,  <24.678362, 34.457115, 34.591499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.737747, 34.325851, 34.783443>,  <24.836721, 34.107075, 35.103352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.737747, 34.325851, 34.783443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734537, -0.432401, -0.522958,
		-0.631847, -0.716860, -0.294755,
		-0.247435, 0.546938, -0.799772,
		24.663517, 34.489933, 34.543510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.147425, 33.708801, 34.593929>,  <24.836721, 34.107075, 35.103352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.147425, 33.708801, 34.593929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.061764, 33.990097, 34.322754>,  <25.010366, 34.158875, 34.160049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.061764, 33.990097, 34.322754>,  <25.147425, 33.708801, 34.593929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.061764, 33.990097, 34.322754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487339, -0.524568, -0.698090,
		-0.846545, -0.479883, -0.230376,
		-0.214153, 0.703236, -0.677936,
		24.997519, 34.201069, 34.119373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.817093, 33.426289, 34.103504>,  <25.147425, 33.708801, 34.593929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.817093, 33.426289, 34.103504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.976454, 33.756626, 33.943878>,  <25.072071, 33.954830, 33.848103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.976454, 33.756626, 33.943878>,  <24.817093, 33.426289, 34.103504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.976454, 33.756626, 33.943878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353113, -0.539655, -0.764254,
		-0.846515, 0.163564, -0.506616,
		0.398402, 0.825845, -0.399069,
		25.095974, 34.004379, 33.824158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.101473, 33.605312, 33.428177>,  <24.817093, 33.426289, 34.103504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.101473, 33.605312, 33.428177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.216797, 33.265999, 33.250511>,  <25.285992, 33.062408, 33.143909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.216797, 33.265999, 33.250511>,  <25.101473, 33.605312, 33.428177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.216797, 33.265999, 33.250511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818358, 0.459134, -0.345669,
		0.497159, -0.263828, 0.826576,
		0.288312, -0.848287, -0.444168,
		25.303289, 33.011513, 33.117260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.836325, 33.502419, 33.494652>,  <25.101473, 33.605312, 33.428177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.836325, 33.502419, 33.494652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.726715, 33.285267, 33.177113>,  <25.660950, 33.154976, 32.986591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.726715, 33.285267, 33.177113>,  <25.836325, 33.502419, 33.494652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.726715, 33.285267, 33.177113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719945, 0.431488, -0.543596,
		0.637643, -0.720483, 0.272608,
		-0.274025, -0.542883, -0.793844,
		25.644508, 33.122402, 32.938961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.364208, 33.149670, 33.257053>,  <25.836325, 33.502419, 33.494652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.364208, 33.149670, 33.257053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.144823, 33.180912, 32.924046>,  <26.013191, 33.199657, 32.724239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.144823, 33.180912, 32.924046>,  <26.364208, 33.149670, 33.257053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.144823, 33.180912, 32.924046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797243, 0.349110, -0.492470,
		0.252175, -0.933821, -0.253745,
		-0.548463, 0.078108, -0.832519,
		25.980284, 33.204346, 32.674290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.536612, 32.706760, 32.640160>,  <26.364208, 33.149670, 33.257053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.536612, 32.706760, 32.640160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.370312, 33.052814, 32.527954>,  <26.270533, 33.260448, 32.460632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.370312, 33.052814, 32.527954>,  <26.536612, 32.706760, 32.640160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.370312, 33.052814, 32.527954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854431, 0.265869, -0.446388,
		-0.311608, -0.425263, -0.849736,
		-0.415750, 0.865139, -0.280511,
		26.245586, 33.312355, 32.443802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.738308, 32.866661, 31.963745>,  <26.536612, 32.706760, 32.640160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.738308, 32.866661, 31.963745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.623447, 33.231075, 32.082111>,  <26.554531, 33.449722, 32.153130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.623447, 33.231075, 32.082111>,  <26.738308, 32.866661, 31.963745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.623447, 33.231075, 32.082111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792356, 0.399502, -0.461053,
		-0.538253, 0.102079, -0.836579,
		-0.287151, 0.911031, 0.295916,
		26.537302, 33.504383, 32.170887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.708542, 33.309650, 31.367340>,  <26.738308, 32.866661, 31.963745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.708542, 33.309650, 31.367340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.745157, 33.573803, 31.665470>,  <26.767126, 33.732296, 31.844349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.745157, 33.573803, 31.665470>,  <26.708542, 33.309650, 31.367340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.745157, 33.573803, 31.665470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633458, 0.538890, -0.555274,
		-0.768344, 0.522963, -0.368996,
		0.091539, 0.660384, 0.745327,
		26.772619, 33.771919, 31.889069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.761030, 33.966759, 31.067352>,  <26.708542, 33.309650, 31.367340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.761030, 33.966759, 31.067352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.930325, 33.998142, 31.428398>,  <27.031900, 34.016972, 31.645025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.930325, 33.998142, 31.428398>,  <26.761030, 33.966759, 31.067352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.930325, 33.998142, 31.428398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679398, 0.631614, -0.373473,
		-0.599408, 0.771303, 0.214016,
		0.423236, 0.078460, 0.902616,
		27.057295, 34.021679, 31.699183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.126139, 34.603561, 30.970028>,  <26.761030, 33.966759, 31.067352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.126139, 34.603561, 30.970028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.252758, 34.441414, 31.313066>,  <27.328730, 34.344124, 31.518888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.252758, 34.441414, 31.313066>,  <27.126139, 34.603561, 30.970028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.252758, 34.441414, 31.313066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869416, 0.485554, -0.091398,
		-0.379358, 0.774539, 0.506139,
		0.316549, -0.405373, 0.857595,
		27.347723, 34.319801, 31.570345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.678295, 35.053787, 31.276077>,  <27.126139, 34.603561, 30.970028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.678295, 35.053787, 31.276077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727785, 34.699867, 31.455778>,  <27.757479, 34.487514, 31.563599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727785, 34.699867, 31.455778>,  <27.678295, 35.053787, 31.276077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.727785, 34.699867, 31.455778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965325, 0.212193, 0.152057,
		-0.229868, 0.414863, 0.880369,
		0.123726, -0.884795, 0.449254,
		27.764902, 34.434429, 31.590555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.222683, 34.579071, 31.145802>,  <27.678295, 35.053787, 31.276077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.222683, 34.579071, 31.145802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.181902, 34.772984, 31.493271>,  <28.157433, 34.889332, 31.701752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.181902, 34.772984, 31.493271>,  <28.222683, 34.579071, 31.145802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.181902, 34.772984, 31.493271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739291, -0.621205, 0.259910,
		0.665624, -0.615702, 0.421730,
		-0.101954, 0.484784, 0.868672,
		28.151316, 34.918419, 31.753872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.429502, 34.213207, 31.803221>,  <28.222683, 34.579071, 31.145802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.429502, 34.213207, 31.803221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.112713, 34.452770, 31.850691>,  <27.922638, 34.596508, 31.879173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.112713, 34.452770, 31.850691>,  <28.429502, 34.213207, 31.803221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.112713, 34.452770, 31.850691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552976, -0.786009, 0.276419,
		0.258831, 0.153291, 0.953681,
		-0.791975, 0.598908, 0.118677,
		27.875120, 34.632442, 31.886293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.112080, 34.085022, 32.462952>,  <28.429502, 34.213207, 31.803221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.112080, 34.085022, 32.462952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820623, 34.223072, 32.226318>,  <27.645750, 34.305901, 32.084339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820623, 34.223072, 32.226318>,  <28.112080, 34.085022, 32.462952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.820623, 34.223072, 32.226318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628716, -0.679649, 0.377880,
		-0.271654, 0.647277, 0.712205,
		-0.728643, 0.345122, -0.591583,
		27.602030, 34.326611, 32.048843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.522949, 34.194874, 32.885078>,  <28.112080, 34.085022, 32.462952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.522949, 34.194874, 32.885078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.380489, 34.156197, 32.513313>,  <27.295013, 34.132992, 32.290253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.380489, 34.156197, 32.513313>,  <27.522949, 34.194874, 32.885078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.380489, 34.156197, 32.513313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895230, -0.249757, 0.369032,
		-0.267810, 0.963469, 0.002390,
		-0.356147, -0.096691, -0.929414,
		27.273645, 34.127190, 32.234489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.776373, 34.455814, 32.966534>,  <27.522949, 34.194874, 32.885078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.776373, 34.455814, 32.966534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769293, 34.260201, 32.617699>,  <26.765045, 34.142834, 32.408398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769293, 34.260201, 32.617699>,  <26.776373, 34.455814, 32.966534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.769293, 34.260201, 32.617699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783133, -0.535478, 0.316175,
		-0.621603, 0.688554, -0.373501,
		-0.017702, -0.489036, -0.872084,
		26.763983, 34.113491, 32.356075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.087988, 34.611980, 32.681114>,  <26.776373, 34.455814, 32.966534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.087988, 34.611980, 32.681114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.215652, 34.264637, 32.529274>,  <26.292252, 34.056232, 32.438171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.215652, 34.264637, 32.529274>,  <26.087988, 34.611980, 32.681114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.215652, 34.264637, 32.529274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877421, -0.422125, 0.227910,
		-0.358143, 0.260324, -0.896641,
		0.319164, -0.868356, -0.379595,
		26.311401, 34.004131, 32.415394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.600441, 34.476257, 32.266937>,  <26.087988, 34.611980, 32.681114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.600441, 34.476257, 32.266937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.795439, 34.129433, 32.308014>,  <25.912437, 33.921337, 32.332661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.795439, 34.129433, 32.308014>,  <25.600441, 34.476257, 32.266937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.795439, 34.129433, 32.308014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872833, -0.480900, 0.083057,
		-0.022631, -0.130122, -0.991240,
		0.487495, -0.867066, 0.102692,
		25.941687, 33.869312, 32.338821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.300880, 34.023415, 31.756081>,  <25.600441, 34.476257, 32.266937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.300880, 34.023415, 31.756081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.469881, 33.843044, 32.070572>,  <25.571281, 33.734821, 32.259266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.469881, 33.843044, 32.070572>,  <25.300880, 34.023415, 31.756081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.469881, 33.843044, 32.070572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864316, -0.461592, 0.199727,
		0.272856, -0.763936, -0.584766,
		0.422502, -0.450926, 0.786230,
		25.596632, 33.707767, 32.306442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.179476, 33.215122, 31.663296>,  <25.300880, 34.023415, 31.756081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.179476, 33.215122, 31.663296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.435295, 33.168510, 31.967243>,  <25.588787, 33.140545, 32.149612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.435295, 33.168510, 31.967243>,  <25.179476, 33.215122, 31.663296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.435295, 33.168510, 31.967243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732110, -0.393849, 0.555786,
		0.234508, -0.911759, -0.337198,
		0.639547, -0.116529, 0.759869,
		25.627159, 33.133553, 32.195202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.048861, 32.574047, 31.865852>,  <25.179476, 33.215122, 31.663296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.048861, 32.574047, 31.865852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.220955, 32.776596, 32.164780>,  <25.324211, 32.898125, 32.344135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.220955, 32.776596, 32.164780>,  <25.048861, 32.574047, 31.865852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.220955, 32.776596, 32.164780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822367, -0.121572, 0.555818,
		0.372302, -0.853704, 0.364117,
		0.430237, 0.506370, 0.747319,
		25.350025, 32.928509, 32.388977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.942312, 32.140392, 32.533531>,  <25.048861, 32.574047, 31.865852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.942312, 32.140392, 32.533531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.013145, 32.529953, 32.590321>,  <25.055645, 32.763691, 32.624393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.013145, 32.529953, 32.590321>,  <24.942312, 32.140392, 32.533531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.013145, 32.529953, 32.590321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723423, 0.030999, 0.689709,
		0.667308, -0.224840, 0.710033,
		0.177085, 0.973902, 0.141969,
		25.066271, 32.822124, 32.632912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.190443, 32.294701, 33.177433>,  <24.942312, 32.140392, 32.533531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.190443, 32.294701, 33.177433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.014641, 32.631767, 33.053013>,  <24.909159, 32.834007, 32.978363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.014641, 32.631767, 33.053013>,  <25.190443, 32.294701, 33.177433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.014641, 32.631767, 33.053013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592570, -0.011759, 0.805433,
		0.675052, 0.538311, 0.504506,
		-0.439506, 0.842664, -0.311049,
		24.882790, 32.884567, 32.959698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.058767, 31.513268, 33.114590>,  <25.190443, 32.294701, 33.177433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.058767, 31.513268, 33.114590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.014462, 31.611950, 33.499687>,  <24.987879, 31.671160, 33.730743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.014462, 31.611950, 33.499687>,  <25.058767, 31.513268, 33.114590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.014462, 31.611950, 33.499687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921999, -0.336116, 0.192208,
		0.371011, 0.908934, -0.190233,
		-0.110764, 0.246706, 0.962739,
		24.981232, 31.685963, 33.788509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.710928, 31.753811, 33.258949>,  <25.058767, 31.513268, 33.114590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.710928, 31.753811, 33.258949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.556671, 31.657417, 33.615196>,  <25.464117, 31.599581, 33.828945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.556671, 31.657417, 33.615196>,  <25.710928, 31.753811, 33.258949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.556671, 31.657417, 33.615196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854642, -0.457028, 0.246400,
		0.347660, 0.856184, 0.382205,
		-0.385642, -0.240984, 0.890621,
		25.440979, 31.585121, 33.882381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.001534, 32.060764, 33.905838>,  <25.710928, 31.753811, 33.258949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.001534, 32.060764, 33.905838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.872562, 31.701990, 34.026863>,  <25.795179, 31.486725, 34.099476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.872562, 31.701990, 34.026863>,  <26.001534, 32.060764, 33.905838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.872562, 31.701990, 34.026863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938319, -0.345014, -0.022854,
		0.124886, 0.276528, 0.952857,
		-0.322429, -0.896938, 0.302559,
		25.775833, 31.432909, 34.117630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.348763, 31.935881, 34.476021>,  <26.001534, 32.060764, 33.905838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.348763, 31.935881, 34.476021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.222044, 31.597137, 34.305153>,  <26.146013, 31.393892, 34.202633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.222044, 31.597137, 34.305153>,  <26.348763, 31.935881, 34.476021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.222044, 31.597137, 34.305153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939635, -0.341617, -0.019605,
		-0.129325, -0.407595, 0.903959,
		-0.316798, -0.846856, -0.427170,
		26.127005, 31.343081, 34.177002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.578421, 31.292011, 34.882977>,  <26.348763, 31.935881, 34.476021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.578421, 31.292011, 34.882977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.560040, 31.264412, 34.484352>,  <26.549011, 31.247852, 34.245178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.560040, 31.264412, 34.484352>,  <26.578421, 31.292011, 34.882977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.560040, 31.264412, 34.484352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940367, -0.339580, -0.019849,
		-0.337042, -0.938043, 0.080487,
		-0.045951, -0.068998, -0.996558,
		26.546255, 31.243713, 34.185383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.727583, 30.630571, 34.681568>,  <26.578421, 31.292011, 34.882977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.727583, 30.630571, 34.681568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.836533, 30.871279, 34.381252>,  <26.901903, 31.015703, 34.201061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.836533, 30.871279, 34.381252>,  <26.727583, 30.630571, 34.681568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.836533, 30.871279, 34.381252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958130, -0.098009, 0.269038,
		0.088314, -0.792635, -0.603266,
		0.272375, 0.601767, -0.750792,
		26.918245, 31.051809, 34.156013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.014139, 30.275425, 34.095413>,  <26.727583, 30.630571, 34.681568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.014139, 30.275425, 34.095413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.151508, 30.646063, 34.156708>,  <27.233931, 30.868446, 34.193485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.151508, 30.646063, 34.156708>,  <27.014139, 30.275425, 34.095413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.151508, 30.646063, 34.156708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887000, -0.373625, 0.271360,
		0.308692, 0.042726, -0.950202,
		0.343425, 0.926595, 0.153233,
		27.254536, 30.924042, 34.202679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.686401, 30.206745, 33.866646>,  <27.014139, 30.275425, 34.095413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.686401, 30.206745, 33.866646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.674509, 30.537218, 34.091694>,  <27.667374, 30.735502, 34.226723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.674509, 30.537218, 34.091694>,  <27.686401, 30.206745, 33.866646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.674509, 30.537218, 34.091694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854015, -0.271487, 0.443793,
		0.519398, 0.493681, -0.697499,
		-0.029730, 0.826180, 0.562621,
		27.665590, 30.785072, 34.260479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.350105, 30.400766, 33.910679>,  <27.686401, 30.206745, 33.866646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.350105, 30.400766, 33.910679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.184750, 30.608257, 34.210022>,  <28.085537, 30.732752, 34.389626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.184750, 30.608257, 34.210022>,  <28.350105, 30.400766, 33.910679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.184750, 30.608257, 34.210022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835934, -0.109643, 0.537767,
		0.361005, 0.847881, -0.388296,
		-0.413388, 0.518726, 0.748354,
		28.060734, 30.763876, 34.434528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.858536, 30.757673, 34.282028>,  <28.350105, 30.400766, 33.910679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.858536, 30.757673, 34.282028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.573776, 30.712698, 34.559319>,  <28.402920, 30.685713, 34.725693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.573776, 30.712698, 34.559319>,  <28.858536, 30.757673, 34.282028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.573776, 30.712698, 34.559319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684548, -0.331525, 0.649219,
		0.156825, 0.936723, 0.312980,
		-0.711899, -0.112436, 0.693223,
		28.360207, 30.678967, 34.767284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.231827, 30.586386, 34.811619>,  <28.858536, 30.757673, 34.282028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.231827, 30.586386, 34.811619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.876104, 30.562588, 34.992989>,  <28.662670, 30.548309, 35.101810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.876104, 30.562588, 34.992989>,  <29.231827, 30.586386, 34.811619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.876104, 30.562588, 34.992989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422584, -0.485906, 0.765061,
		0.174807, 0.871984, 0.457260,
		-0.889306, -0.059493, 0.453426,
		28.609312, 30.544741, 35.129017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.661596, 30.109575, 34.886017>,  <29.231827, 30.586386, 34.811619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.661596, 30.109575, 34.886017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706926, 30.502592, 34.945038>,  <28.734123, 30.738401, 34.980450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706926, 30.502592, 34.945038>,  <28.661596, 30.109575, 34.886017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.706926, 30.502592, 34.945038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876279, 0.028843, 0.480940,
		0.468288, -0.183799, 0.864248,
		0.113324, 0.982540, 0.147553,
		28.740923, 30.797354, 34.989304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.084160, 30.153753, 35.268501>,  <28.661596, 30.109575, 34.886017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.084160, 30.153753, 35.268501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.252419, 30.514795, 35.305073>,  <28.353373, 30.731421, 35.327015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.252419, 30.514795, 35.305073>,  <28.084160, 30.153753, 35.268501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.252419, 30.514795, 35.305073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670382, 0.377151, -0.639019,
		-0.611266, 0.207507, 0.763737,
		0.420645, 0.902606, 0.091430,
		28.378613, 30.785578, 35.332500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.603109, 30.642660, 35.477394>,  <28.084160, 30.153753, 35.268501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.603109, 30.642660, 35.477394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880661, 30.824705, 35.254181>,  <28.047192, 30.933931, 35.120255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880661, 30.824705, 35.254181>,  <27.603109, 30.642660, 35.477394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.880661, 30.824705, 35.254181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719753, 0.414658, -0.556789,
		-0.022008, 0.787992, 0.615292,
		0.693881, 0.455112, -0.558034,
		28.088825, 30.961239, 35.086769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.532578, 31.385120, 35.441002>,  <27.603109, 30.642660, 35.477394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.532578, 31.385120, 35.441002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.701590, 31.206854, 35.125320>,  <27.802998, 31.099894, 34.935909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.701590, 31.206854, 35.125320>,  <27.532578, 31.385120, 35.441002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.701590, 31.206854, 35.125320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678858, 0.421314, -0.601370,
		0.600515, 0.789857, -0.124525,
		0.422532, -0.445667, -0.789207,
		27.828350, 31.073154, 34.888557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.695585, 31.881069, 34.984032>,  <27.532578, 31.385120, 35.441002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.695585, 31.881069, 34.984032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.690359, 31.550154, 34.759384>,  <27.687223, 31.351604, 34.624596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.690359, 31.550154, 34.759384>,  <27.695585, 31.881069, 34.984032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.690359, 31.550154, 34.759384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542821, 0.477571, -0.690848,
		0.839746, 0.295833, -0.455311,
		-0.013068, -0.827290, -0.561623,
		27.686440, 31.301968, 34.590897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.875805, 32.080891, 34.301144>,  <27.695585, 31.881069, 34.984032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.875805, 32.080891, 34.301144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.667210, 31.739849, 34.287800>,  <27.542051, 31.535223, 34.279793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.667210, 31.739849, 34.287800>,  <27.875805, 32.080891, 34.301144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.667210, 31.739849, 34.287800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635756, 0.414338, -0.651259,
		0.569090, -0.318416, -0.758122,
		-0.521489, -0.852605, -0.033361,
		27.510763, 31.484068, 34.277790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.479910, 31.967875, 33.853287>,  <27.875805, 32.080891, 34.301144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.479910, 31.967875, 33.853287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.334867, 32.283298, 34.051960>,  <28.247843, 32.472553, 34.171165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.334867, 32.283298, 34.051960>,  <28.479910, 31.967875, 33.853287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.334867, 32.283298, 34.051960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168044, -0.468893, 0.867122,
		0.916667, 0.397887, 0.037510,
		-0.362605, 0.788559, 0.496682,
		28.226086, 32.519867, 34.200966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.856377, 32.015930, 34.478210>,  <28.479910, 31.967875, 33.853287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.856377, 32.015930, 34.478210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.510618, 32.199089, 34.561298>,  <28.303164, 32.308983, 34.611153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.510618, 32.199089, 34.561298>,  <28.856377, 32.015930, 34.478210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.510618, 32.199089, 34.561298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045524, -0.482696, 0.874604,
		0.500745, 0.746548, 0.438087,
		-0.864397, 0.457897, 0.207721,
		28.251299, 32.336456, 34.623615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.381092, 32.300575, 34.954163>,  <28.856377, 32.015930, 34.478210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.381092, 32.300575, 34.954163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.538706, 32.666595, 34.919720>,  <29.633274, 32.886208, 34.899055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.538706, 32.666595, 34.919720>,  <29.381092, 32.300575, 34.954163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.538706, 32.666595, 34.919720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344407, -0.060148, 0.936892,
		0.852128, -0.398821, -0.338851,
		0.394033, 0.915054, -0.086103,
		29.656916, 32.941113, 34.893890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.693150, 31.707821, 35.187420>,  <29.381092, 32.300575, 34.954163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.693150, 31.707821, 35.187420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612251, 31.844286, 34.820225>,  <29.563713, 31.926165, 34.599907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612251, 31.844286, 34.820225>,  <29.693150, 31.707821, 35.187420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.612251, 31.844286, 34.820225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118235, -0.939011, -0.322924,
		-0.972171, 0.043228, 0.230248,
		-0.202246, 0.341160, -0.917990,
		29.551577, 31.946634, 34.544827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.340771, 32.081432, 35.081314>,  <29.693150, 31.707821, 35.187420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.340771, 32.081432, 35.081314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.433661, 31.878304, 35.413143>,  <30.489395, 31.756426, 35.612240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.433661, 31.878304, 35.413143>,  <30.340771, 32.081432, 35.081314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.433661, 31.878304, 35.413143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728414, 0.656004, 0.197668,
		-0.644581, 0.558367, 0.522246,
		0.232224, -0.507825, 0.829570,
		30.503328, 31.725956, 35.662014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.362429, 32.434757, 35.739899>,  <30.340771, 32.081432, 35.081314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.362429, 32.434757, 35.739899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.636488, 32.143711, 35.753460>,  <30.800924, 31.969084, 35.761597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.636488, 32.143711, 35.753460>,  <30.362429, 32.434757, 35.739899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.636488, 32.143711, 35.753460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708738, 0.676674, 0.199508,
		-0.168108, -0.112662, 0.979309,
		0.685150, -0.727612, 0.033907,
		30.842033, 31.925426, 35.763634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.621637, 32.290070, 36.484604>,  <30.362429, 32.434757, 35.739899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.621637, 32.290070, 36.484604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.877081, 32.220894, 36.184666>,  <31.030348, 32.179386, 36.004704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.877081, 32.220894, 36.184666>,  <30.621637, 32.290070, 36.484604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.877081, 32.220894, 36.184666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612715, 0.703807, 0.359495,
		0.465574, -0.689019, 0.555422,
		0.638609, -0.172944, -0.749846,
		31.068663, 32.169010, 35.959713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411137, 32.162651, 36.688969>,  <30.621637, 32.290070, 36.484604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411137, 32.162651, 36.688969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394756, 32.350597, 36.336254>,  <31.384928, 32.463367, 36.124626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394756, 32.350597, 36.336254>,  <31.411137, 32.162651, 36.688969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.394756, 32.350597, 36.336254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608507, 0.711710, 0.350983,
		0.792491, -0.522200, -0.315062,
		-0.040949, 0.469868, -0.881786,
		31.382471, 32.491558, 36.071720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778885, 31.922695, 37.127586>,  <31.411137, 32.162651, 36.688969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778885, 31.922695, 37.127586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.938715, 32.287716, 37.162437>,  <31.034613, 32.506729, 37.183350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.938715, 32.287716, 37.162437>,  <30.778885, 31.922695, 37.127586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.938715, 32.287716, 37.162437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103681, -0.139428, 0.984789,
		0.910818, -0.384463, -0.150326,
		0.399574, 0.912550, 0.087132,
		31.058588, 32.561481, 37.188576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.596321, 31.307444, 37.582382>,  <30.778885, 31.922695, 37.127586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.596321, 31.307444, 37.582382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381433, 30.989050, 37.693954>,  <30.252501, 30.798014, 37.760899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381433, 30.989050, 37.693954>,  <30.596321, 31.307444, 37.582382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.381433, 30.989050, 37.693954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815715, -0.406226, 0.411813,
		-0.214488, 0.448763, 0.867529,
		-0.537219, -0.795985, 0.278932,
		30.220268, 30.750254, 37.777634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.668402, 31.072615, 38.242790>,  <30.596321, 31.307444, 37.582382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.668402, 31.072615, 38.242790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.532087, 30.731379, 38.084751>,  <30.450298, 30.526636, 37.989929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.532087, 30.731379, 38.084751>,  <30.668402, 31.072615, 38.242790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.532087, 30.731379, 38.084751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800052, -0.483859, 0.354678,
		-0.493744, -0.195228, 0.847410,
		-0.340784, -0.853092, -0.395095,
		30.429852, 30.475451, 37.966221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.658558, 30.511667, 38.744999>,  <30.668402, 31.072615, 38.242790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.658558, 30.511667, 38.744999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.727859, 30.363205, 38.380093>,  <30.769442, 30.274128, 38.161148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.727859, 30.363205, 38.380093>,  <30.658558, 30.511667, 38.744999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727859, 30.363205, 38.380093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817951, -0.461711, 0.343191,
		-0.548579, -0.805647, 0.223593,
		0.173255, -0.371155, -0.912265,
		30.779837, 30.251858, 38.106415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615709, 29.759699, 38.719219>,  <30.658558, 30.511667, 38.744999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.615709, 29.759699, 38.719219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.867886, 29.896887, 38.440674>,  <31.019192, 29.979200, 38.273548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.867886, 29.896887, 38.440674>,  <30.615709, 29.759699, 38.719219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.867886, 29.896887, 38.440674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746303, -0.514542, 0.422231,
		-0.213495, -0.785887, -0.580347,
		0.630439, 0.342970, -0.696361,
		31.057016, 29.999779, 38.231766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.054066, 29.201855, 38.599873>,  <30.615709, 29.759699, 38.719219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.054066, 29.201855, 38.599873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.225168, 29.528709, 38.445309>,  <31.327829, 29.724823, 38.352570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.225168, 29.528709, 38.445309>,  <31.054066, 29.201855, 38.599873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225168, 29.528709, 38.445309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898321, -0.336918, 0.281966,
		0.100217, -0.467732, -0.878170,
		0.427756, 0.817137, -0.386409,
		31.353495, 29.773851, 38.329388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.822502, 28.539284, 38.133877>,  <31.054066, 29.201855, 38.599873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.822502, 28.539284, 38.133877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.632450, 28.557804, 37.782398>,  <30.518419, 28.568916, 37.571510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.632450, 28.557804, 37.782398>,  <30.822502, 28.539284, 38.133877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.632450, 28.557804, 37.782398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209940, 0.975740, -0.062104,
		0.854505, -0.213981, -0.473322,
		-0.475128, 0.046301, -0.878698,
		30.489912, 28.571695, 37.518787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.225576, 28.819063, 37.481499>,  <30.822502, 28.539284, 38.133877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.225576, 28.819063, 37.481499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.861017, 28.857733, 37.321495>,  <30.642282, 28.880934, 37.225491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.861017, 28.857733, 37.321495>,  <31.225576, 28.819063, 37.481499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.861017, 28.857733, 37.321495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377064, 0.585564, -0.717592,
		0.164860, -0.804841, -0.570133,
		-0.911397, 0.096674, -0.400013,
		30.587599, 28.886736, 37.201492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.030828, 28.448574, 36.821083>,  <31.225576, 28.819063, 37.481499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.030828, 28.448574, 36.821083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.857363, 28.803764, 36.882317>,  <30.753283, 29.016878, 36.919056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.857363, 28.803764, 36.882317>,  <31.030828, 28.448574, 36.821083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.857363, 28.803764, 36.882317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574844, 0.403464, -0.711879,
		-0.693894, -0.220718, -0.685416,
		-0.433665, 0.887975, 0.153083,
		30.727262, 29.070156, 36.928242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.561861, 28.771603, 36.268486>,  <31.030828, 28.448574, 36.821083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.561861, 28.771603, 36.268486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.730415, 29.079052, 36.461006>,  <30.831547, 29.263521, 36.576519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.730415, 29.079052, 36.461006>,  <30.561861, 28.771603, 36.268486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.730415, 29.079052, 36.461006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416614, 0.307336, -0.855557,
		-0.805524, 0.561035, -0.190713,
		0.421384, 0.768625, 0.481301,
		30.856831, 29.309639, 36.605396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.345722, 29.417774, 35.985729>,  <30.561861, 28.771603, 36.268486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.345722, 29.417774, 35.985729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.717892, 29.421944, 36.132263>,  <30.941195, 29.424444, 36.220184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.717892, 29.421944, 36.132263>,  <30.345722, 29.417774, 35.985729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.717892, 29.421944, 36.132263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365262, 0.055118, -0.929271,
		-0.029877, 0.998425, 0.047476,
		0.930425, 0.010422, 0.366334,
		30.997019, 29.425070, 36.242165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.792700, 29.592188, 35.482533>,  <30.345722, 29.417774, 35.985729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.792700, 29.592188, 35.482533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.098036, 29.564613, 35.739456>,  <31.281237, 29.548069, 35.893612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.098036, 29.564613, 35.739456>,  <30.792700, 29.592188, 35.482533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098036, 29.564613, 35.739456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592349, 0.471413, -0.653370,
		-0.257753, 0.879214, 0.400682,
		0.763339, -0.068936, 0.642309,
		31.327038, 29.543932, 35.932148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138294, 30.283232, 35.465797>,  <30.792700, 29.592188, 35.482533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.138294, 30.283232, 35.465797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394632, 30.007706, 35.601357>,  <31.548435, 29.842390, 35.682690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394632, 30.007706, 35.601357>,  <31.138294, 30.283232, 35.465797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.394632, 30.007706, 35.601357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752984, 0.478085, -0.452160,
		0.149434, 0.544949, 0.825046,
		0.640846, -0.688815, 0.338896,
		31.586885, 29.801062, 35.703026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.703564, 30.653326, 35.550823>,  <31.138294, 30.283232, 35.465797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.703564, 30.653326, 35.550823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.860865, 30.285574, 35.547039>,  <31.955246, 30.064922, 35.544769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.860865, 30.285574, 35.547039>,  <31.703564, 30.653326, 35.550823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860865, 30.285574, 35.547039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721666, 0.315028, -0.616405,
		0.569693, 0.235574, 0.787372,
		0.393253, -0.919382, -0.009463,
		31.978840, 30.009760, 35.544201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482296, 30.609018, 35.819614>,  <31.703564, 30.653326, 35.550823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482296, 30.609018, 35.819614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290081, 30.391756, 35.544205>,  <32.174751, 30.261398, 35.378960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290081, 30.391756, 35.544205>,  <32.482296, 30.609018, 35.819614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290081, 30.391756, 35.544205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567918, 0.405509, -0.716263,
		0.668245, -0.735216, 0.113605,
		-0.480540, -0.543157, -0.688521,
		32.145920, 30.228809, 35.337646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029003, 30.317137, 35.415642>,  <32.482296, 30.609018, 35.819614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029003, 30.317137, 35.415642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689495, 30.347689, 35.206356>,  <32.485790, 30.366020, 35.080788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689495, 30.347689, 35.206356>,  <33.029003, 30.317137, 35.415642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689495, 30.347689, 35.206356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526899, 0.205027, -0.824828,
		0.044269, -0.975771, -0.214268,
		-0.848774, 0.076383, -0.523209,
		32.434864, 30.370604, 35.049393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125801, 29.911966, 34.793945>,  <33.029003, 30.317137, 35.415642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125801, 29.911966, 34.793945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872849, 30.218992, 34.752121>,  <32.721077, 30.403208, 34.727024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872849, 30.218992, 34.752121>,  <33.125801, 29.911966, 34.793945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872849, 30.218992, 34.752121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416773, 0.223334, -0.881148,
		-0.652987, -0.600802, -0.461134,
		-0.632382, 0.767567, -0.104564,
		32.683132, 30.449263, 34.720753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542343, 29.945391, 34.184086>,  <33.125801, 29.911966, 34.793945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542343, 29.945391, 34.184086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725731, 30.284706, 34.290073>,  <32.835762, 30.488297, 34.353668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725731, 30.284706, 34.290073>,  <32.542343, 29.945391, 34.184086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725731, 30.284706, 34.290073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236671, 0.170847, -0.956451,
		-0.856618, 0.501214, -0.122437,
		0.458468, 0.848290, 0.264974,
		32.863270, 30.539192, 34.369564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255138, 30.516253, 33.805237>,  <32.542343, 29.945391, 34.184086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255138, 30.516253, 33.805237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629761, 30.590551, 33.924133>,  <32.854534, 30.635132, 33.995472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629761, 30.590551, 33.924133>,  <32.255138, 30.516253, 33.805237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629761, 30.590551, 33.924133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266458, 0.173640, -0.948077,
		-0.227717, 0.967133, 0.113130,
		0.936560, 0.185748, 0.297241,
		32.910728, 30.646276, 34.013306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468243, 31.087229, 33.358616>,  <32.255138, 30.516253, 33.805237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468243, 31.087229, 33.358616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799225, 30.922880, 33.511715>,  <32.997814, 30.824270, 33.603577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799225, 30.922880, 33.511715>,  <32.468243, 31.087229, 33.358616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799225, 30.922880, 33.511715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424912, 0.012536, -0.905148,
		0.367102, 0.911607, 0.184957,
		0.827458, -0.410872, 0.382750,
		33.047462, 30.799618, 33.626541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915802, 31.498671, 33.054531>,  <32.468243, 31.087229, 33.358616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915802, 31.498671, 33.054531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103813, 31.155249, 33.136459>,  <33.216621, 30.949196, 33.185616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103813, 31.155249, 33.136459>,  <32.915802, 31.498671, 33.054531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103813, 31.155249, 33.136459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339612, -0.038273, -0.939787,
		0.814699, 0.511288, 0.273586,
		0.470031, -0.858557, 0.204821,
		33.244823, 30.897682, 33.197906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471981, 31.641445, 32.804676>,  <32.915802, 31.498671, 33.054531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471981, 31.641445, 32.804676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460232, 31.241627, 32.802021>,  <33.453182, 31.001736, 32.800426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460232, 31.241627, 32.802021>,  <33.471981, 31.641445, 32.804676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460232, 31.241627, 32.802021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212053, 0.000261, -0.977258,
		0.976817, -0.030112, 0.211949,
		-0.029372, -0.999547, -0.006641,
		33.451420, 30.941763, 32.800030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156487, 31.407343, 32.534550>,  <33.471981, 31.641445, 32.804676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156487, 31.407343, 32.534550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905476, 31.098501, 32.494419>,  <33.754868, 30.913197, 32.470341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905476, 31.098501, 32.494419>,  <34.156487, 31.407343, 32.534550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905476, 31.098501, 32.494419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287075, -0.109667, -0.951610,
		0.723739, -0.625963, 0.290470,
		-0.627527, -0.772103, -0.100328,
		33.717216, 30.866871, 32.464321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552406, 30.956446, 32.288639>,  <34.156487, 31.407343, 32.534550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552406, 30.956446, 32.288639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185574, 30.830120, 32.191299>,  <33.965473, 30.754324, 32.132896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185574, 30.830120, 32.191299>,  <34.552406, 30.956446, 32.288639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185574, 30.830120, 32.191299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322302, -0.227946, -0.918783,
		0.234693, -0.921033, 0.310833,
		-0.917083, -0.315814, -0.243354,
		33.910450, 30.735376, 32.118294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600830, 30.275213, 32.181908>,  <34.552406, 30.956446, 32.288639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600830, 30.275213, 32.181908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274540, 30.394909, 31.983900>,  <34.078766, 30.466726, 31.865095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274540, 30.394909, 31.983900>,  <34.600830, 30.275213, 32.181908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274540, 30.394909, 31.983900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432500, -0.252741, -0.865486,
		-0.384099, -0.920097, 0.076747,
		-0.815728, 0.299239, -0.495019,
		34.029823, 30.484680, 31.835394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571514, 29.788710, 31.670336>,  <34.600830, 30.275213, 32.181908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571514, 29.788710, 31.670336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312550, 30.064732, 31.540918>,  <34.157169, 30.230345, 31.463268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312550, 30.064732, 31.540918>,  <34.571514, 29.788710, 31.670336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312550, 30.064732, 31.540918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407671, -0.045131, -0.912013,
		-0.643943, -0.722346, -0.252098,
		-0.647412, 0.690057, -0.323542,
		34.118324, 30.271749, 31.443855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447464, 29.638517, 30.944845>,  <34.571514, 29.788710, 31.670336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447464, 29.638517, 30.944845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342987, 30.024542, 30.953207>,  <34.280300, 30.256157, 30.958225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342987, 30.024542, 30.953207>,  <34.447464, 29.638517, 30.944845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342987, 30.024542, 30.953207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414395, 0.131666, -0.900523,
		-0.871810, -0.226550, -0.434307,
		-0.261197, 0.965059, 0.020906,
		34.264629, 30.314060, 30.959478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027729, 29.747217, 30.345940>,  <34.447464, 29.638517, 30.944845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027729, 29.747217, 30.345940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175793, 30.100142, 30.462225>,  <34.264629, 30.311895, 30.531996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175793, 30.100142, 30.462225>,  <34.027729, 29.747217, 30.345940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175793, 30.100142, 30.462225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371766, 0.146094, -0.916759,
		-0.851336, 0.447422, -0.273934,
		0.370158, 0.882310, 0.290711,
		34.286839, 30.364834, 30.549438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785889, 30.342913, 29.850302>,  <34.027729, 29.747217, 30.345940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785889, 30.342913, 29.850302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111992, 30.463438, 30.048119>,  <34.307652, 30.535753, 30.166809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111992, 30.463438, 30.048119>,  <33.785889, 30.342913, 29.850302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111992, 30.463438, 30.048119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458632, 0.185462, -0.869057,
		-0.353575, 0.935316, 0.013008,
		0.815255, 0.301311, 0.494541,
		34.356567, 30.553831, 30.196482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040615, 30.772892, 29.363686>,  <33.785889, 30.342913, 29.850302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040615, 30.772892, 29.363686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351105, 30.762526, 29.615656>,  <34.537399, 30.756306, 29.766838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351105, 30.762526, 29.615656>,  <34.040615, 30.772892, 29.363686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351105, 30.762526, 29.615656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623212, 0.182602, -0.760436,
		-0.095320, 0.982845, 0.157890,
		0.776222, -0.025915, 0.629927,
		34.583973, 30.754751, 29.804634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458454, 31.268959, 29.103333>,  <34.040615, 30.772892, 29.363686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458454, 31.268959, 29.103333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701584, 31.032476, 29.315380>,  <34.847462, 30.890587, 29.442610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701584, 31.032476, 29.315380>,  <34.458454, 31.268959, 29.103333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701584, 31.032476, 29.315380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749687, 0.207173, -0.628529,
		0.261763, 0.779459, 0.569143,
		0.607824, -0.591205, 0.530120,
		34.883930, 30.855116, 29.474417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108963, 31.625755, 29.072636>,  <34.458454, 31.268959, 29.103333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108963, 31.625755, 29.072636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212463, 31.248220, 29.154823>,  <35.274563, 31.021700, 29.204136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212463, 31.248220, 29.154823>,  <35.108963, 31.625755, 29.072636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212463, 31.248220, 29.154823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743445, 0.058786, -0.666209,
		0.616714, 0.325139, 0.716902,
		0.258754, -0.943837, 0.205469,
		35.290089, 30.965069, 29.216463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878567, 31.576506, 28.992474>,  <35.108963, 31.625755, 29.072636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878567, 31.576506, 28.992474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765938, 31.192730, 28.997997>,  <35.698360, 30.962463, 29.001312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765938, 31.192730, 28.997997>,  <35.878567, 31.576506, 28.992474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765938, 31.192730, 28.997997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599860, -0.187241, -0.777887,
		0.748922, -0.210748, 0.628252,
		-0.281573, -0.959440, 0.013810,
		35.681465, 30.904898, 29.002140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521992, 31.222298, 29.102648>,  <35.878567, 31.576506, 28.992474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521992, 31.222298, 29.102648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257923, 30.989927, 28.912197>,  <36.099483, 30.850504, 28.797926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257923, 30.989927, 28.912197>,  <36.521992, 31.222298, 29.102648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257923, 30.989927, 28.912197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625900, -0.075040, -0.776284,
		0.415237, -0.810489, 0.413142,
		-0.660172, -0.580928, -0.476126,
		36.059872, 30.815649, 28.769360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996849, 30.648563, 28.825592>,  <36.521992, 31.222298, 29.102648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996849, 30.648563, 28.825592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652229, 30.664955, 28.623184>,  <36.445457, 30.674789, 28.501740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652229, 30.664955, 28.623184>,  <36.996849, 30.648563, 28.825592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652229, 30.664955, 28.623184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503206, -0.063044, -0.861864,
		-0.067218, -0.997169, 0.033696,
		-0.861548, 0.040976, -0.506019,
		36.393764, 30.677248, 28.471378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872021, 30.004377, 28.492113>,  <36.996849, 30.648563, 28.825592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872021, 30.004377, 28.492113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667374, 30.276051, 28.281607>,  <36.544586, 30.439054, 28.155302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667374, 30.276051, 28.281607>,  <36.872021, 30.004377, 28.492113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667374, 30.276051, 28.281607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551534, -0.210054, -0.807272,
		-0.658831, -0.703268, -0.267126,
		-0.511617, 0.679185, -0.526266,
		36.513889, 30.479805, 28.123726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841671, 29.684948, 27.814028>,  <36.872021, 30.004377, 28.492113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841671, 29.684948, 27.814028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731480, 30.061703, 27.737129>,  <36.665363, 30.287756, 27.690990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731480, 30.061703, 27.737129>,  <36.841671, 29.684948, 27.814028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731480, 30.061703, 27.737129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297748, -0.106549, -0.948680,
		-0.914033, -0.318585, -0.251093,
		-0.275481, 0.941887, -0.192248,
		36.648834, 30.344269, 27.679455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319633, 29.704994, 27.257006>,  <36.841671, 29.684948, 27.814028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319633, 29.704994, 27.257006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512302, 30.055361, 27.246012>,  <36.627903, 30.265581, 27.239416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512302, 30.055361, 27.246012>,  <36.319633, 29.704994, 27.257006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512302, 30.055361, 27.246012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227708, -0.155379, -0.961252,
		-0.846249, 0.456754, -0.274296,
		0.481676, 0.875919, -0.027483,
		36.656807, 30.318136, 27.237766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368053, 29.860128, 26.565123>,  <36.319633, 29.704994, 27.257006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368053, 29.860128, 26.565123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639645, 30.122362, 26.697308>,  <36.802597, 30.279701, 26.776619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639645, 30.122362, 26.697308>,  <36.368053, 29.860128, 26.565123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639645, 30.122362, 26.697308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398528, 0.048910, -0.915851,
		-0.616579, 0.753538, -0.228059,
		0.678974, 0.655582, 0.330463,
		36.843338, 30.319036, 26.796446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388691, 30.397472, 26.084309>,  <36.368053, 29.860128, 26.565123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388691, 30.397472, 26.084309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737606, 30.391903, 26.279829>,  <36.946953, 30.388561, 26.397141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737606, 30.391903, 26.279829>,  <36.388691, 30.397472, 26.084309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737606, 30.391903, 26.279829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482728, -0.135056, -0.865294,
		0.078064, 0.990740, -0.111086,
		0.872284, -0.013924, 0.488801,
		36.999290, 30.387726, 26.426470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800304, 30.855753, 25.801569>,  <36.388691, 30.397472, 26.084309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800304, 30.855753, 25.801569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.056198, 30.602949, 25.976522>,  <37.209736, 30.451267, 26.081493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.056198, 30.602949, 25.976522>,  <36.800304, 30.855753, 25.801569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056198, 30.602949, 25.976522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567031, 0.003931, -0.823687,
		0.518857, 0.774952, 0.360883,
		0.639737, -0.632008, 0.437383,
		37.248119, 30.413347, 26.107737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380512, 31.083496, 25.446602>,  <36.800304, 30.855753, 25.801569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380512, 31.083496, 25.446602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513039, 30.753613, 25.629944>,  <37.592552, 30.555683, 25.739948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513039, 30.753613, 25.629944>,  <37.380512, 31.083496, 25.446602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513039, 30.753613, 25.629944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603181, -0.188425, -0.775028,
		0.725537, 0.533248, 0.435020,
		0.331314, -0.824708, 0.458354,
		37.612434, 30.506201, 25.767450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151989, 31.157156, 25.518248>,  <37.380512, 31.083496, 25.446602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151989, 31.157156, 25.518248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059246, 30.770796, 25.564344>,  <38.003601, 30.538980, 25.592003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059246, 30.770796, 25.564344>,  <38.151989, 31.157156, 25.518248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059246, 30.770796, 25.564344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653715, -0.242445, -0.716852,
		0.720347, -0.090871, 0.687636,
		-0.231855, -0.965900, 0.115241,
		37.989689, 30.481026, 25.598917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836708, 30.747240, 25.572054>,  <38.151989, 31.157156, 25.518248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836708, 30.747240, 25.572054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551491, 30.495722, 25.448004>,  <38.380360, 30.344810, 25.373573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551491, 30.495722, 25.448004>,  <38.836708, 30.747240, 25.572054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551491, 30.495722, 25.448004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562275, -0.248624, -0.788690,
		0.418822, -0.736749, 0.530838,
		-0.713047, -0.628798, -0.310127,
		38.337578, 30.307083, 25.354965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117565, 30.065254, 25.365553>,  <38.836708, 30.747240, 25.572054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117565, 30.065254, 25.365553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.782997, 30.088957, 25.147602>,  <38.582256, 30.103178, 25.016832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.782997, 30.088957, 25.147602>,  <39.117565, 30.065254, 25.365553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782997, 30.088957, 25.147602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516830, -0.245661, -0.820084,
		-0.182451, -0.967543, 0.174850,
		-0.836420, 0.059257, -0.544876,
		38.532070, 30.106733, 24.984138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139927, 29.525171, 24.880590>,  <39.117565, 30.065254, 25.365553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139927, 29.525171, 24.880590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826866, 29.730639, 24.739962>,  <38.639030, 29.853920, 24.655584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826866, 29.730639, 24.739962>,  <39.139927, 29.525171, 24.880590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826866, 29.730639, 24.739962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234882, -0.279341, -0.931021,
		-0.576445, -0.811241, 0.097974,
		-0.782651, 0.513669, -0.351571,
		38.592072, 29.884739, 24.634491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896469, 29.011036, 24.434376>,  <39.139927, 29.525171, 24.880590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896469, 29.011036, 24.434376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.739323, 29.360897, 24.320786>,  <38.645035, 29.570814, 24.252632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.739323, 29.360897, 24.320786>,  <38.896469, 29.011036, 24.434376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739323, 29.360897, 24.320786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115173, -0.259573, -0.958831,
		-0.912355, -0.409397, 0.001240,
		-0.392865, 0.874652, -0.283974,
		38.621464, 29.623293, 24.235594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317902, 28.855658, 23.831642>,  <38.896469, 29.011036, 24.434376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317902, 28.855658, 23.831642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490223, 29.216633, 23.830208>,  <38.593616, 29.433218, 23.829348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490223, 29.216633, 23.830208>,  <38.317902, 28.855658, 23.831642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490223, 29.216633, 23.830208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386820, -0.188246, -0.902737,
		-0.815337, 0.387520, -0.430178,
		0.430808, 0.902436, -0.003584,
		38.619465, 29.487364, 23.829132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129272, 29.144547, 23.136726>,  <38.317902, 28.855658, 23.831642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129272, 29.144547, 23.136726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451626, 29.338730, 23.272301>,  <38.645039, 29.455240, 23.353645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451626, 29.338730, 23.272301>,  <38.129272, 29.144547, 23.136726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451626, 29.338730, 23.272301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372323, 0.029575, -0.927632,
		-0.460350, 0.873760, -0.156913,
		0.805887, 0.485457, 0.338936,
		38.693394, 29.484367, 23.373981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270996, 29.601257, 22.592926>,  <38.129272, 29.144547, 23.136726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270996, 29.601257, 22.592926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.613525, 29.627121, 22.797876>,  <38.819042, 29.642639, 22.920847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.613525, 29.627121, 22.797876>,  <38.270996, 29.601257, 22.592926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613525, 29.627121, 22.797876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514925, -0.030972, -0.856675,
		-0.039520, 0.997427, -0.059816,
		0.856323, 0.064657, 0.512377,
		38.870422, 29.646519, 22.951590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721256, 30.174309, 22.286375>,  <38.270996, 29.601257, 22.592926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721256, 30.174309, 22.286375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935223, 29.896009, 22.478125>,  <39.063602, 29.729029, 22.593174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935223, 29.896009, 22.478125>,  <38.721256, 30.174309, 22.286375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935223, 29.896009, 22.478125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624496, -0.056587, -0.778975,
		0.569099, 0.716051, 0.404225,
		0.534912, -0.695750, 0.479375,
		39.095695, 29.687284, 22.621937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338539, 30.387280, 22.060940>,  <38.721256, 30.174309, 22.286375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.338539, 30.387280, 22.060940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.429321, 30.028898, 22.213652>,  <39.483791, 29.813869, 22.305279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.429321, 30.028898, 22.213652>,  <39.338539, 30.387280, 22.060940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429321, 30.028898, 22.213652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802624, -0.049965, -0.594389,
		0.551621, 0.441326, 0.707775,
		0.226956, -0.895955, 0.381781,
		39.497410, 29.760113, 22.328186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040592, 30.472780, 22.300266>,  <39.338539, 30.387280, 22.060940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040592, 30.472780, 22.300266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.983040, 30.082481, 22.234280>,  <39.948509, 29.848301, 22.194687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.983040, 30.082481, 22.234280>,  <40.040592, 30.472780, 22.300266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983040, 30.082481, 22.234280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926404, -0.074192, -0.369149,
		0.347957, -0.205938, 0.914612,
		-0.143879, -0.975748, -0.164966,
		39.939877, 29.789757, 22.184790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731884, 30.184986, 22.475838>,  <40.040592, 30.472780, 22.300266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.731884, 30.184986, 22.475838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535305, 29.903767, 22.270235>,  <40.417358, 29.735035, 22.146873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535305, 29.903767, 22.270235>,  <40.731884, 30.184986, 22.475838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535305, 29.903767, 22.270235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844045, -0.239042, -0.480050,
		0.214629, -0.669764, 0.710880,
		-0.491450, -0.703048, -0.514005,
		40.387871, 29.692852, 22.116034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.187996, 29.713177, 22.466818>,  <40.731884, 30.184986, 22.475838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.187996, 29.713177, 22.466818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.943768, 29.589788, 22.175051>,  <40.797230, 29.515757, 21.999990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.943768, 29.589788, 22.175051>,  <41.187996, 29.713177, 22.466818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.943768, 29.589788, 22.175051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775266, -0.044688, -0.630053,
		0.161755, -0.950184, 0.266431,
		-0.610572, -0.308469, -0.729416,
		40.760597, 29.497248, 21.956226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.376774, 29.066147, 22.224922>,  <41.187996, 29.713177, 22.466818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.376774, 29.066147, 22.224922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.200245, 29.258989, 21.922186>,  <41.094330, 29.374695, 21.740543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.200245, 29.258989, 21.922186>,  <41.376774, 29.066147, 22.224922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.200245, 29.258989, 21.922186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799581, -0.171568, -0.575530,
		-0.407318, -0.859148, -0.309769,
		-0.441319, 0.482109, -0.756841,
		41.067848, 29.403622, 21.695133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.551437, 28.613186, 21.750208>,  <41.376774, 29.066147, 22.224922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.551437, 28.613186, 21.750208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.439171, 28.953922, 21.573305>,  <41.371811, 29.158363, 21.467163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.439171, 28.953922, 21.573305>,  <41.551437, 28.613186, 21.750208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.439171, 28.953922, 21.573305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858932, 0.017293, -0.511798,
		-0.428322, -0.523515, -0.736528,
		-0.280671, 0.851841, -0.442256,
		41.354969, 29.209475, 21.440628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.023701, 28.635733, 21.111921>,  <41.551437, 28.613186, 21.750208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.023701, 28.635733, 21.111921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.885445, 29.009329, 21.075718>,  <41.802490, 29.233486, 21.053995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.885445, 29.009329, 21.075718>,  <42.023701, 28.635733, 21.111921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.885445, 29.009329, 21.075718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648888, 0.168225, -0.742054,
		-0.677846, -0.315216, -0.664201,
		-0.345642, 0.933991, -0.090509,
		41.781754, 29.289526, 21.048565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.823082, 28.686010, 20.484632>,  <42.023701, 28.635733, 21.111921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.823082, 28.686010, 20.484632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889904, 29.062471, 20.602160>,  <41.929996, 29.288347, 20.672676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889904, 29.062471, 20.602160>,  <41.823082, 28.686010, 20.484632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.889904, 29.062471, 20.602160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795994, 0.047109, -0.603468,
		-0.581796, 0.334689, -0.741281,
		0.167053, 0.941150, 0.293818,
		41.940022, 29.344816, 20.690306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.882629, 29.221563, 19.912516>,  <41.823082, 28.686010, 20.484632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.882629, 29.221563, 19.912516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.101086, 29.367785, 20.214006>,  <42.232159, 29.455517, 20.394901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.101086, 29.367785, 20.214006>,  <41.882629, 29.221563, 19.912516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.101086, 29.367785, 20.214006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819208, -0.045075, -0.571723,
		-0.175021, 0.929698, -0.324082,
		0.546138, 0.365554, 0.753727,
		42.264927, 29.477451, 20.440125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.295406, 29.857788, 19.647701>,  <41.882629, 29.221563, 19.912516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.295406, 29.857788, 19.647701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.498226, 29.721510, 19.964392>,  <42.619919, 29.639744, 20.154406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.498226, 29.721510, 19.964392>,  <42.295406, 29.857788, 19.647701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.498226, 29.721510, 19.964392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859522, 0.131410, -0.493917,
		0.064233, 0.930946, 0.359464,
		0.507047, -0.340693, 0.791727,
		42.650341, 29.619303, 20.201910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.815674, 30.389441, 19.889320>,  <42.295406, 29.857788, 19.647701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.815674, 30.389441, 19.889320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.934349, 30.020390, 19.987894>,  <43.005554, 29.798958, 20.047039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.934349, 30.020390, 19.987894>,  <42.815674, 30.389441, 19.889320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.934349, 30.020390, 19.987894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904593, 0.188809, -0.382181,
		0.306082, 0.336313, 0.890622,
		0.296690, -0.922629, 0.246436,
		43.023357, 29.743601, 20.061825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.248528, 30.722160, 20.525133>,  <42.815674, 30.389441, 19.889320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.248528, 30.722160, 20.525133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.592396, 30.824816, 20.701817>,  <43.798717, 30.886410, 20.807827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.592396, 30.824816, 20.701817>,  <43.248528, 30.722160, 20.525133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.592396, 30.824816, 20.701817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343806, 0.348869, -0.871830,
		-0.377842, 0.901347, 0.211679,
		0.859670, 0.256638, 0.441706,
		43.850296, 30.901808, 20.834328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.455940, 31.331274, 20.262663>,  <43.248528, 30.722160, 20.525133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.455940, 31.331274, 20.262663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.820808, 31.212917, 20.376080>,  <44.039730, 31.141903, 20.444130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.820808, 31.212917, 20.376080>,  <43.455940, 31.331274, 20.262663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.820808, 31.212917, 20.376080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378092, 0.340720, -0.860788,
		0.158093, 0.892389, 0.422669,
		0.912169, -0.295893, 0.283540,
		44.094460, 31.124149, 20.461142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.917355, 31.834715, 20.019720>,  <43.455940, 31.331274, 20.262663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.917355, 31.834715, 20.019720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.085392, 31.476051, 20.075619>,  <44.186214, 31.260853, 20.109158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.085392, 31.476051, 20.075619>,  <43.917355, 31.834715, 20.019720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.085392, 31.476051, 20.075619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394291, 0.041648, -0.918042,
		0.817348, 0.440762, 0.371039,
		0.420091, -0.896657, 0.139748,
		44.211418, 31.207054, 20.117542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.685265, 31.793009, 20.021629>,  <43.917355, 31.834715, 20.019720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.685265, 31.793009, 20.021629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.496044, 31.473703, 19.872499>,  <44.382511, 31.282120, 19.783022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.496044, 31.473703, 19.872499>,  <44.685265, 31.793009, 20.021629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.496044, 31.473703, 19.872499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246304, 0.286469, -0.925889,
		0.845904, -0.529823, 0.061100,
		-0.473054, -0.798262, -0.372823,
		44.354126, 31.234224, 19.760653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.400116, 31.695364, 20.187744>,  <44.685265, 31.793009, 20.021629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.400116, 31.695364, 20.187744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.767136, 31.646660, 20.339151>,  <45.987347, 31.617437, 20.429996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.767136, 31.646660, 20.339151>,  <45.400116, 31.695364, 20.187744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.767136, 31.646660, 20.339151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385918, -0.501943, 0.774029,
		0.095751, -0.856288, -0.507547,
		0.917551, -0.121758, 0.378518,
		46.042400, 31.610132, 20.452707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.602810, 31.044373, 20.365318>,  <45.400116, 31.695364, 20.187744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.602810, 31.044373, 20.365318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.847092, 31.218512, 20.629898>,  <45.993660, 31.322994, 20.788647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.847092, 31.218512, 20.629898>,  <45.602810, 31.044373, 20.365318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.847092, 31.218512, 20.629898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315083, -0.632743, 0.707360,
		0.726475, -0.640398, -0.249247,
		0.610702, 0.435346, 0.661451,
		46.030304, 31.349115, 20.828333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.242123, 30.742083, 20.943884>,  <45.602810, 31.044373, 20.365318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.242123, 30.742083, 20.943884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.879055, 30.834496, 20.803738>,  <44.661213, 30.889942, 20.719650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.879055, 30.834496, 20.803738>,  <45.242123, 30.742083, 20.943884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.879055, 30.834496, 20.803738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280877, 0.285894, 0.916173,
		0.311832, 0.929994, -0.194607,
		-0.907672, 0.231031, -0.350365,
		44.606754, 30.903805, 20.698627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.979656, 31.248087, 21.378353>,  <45.242123, 30.742083, 20.943884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.979656, 31.248087, 21.378353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.641407, 31.133806, 21.198000>,  <44.438457, 31.065239, 21.089788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.641407, 31.133806, 21.198000>,  <44.979656, 31.248087, 21.378353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.641407, 31.133806, 21.198000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524205, 0.285224, 0.802407,
		-0.100645, 0.914890, -0.390957,
		-0.845624, -0.285700, -0.450883,
		44.387718, 31.048096, 21.062735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.486366, 31.749830, 21.323036>,  <44.979656, 31.248087, 21.378353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.486366, 31.749830, 21.323036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.270981, 31.413391, 21.302576>,  <44.141750, 31.211527, 21.290300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.270981, 31.413391, 21.302576>,  <44.486366, 31.749830, 21.323036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.270981, 31.413391, 21.302576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567594, 0.317160, 0.759767,
		-0.622814, 0.438138, -0.648180,
		-0.538460, -0.841097, -0.051153,
		44.109444, 31.161062, 21.287230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.786449, 31.891550, 21.573969>,  <44.486366, 31.749830, 21.323036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.786449, 31.891550, 21.573969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.772953, 31.491816, 21.579428>,  <43.764854, 31.251974, 21.582703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.772953, 31.491816, 21.579428>,  <43.786449, 31.891550, 21.573969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.772953, 31.491816, 21.579428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682036, 0.033006, 0.730573,
		-0.730539, 0.015347, -0.682698,
		-0.033745, -0.999337, 0.013645,
		43.762829, 31.192015, 21.583521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.045929, 31.687042, 21.632898>,  <43.786449, 31.891550, 21.573969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.045929, 31.687042, 21.632898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.265053, 31.382553, 21.771719>,  <43.396526, 31.199860, 21.855011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.265053, 31.382553, 21.771719>,  <43.045929, 31.687042, 21.632898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.265053, 31.382553, 21.771719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596393, -0.064413, 0.800104,
		-0.586702, -0.645285, -0.489273,
		0.547811, -0.761221, 0.347052,
		43.429398, 31.154186, 21.875835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.645439, 31.137827, 21.918762>,  <43.045929, 31.687042, 21.632898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.645439, 31.137827, 21.918762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.002342, 31.097651, 22.094847>,  <43.216484, 31.073545, 22.200497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.002342, 31.097651, 22.094847>,  <42.645439, 31.137827, 21.918762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.002342, 31.097651, 22.094847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447214, -0.062227, 0.892260,
		-0.062227, -0.992995, -0.100442,
		-0.892260, 0.100442, -0.440209,
		43.270020, 31.067518, 22.226910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.488380, 30.765133, 22.494766>,  <42.645439, 31.137827, 21.918762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.488380, 30.765133, 22.494766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.859226, 30.891317, 22.575712>,  <43.081734, 30.967028, 22.624281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.859226, 30.891317, 22.575712>,  <42.488380, 30.765133, 22.494766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.859226, 30.891317, 22.575712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223568, 0.032129, 0.974159,
		0.300807, -0.948395, 0.100314,
		0.927110, 0.315460, 0.202366,
		43.137360, 30.985956, 22.636421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.860058, 30.227959, 22.873888>,  <42.488380, 30.765133, 22.494766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.860058, 30.227959, 22.873888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.038692, 30.572001, 22.972502>,  <43.145874, 30.778425, 23.031670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.038692, 30.572001, 22.972502>,  <42.860058, 30.227959, 22.873888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.038692, 30.572001, 22.972502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232662, -0.154427, 0.960219,
		0.863961, -0.486181, 0.131148,
		0.446588, 0.860105, 0.246535,
		43.172668, 30.830032, 23.046463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.252132, 30.025087, 23.477764>,  <42.860058, 30.227959, 22.873888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.252132, 30.025087, 23.477764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.231834, 30.423944, 23.500139>,  <43.219654, 30.663260, 23.513565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.231834, 30.423944, 23.500139>,  <43.252132, 30.025087, 23.477764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.231834, 30.423944, 23.500139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111365, -0.061312, 0.991887,
		0.992483, 0.044107, 0.114158,
		-0.050748, 0.997144, 0.055939,
		43.216610, 30.723087, 23.516920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.618435, 30.128866, 24.027397>,  <43.252132, 30.025087, 23.477764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.618435, 30.128866, 24.027397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.424141, 30.471226, 23.956404>,  <43.307564, 30.676641, 23.913809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.424141, 30.471226, 23.956404>,  <43.618435, 30.128866, 24.027397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.424141, 30.471226, 23.956404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058160, 0.170947, 0.983562,
		0.872168, 0.488074, -0.033256,
		-0.485736, 0.855898, -0.177481,
		43.278419, 30.727995, 23.903160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.909122, 30.719732, 24.454733>,  <43.618435, 30.128866, 24.027397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.909122, 30.719732, 24.454733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.534416, 30.831007, 24.369806>,  <43.309593, 30.897772, 24.318850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.534416, 30.831007, 24.369806>,  <43.909122, 30.719732, 24.454733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.534416, 30.831007, 24.369806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201806, 0.066238, 0.977183,
		0.285905, 0.958240, -0.005910,
		-0.936767, 0.278189, -0.212317,
		43.253387, 30.914463, 24.306110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.779400, 31.314245, 24.864534>,  <43.909122, 30.719732, 24.454733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.779400, 31.314245, 24.864534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.422211, 31.164442, 24.764664>,  <43.207897, 31.074560, 24.704741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.422211, 31.164442, 24.764664>,  <43.779400, 31.314245, 24.864534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.422211, 31.164442, 24.764664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258144, -0.028290, 0.965692,
		-0.368723, 0.926792, -0.071415,
		-0.892975, -0.374508, -0.249677,
		43.154320, 31.052090, 24.689760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.220852, 31.741562, 25.195654>,  <43.779400, 31.314245, 24.864534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.220852, 31.741562, 25.195654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.060680, 31.383392, 25.117809>,  <42.964577, 31.168491, 25.071102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.060680, 31.383392, 25.117809>,  <43.220852, 31.741562, 25.195654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.060680, 31.383392, 25.117809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451440, 0.007954, 0.892266,
		-0.797409, 0.445143, -0.407415,
		-0.400427, -0.895424, -0.194613,
		42.940552, 31.114765, 25.059425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.555470, 31.762209, 25.509867>,  <43.220852, 31.741562, 25.195654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.555470, 31.762209, 25.509867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.624252, 31.377287, 25.425581>,  <42.665520, 31.146334, 25.375010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.624252, 31.377287, 25.425581>,  <42.555470, 31.762209, 25.509867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.624252, 31.377287, 25.425581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503512, -0.269705, 0.820813,
		-0.846704, -0.035044, -0.530909,
		0.171953, -0.962305, -0.210716,
		42.675838, 31.088596, 25.362366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.825165, 31.501709, 25.199345>,  <42.555470, 31.762209, 25.509867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.825165, 31.501709, 25.199345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.053524, 31.211468, 25.353004>,  <42.190540, 31.037323, 25.445200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.053524, 31.211468, 25.353004>,  <41.825165, 31.501709, 25.199345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.053524, 31.211468, 25.353004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479497, 0.085132, 0.873405,
		-0.666450, -0.682825, -0.299324,
		0.570900, -0.725605, 0.384148,
		42.224792, 30.993786, 25.468248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.385597, 31.024670, 25.320997>,  <41.825165, 31.501709, 25.199345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.385597, 31.024670, 25.320997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.692459, 30.962067, 25.569828>,  <41.876575, 30.924505, 25.719126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.692459, 30.962067, 25.569828>,  <41.385597, 31.024670, 25.320997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.692459, 30.962067, 25.569828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598526, 0.174187, 0.781937,
		-0.230738, -0.972195, 0.039953,
		0.767155, -0.156510, 0.622076,
		41.922607, 30.915113, 25.756451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.168518, 30.535549, 25.771101>,  <41.385597, 31.024670, 25.320997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.168518, 30.535549, 25.771101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.482662, 30.705399, 25.951283>,  <41.671146, 30.807308, 26.059391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.482662, 30.705399, 25.951283>,  <41.168518, 30.535549, 25.771101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.482662, 30.705399, 25.951283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526087, 0.074307, 0.847178,
		0.326259, -0.902316, 0.281746,
		0.785358, 0.424622, 0.450454,
		41.718269, 30.832785, 26.086418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247967, 30.122572, 26.403532>,  <41.168518, 30.535549, 25.771101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247967, 30.122572, 26.403532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.417286, 30.476393, 26.481907>,  <41.518879, 30.688684, 26.528933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.417286, 30.476393, 26.481907>,  <41.247967, 30.122572, 26.403532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.417286, 30.476393, 26.481907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268490, -0.084078, 0.959606,
		0.865293, -0.458805, 0.201903,
		0.423297, 0.884550, 0.195937,
		41.544273, 30.741758, 26.540688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495262, 29.951216, 27.058813>,  <41.247967, 30.122572, 26.403532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.495262, 29.951216, 27.058813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.506676, 30.349596, 27.024708>,  <41.513523, 30.588623, 27.004244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.506676, 30.349596, 27.024708>,  <41.495262, 29.951216, 27.058813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.506676, 30.349596, 27.024708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341588, 0.089878, 0.935542,
		0.939417, 0.002433, 0.342769,
		0.028531, 0.995950, -0.085264,
		41.515236, 30.648380, 26.999128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.780396, 30.150812, 27.648510>,  <41.495262, 29.951216, 27.058813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.780396, 30.150812, 27.648510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.594231, 30.473614, 27.503107>,  <41.482533, 30.667294, 27.415865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.594231, 30.473614, 27.503107>,  <41.780396, 30.150812, 27.648510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.594231, 30.473614, 27.503107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395541, 0.177768, 0.901081,
		0.791795, 0.563156, 0.236467,
		-0.465413, 0.807003, -0.363507,
		41.454605, 30.715715, 27.394054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.826958, 30.681658, 28.181547>,  <41.780396, 30.150812, 27.648510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.826958, 30.681658, 28.181547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.519024, 30.791254, 27.950970>,  <41.334263, 30.857012, 27.812624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.519024, 30.791254, 27.950970>,  <41.826958, 30.681658, 28.181547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.519024, 30.791254, 27.950970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581813, 0.070050, 0.810301,
		0.262394, 0.959178, 0.105484,
		-0.769833, 0.273989, -0.576443,
		41.288074, 30.873451, 27.778036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.599098, 31.267342, 28.567150>,  <41.826958, 30.681658, 28.181547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.599098, 31.267342, 28.567150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.303120, 31.118803, 28.342802>,  <41.125530, 31.029680, 28.208193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.303120, 31.118803, 28.342802>,  <41.599098, 31.267342, 28.567150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.303120, 31.118803, 28.342802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654766, 0.206561, 0.727059,
		-0.154136, 0.905226, -0.395989,
		-0.739949, -0.371346, -0.560872,
		41.081135, 31.007399, 28.174540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077492, 31.763937, 28.620777>,  <41.599098, 31.267342, 28.567150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077492, 31.763937, 28.620777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.909435, 31.421650, 28.499960>,  <40.808601, 31.216278, 28.427469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.909435, 31.421650, 28.499960>,  <41.077492, 31.763937, 28.620777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.909435, 31.421650, 28.499960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678941, 0.075580, 0.730293,
		-0.602094, 0.511897, -0.612734,
		-0.420145, -0.855715, -0.302042,
		40.783390, 31.164936, 28.409348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354572, 31.969936, 28.557470>,  <41.077492, 31.763937, 28.620777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354572, 31.969936, 28.557470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.329468, 31.570902, 28.569386>,  <40.314407, 31.331482, 28.576534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.329468, 31.570902, 28.569386>,  <40.354572, 31.969936, 28.557470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329468, 31.570902, 28.569386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801251, 0.068155, 0.594434,
		-0.595029, 0.013439, -0.803592,
		-0.062757, -0.997585, 0.029787,
		40.310642, 31.271627, 28.578321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589600, 31.917496, 28.515594>,  <40.354572, 31.969936, 28.557470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589600, 31.917496, 28.515594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756821, 31.591181, 28.675457>,  <39.857151, 31.395391, 28.771374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756821, 31.591181, 28.675457>,  <39.589600, 31.917496, 28.515594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756821, 31.591181, 28.675457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783423, -0.101045, 0.613220,
		-0.459874, -0.569456, -0.681348,
		0.418049, -0.815788, 0.399657,
		39.882236, 31.346445, 28.795355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048409, 31.536659, 28.617025>,  <39.589600, 31.917496, 28.515594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048409, 31.536659, 28.617025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305561, 31.332436, 28.845425>,  <39.459850, 31.209902, 28.982464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305561, 31.332436, 28.845425>,  <39.048409, 31.536659, 28.617025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305561, 31.332436, 28.845425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693429, -0.071277, 0.716991,
		-0.325368, -0.856883, -0.399859,
		0.642878, -0.510559, 0.570996,
		39.498425, 31.179268, 29.016724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688103, 30.881319, 28.807062>,  <39.048409, 31.536659, 28.617025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688103, 30.881319, 28.807062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972481, 30.950159, 29.079809>,  <39.143108, 30.991463, 29.243458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972481, 30.950159, 29.079809>,  <38.688103, 30.881319, 28.807062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972481, 30.950159, 29.079809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632979, -0.265885, 0.727078,
		0.306427, -0.948518, -0.080094,
		0.710943, 0.172099, 0.681866,
		39.185764, 31.001789, 29.284369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621616, 30.333223, 29.288498>,  <38.688103, 30.881319, 28.807062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621616, 30.333223, 29.288498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812778, 30.628532, 29.478891>,  <38.927475, 30.805717, 29.593128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812778, 30.628532, 29.478891>,  <38.621616, 30.333223, 29.288498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812778, 30.628532, 29.478891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643313, -0.074814, 0.761939,
		0.598131, -0.670339, 0.439188,
		0.477900, 0.738274, 0.475986,
		38.956150, 30.850014, 29.621687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585667, 30.082174, 29.937582>,  <38.621616, 30.333223, 29.288498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585667, 30.082174, 29.937582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.656399, 30.475252, 29.959637>,  <38.698837, 30.711100, 29.972870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.656399, 30.475252, 29.959637>,  <38.585667, 30.082174, 29.937582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656399, 30.475252, 29.959637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618084, 0.067277, 0.783228,
		0.765965, -0.172581, 0.619285,
		0.176834, 0.982695, 0.055138,
		38.709450, 30.770061, 29.976177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774891, 30.289703, 30.669216>,  <38.585667, 30.082174, 29.937582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774891, 30.289703, 30.669216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.633541, 30.604092, 30.466286>,  <38.548733, 30.792725, 30.344526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.633541, 30.604092, 30.466286>,  <38.774891, 30.289703, 30.669216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633541, 30.604092, 30.466286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666750, 0.168794, 0.725915,
		0.656181, 0.594778, 0.464398,
		-0.353370, 0.785969, -0.507328,
		38.527531, 30.839882, 30.314087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979786, 30.843582, 31.116940>,  <38.774891, 30.289703, 30.669216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979786, 30.843582, 31.116940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.664513, 30.933189, 30.887650>,  <38.475349, 30.986954, 30.750076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.664513, 30.933189, 30.887650>,  <38.979786, 30.843582, 31.116940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664513, 30.933189, 30.887650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498154, 0.314725, 0.807955,
		0.361406, 0.922368, -0.136464,
		-0.788180, 0.224020, -0.573225,
		38.428059, 31.000395, 30.715683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721611, 31.438774, 31.368483>,  <38.979786, 30.843582, 31.116940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721611, 31.438774, 31.368483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422695, 31.344292, 31.120045>,  <38.243343, 31.287601, 30.970982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422695, 31.344292, 31.120045>,  <38.721611, 31.438774, 31.368483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422695, 31.344292, 31.120045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664446, 0.277009, 0.694102,
		0.008096, 0.931382, -0.363954,
		-0.747292, -0.236208, -0.621096,
		38.198509, 31.273430, 30.933716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277397, 32.017174, 31.305902>,  <38.721611, 31.438774, 31.368483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277397, 32.017174, 31.305902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.067196, 31.685877, 31.228060>,  <37.941074, 31.487101, 31.181355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.067196, 31.685877, 31.228060>,  <38.277397, 32.017174, 31.305902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067196, 31.685877, 31.228060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643424, 0.237228, 0.727824,
		-0.556646, 0.507686, -0.657571,
		-0.525500, -0.828238, -0.194605,
		37.909546, 31.437405, 31.169678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579140, 32.219299, 31.289429>,  <38.277397, 32.017174, 31.305902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579140, 32.219299, 31.289429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525970, 31.825130, 31.331884>,  <37.494068, 31.588629, 31.357359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525970, 31.825130, 31.331884>,  <37.579140, 32.219299, 31.289429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525970, 31.825130, 31.331884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661373, 0.167952, 0.731011,
		-0.738184, 0.026972, -0.674060,
		-0.132926, -0.985426, 0.106141,
		37.486092, 31.529503, 31.363728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842445, 32.148861, 31.370867>,  <37.579140, 32.219299, 31.289429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842445, 32.148861, 31.370867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.993122, 31.807293, 31.514496>,  <37.083527, 31.602354, 31.600674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.993122, 31.807293, 31.514496>,  <36.842445, 32.148861, 31.370867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993122, 31.807293, 31.514496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552802, 0.103823, 0.826819,
		-0.743314, -0.509950, -0.432937,
		0.376688, -0.853915, 0.359075,
		37.106129, 31.551119, 31.622219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263439, 31.703995, 31.497782>,  <36.842445, 32.148861, 31.370867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263439, 31.703995, 31.497782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559231, 31.583391, 31.738535>,  <36.736706, 31.511028, 31.882986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559231, 31.583391, 31.738535>,  <36.263439, 31.703995, 31.497782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559231, 31.583391, 31.738535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605618, 0.092430, 0.790369,
		-0.293936, -0.948972, -0.114250,
		0.739479, -0.301510, 0.601883,
		36.781075, 31.492939, 31.919100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913723, 31.217958, 31.934025>,  <36.263439, 31.703995, 31.497782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913723, 31.217958, 31.934025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.264061, 31.285982, 32.114681>,  <36.474262, 31.326797, 32.223076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.264061, 31.285982, 32.114681>,  <35.913723, 31.217958, 31.934025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264061, 31.285982, 32.114681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397031, -0.278099, 0.874659,
		0.274346, -0.945378, -0.176051,
		0.875843, 0.170061, 0.451640,
		36.526814, 31.337000, 32.250172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145271, 30.657358, 32.441376>,  <35.913723, 31.217958, 31.934025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145271, 30.657358, 32.441376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351223, 30.981016, 32.554649>,  <36.474792, 31.175211, 32.622612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351223, 30.981016, 32.554649>,  <36.145271, 30.657358, 32.441376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351223, 30.981016, 32.554649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295653, -0.142463, 0.944613,
		0.804670, -0.570081, 0.165875,
		0.514875, 0.809143, 0.283181,
		36.505684, 31.223759, 32.639603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406738, 30.425644, 33.045662>,  <36.145271, 30.657358, 32.441376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406738, 30.425644, 33.045662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437508, 30.823755, 33.069351>,  <36.455971, 31.062622, 33.083565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437508, 30.823755, 33.069351>,  <36.406738, 30.425644, 33.045662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437508, 30.823755, 33.069351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234996, -0.039629, 0.971188,
		0.968948, -0.088626, 0.230837,
		0.076925, 0.995276, 0.059225,
		36.460587, 31.122337, 33.087120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743988, 30.500187, 33.675880>,  <36.406738, 30.425644, 33.045662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743988, 30.500187, 33.675880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592594, 30.859238, 33.585537>,  <36.501759, 31.074669, 33.531330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592594, 30.859238, 33.585537>,  <36.743988, 30.500187, 33.675880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592594, 30.859238, 33.585537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265997, 0.128243, 0.955405,
		0.886565, 0.421682, 0.190229,
		-0.378482, 0.897629, -0.225862,
		36.479050, 31.128527, 33.517776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887794, 29.806976, 33.471603>,  <36.743988, 30.500187, 33.675880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887794, 29.806976, 33.471603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.053028, 29.997242, 33.782242>,  <37.152168, 30.111401, 33.968624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.053028, 29.997242, 33.782242>,  <36.887794, 29.806976, 33.471603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053028, 29.997242, 33.782242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892846, -0.043543, -0.448252,
		-0.179401, 0.878549, -0.442681,
		0.413087, 0.475663, 0.776597,
		37.176952, 30.139940, 34.015221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400505, 30.295111, 33.176941>,  <36.887794, 29.806976, 33.471603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400505, 30.295111, 33.176941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.518501, 30.248280, 33.556259>,  <37.589298, 30.220181, 33.783852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.518501, 30.248280, 33.556259>,  <37.400505, 30.295111, 33.176941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518501, 30.248280, 33.556259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955355, 0.053400, -0.290596,
		-0.016616, 0.991686, 0.127604,
		0.294994, -0.117079, 0.948299,
		37.606998, 30.213156, 33.840748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888912, 30.889536, 33.430958>,  <37.400505, 30.295111, 33.176941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888912, 30.889536, 33.430958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954678, 30.586510, 33.683643>,  <37.994137, 30.404694, 33.835255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954678, 30.586510, 33.683643>,  <37.888912, 30.889536, 33.430958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954678, 30.586510, 33.683643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978406, 0.043926, -0.201973,
		0.125259, 0.651280, 0.748428,
		0.164416, -0.757565, 0.631714,
		38.004002, 30.359240, 33.873158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414848, 31.170950, 33.898212>,  <37.888912, 30.889536, 33.430958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414848, 31.170950, 33.898212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410034, 30.771635, 33.921127>,  <38.407146, 30.532047, 33.934875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410034, 30.771635, 33.921127>,  <38.414848, 31.170950, 33.898212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410034, 30.771635, 33.921127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967797, -0.026037, -0.250380,
		0.251442, 0.052425, 0.966451,
		-0.012038, -0.998285, 0.057283,
		38.406422, 30.472149, 33.938313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074673, 31.011202, 34.274429>,  <38.414848, 31.170950, 33.898212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074673, 31.011202, 34.274429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972782, 30.662369, 34.107296>,  <38.911648, 30.453068, 34.007015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972782, 30.662369, 34.107296>,  <39.074673, 31.011202, 34.274429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972782, 30.662369, 34.107296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902868, -0.059736, -0.425747,
		0.346327, -0.485696, 0.802594,
		-0.254728, -0.872084, -0.417832,
		38.896362, 30.400743, 33.981945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635330, 30.488295, 34.430042>,  <39.074673, 31.011202, 34.274429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635330, 30.488295, 34.430042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.442863, 30.350988, 34.107391>,  <39.327385, 30.268604, 33.913799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.442863, 30.350988, 34.107391>,  <39.635330, 30.488295, 34.430042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.442863, 30.350988, 34.107391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875827, -0.148881, -0.459089,
		0.037498, -0.927364, 0.372277,
		-0.481167, -0.343265, -0.806628,
		39.298512, 30.248009, 33.865402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008976, 29.932850, 34.158569>,  <39.635330, 30.488295, 34.430042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008976, 29.932850, 34.158569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.772976, 30.014074, 33.845989>,  <39.631374, 30.062809, 33.658440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.772976, 30.014074, 33.845989>,  <40.008976, 29.932850, 34.158569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772976, 30.014074, 33.845989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795180, -0.021634, -0.605988,
		-0.139958, -0.978928, -0.148705,
		-0.590001, 0.203060, -0.781451,
		39.595974, 30.074991, 33.611553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154938, 29.388416, 33.662708>,  <40.008976, 29.932850, 34.158569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.154938, 29.388416, 33.662708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.993637, 29.682743, 33.445099>,  <39.896854, 29.859339, 33.314533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.993637, 29.682743, 33.445099>,  <40.154938, 29.388416, 33.662708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993637, 29.682743, 33.445099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701102, -0.133627, -0.700429,
		-0.588084, -0.663864, -0.461998,
		-0.403254, 0.735819, -0.544020,
		39.872662, 29.903488, 33.281895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934589, 29.167122, 32.901459>,  <40.154938, 29.388416, 33.662708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934589, 29.167122, 32.901459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989056, 29.563377, 32.897568>,  <40.021736, 29.801130, 32.895233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989056, 29.563377, 32.897568>,  <39.934589, 29.167122, 32.901459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989056, 29.563377, 32.897568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697509, -0.102841, -0.709158,
		-0.703520, 0.089775, -0.704983,
		0.136166, 0.990638, -0.009732,
		40.029907, 29.860569, 32.894650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126129, 29.326307, 32.257404>,  <39.934589, 29.167122, 32.901459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126129, 29.326307, 32.257404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.267300, 29.659258, 32.428329>,  <40.352001, 29.859028, 32.530884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.267300, 29.659258, 32.428329>,  <40.126129, 29.326307, 32.257404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267300, 29.659258, 32.428329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639116, 0.119086, -0.759835,
		-0.683354, 0.541268, -0.489956,
		0.352927, 0.832375, 0.427311,
		40.373177, 29.908970, 32.556522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966656, 29.819422, 31.699171>,  <40.126129, 29.326307, 32.257404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966656, 29.819422, 31.699171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239204, 29.961184, 31.955336>,  <40.402733, 30.046242, 32.109035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239204, 29.961184, 31.955336>,  <39.966656, 29.819422, 31.699171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239204, 29.961184, 31.955336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601550, 0.227301, -0.765815,
		-0.416976, 0.907045, -0.058316,
		0.681373, 0.354406, 0.640412,
		40.443615, 30.067505, 32.147461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184475, 30.354013, 31.324678>,  <39.966656, 29.819422, 31.699171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184475, 30.354013, 31.324678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.459106, 30.272753, 31.603916>,  <40.623886, 30.223997, 31.771460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.459106, 30.272753, 31.603916>,  <40.184475, 30.354013, 31.324678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.459106, 30.272753, 31.603916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727052, 0.189072, -0.660036,
		0.002097, 0.960719, 0.277515,
		0.686579, -0.203152, 0.698096,
		40.665081, 30.211807, 31.813345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.788429, 30.770044, 31.143379>,  <40.184475, 30.354013, 31.324678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.788429, 30.770044, 31.143379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.965538, 30.524572, 31.404867>,  <41.071804, 30.377289, 31.561760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.965538, 30.524572, 31.404867>,  <40.788429, 30.770044, 31.143379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.965538, 30.524572, 31.404867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852196, 0.061353, -0.519614,
		0.278769, 0.787168, 0.550141,
		0.442776, -0.613679, 0.653718,
		41.098370, 30.340469, 31.600983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400433, 31.122057, 31.360479>,  <40.788429, 30.770044, 31.143379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.400433, 31.122057, 31.360479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.437103, 30.724888, 31.390678>,  <41.459106, 30.486586, 31.408798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.437103, 30.724888, 31.390678>,  <41.400433, 31.122057, 31.360479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.437103, 30.724888, 31.390678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786671, 0.025733, -0.616836,
		0.610527, 0.115945, 0.783462,
		0.091680, -0.992922, 0.075500,
		41.464607, 30.427011, 31.413328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.105453, 31.030161, 31.344290>,  <41.400433, 31.122057, 31.360479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.105453, 31.030161, 31.344290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.936573, 30.676105, 31.266037>,  <41.835243, 30.463673, 31.219086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.936573, 30.676105, 31.266037>,  <42.105453, 31.030161, 31.344290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.936573, 30.676105, 31.266037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707350, -0.186722, -0.681756,
		0.566920, -0.426220, 0.704938,
		-0.422205, -0.885139, -0.195631,
		41.809910, 30.410564, 31.207348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.746643, 30.613792, 31.277756>,  <42.105453, 31.030161, 31.344290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.746643, 30.613792, 31.277756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.447433, 30.409962, 31.107676>,  <42.267910, 30.287663, 31.005627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.447433, 30.409962, 31.107676>,  <42.746643, 30.613792, 31.277756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.447433, 30.409962, 31.107676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553484, -0.125448, -0.823358,
		0.366224, -0.851231, 0.375881,
		-0.748021, -0.509577, -0.425201,
		42.223026, 30.257088, 30.980116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.042999, 30.139252, 30.927265>,  <42.746643, 30.613792, 31.277756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.042999, 30.139252, 30.927265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.691933, 30.133192, 30.735653>,  <42.481293, 30.129557, 30.620686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.691933, 30.133192, 30.735653>,  <43.042999, 30.139252, 30.927265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.691933, 30.133192, 30.735653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473357, -0.183905, -0.861459,
		-0.075043, -0.982827, 0.168580,
		-0.877668, -0.015152, -0.479029,
		42.428631, 30.128647, 30.591944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.036938, 29.548203, 30.641930>,  <43.042999, 30.139252, 30.927265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.036938, 29.548203, 30.641930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.768238, 29.762222, 30.437002>,  <42.607018, 29.890635, 30.314045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.768238, 29.762222, 30.437002>,  <43.036938, 29.548203, 30.641930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.768238, 29.762222, 30.437002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579340, -0.051541, -0.813455,
		-0.461644, -0.843247, -0.275352,
		-0.671752, 0.535049, -0.512320,
		42.566711, 29.922737, 30.283306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.895947, 29.215498, 29.993143>,  <43.036938, 29.548203, 30.641930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.895947, 29.215498, 29.993143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.781563, 29.593655, 29.930586>,  <42.712933, 29.820549, 29.893051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.781563, 29.593655, 29.930586>,  <42.895947, 29.215498, 29.993143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.781563, 29.593655, 29.930586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609987, 0.053722, -0.790588,
		-0.739015, -0.321476, -0.592039,
		-0.285960, 0.945393, -0.156395,
		42.695774, 29.877272, 29.883667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.823208, 29.316874, 29.256481>,  <42.895947, 29.215498, 29.993143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.823208, 29.316874, 29.256481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.803158, 29.705935, 29.347195>,  <42.791126, 29.939371, 29.401623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.803158, 29.705935, 29.347195>,  <42.823208, 29.316874, 29.256481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.803158, 29.705935, 29.347195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508996, 0.220248, -0.832114,
		-0.859308, 0.073722, -0.506117,
		-0.050126, 0.972654, 0.226785,
		42.788120, 29.997730, 29.415230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.602879, 29.653496, 28.672655>,  <42.823208, 29.316874, 29.256481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.602879, 29.653496, 28.672655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.763760, 29.962698, 28.868898>,  <42.860287, 30.148220, 28.986645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.763760, 29.962698, 28.868898>,  <42.602879, 29.653496, 28.672655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.763760, 29.962698, 28.868898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525777, 0.243677, -0.814972,
		-0.749529, 0.585731, -0.308423,
		0.402199, 0.773007, 0.490607,
		42.884418, 30.194601, 29.016081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.513233, 30.274794, 28.204863>,  <42.602879, 29.653496, 28.672655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.513233, 30.274794, 28.204863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.808044, 30.361507, 28.460922>,  <42.984932, 30.413536, 28.614557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.808044, 30.361507, 28.460922>,  <42.513233, 30.274794, 28.204863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.808044, 30.361507, 28.460922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606356, 0.206261, -0.767977,
		-0.298524, 0.954180, 0.020571,
		0.737031, 0.216786, 0.640147,
		43.029152, 30.426544, 28.652966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.802544, 30.909323, 28.004208>,  <42.513233, 30.274794, 28.204863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.802544, 30.909323, 28.004208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.088535, 30.716677, 28.206928>,  <43.260132, 30.601089, 28.328560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.088535, 30.716677, 28.206928>,  <42.802544, 30.909323, 28.004208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.088535, 30.716677, 28.206928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582201, 0.008793, -0.812998,
		0.387097, 0.876338, 0.286685,
		0.714982, -0.481617, 0.506801,
		43.303028, 30.572191, 28.358969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.399872, 31.311417, 27.874441>,  <42.802544, 30.909323, 28.004208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.399872, 31.311417, 27.874441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.498753, 30.940056, 27.985411>,  <43.558083, 30.717239, 28.051992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.498753, 30.940056, 27.985411>,  <43.399872, 31.311417, 27.874441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.498753, 30.940056, 27.985411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618161, -0.069373, -0.782984,
		0.746168, 0.365050, 0.556751,
		0.247204, -0.928400, 0.277424,
		43.572914, 30.661535, 28.068638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.099815, 31.231224, 27.828197>,  <43.399872, 31.311417, 27.874441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.099815, 31.231224, 27.828197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.013393, 30.840691, 27.831999>,  <43.961540, 30.606371, 27.834280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.013393, 30.840691, 27.831999>,  <44.099815, 31.231224, 27.828197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.013393, 30.840691, 27.831999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676244, -0.156656, -0.719828,
		0.704282, -0.149099, 0.694087,
		-0.216058, -0.976334, 0.009503,
		43.948574, 30.547791, 27.834850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.733894, 30.892918, 27.734980>,  <44.099815, 31.231224, 27.828197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.733894, 30.892918, 27.734980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.445518, 30.633310, 27.637806>,  <44.272491, 30.477547, 27.579502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.445518, 30.633310, 27.637806>,  <44.733894, 30.892918, 27.734980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.445518, 30.633310, 27.637806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506367, -0.254035, -0.824050,
		0.473110, -0.717107, 0.511786,
		-0.720944, -0.649018, -0.242933,
		44.229237, 30.438604, 27.564926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.022289, 30.290855, 27.580902>,  <44.733894, 30.892918, 27.734980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.022289, 30.290855, 27.580902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.661762, 30.241186, 27.414909>,  <44.445446, 30.211384, 27.315313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.661762, 30.241186, 27.414909>,  <45.022289, 30.290855, 27.580902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.661762, 30.241186, 27.414909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415860, -0.516118, -0.748788,
		-0.121198, -0.847469, 0.516824,
		-0.901316, -0.124175, -0.414981,
		44.391369, 30.203934, 27.290415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.055523, 29.594601, 27.297304>,  <45.022289, 30.290855, 27.580902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.055523, 29.594601, 27.297304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.751213, 29.774048, 27.109701>,  <44.568626, 29.881716, 26.997139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.751213, 29.774048, 27.109701>,  <45.055523, 29.594601, 27.297304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.751213, 29.774048, 27.109701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259331, -0.452326, -0.853316,
		-0.594960, -0.770806, 0.227775,
		-0.760770, 0.448620, -0.469009,
		44.522984, 29.908634, 26.968998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.656925, 29.082245, 26.955891>,  <45.055523, 29.594601, 27.297304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.656925, 29.082245, 26.955891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.564526, 29.420908, 26.764137>,  <44.509087, 29.624105, 26.649086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.564526, 29.420908, 26.764137>,  <44.656925, 29.082245, 26.955891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.564526, 29.420908, 26.764137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045571, -0.501584, -0.863908,
		-0.971886, -0.177717, 0.154448,
		-0.231000, 0.846659, -0.479383,
		44.495224, 29.674906, 26.620323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.214951, 28.919212, 26.266504>,  <44.656925, 29.082245, 26.955891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.214951, 28.919212, 26.266504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.327507, 29.296963, 26.198421>,  <44.395042, 29.523613, 26.157572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.327507, 29.296963, 26.198421>,  <44.214951, 28.919212, 26.266504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.327507, 29.296963, 26.198421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219792, -0.236087, -0.946549,
		-0.934083, 0.228939, -0.274000,
		0.281390, 0.944378, -0.170206,
		44.411922, 29.580276, 26.147360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.836781, 29.117996, 25.724884>,  <44.214951, 28.919212, 26.266504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.836781, 29.117996, 25.724884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.178265, 29.326200, 25.731180>,  <44.383156, 29.451124, 25.734959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.178265, 29.326200, 25.731180>,  <43.836781, 29.117996, 25.724884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.178265, 29.326200, 25.731180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125185, -0.175791, -0.976435,
		-0.505479, 0.835563, -0.215235,
		0.853709, 0.520512, 0.015741,
		44.434376, 29.482353, 25.735903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.796383, 29.586279, 25.144768>,  <43.836781, 29.117996, 25.724884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.796383, 29.586279, 25.144768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.179661, 29.553099, 25.254301>,  <44.409626, 29.533190, 25.320021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.179661, 29.553099, 25.254301>,  <43.796383, 29.586279, 25.144768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.179661, 29.553099, 25.254301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260547, -0.142543, -0.954881,
		0.118241, 0.986306, -0.114971,
		0.958193, -0.082951, 0.273834,
		44.467117, 29.528214, 25.336451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.170628, 29.809282, 24.543169>,  <43.796383, 29.586279, 25.144768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.170628, 29.809282, 24.543169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.450256, 29.636166, 24.770849>,  <44.618034, 29.532295, 24.907457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.450256, 29.636166, 24.770849>,  <44.170628, 29.809282, 24.543169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.450256, 29.636166, 24.770849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433484, -0.376569, -0.818711,
		0.568674, 0.819078, -0.075641,
		0.699072, -0.432790, 0.569202,
		44.659977, 29.506329, 24.941610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.861698, 30.015532, 24.365774>,  <44.170628, 29.809282, 24.543169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.861698, 30.015532, 24.365774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.878098, 29.658739, 24.545856>,  <44.887936, 29.444664, 24.653906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.878098, 29.658739, 24.545856>,  <44.861698, 30.015532, 24.365774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.878098, 29.658739, 24.545856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321718, -0.414806, -0.851136,
		0.945948, 0.179732, 0.269962,
		0.040994, -0.891982, 0.450208,
		44.890396, 29.391144, 24.680920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.484589, 29.801802, 24.082521>,  <44.861698, 30.015532, 24.365774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.484589, 29.801802, 24.082521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.250977, 29.512669, 24.230263>,  <45.110809, 29.339190, 24.318907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.250977, 29.512669, 24.230263>,  <45.484589, 29.801802, 24.082521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.250977, 29.512669, 24.230263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173981, -0.555912, -0.812830,
		0.792866, -0.410459, 0.450430,
		-0.584032, -0.722831, 0.369352,
		45.075768, 29.295818, 24.341068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.974823, 29.224258, 24.044300>,  <45.484589, 29.801802, 24.082521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.974823, 29.224258, 24.044300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.593395, 29.103796, 24.045837>,  <45.364540, 29.031519, 24.046761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.593395, 29.103796, 24.045837>,  <45.974823, 29.224258, 24.044300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.593395, 29.103796, 24.045837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225603, -0.722686, -0.653321,
		0.199528, -0.622119, 0.757071,
		-0.953568, -0.301154, 0.003844,
		45.307323, 29.013451, 24.046991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.993393, 28.509304, 24.183743>,  <45.974823, 29.224258, 24.044300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.993393, 28.509304, 24.183743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.656864, 28.582520, 23.980305>,  <45.454945, 28.626450, 23.858242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.656864, 28.582520, 23.980305>,  <45.993393, 28.509304, 24.183743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.656864, 28.582520, 23.980305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184410, -0.787271, -0.588385,
		-0.508101, -0.588813, 0.628596,
		-0.841324, 0.183039, -0.508596,
		45.404469, 28.637432, 23.827726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.819954, 27.885916, 23.937860>,  <45.993393, 28.509304, 24.183743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.819954, 27.885916, 23.937860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.630699, 28.137541, 23.691147>,  <45.517147, 28.288515, 23.543118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.630699, 28.137541, 23.691147>,  <45.819954, 27.885916, 23.937860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.630699, 28.137541, 23.691147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221208, -0.592849, -0.774337,
		-0.852767, -0.502803, 0.141343,
		-0.473135, 0.629062, -0.616786,
		45.488758, 28.326260, 23.506111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.298004, 27.441349, 23.558697>,  <45.819954, 27.885916, 23.937860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.298004, 27.441349, 23.558697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.373260, 27.771070, 23.345108>,  <45.418415, 27.968903, 23.216955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.373260, 27.771070, 23.345108>,  <45.298004, 27.441349, 23.558697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.373260, 27.771070, 23.345108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194976, -0.564207, -0.802281,
		-0.962595, 0.046826, -0.266867,
		0.188136, 0.824304, -0.533973,
		45.429703, 28.018362, 23.184916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.711899, 26.996948, 23.369720>,  <45.298004, 27.441349, 23.558697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.711899, 26.996948, 23.369720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.630142, 26.607414, 23.329985>,  <44.581089, 26.373693, 23.306143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.630142, 26.607414, 23.329985>,  <44.711899, 26.996948, 23.369720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.630142, 26.607414, 23.329985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588520, 0.041159, 0.807434,
		-0.782219, 0.223499, -0.581534,
		-0.204396, -0.973835, -0.099338,
		44.568825, 26.315264, 23.300182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.971325, 26.945534, 23.350248>,  <44.711899, 26.996948, 23.369720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.971325, 26.945534, 23.350248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.120777, 26.590405, 23.457705>,  <44.210449, 26.377327, 23.522179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.120777, 26.590405, 23.457705>,  <43.971325, 26.945534, 23.350248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.120777, 26.590405, 23.457705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596641, -0.008278, 0.802465,
		-0.710225, -0.460108, -0.532806,
		0.373631, -0.887824, 0.268640,
		44.232868, 26.324057, 23.538296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.424183, 26.551271, 23.535521>,  <43.971325, 26.945534, 23.350248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.424183, 26.551271, 23.535521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.724018, 26.359249, 23.717800>,  <43.903919, 26.244036, 23.827168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.724018, 26.359249, 23.717800>,  <43.424183, 26.551271, 23.535521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.724018, 26.359249, 23.717800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541233, -0.048215, 0.839489,
		-0.381032, -0.875911, -0.295965,
		0.749587, -0.480058, 0.455700,
		43.948895, 26.215233, 23.854511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.088326, 26.166117, 23.954208>,  <43.424183, 26.551271, 23.535521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.088326, 26.166117, 23.954208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.464520, 26.168568, 24.090115>,  <43.690235, 26.170038, 24.171659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.464520, 26.168568, 24.090115>,  <43.088326, 26.166117, 23.954208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.464520, 26.168568, 24.090115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339795, 0.004300, 0.940490,
		0.004300, -0.999972, 0.006125,
		-0.940490, -0.006125, -0.339767,
		43.746666, 26.170404, 24.192045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.076469, 25.736921, 24.482708>,  <43.088326, 26.166117, 23.954208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.076469, 25.736921, 24.482708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.411827, 25.931213, 24.581627>,  <43.613041, 26.047789, 24.640978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.411827, 25.931213, 24.581627>,  <43.076469, 25.736921, 24.482708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.411827, 25.931213, 24.581627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283390, 0.000891, 0.959004,
		0.465599, -0.874107, 0.138399,
		0.838396, 0.485732, 0.247299,
		43.663345, 26.076933, 24.655817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.280479, 25.385406, 25.105051>,  <43.076469, 25.736921, 24.482708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.280479, 25.385406, 25.105051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.427399, 25.757225, 25.092148>,  <43.515549, 25.980316, 25.084406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.427399, 25.757225, 25.092148>,  <43.280479, 25.385406, 25.105051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.427399, 25.757225, 25.092148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337971, 0.165696, 0.926456,
		0.866528, -0.329379, 0.375018,
		0.367294, 0.929545, -0.032259,
		43.537586, 26.036089, 25.082470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.564423, 25.425814, 25.702473>,  <43.280479, 25.385406, 25.105051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.564423, 25.425814, 25.702473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.561630, 25.816036, 25.614620>,  <43.559956, 26.050171, 25.561909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.561630, 25.816036, 25.614620>,  <43.564423, 25.425814, 25.702473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.561630, 25.816036, 25.614620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190586, 0.214310, 0.957992,
		0.981646, 0.048548, 0.184431,
		-0.006983, 0.975558, -0.219629,
		43.559536, 26.108704, 25.548731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.829178, 25.721828, 26.404205>,  <43.564423, 25.425814, 25.702473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.829178, 25.721828, 26.404205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.687290, 26.030178, 26.192574>,  <43.602158, 26.215189, 26.065594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.687290, 26.030178, 26.192574>,  <43.829178, 25.721828, 26.404205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.687290, 26.030178, 26.192574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253035, 0.465612, 0.848044,
		0.900084, 0.434690, 0.029898,
		-0.354715, 0.770876, -0.529082,
		43.580875, 26.261440, 26.033850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.123077, 26.350246, 26.725960>,  <43.829178, 25.721828, 26.404205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.123077, 26.350246, 26.725960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.791019, 26.443918, 26.523565>,  <43.591785, 26.500122, 26.402128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.791019, 26.443918, 26.523565>,  <44.123077, 26.350246, 26.725960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.791019, 26.443918, 26.523565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368291, 0.451030, 0.812978,
		0.418598, 0.861239, -0.288173,
		-0.830143, 0.234179, -0.505987,
		43.541977, 26.514172, 26.371769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.988956, 26.983452, 27.032114>,  <44.123077, 26.350246, 26.725960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.988956, 26.983452, 27.032114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.655319, 26.887598, 26.833374>,  <43.455135, 26.830086, 26.714130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.655319, 26.887598, 26.833374>,  <43.988956, 26.983452, 27.032114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.655319, 26.887598, 26.833374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551507, 0.343955, 0.759957,
		-0.011217, 0.907893, -0.419051,
		-0.834095, -0.239634, -0.496851,
		43.405090, 26.815708, 26.684319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.446285, 27.567249, 26.970558>,  <43.988956, 26.983452, 27.032114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.446285, 27.567249, 26.970558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.238132, 27.228487, 26.926830>,  <43.113239, 27.025230, 26.900593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.238132, 27.228487, 26.926830>,  <43.446285, 27.567249, 26.970558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.238132, 27.228487, 26.926830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556277, 0.239075, 0.795864,
		-0.647886, 0.474967, -0.595525,
		-0.520384, -0.846906, -0.109320,
		43.082016, 26.974415, 26.894033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.754848, 27.655880, 27.050844>,  <43.446285, 27.567249, 26.970558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.754848, 27.655880, 27.050844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757038, 27.262356, 27.122499>,  <42.758354, 27.026241, 27.165493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757038, 27.262356, 27.122499>,  <42.754848, 27.655880, 27.050844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.757038, 27.262356, 27.122499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553896, 0.146164, 0.819656,
		-0.832568, -0.103712, -0.544128,
		0.005476, -0.983809, 0.179137,
		42.758682, 26.967213, 27.176241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.142475, 27.433344, 27.380318>,  <42.754848, 27.655880, 27.050844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.142475, 27.433344, 27.380318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.399296, 27.151947, 27.502216>,  <42.553387, 26.983109, 27.575356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.399296, 27.151947, 27.502216>,  <42.142475, 27.433344, 27.380318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.399296, 27.151947, 27.502216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421964, 0.007610, 0.906581,
		-0.640090, -0.710664, -0.291962,
		0.642053, -0.703490, 0.304746,
		42.591911, 26.940901, 27.593639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.716633, 26.873867, 27.678865>,  <42.142475, 27.433344, 27.380318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.716633, 26.873867, 27.678865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.091297, 26.867035, 27.818792>,  <42.316097, 26.862936, 27.902748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.091297, 26.867035, 27.818792>,  <41.716633, 26.873867, 27.678865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.091297, 26.867035, 27.818792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349931, -0.003972, 0.936767,
		-0.014642, -0.999846, -0.009709,
		0.936661, -0.017114, 0.349819,
		42.372295, 26.861912, 27.923738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.744621, 26.327368, 28.130949>,  <41.716633, 26.873867, 27.678865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.744621, 26.327368, 28.130949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.062412, 26.536777, 28.254066>,  <42.253086, 26.662424, 28.327936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.062412, 26.536777, 28.254066>,  <41.744621, 26.327368, 28.130949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.062412, 26.536777, 28.254066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153076, -0.317825, 0.935711,
		0.587690, -0.790513, -0.172365,
		0.794473, 0.523524, 0.307791,
		42.300755, 26.693834, 28.346403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.119026, 25.936579, 28.620604>,  <41.744621, 26.327368, 28.130949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.119026, 25.936579, 28.620604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.265327, 26.304434, 28.677860>,  <42.353107, 26.525146, 28.712214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.265327, 26.304434, 28.677860>,  <42.119026, 25.936579, 28.620604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.265327, 26.304434, 28.677860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167013, -0.086447, 0.982158,
		0.915605, -0.383132, 0.121973,
		0.365752, 0.919639, 0.143140,
		42.375053, 26.580326, 28.720802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.660210, 25.982418, 29.182529>,  <42.119026, 25.936579, 28.620604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.660210, 25.982418, 29.182529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.526283, 26.357647, 29.146952>,  <42.445927, 26.582785, 29.125605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.526283, 26.357647, 29.146952>,  <42.660210, 25.982418, 29.182529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.526283, 26.357647, 29.146952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004561, 0.092779, 0.995676,
		0.942271, 0.333779, -0.026786,
		-0.334821, 0.938074, -0.088945,
		42.425838, 26.639069, 29.120268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.943970, 26.351021, 29.657459>,  <42.660210, 25.982418, 29.182529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.943970, 26.351021, 29.657459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.635593, 26.595076, 29.584373>,  <42.450569, 26.741508, 29.540522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.635593, 26.595076, 29.584373>,  <42.943970, 26.351021, 29.657459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.635593, 26.595076, 29.584373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018174, 0.307836, 0.951266,
		0.636650, 0.730047, -0.248411,
		-0.770939, 0.610138, -0.182715,
		42.404312, 26.778116, 29.529558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.114746, 26.967342, 30.003176>,  <42.943970, 26.351021, 29.657459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.114746, 26.967342, 30.003176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.719826, 26.985016, 29.942150>,  <42.482872, 26.995621, 29.905535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.719826, 26.985016, 29.942150>,  <43.114746, 26.967342, 30.003176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.719826, 26.985016, 29.942150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129631, 0.330886, 0.934725,
		0.091782, 0.942636, -0.320957,
		-0.987305, 0.044185, -0.152564,
		42.423634, 26.998272, 29.896381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.975952, 27.634022, 30.223213>,  <43.114746, 26.967342, 30.003176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.975952, 27.634022, 30.223213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.621784, 27.448366, 30.233122>,  <42.409283, 27.336973, 30.239067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.621784, 27.448366, 30.233122>,  <42.975952, 27.634022, 30.223213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.621784, 27.448366, 30.233122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195888, 0.420957, 0.885677,
		-0.421506, 0.779339, -0.463641,
		-0.885416, -0.464140, 0.024773,
		42.356159, 27.309124, 30.240553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.297249, 28.135689, 30.354610>,  <42.975952, 27.634022, 30.223213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.297249, 28.135689, 30.354610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.181049, 27.764797, 30.449150>,  <42.111332, 27.542263, 30.505875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.181049, 27.764797, 30.449150>,  <42.297249, 28.135689, 30.354610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.181049, 27.764797, 30.449150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373934, 0.337363, 0.863921,
		-0.880787, 0.162586, -0.444724,
		-0.290495, -0.927228, 0.236349,
		42.093903, 27.486629, 30.520054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.671570, 28.207430, 30.636068>,  <42.297249, 28.135689, 30.354610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.671570, 28.207430, 30.636068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.774899, 27.844732, 30.769386>,  <41.836895, 27.627113, 30.849377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.774899, 27.844732, 30.769386>,  <41.671570, 28.207430, 30.636068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.774899, 27.844732, 30.769386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220180, 0.280664, 0.934210,
		-0.940633, -0.314712, -0.127145,
		0.258322, -0.906744, 0.333294,
		41.852394, 27.572710, 30.869375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125851, 28.036301, 31.039780>,  <41.671570, 28.207430, 30.636068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.125851, 28.036301, 31.039780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.417892, 27.782860, 31.142145>,  <41.593117, 27.630795, 31.203564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.417892, 27.782860, 31.142145>,  <41.125851, 28.036301, 31.039780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.417892, 27.782860, 31.142145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139476, 0.228445, 0.963514,
		-0.668949, -0.739161, 0.078416,
		0.730105, -0.633605, 0.255913,
		41.636925, 27.592779, 31.218920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.840378, 27.579870, 31.526615>,  <41.125851, 28.036301, 31.039780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.840378, 27.579870, 31.526615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.235310, 27.578897, 31.590073>,  <41.472271, 27.578314, 31.628147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.235310, 27.578897, 31.590073>,  <40.840378, 27.579870, 31.526615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.235310, 27.578897, 31.590073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158246, 0.057265, 0.985738,
		-0.011484, -0.998356, 0.056155,
		0.987333, -0.002434, 0.158643,
		41.531509, 27.578167, 31.637665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882957, 27.170044, 32.132732>,  <40.840378, 27.579870, 31.526615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882957, 27.170044, 32.132732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.228680, 27.369064, 32.103268>,  <41.436111, 27.488476, 32.085590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.228680, 27.369064, 32.103268>,  <40.882957, 27.170044, 32.132732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.228680, 27.369064, 32.103268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038986, 0.079740, 0.996053,
		0.501462, -0.863761, 0.049522,
		0.864301, 0.497552, -0.073661,
		41.487968, 27.518330, 32.081169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.355579, 26.880556, 32.644283>,  <40.882957, 27.170044, 32.132732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.355579, 26.880556, 32.644283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.519611, 27.240665, 32.585846>,  <41.618031, 27.456730, 32.550785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.519611, 27.240665, 32.585846>,  <41.355579, 26.880556, 32.644283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.519611, 27.240665, 32.585846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001508, 0.159510, 0.987195,
		0.912048, -0.405051, 0.064054,
		0.410081, 0.900272, -0.146092,
		41.642635, 27.510748, 32.542019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.926865, 27.007113, 33.132645>,  <41.355579, 26.880556, 32.644283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.926865, 27.007113, 33.132645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.812027, 27.371605, 33.014503>,  <41.743126, 27.590300, 32.943619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.812027, 27.371605, 33.014503>,  <41.926865, 27.007113, 33.132645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.812027, 27.371605, 33.014503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079242, 0.284686, 0.955340,
		0.954619, 0.297676, -0.009523,
		-0.287093, 0.911231, -0.295355,
		41.725899, 27.644974, 32.925896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.374649, 27.392761, 33.440762>,  <41.926865, 27.007113, 33.132645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.374649, 27.392761, 33.440762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.080181, 27.647011, 33.347782>,  <41.903500, 27.799561, 33.291996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.080181, 27.647011, 33.347782>,  <42.374649, 27.392761, 33.440762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.080181, 27.647011, 33.347782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046991, 0.294617, 0.954459,
		0.675161, 0.713569, -0.187020,
		-0.736172, 0.635626, -0.232445,
		41.859329, 27.837698, 33.278049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.481091, 28.039255, 33.821304>,  <42.374649, 27.392761, 33.440762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.481091, 28.039255, 33.821304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.107590, 28.111557, 33.697739>,  <41.883488, 28.154938, 33.623600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.107590, 28.111557, 33.697739>,  <42.481091, 28.039255, 33.821304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.107590, 28.111557, 33.697739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207308, 0.430443, 0.878488,
		0.291761, 0.884334, -0.364457,
		-0.933755, 0.180754, -0.308917,
		41.827465, 28.165783, 33.605064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.348671, 28.741838, 33.931385>,  <42.481091, 28.039255, 33.821304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.348671, 28.741838, 33.931385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.005219, 28.537294, 33.945580>,  <41.799145, 28.414568, 33.954098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.005219, 28.537294, 33.945580>,  <42.348671, 28.741838, 33.931385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.005219, 28.537294, 33.945580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167559, 0.345434, 0.923363,
		-0.484429, 0.786884, -0.382285,
		-0.858634, -0.511359, 0.035489,
		41.747627, 28.383886, 33.956226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764488, 29.253763, 34.190693>,  <42.348671, 28.741838, 33.931385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.764488, 29.253763, 34.190693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.661591, 28.875057, 34.268112>,  <41.599854, 28.647833, 34.314564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.661591, 28.875057, 34.268112>,  <41.764488, 29.253763, 34.190693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.661591, 28.875057, 34.268112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401300, 0.286867, 0.869865,
		-0.879082, 0.146094, -0.453731,
		-0.257243, -0.946765, 0.193552,
		41.584419, 28.591028, 34.326180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.103996, 29.369631, 34.350727>,  <41.764488, 29.253763, 34.190693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.103996, 29.369631, 34.350727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.228073, 29.028099, 34.517941>,  <41.302521, 28.823179, 34.618271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.228073, 29.028099, 34.517941>,  <41.103996, 29.369631, 34.350727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.228073, 29.028099, 34.517941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426698, 0.267901, 0.863804,
		-0.849534, -0.446323, -0.281226,
		0.310195, -0.853830, 0.418036,
		41.321133, 28.771950, 34.643353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.611599, 29.222120, 34.791355>,  <41.103996, 29.369631, 34.350727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.611599, 29.222120, 34.791355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871891, 28.941545, 34.907654>,  <41.028065, 28.773201, 34.977432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871891, 28.941545, 34.907654>,  <40.611599, 29.222120, 34.791355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871891, 28.941545, 34.907654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345322, 0.067637, 0.936044,
		-0.676243, -0.709513, -0.198208,
		0.650729, -0.701439, 0.290750,
		41.067108, 28.731113, 34.994877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269413, 28.635584, 35.003902>,  <40.611599, 29.222120, 34.791355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.269413, 28.635584, 35.003902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.624596, 28.621773, 35.187355>,  <40.837704, 28.613485, 35.297428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.624596, 28.621773, 35.187355>,  <40.269413, 28.635584, 35.003902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624596, 28.621773, 35.187355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454320, 0.089423, 0.886339,
		-0.071614, -0.995395, 0.063717,
		0.887955, -0.034526, 0.458632,
		40.890984, 28.611414, 35.324944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160271, 28.160852, 35.523960>,  <40.269413, 28.635584, 35.003902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160271, 28.160852, 35.523960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.483421, 28.360090, 35.649967>,  <40.677311, 28.479633, 35.725571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.483421, 28.360090, 35.649967>,  <40.160271, 28.160852, 35.523960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483421, 28.360090, 35.649967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363982, 0.001288, 0.931405,
		0.463524, -0.867121, 0.182339,
		0.807876, 0.498096, 0.315019,
		40.725784, 28.509520, 35.744473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357414, 27.869537, 36.224350>,  <40.160271, 28.160852, 35.523960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357414, 27.869537, 36.224350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.546333, 28.220182, 36.187508>,  <40.659687, 28.430569, 36.165401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.546333, 28.220182, 36.187508>,  <40.357414, 27.869537, 36.224350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.546333, 28.220182, 36.187508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423553, 0.317352, 0.848464,
		0.773004, -0.361716, 0.521177,
		0.472300, 0.876612, -0.092108,
		40.688023, 28.483166, 36.159874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615490, 28.011660, 36.931561>,  <40.357414, 27.869537, 36.224350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615490, 28.011660, 36.931561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607906, 28.352449, 36.722263>,  <40.603355, 28.556923, 36.596687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607906, 28.352449, 36.722263>,  <40.615490, 28.011660, 36.931561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607906, 28.352449, 36.722263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311703, 0.492215, 0.812752,
		0.949990, 0.178508, 0.256229,
		-0.018963, 0.851974, -0.523241,
		40.602219, 28.608042, 36.565292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.897797, 28.470800, 37.381042>,  <40.615490, 28.011660, 36.931561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.897797, 28.470800, 37.381042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.695675, 28.704035, 37.126583>,  <40.574402, 28.843975, 36.973907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.695675, 28.704035, 37.126583>,  <40.897797, 28.470800, 37.381042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695675, 28.704035, 37.126583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462353, 0.439507, 0.770106,
		0.728627, 0.683261, 0.047507,
		-0.505304, 0.583085, -0.636145,
		40.544083, 28.878960, 36.935741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938080, 29.251425, 37.522198>,  <40.897797, 28.470800, 37.381042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938080, 29.251425, 37.522198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.597412, 29.192488, 37.321018>,  <40.393013, 29.157125, 37.200310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.597412, 29.192488, 37.321018>,  <40.938080, 29.251425, 37.522198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.597412, 29.192488, 37.321018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509363, 0.458578, 0.728186,
		0.123347, 0.876354, -0.465607,
		-0.851666, -0.147343, -0.502946,
		40.341911, 29.148285, 37.170135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628582, 29.938755, 37.484276>,  <40.938080, 29.251425, 37.522198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.628582, 29.938755, 37.484276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346119, 29.661228, 37.427765>,  <40.176640, 29.494713, 37.393860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346119, 29.661228, 37.427765>,  <40.628582, 29.938755, 37.484276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346119, 29.661228, 37.427765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554444, 0.417742, 0.719780,
		-0.440378, 0.586608, -0.679675,
		-0.706157, -0.693817, -0.141277,
		40.134274, 29.453083, 37.385384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.341743, 29.928682, 37.511578>,  <40.628582, 29.938755, 37.484276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.341743, 29.928682, 37.511578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.451618, 30.146648, 37.828465>,  <41.517544, 30.277428, 38.018597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.451618, 30.146648, 37.828465>,  <41.341743, 29.928682, 37.511578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.451618, 30.146648, 37.828465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803418, -0.322592, 0.500454,
		0.528270, -0.773951, 0.349185,
		0.274682, 0.544917, 0.792221,
		41.534023, 30.310123, 38.066132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426235, 29.490139, 38.073750>,  <41.341743, 29.928682, 37.511578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.426235, 29.490139, 38.073750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338097, 29.858170, 38.203304>,  <41.285213, 30.078989, 38.281036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338097, 29.858170, 38.203304>,  <41.426235, 29.490139, 38.073750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338097, 29.858170, 38.203304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867787, -0.336537, 0.365635,
		0.445412, -0.200496, 0.872588,
		-0.220350, 0.920079, 0.323885,
		41.271992, 30.134193, 38.300468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.282360, 29.501270, 38.810665>,  <41.426235, 29.490139, 38.073750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.282360, 29.501270, 38.810665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.104420, 29.831205, 38.671093>,  <40.997658, 30.029167, 38.587349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.104420, 29.831205, 38.671093>,  <41.282360, 29.501270, 38.810665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.104420, 29.831205, 38.671093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790055, -0.177917, 0.586650,
		0.421810, 0.536645, 0.730814,
		-0.444847, 0.824838, -0.348932,
		40.970966, 30.078657, 38.566414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869675, 29.752831, 39.333450>,  <41.282360, 29.501270, 38.810665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.869675, 29.752831, 39.333450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.678234, 29.983374, 39.068497>,  <40.563370, 30.121700, 38.909523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.678234, 29.983374, 39.068497>,  <40.869675, 29.752831, 39.333450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.678234, 29.983374, 39.068497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850050, -0.115208, 0.513947,
		0.219905, 0.809036, 0.545071,
		-0.478598, 0.576357, -0.662387,
		40.534653, 30.156281, 38.869781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325516, 30.226549, 39.682827>,  <40.869675, 29.752831, 39.333450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325516, 30.226549, 39.682827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.220200, 30.200413, 39.297825>,  <40.157009, 30.184731, 39.066826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.220200, 30.200413, 39.297825>,  <40.325516, 30.226549, 39.682827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220200, 30.200413, 39.297825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952124, -0.143076, 0.270164,
		-0.155364, 0.987552, -0.024542,
		-0.263289, -0.065341, -0.962502,
		40.141212, 30.180811, 39.009075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955524, 30.677458, 39.571556>,  <40.325516, 30.226549, 39.682827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955524, 30.677458, 39.571556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842560, 30.449575, 39.262836>,  <39.774780, 30.312845, 39.077602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842560, 30.449575, 39.262836>,  <39.955524, 30.677458, 39.571556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842560, 30.449575, 39.262836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944440, 0.024087, 0.327799,
		-0.168159, 0.821495, -0.544856,
		-0.282409, -0.569707, -0.771803,
		39.757835, 30.278664, 39.031296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332649, 30.734360, 39.573734>,  <39.955524, 30.677458, 39.571556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332649, 30.734360, 39.573734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.339127, 30.418083, 39.328934>,  <39.343014, 30.228317, 39.182053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.339127, 30.418083, 39.328934>,  <39.332649, 30.734360, 39.573734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339127, 30.418083, 39.328934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991058, -0.093770, 0.094922,
		-0.132441, 0.604992, -0.785140,
		0.016195, -0.790691, -0.612001,
		39.343987, 30.180876, 39.145332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932327, 30.882856, 39.069462>,  <39.332649, 30.734360, 39.573734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932327, 30.882856, 39.069462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.921413, 30.485451, 39.113609>,  <38.914867, 30.247007, 39.140099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.921413, 30.485451, 39.113609>,  <38.932327, 30.882856, 39.069462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921413, 30.485451, 39.113609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982807, 0.046827, 0.178600,
		-0.182610, -0.103599, -0.977712,
		-0.027281, -0.993517, 0.110369,
		38.913231, 30.187395, 39.146721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501213, 30.582220, 38.635582>,  <38.932327, 30.882856, 39.069462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501213, 30.582220, 38.635582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520920, 30.344809, 38.956902>,  <38.532742, 30.202362, 39.149693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520920, 30.344809, 38.956902>,  <38.501213, 30.582220, 38.635582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520920, 30.344809, 38.956902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997858, 0.005417, 0.065197,
		-0.043048, -0.804793, -0.591992,
		0.049263, -0.593531, 0.803302,
		38.535698, 30.166750, 39.197891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040562, 30.001766, 38.488693>,  <38.501213, 30.582220, 38.635582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040562, 30.001766, 38.488693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087395, 30.031794, 38.884808>,  <38.115494, 30.049810, 39.122475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087395, 30.031794, 38.884808>,  <38.040562, 30.001766, 38.488693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087395, 30.031794, 38.884808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972798, -0.192031, 0.129570,
		0.199892, -0.978513, 0.050543,
		0.117080, 0.075068, 0.990281,
		38.122520, 30.054314, 39.181892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395912, 29.737635, 38.725536>,  <38.040562, 30.001766, 38.488693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395912, 29.737635, 38.725536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599514, 29.798878, 39.064354>,  <37.721676, 29.835623, 39.267643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599514, 29.798878, 39.064354>,  <37.395912, 29.737635, 38.725536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599514, 29.798878, 39.064354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851515, 0.233444, 0.469495,
		-0.125854, -0.960241, 0.249195,
		0.509001, 0.153106, 0.847040,
		37.752216, 29.844809, 39.318466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129211, 29.407679, 39.366970>,  <37.395912, 29.737635, 38.725536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129211, 29.407679, 39.366970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366684, 29.691061, 39.519615>,  <37.509167, 29.861092, 39.611202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366684, 29.691061, 39.519615>,  <37.129211, 29.407679, 39.366970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366684, 29.691061, 39.519615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742955, 0.300385, 0.598152,
		0.309154, -0.638611, 0.704699,
		0.593667, 0.708481, 0.381594,
		37.544788, 29.903599, 39.634098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966866, 29.427505, 40.087635>,  <37.129211, 29.407679, 39.366970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966866, 29.427505, 40.087635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.177399, 29.766003, 40.054539>,  <37.303719, 29.969101, 40.034679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.177399, 29.766003, 40.054539>,  <36.966866, 29.427505, 40.087635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177399, 29.766003, 40.054539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680791, 0.477719, 0.555255,
		0.509411, -0.235914, 0.827553,
		0.526331, 0.846244, -0.082747,
		37.335297, 30.019876, 40.029716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159248, 29.622337, 40.757465>,  <36.966866, 29.427505, 40.087635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159248, 29.622337, 40.757465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153835, 29.943140, 40.518600>,  <37.150585, 30.135622, 40.375282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153835, 29.943140, 40.518600>,  <37.159248, 29.622337, 40.757465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153835, 29.943140, 40.518600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769199, 0.373223, 0.518688,
		0.638866, 0.466358, 0.611851,
		-0.013537, 0.802007, -0.597162,
		37.149773, 30.183743, 40.339451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204376, 30.241426, 41.102489>,  <37.159248, 29.622337, 40.757465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204376, 30.241426, 41.102489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998795, 30.350283, 40.777088>,  <36.875446, 30.415596, 40.581848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998795, 30.350283, 40.777088>,  <37.204376, 30.241426, 41.102489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998795, 30.350283, 40.777088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748236, 0.321560, 0.580294,
		0.419511, 0.906940, 0.038356,
		-0.513958, 0.272139, -0.813503,
		36.844608, 30.431925, 40.533039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977592, 30.884806, 41.117363>,  <37.204376, 30.241426, 41.102489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977592, 30.884806, 41.117363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711227, 30.772753, 40.840790>,  <36.551407, 30.705521, 40.674847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711227, 30.772753, 40.840790>,  <36.977592, 30.884806, 41.117363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711227, 30.772753, 40.840790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732498, 0.421237, 0.534795,
		0.141445, 0.862603, -0.485705,
		-0.665913, -0.280133, -0.691437,
		36.511452, 30.688713, 40.633358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557415, 31.477413, 41.046215>,  <36.977592, 30.884806, 41.117363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557415, 31.477413, 41.046215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323868, 31.188271, 40.898392>,  <36.183739, 31.014786, 40.809696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323868, 31.188271, 40.898392>,  <36.557415, 31.477413, 41.046215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323868, 31.188271, 40.898392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760883, 0.328496, 0.559595,
		-0.283108, 0.607923, -0.741808,
		-0.583872, -0.722855, -0.369559,
		36.148705, 30.971415, 40.787525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989799, 31.791979, 40.774014>,  <36.557415, 31.477413, 41.046215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989799, 31.791979, 40.774014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865448, 31.421833, 40.860779>,  <35.790836, 31.199745, 40.912838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865448, 31.421833, 40.860779>,  <35.989799, 31.791979, 40.774014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865448, 31.421833, 40.860779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733957, 0.378738, 0.563795,
		-0.603870, 0.016068, -0.796921,
		-0.310883, -0.925364, 0.216916,
		35.772182, 31.144224, 40.925854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195358, 31.856241, 40.960968>,  <35.989799, 31.791979, 40.774014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195358, 31.856241, 40.960968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317329, 31.528997, 41.155994>,  <35.390511, 31.332651, 41.273010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317329, 31.528997, 41.155994>,  <35.195358, 31.856241, 40.960968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317329, 31.528997, 41.155994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471227, 0.315282, 0.823737,
		-0.827627, -0.480930, -0.289378,
		0.304924, -0.818110, 0.487563,
		35.408806, 31.283564, 41.302261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671295, 31.716122, 41.348724>,  <35.195358, 31.856241, 40.960968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671295, 31.716122, 41.348724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956215, 31.511824, 41.541294>,  <35.127167, 31.389244, 41.656837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956215, 31.511824, 41.541294>,  <34.671295, 31.716122, 41.348724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956215, 31.511824, 41.541294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364677, 0.316749, 0.875603,
		-0.599701, -0.799255, 0.039363,
		0.712298, -0.510746, 0.481425,
		35.169903, 31.358601, 41.685722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413551, 31.320526, 42.001026>,  <34.671295, 31.716122, 41.348724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413551, 31.320526, 42.001026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797340, 31.432779, 42.011307>,  <35.027615, 31.500132, 42.017475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797340, 31.432779, 42.011307>,  <34.413551, 31.320526, 42.001026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797340, 31.432779, 42.011307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121372, 0.329214, 0.936422,
		0.254329, -0.901590, 0.349932,
		0.959471, 0.280631, 0.025699,
		35.085182, 31.516970, 42.019016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750839, 31.230825, 42.676682>,  <34.413551, 31.320526, 42.001026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750839, 31.230825, 42.676682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972622, 31.513481, 42.500847>,  <35.105694, 31.683075, 42.395348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972622, 31.513481, 42.500847>,  <34.750839, 31.230825, 42.676682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972622, 31.513481, 42.500847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348414, 0.282592, 0.893728,
		0.755767, -0.648694, -0.089518,
		0.554458, 0.706639, -0.439588,
		35.138958, 31.725473, 42.368969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509995, 31.239714, 42.831226>,  <34.750839, 31.230825, 42.676682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509995, 31.239714, 42.831226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395775, 31.610403, 42.733536>,  <35.327244, 31.832817, 42.674923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395775, 31.610403, 42.733536>,  <35.509995, 31.239714, 42.831226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395775, 31.610403, 42.733536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571317, 0.369210, 0.732995,
		0.769452, 0.069781, -0.634881,
		-0.285554, 0.926723, -0.244222,
		35.310108, 31.888420, 42.660271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994377, 31.805912, 42.552391>,  <35.509995, 31.239714, 42.831226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994377, 31.805912, 42.552391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694706, 31.916920, 42.792961>,  <35.514904, 31.983524, 42.937305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694706, 31.916920, 42.792961>,  <35.994377, 31.805912, 42.552391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694706, 31.916920, 42.792961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661357, 0.263190, 0.702380,
		0.036634, 0.923966, -0.380716,
		-0.749176, 0.277520, 0.601429,
		35.469952, 32.000175, 42.973389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987659, 31.577112, 41.956860>,  <35.994377, 31.805912, 42.552391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987659, 31.577112, 41.956860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694611, 31.347097, 42.102520>,  <35.518784, 31.209089, 42.189915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694611, 31.347097, 42.102520>,  <35.987659, 31.577112, 41.956860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694611, 31.347097, 42.102520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037027, -0.500544, -0.864919,
		0.679631, -0.647140, 0.345416,
		-0.732619, -0.575036, 0.364147,
		35.474823, 31.174587, 42.211765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121105, 30.729134, 42.084396>,  <35.987659, 31.577112, 41.956860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121105, 30.729134, 42.084396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772568, 30.876120, 41.954327>,  <35.563446, 30.964312, 41.876286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772568, 30.876120, 41.954327>,  <36.121105, 30.729134, 42.084396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772568, 30.876120, 41.954327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157358, -0.418433, -0.894512,
		-0.464764, -0.830592, 0.306774,
		-0.871339, 0.367464, -0.325173,
		35.511166, 30.986359, 41.856773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765099, 30.111343, 41.828636>,  <36.121105, 30.729134, 42.084396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765099, 30.111343, 41.828636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657185, 30.463736, 41.673153>,  <35.592438, 30.675171, 41.579865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657185, 30.463736, 41.673153>,  <35.765099, 30.111343, 41.828636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657185, 30.463736, 41.673153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336992, -0.291766, -0.895159,
		-0.902028, -0.372487, -0.218171,
		-0.269780, 0.880980, -0.388707,
		35.576252, 30.728029, 41.556541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419418, 29.949547, 41.265629>,  <35.765099, 30.111343, 41.828636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419418, 29.949547, 41.265629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520741, 30.316027, 41.141430>,  <35.581535, 30.535915, 41.066910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520741, 30.316027, 41.141430>,  <35.419418, 29.949547, 41.265629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520741, 30.316027, 41.141430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418919, -0.393201, -0.818474,
		-0.871976, 0.077253, -0.483416,
		0.253309, 0.916201, -0.310499,
		35.596733, 30.590887, 41.048279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258022, 30.038532, 40.468143>,  <35.419418, 29.949547, 41.265629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258022, 30.038532, 40.468143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547653, 30.297268, 40.563904>,  <35.721432, 30.452509, 40.621361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547653, 30.297268, 40.563904>,  <35.258022, 30.038532, 40.468143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547653, 30.297268, 40.563904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455019, -0.187143, -0.870595,
		-0.518334, 0.739308, -0.429830,
		0.724078, 0.646839, 0.239396,
		35.764877, 30.491320, 40.635723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437210, 30.504536, 39.911034>,  <35.258022, 30.038532, 40.468143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437210, 30.504536, 39.911034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766384, 30.475313, 40.136402>,  <35.963886, 30.457779, 40.271622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766384, 30.475313, 40.136402>,  <35.437210, 30.504536, 39.911034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766384, 30.475313, 40.136402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515881, -0.319362, -0.794906,
		0.238010, 0.944813, -0.225124,
		0.822933, -0.073058, 0.563422,
		36.013264, 30.453396, 40.305428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953213, 30.417738, 39.464752>,  <35.437210, 30.504536, 39.911034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953213, 30.417738, 39.464752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151592, 30.328321, 39.800388>,  <36.270618, 30.274672, 40.001770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151592, 30.328321, 39.800388>,  <35.953213, 30.417738, 39.464752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151592, 30.328321, 39.800388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783775, -0.300736, -0.543374,
		0.373811, 0.927139, 0.026059,
		0.495946, -0.223543, 0.839086,
		36.300377, 30.261259, 40.052113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528625, 31.068260, 39.471592>,  <35.953213, 30.417738, 39.464752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528625, 31.068260, 39.471592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641388, 30.905939, 39.819351>,  <36.709045, 30.808546, 40.028008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641388, 30.905939, 39.819351>,  <36.528625, 31.068260, 39.471592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641388, 30.905939, 39.819351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791090, -0.414401, -0.449942,
		0.542866, 0.814615, 0.204202,
		0.281908, -0.405801, 0.869398,
		36.725960, 30.784199, 40.080170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218231, 31.195959, 39.523251>,  <36.528625, 31.068260, 39.471592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218231, 31.195959, 39.523251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160557, 30.888477, 39.772507>,  <37.125950, 30.703989, 39.922062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160557, 30.888477, 39.772507>,  <37.218231, 31.195959, 39.523251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160557, 30.888477, 39.772507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877627, -0.390252, -0.278340,
		0.457143, 0.506752, 0.730905,
		-0.144188, -0.768704, 0.623141,
		37.117302, 30.657866, 39.959450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825397, 31.112621, 39.880394>,  <37.218231, 31.195959, 39.523251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825397, 31.112621, 39.880394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643261, 30.756527, 39.875648>,  <37.533978, 30.542870, 39.872799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643261, 30.756527, 39.875648>,  <37.825397, 31.112621, 39.880394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643261, 30.756527, 39.875648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826223, -0.417564, -0.378149,
		0.331687, -0.181992, 0.925669,
		-0.455346, -0.890236, -0.011865,
		37.506657, 30.489456, 39.872089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292908, 30.754467, 40.230022>,  <37.825397, 31.112621, 39.880394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292908, 30.754467, 40.230022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086891, 30.504858, 39.994965>,  <37.963280, 30.355093, 39.853928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086891, 30.504858, 39.994965>,  <38.292908, 30.754467, 40.230022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086891, 30.504858, 39.994965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847021, -0.475672, -0.237258,
		-0.131473, -0.619947, 0.773551,
		-0.515044, -0.624021, -0.587646,
		37.932377, 30.317652, 39.818672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402328, 30.074444, 40.463573>,  <38.292908, 30.754467, 40.230022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402328, 30.074444, 40.463573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311005, 30.051517, 40.074814>,  <38.256210, 30.037762, 39.841557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311005, 30.051517, 40.074814>,  <38.402328, 30.074444, 40.463573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311005, 30.051517, 40.074814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868115, -0.463895, -0.176571,
		-0.440739, -0.884034, 0.155669,
		-0.228309, -0.057317, -0.971900,
		38.242512, 30.034323, 39.783245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597019, 29.418255, 40.263893>,  <38.402328, 30.074444, 40.463573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597019, 29.418255, 40.263893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585670, 29.655960, 39.942387>,  <38.578861, 29.798584, 39.749481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585670, 29.655960, 39.942387>,  <38.597019, 29.418255, 40.263893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585670, 29.655960, 39.942387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964201, -0.195812, -0.178811,
		-0.263649, -0.780068, -0.567435,
		-0.028374, 0.594265, -0.803769,
		38.577160, 29.834240, 39.701256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038494, 28.957897, 39.844383>,  <38.597019, 29.418255, 40.263893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038494, 28.957897, 39.844383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.829811, 29.176931, 39.582706>,  <38.704601, 29.308352, 39.425701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.829811, 29.176931, 39.582706>,  <39.038494, 28.957897, 39.844383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829811, 29.176931, 39.582706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852406, 0.366054, -0.373374,
		0.035015, -0.752431, -0.657739,
		-0.521706, 0.547587, -0.654194,
		38.673298, 29.341208, 39.386448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279068, 28.899084, 39.209644>,  <39.038494, 28.957897, 39.844383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279068, 28.899084, 39.209644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.117645, 29.261904, 39.161636>,  <39.020790, 29.479595, 39.132832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.117645, 29.261904, 39.161636>,  <39.279068, 28.899084, 39.209644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117645, 29.261904, 39.161636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859092, 0.330511, -0.390798,
		-0.314804, -0.260820, -0.912618,
		-0.403558, 0.907048, -0.120022,
		38.996578, 29.534018, 39.125629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287556, 29.070257, 38.473412>,  <39.279068, 28.899084, 39.209644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287556, 29.070257, 38.473412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.299122, 29.415766, 38.674633>,  <39.306061, 29.623072, 38.795364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.299122, 29.415766, 38.674633>,  <39.287556, 29.070257, 38.473412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299122, 29.415766, 38.674633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769619, 0.301902, -0.562620,
		-0.637848, 0.403424, -0.656048,
		0.028913, 0.863773, 0.503051,
		39.307796, 29.674898, 38.825550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721046, 29.421322, 38.041409>,  <39.287556, 29.070257, 38.473412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.721046, 29.421322, 38.041409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.701794, 29.661552, 38.360653>,  <39.690243, 29.805691, 38.552200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.701794, 29.661552, 38.360653>,  <39.721046, 29.421322, 38.041409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.701794, 29.661552, 38.360653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730948, 0.565745, -0.381638,
		-0.680733, 0.565012, -0.466223,
		-0.048133, 0.600578, 0.798116,
		39.687355, 29.841726, 38.600086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756866, 30.051165, 37.746841>,  <39.721046, 29.421322, 38.041409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756866, 30.051165, 37.746841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871727, 30.089558, 38.128067>,  <39.940643, 30.112593, 38.356804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871727, 30.089558, 38.128067>,  <39.756866, 30.051165, 37.746841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871727, 30.089558, 38.128067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815050, 0.498225, -0.295745,
		-0.503227, 0.861719, 0.064837,
		0.287152, 0.095981, 0.953064,
		39.957874, 30.118353, 38.413986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017303, 30.626740, 37.817520>,  <39.756866, 30.051165, 37.746841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.017303, 30.626740, 37.817520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.199318, 30.464321, 38.134525>,  <40.308525, 30.366871, 38.324726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.199318, 30.464321, 38.134525>,  <40.017303, 30.626740, 37.817520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199318, 30.464321, 38.134525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865410, 0.411322, -0.286146,
		-0.209788, 0.816052, 0.538561,
		0.455032, -0.406046, 0.792510,
		40.335827, 30.342506, 38.372280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427029, 31.137053, 38.117085>,  <40.017303, 30.626740, 37.817520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427029, 31.137053, 38.117085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.587452, 30.798714, 38.257771>,  <40.683704, 30.595711, 38.342182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.587452, 30.798714, 38.257771>,  <40.427029, 31.137053, 38.117085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587452, 30.798714, 38.257771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879360, 0.247905, -0.406533,
		0.256673, 0.472323, 0.843226,
		0.401055, -0.845846, 0.351711,
		40.707767, 30.544960, 38.363285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851383, 31.377161, 38.591198>,  <40.427029, 31.137053, 38.117085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.851383, 31.377161, 38.591198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.969124, 31.009434, 38.486729>,  <41.039768, 30.788797, 38.424046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.969124, 31.009434, 38.486729>,  <40.851383, 31.377161, 38.591198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.969124, 31.009434, 38.486729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900259, 0.358443, -0.247088,
		0.320769, -0.162394, 0.933132,
		0.294349, -0.919319, -0.261174,
		41.057430, 30.733639, 38.408375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812004, 32.082878, 38.399834>,  <40.851383, 31.377161, 38.591198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.812004, 32.082878, 38.399834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.210766, 32.094841, 38.428932>,  <41.450024, 32.102020, 38.446392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.210766, 32.094841, 38.428932>,  <40.812004, 32.082878, 38.399834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.210766, 32.094841, 38.428932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033665, 0.998131, 0.050995,
		-0.071082, -0.053286, 0.996046,
		0.996902, 0.029907, 0.072743,
		41.509838, 32.103813, 38.450756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.042850, 31.774122, 37.735481>,  <40.812004, 32.082878, 38.399834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.042850, 31.774122, 37.735481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815414, 31.492554, 37.565212>,  <40.678951, 31.323612, 37.463051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815414, 31.492554, 37.565212>,  <41.042850, 31.774122, 37.735481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.815414, 31.492554, 37.565212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418571, -0.197890, 0.886362,
		-0.708166, 0.682152, -0.182123,
		-0.568593, -0.703923, -0.425668,
		40.644836, 31.281376, 37.437511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334637, 32.041630, 36.961174>,  <41.042850, 31.774122, 37.735481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.334637, 32.041630, 36.961174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360279, 31.934753, 36.576569>,  <41.375664, 31.870628, 36.345806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360279, 31.934753, 36.576569>,  <41.334637, 32.041630, 36.961174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.360279, 31.934753, 36.576569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723035, 0.676519, -0.139790,
		0.687830, -0.686244, 0.236556,
		0.064105, -0.267190, -0.961509,
		41.379509, 31.854597, 36.288116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.110069, 31.869934, 36.769527>,  <41.334637, 32.041630, 36.961174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.110069, 31.869934, 36.769527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.924683, 32.008030, 36.443089>,  <41.813450, 32.090889, 36.247227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.924683, 32.008030, 36.443089>,  <42.110069, 31.869934, 36.769527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.924683, 32.008030, 36.443089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760225, 0.628086, -0.166029,
		0.455258, -0.697364, -0.553555,
		-0.463462, 0.345241, -0.816095,
		41.785645, 32.111603, 36.198261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.582920, 31.887808, 36.323662>,  <42.110069, 31.869934, 36.769527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.582920, 31.887808, 36.323662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.295517, 32.150967, 36.233398>,  <42.123077, 32.308861, 36.179241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.295517, 32.150967, 36.233398>,  <42.582920, 31.887808, 36.323662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.295517, 32.150967, 36.233398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652804, 0.749847, 0.107587,
		0.239990, -0.070008, -0.968248,
		-0.718506, 0.657896, -0.225658,
		42.079964, 32.348335, 36.165703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.853935, 32.273979, 35.807579>,  <42.582920, 31.887808, 36.323662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.853935, 32.273979, 35.807579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.592262, 32.460918, 36.045448>,  <42.435261, 32.573082, 36.188171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.592262, 32.460918, 36.045448>,  <42.853935, 32.273979, 35.807579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.592262, 32.460918, 36.045448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596395, 0.802283, 0.025570,
		-0.465148, 0.371390, -0.803559,
		-0.654178, 0.467345, 0.594676,
		42.396008, 32.601120, 36.223850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.661434, 32.974991, 35.452892>,  <42.853935, 32.273979, 35.807579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.661434, 32.974991, 35.452892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.641033, 32.983952, 35.852272>,  <42.628792, 32.989326, 36.091900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.641033, 32.983952, 35.852272>,  <42.661434, 32.974991, 35.452892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.641033, 32.983952, 35.852272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510553, 0.859820, 0.006791,
		-0.858333, 0.510106, -0.055289,
		-0.051003, 0.022399, 0.998447,
		42.625732, 32.990673, 36.151806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.626881, 33.675030, 35.742752>,  <42.661434, 32.974991, 35.452892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.626881, 33.675030, 35.742752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785816, 33.475399, 36.050789>,  <42.881180, 33.355621, 36.235611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785816, 33.475399, 36.050789>,  <42.626881, 33.675030, 35.742752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785816, 33.475399, 36.050789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457503, 0.835189, 0.305204,
		-0.795494, 0.231050, 0.560183,
		0.397341, -0.499074, 0.770094,
		42.905018, 33.325676, 36.281818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.457474, 33.915211, 36.418140>,  <42.626881, 33.675030, 35.742752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.457474, 33.915211, 36.418140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.828342, 33.767090, 36.395435>,  <43.050865, 33.678215, 36.381813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.828342, 33.767090, 36.395435>,  <42.457474, 33.915211, 36.418140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.828342, 33.767090, 36.395435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371786, 0.928147, 0.017860,
		0.046073, -0.037664, 0.998228,
		0.927175, -0.370304, -0.056765,
		43.106495, 33.655998, 36.378407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.934162, 33.953972, 37.117012>,  <42.457474, 33.915211, 36.418140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.934162, 33.953972, 37.117012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.124355, 33.969978, 36.765488>,  <43.238472, 33.979580, 36.554573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.124355, 33.969978, 36.765488>,  <42.934162, 33.953972, 37.117012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.124355, 33.969978, 36.765488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221046, 0.961482, 0.163376,
		0.851500, -0.271942, 0.448326,
		0.475486, 0.040014, -0.878813,
		43.267002, 33.981983, 36.501842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.647141, 34.161362, 37.283199>,  <42.934162, 33.953972, 37.117012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.647141, 34.161362, 37.283199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.563232, 34.241783, 36.900455>,  <43.512886, 34.290035, 36.670811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.563232, 34.241783, 36.900455>,  <43.647141, 34.161362, 37.283199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.563232, 34.241783, 36.900455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432908, 0.896578, 0.093482,
		0.876691, -0.394620, -0.275115,
		-0.209772, 0.201054, -0.956856,
		43.500301, 34.302101, 36.613400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.249119, 34.408318, 36.889736>,  <43.647141, 34.161362, 37.283199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.249119, 34.408318, 36.889736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.925304, 34.535885, 36.692577>,  <43.731014, 34.612427, 36.574284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.925304, 34.535885, 36.692577>,  <44.249119, 34.408318, 36.889736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.925304, 34.535885, 36.692577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395785, 0.916573, -0.056987,
		0.433598, -0.241213, -0.868222,
		-0.809535, 0.318920, -0.492892,
		43.682446, 34.631561, 36.544708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.890617, 34.412834, 37.369114>,  <44.249119, 34.408318, 36.889736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.890617, 34.412834, 37.369114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.970539, 34.027420, 37.297920>,  <45.018494, 33.796173, 37.255203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.970539, 34.027420, 37.297920>,  <44.890617, 34.412834, 37.369114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.970539, 34.027420, 37.297920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846478, 0.261231, -0.463932,
		0.493509, -0.057960, 0.867808,
		0.199809, -0.963535, -0.177982,
		45.030483, 33.738361, 37.244526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.628929, 34.199398, 37.555893>,  <44.890617, 34.412834, 37.369114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.628929, 34.199398, 37.555893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.511105, 33.924187, 37.290611>,  <45.440411, 33.759060, 37.131443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.511105, 33.924187, 37.290611>,  <45.628929, 34.199398, 37.555893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.511105, 33.924187, 37.290611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903975, 0.024473, -0.426885,
		0.309941, -0.725268, 0.614754,
		-0.294562, -0.688032, -0.663209,
		45.422737, 33.717777, 37.091648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.065281, 33.593346, 37.561901>,  <45.628929, 34.199398, 37.555893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.065281, 33.593346, 37.561901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.915146, 33.650951, 37.195648>,  <45.825066, 33.685516, 36.975895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.915146, 33.650951, 37.195648>,  <46.065281, 33.593346, 37.561901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.915146, 33.650951, 37.195648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924659, -0.010318, -0.380657,
		-0.064268, -0.989522, -0.129294,
		-0.375334, 0.144017, -0.915633,
		45.802544, 33.694157, 36.920959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.346344, 33.070438, 37.030838>,  <46.065281, 33.593346, 37.561901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.346344, 33.070438, 37.030838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.224789, 33.398247, 36.836506>,  <46.151855, 33.594933, 36.719906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.224789, 33.398247, 36.836506>,  <46.346344, 33.070438, 37.030838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.224789, 33.398247, 36.836506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858728, 0.014777, -0.512218,
		-0.412596, -0.572855, -0.708239,
		-0.303892, 0.819524, -0.485830,
		46.133621, 33.644104, 36.690758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.241226, 32.955524, 36.257030>,  <46.346344, 33.070438, 37.030838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.241226, 32.955524, 36.257030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.344997, 33.336075, 36.323452>,  <46.407261, 33.564407, 36.363304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.344997, 33.336075, 36.323452>,  <46.241226, 32.955524, 36.257030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.344997, 33.336075, 36.323452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550974, -0.004587, -0.834510,
		-0.793173, 0.307990, -0.525375,
		0.259431, 0.951378, 0.166056,
		46.422825, 33.621487, 36.373268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.031742, 33.408680, 35.830471>,  <46.241226, 32.955524, 36.257030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.031742, 33.408680, 35.830471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.381058, 33.566860, 35.944298>,  <46.590649, 33.661766, 36.012596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.381058, 33.566860, 35.944298>,  <46.031742, 33.408680, 35.830471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.381058, 33.566860, 35.944298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374584, -0.171514, -0.911191,
		-0.311521, 0.902332, -0.297910,
		0.873293, 0.395448, 0.284570,
		46.643047, 33.685493, 36.029667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.153282, 33.878841, 35.318386>,  <46.031742, 33.408680, 35.830471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.153282, 33.878841, 35.318386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.466877, 33.720497, 35.509655>,  <46.655033, 33.625488, 35.624416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.466877, 33.720497, 35.509655>,  <46.153282, 33.878841, 35.318386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.466877, 33.720497, 35.509655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447232, -0.174018, -0.877326,
		0.430514, 0.901670, 0.040615,
		0.783991, -0.395865, 0.478172,
		46.702076, 33.601738, 35.653107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.599060, 34.180725, 34.940331>,  <46.153282, 33.878841, 35.318386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.599060, 34.180725, 34.940331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.818436, 33.902241, 35.125591>,  <46.950062, 33.735149, 35.236748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.818436, 33.902241, 35.125591>,  <46.599060, 34.180725, 34.940331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.818436, 33.902241, 35.125591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579548, -0.082789, -0.810722,
		0.602776, 0.713049, 0.358082,
		0.548439, -0.696209, 0.463150,
		46.982967, 33.693378, 35.264538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.316433, 34.338745, 34.896652>,  <46.599060, 34.180725, 34.940331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.316433, 34.338745, 34.896652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.211224, 33.952908, 34.888863>,  <47.148098, 33.721405, 34.884190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.211224, 33.952908, 34.888863>,  <47.316433, 34.338745, 34.896652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.211224, 33.952908, 34.888863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379244, -0.084809, -0.921402,
		0.887125, -0.249739, 0.388123,
		-0.263027, -0.964592, -0.019476,
		47.132317, 33.663528, 34.883018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.327564, 35.078037, 35.105045>,  <47.316433, 34.338745, 34.896652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.327564, 35.078037, 35.105045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.726303, 35.053791, 35.125511>,  <47.965546, 35.039246, 35.137791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.726303, 35.053791, 35.125511>,  <47.327564, 35.078037, 35.105045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.726303, 35.053791, 35.125511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064667, 0.994556, -0.081715,
		-0.045929, 0.084766, 0.995342,
		0.996849, -0.060612, 0.051161,
		48.025356, 35.035606, 35.140858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.129452, 26.627556, 27.004896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.929436, 26.923771, 26.825314>,  <36.809425, 27.101500, 26.717564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.929436, 26.923771, 26.825314>,  <37.129452, 26.627556, 27.004896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929436, 26.923771, 26.825314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232543, 0.384564, 0.893328,
		0.834196, 0.551102, -0.020091,
		-0.500041, 0.740538, -0.448957,
		36.779423, 27.145933, 26.690626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324139, 27.293028, 27.406807>,  <37.129452, 26.627556, 27.004896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324139, 27.293028, 27.406807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.966358, 27.368938, 27.244846>,  <36.751690, 27.414484, 27.147671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.966358, 27.368938, 27.244846>,  <37.324139, 27.293028, 27.406807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966358, 27.368938, 27.244846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247909, 0.543134, 0.802214,
		0.372157, 0.817919, -0.438758,
		-0.894450, 0.189777, -0.404900,
		36.698025, 27.425871, 27.123377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201721, 27.953342, 27.676065>,  <37.324139, 27.293028, 27.406807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201721, 27.953342, 27.676065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.839939, 27.817951, 27.572220>,  <36.622871, 27.736717, 27.509912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.839939, 27.817951, 27.572220>,  <37.201721, 27.953342, 27.676065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839939, 27.817951, 27.572220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404999, 0.490261, 0.771764,
		-0.133946, 0.803167, -0.580501,
		-0.904452, -0.338477, -0.259613,
		36.568604, 27.716408, 27.494335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686302, 28.528847, 27.641800>,  <37.201721, 27.953342, 27.676065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686302, 28.528847, 27.641800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.449379, 28.217007, 27.723185>,  <36.307224, 28.029903, 27.772015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.449379, 28.217007, 27.723185>,  <36.686302, 28.528847, 27.641800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449379, 28.217007, 27.723185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413013, 0.510602, 0.754126,
		-0.691805, 0.362641, -0.624418,
		-0.592306, -0.779601, 0.203461,
		36.271687, 27.983126, 27.784224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097527, 28.776323, 27.816822>,  <36.686302, 28.528847, 27.641800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097527, 28.776323, 27.816822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.053555, 28.404806, 27.958389>,  <36.027172, 28.181896, 28.043329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.053555, 28.404806, 27.958389>,  <36.097527, 28.776323, 27.816822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053555, 28.404806, 27.958389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451156, 0.363909, 0.814879,
		-0.885649, -0.070097, -0.459034,
		-0.109926, -0.928793, 0.353920,
		36.020576, 28.126167, 28.064566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411602, 28.778217, 28.298399>,  <36.097527, 28.776323, 27.816822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411602, 28.778217, 28.298399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.648552, 28.470133, 28.392946>,  <35.790722, 28.285282, 28.449675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.648552, 28.470133, 28.392946>,  <35.411602, 28.778217, 28.298399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648552, 28.470133, 28.392946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112331, 0.211559, 0.970889,
		-0.797793, -0.601682, 0.038804,
		0.592375, -0.770209, 0.236368,
		35.826263, 28.239071, 28.463856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115292, 28.629005, 28.968893>,  <35.411602, 28.778217, 28.298399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115292, 28.629005, 28.968893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.469448, 28.443457, 28.956852>,  <35.681942, 28.332129, 28.949627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.469448, 28.443457, 28.956852>,  <35.115292, 28.629005, 28.968893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469448, 28.443457, 28.956852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129072, 0.183118, 0.974581,
		-0.446568, -0.866771, 0.222004,
		0.885391, -0.463871, -0.030101,
		35.735065, 28.304295, 28.947821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027569, 28.179756, 29.496576>,  <35.115292, 28.629005, 28.968893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027569, 28.179756, 29.496576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.424721, 28.195936, 29.451777>,  <35.663013, 28.205645, 29.424896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.424721, 28.195936, 29.451777>,  <35.027569, 28.179756, 29.496576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424721, 28.195936, 29.451777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112617, -0.013273, 0.993550,
		0.038703, -0.999093, -0.017734,
		0.992884, 0.040450, -0.112001,
		35.722588, 28.208071, 29.418177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260658, 27.789497, 30.050446>,  <35.027569, 28.179756, 29.496576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260658, 27.789497, 30.050446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.563610, 28.022928, 29.933266>,  <35.745380, 28.162987, 29.862957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.563610, 28.022928, 29.933266>,  <35.260658, 27.789497, 30.050446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563610, 28.022928, 29.933266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347902, 0.019022, 0.937338,
		0.552582, -0.811834, -0.188621,
		0.757375, 0.583578, -0.292951,
		35.790821, 28.198002, 29.845381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859726, 27.456734, 30.332520>,  <35.260658, 27.789497, 30.050446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859726, 27.456734, 30.332520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.911121, 27.849703, 30.278358>,  <35.941959, 28.085484, 30.245861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.911121, 27.849703, 30.278358>,  <35.859726, 27.456734, 30.332520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911121, 27.849703, 30.278358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482315, 0.057395, 0.874116,
		0.866523, -0.177624, -0.466462,
		0.128492, 0.982423, -0.135405,
		35.949669, 28.144430, 30.237738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584877, 27.602100, 30.595243>,  <35.859726, 27.456734, 30.332520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584877, 27.602100, 30.595243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.422245, 27.966240, 30.564362>,  <36.324665, 28.184723, 30.545832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.422245, 27.966240, 30.564362>,  <36.584877, 27.602100, 30.595243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422245, 27.966240, 30.564362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467048, 0.279732, 0.838818,
		0.785213, 0.304987, -0.538910,
		-0.406579, 0.910347, -0.077206,
		36.300270, 28.239344, 30.541201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119747, 27.946558, 30.918030>,  <36.584877, 27.602100, 30.595243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119747, 27.946558, 30.918030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.817997, 28.205963, 30.877344>,  <36.636948, 28.361607, 30.852934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.817997, 28.205963, 30.877344>,  <37.119747, 27.946558, 30.918030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817997, 28.205963, 30.877344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138254, 0.308433, 0.941145,
		0.641716, 0.695917, -0.322335,
		-0.754378, 0.648513, -0.101713,
		36.591682, 28.400517, 30.846830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269810, 28.616528, 31.163296>,  <37.119747, 27.946558, 30.918030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269810, 28.616528, 31.163296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.877495, 28.551561, 31.206511>,  <36.642105, 28.512583, 31.232439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.877495, 28.551561, 31.206511>,  <37.269810, 28.616528, 31.163296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877495, 28.551561, 31.206511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071597, 0.215467, 0.973883,
		-0.181451, 0.962910, -0.199699,
		-0.980790, -0.162414, 0.108038,
		36.583260, 28.502836, 31.238922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018799, 29.119804, 31.681103>,  <37.269810, 28.616528, 31.163296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018799, 29.119804, 31.681103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.681023, 28.905569, 31.677923>,  <36.478355, 28.777027, 31.676016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.681023, 28.905569, 31.677923>,  <37.018799, 29.119804, 31.681103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681023, 28.905569, 31.677923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233919, 0.355377, 0.904980,
		-0.481872, 0.766063, -0.425379,
		-0.844442, -0.535589, -0.007950,
		36.427689, 28.744892, 31.675539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533611, 29.509523, 31.937027>,  <37.018799, 29.119804, 31.681103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533611, 29.509523, 31.937027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.386517, 29.142399, 31.996883>,  <36.298260, 28.922123, 32.032799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.386517, 29.142399, 31.996883>,  <36.533611, 29.509523, 31.937027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386517, 29.142399, 31.996883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252032, 0.253261, 0.933991,
		-0.895127, 0.305744, -0.324451,
		-0.367733, -0.917812, 0.149643,
		36.276196, 28.867056, 32.041775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812107, 29.598972, 32.327969>,  <36.533611, 29.509523, 31.937027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812107, 29.598972, 32.327969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.931599, 29.219406, 32.368603>,  <36.003292, 28.991667, 32.392982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.931599, 29.219406, 32.368603>,  <35.812107, 29.598972, 32.327969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931599, 29.219406, 32.368603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112887, 0.070562, 0.991099,
		-0.947639, -0.307533, -0.086041,
		0.298725, -0.948917, 0.101584,
		36.021217, 28.934731, 32.399078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348499, 29.359709, 32.762959>,  <35.812107, 29.598972, 32.327969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348499, 29.359709, 32.762959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.620628, 29.067862, 32.790718>,  <35.783905, 28.892754, 32.807373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.620628, 29.067862, 32.790718>,  <35.348499, 29.359709, 32.762959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620628, 29.067862, 32.790718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159067, -0.054554, 0.985759,
		-0.715440, -0.681677, -0.153172,
		0.680326, -0.729617, 0.069403,
		35.824726, 28.848976, 32.811539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065845, 28.750473, 33.023602>,  <35.348499, 29.359709, 32.762959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.065845, 28.750473, 33.023602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.457165, 28.728882, 33.103622>,  <35.691956, 28.715927, 33.151634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.457165, 28.728882, 33.103622>,  <35.065845, 28.750473, 33.023602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457165, 28.728882, 33.103622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207115, -0.225518, 0.951969,
		-0.006270, -0.972742, -0.231804,
		0.978296, -0.053979, 0.200055,
		35.750652, 28.712688, 33.163639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182949, 28.158089, 33.399502>,  <35.065845, 28.750473, 33.023602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182949, 28.158089, 33.399502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.508858, 28.368332, 33.497391>,  <35.704403, 28.494478, 33.556126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.508858, 28.368332, 33.497391>,  <35.182949, 28.158089, 33.399502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508858, 28.368332, 33.497391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120200, -0.259786, 0.958156,
		0.567190, -0.810091, -0.148487,
		0.814768, 0.525608, 0.244721,
		35.753288, 28.526014, 33.570808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665512, 27.719528, 33.797932>,  <35.182949, 28.158089, 33.399502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665512, 27.719528, 33.797932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.764454, 28.091246, 33.907646>,  <35.823818, 28.314276, 33.973476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.764454, 28.091246, 33.907646>,  <35.665512, 27.719528, 33.797932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764454, 28.091246, 33.907646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080314, -0.262444, 0.961599,
		0.965591, -0.259885, 0.009719,
		0.247354, 0.929292, 0.274286,
		35.838661, 28.370033, 33.989933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151428, 27.668068, 34.365372>,  <35.665512, 27.719528, 33.797932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151428, 27.668068, 34.365372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.996971, 28.035522, 34.398849>,  <35.904297, 28.255995, 34.418938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.996971, 28.035522, 34.398849>,  <36.151428, 27.668068, 34.365372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996971, 28.035522, 34.398849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066057, -0.062960, 0.995828,
		0.920071, 0.390059, -0.036371,
		-0.386141, 0.918635, 0.083694,
		35.881130, 28.311113, 34.423958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632881, 28.059538, 34.870220>,  <36.151428, 27.668068, 34.365372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632881, 28.059538, 34.870220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.265511, 28.216293, 34.848633>,  <36.045086, 28.310347, 34.835682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.265511, 28.216293, 34.848633>,  <36.632881, 28.059538, 34.870220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265511, 28.216293, 34.848633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098035, -0.093309, 0.990799,
		0.383248, 0.915268, 0.124116,
		-0.918428, 0.391889, -0.053967,
		35.989983, 28.333860, 34.832443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108730, 28.266453, 35.428860>,  <36.632881, 28.059538, 34.870220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108730, 28.266453, 35.428860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.408997, 28.049044, 35.579102>,  <37.589157, 27.918598, 35.669247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.408997, 28.049044, 35.579102>,  <37.108730, 28.266453, 35.428860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408997, 28.049044, 35.579102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269126, -0.267651, -0.925167,
		0.603381, 0.795579, -0.054642,
		0.750668, -0.543522, 0.375607,
		37.634197, 27.885986, 35.691784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697708, 28.355803, 34.943241>,  <37.108730, 28.266453, 35.428860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697708, 28.355803, 34.943241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.798878, 28.017286, 35.130783>,  <37.859577, 27.814177, 35.243309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.798878, 28.017286, 35.130783>,  <37.697708, 28.355803, 34.943241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798878, 28.017286, 35.130783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121873, -0.452884, -0.883201,
		0.959780, 0.280520, -0.011404,
		0.252920, -0.846289, 0.468857,
		37.874752, 27.763399, 35.271439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139328, 28.137661, 34.590889>,  <37.697708, 28.355803, 34.943241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139328, 28.137661, 34.590889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.018169, 27.804798, 34.776695>,  <37.945477, 27.605082, 34.888180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.018169, 27.804798, 34.776695>,  <38.139328, 28.137661, 34.590889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018169, 27.804798, 34.776695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041676, -0.475378, -0.878794,
		0.952112, -0.285541, 0.109308,
		-0.302894, -0.832155, 0.464514,
		37.927299, 27.555151, 34.916050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525677, 27.556297, 34.410503>,  <38.139328, 28.137661, 34.590889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525677, 27.556297, 34.410503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.190121, 27.379913, 34.538139>,  <37.988789, 27.274082, 34.614719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.190121, 27.379913, 34.538139>,  <38.525677, 27.556297, 34.410503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190121, 27.379913, 34.538139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023608, -0.556205, -0.830710,
		0.543787, -0.704408, 0.456185,
		-0.838891, -0.440960, 0.319086,
		37.938454, 27.247625, 34.633865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710560, 26.867193, 34.434006>,  <38.525677, 27.556297, 34.410503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710560, 26.867193, 34.434006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.313030, 26.892000, 34.397217>,  <38.074512, 26.906885, 34.375145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.313030, 26.892000, 34.397217>,  <38.710560, 26.867193, 34.434006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313030, 26.892000, 34.397217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049309, -0.495714, -0.867085,
		-0.099366, -0.866269, 0.489597,
		-0.993829, 0.062017, -0.091972,
		38.014881, 26.910604, 34.369625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541031, 26.354765, 34.094910>,  <38.710560, 26.867193, 34.434006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541031, 26.354765, 34.094910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.174442, 26.511723, 34.063633>,  <37.954491, 26.605898, 34.044868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.174442, 26.511723, 34.063633>,  <38.541031, 26.354765, 34.094910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174442, 26.511723, 34.063633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086336, -0.384762, -0.918969,
		-0.390712, -0.835442, 0.386497,
		-0.916455, 0.392421, -0.078202,
		37.899502, 26.629440, 34.040176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028507, 25.804535, 33.883633>,  <38.541031, 26.354765, 34.094910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028507, 25.804535, 33.883633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.872940, 26.160919, 33.789879>,  <37.779598, 26.374750, 33.733627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.872940, 26.160919, 33.789879>,  <38.028507, 25.804535, 33.883633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872940, 26.160919, 33.789879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019897, -0.246228, -0.969008,
		-0.921057, -0.381529, 0.078036,
		-0.388919, 0.890958, -0.234381,
		37.756264, 26.428207, 33.719566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681873, 25.572578, 33.326687>,  <38.028507, 25.804535, 33.883633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681873, 25.572578, 33.326687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.697350, 25.971025, 33.295055>,  <37.706635, 26.210094, 33.276077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.697350, 25.971025, 33.295055>,  <37.681873, 25.572578, 33.326687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697350, 25.971025, 33.295055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004358, -0.078973, -0.996867,
		-0.999242, 0.038915, 0.001286,
		0.038692, 0.996117, -0.079083,
		37.708958, 26.269861, 33.271332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219845, 25.903612, 32.828613>,  <37.681873, 25.572578, 33.326687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219845, 25.903612, 32.828613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.506439, 26.180817, 32.860561>,  <37.678398, 26.347139, 32.879730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.506439, 26.180817, 32.860561>,  <37.219845, 25.903612, 32.828613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506439, 26.180817, 32.860561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145489, -0.036467, -0.988688,
		-0.682259, 0.720003, -0.126954,
		0.716488, 0.693012, 0.079873,
		37.721386, 26.388720, 32.884521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113686, 26.313921, 32.274921>,  <37.219845, 25.903612, 32.828613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113686, 26.313921, 32.274921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.486317, 26.410727, 32.383434>,  <37.709896, 26.468811, 32.448540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.486317, 26.410727, 32.383434>,  <37.113686, 26.313921, 32.274921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486317, 26.410727, 32.383434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277846, 0.007248, -0.960598,
		-0.234446, 0.970245, -0.060491,
		0.931577, 0.242015, 0.271279,
		37.765789, 26.483332, 32.464817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283100, 26.757818, 31.770020>,  <37.113686, 26.313921, 32.274921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283100, 26.757818, 31.770020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.639797, 26.651443, 31.916483>,  <37.853817, 26.587618, 32.004360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.639797, 26.651443, 31.916483>,  <37.283100, 26.757818, 31.770020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639797, 26.651443, 31.916483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403734, 0.101999, -0.909173,
		0.204435, 0.958579, 0.198325,
		0.891743, -0.265938, 0.366158,
		37.907322, 26.571663, 32.026329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743916, 27.160492, 31.369272>,  <37.283100, 26.757818, 31.770020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743916, 27.160492, 31.369272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.964596, 26.865833, 31.525723>,  <38.097004, 26.689039, 31.619593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.964596, 26.865833, 31.525723>,  <37.743916, 27.160492, 31.369272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964596, 26.865833, 31.525723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367990, -0.205845, -0.906759,
		0.748470, 0.644191, 0.157513,
		0.551702, -0.736645, 0.391124,
		38.130108, 26.644840, 31.643061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377060, 27.196175, 31.065763>,  <37.743916, 27.160492, 31.369272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377060, 27.196175, 31.065763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.386234, 26.815569, 31.188463>,  <38.391739, 26.587206, 31.262083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.386234, 26.815569, 31.188463>,  <38.377060, 27.196175, 31.065763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386234, 26.815569, 31.188463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383674, -0.274957, -0.881585,
		0.923184, 0.137914, 0.358764,
		0.022938, -0.951514, 0.306750,
		38.393116, 26.530115, 31.280489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046192, 26.972057, 30.934313>,  <38.377060, 27.196175, 31.065763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046192, 26.972057, 30.934313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.826756, 26.637848, 30.946617>,  <38.695095, 26.437323, 30.953999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.826756, 26.637848, 30.946617>,  <39.046192, 26.972057, 30.934313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826756, 26.637848, 30.946617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457626, -0.330852, -0.825297,
		0.699733, -0.438674, 0.563860,
		-0.548591, -0.835525, 0.030760,
		38.662178, 26.387190, 30.955845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531315, 26.500208, 30.830357>,  <39.046192, 26.972057, 30.934313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531315, 26.500208, 30.830357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.172283, 26.365044, 30.717098>,  <38.956863, 26.283945, 30.649143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.172283, 26.365044, 30.717098>,  <39.531315, 26.500208, 30.830357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172283, 26.365044, 30.717098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400010, -0.354248, -0.845281,
		0.185326, -0.871966, 0.453132,
		-0.897578, -0.337910, -0.283144,
		38.903011, 26.263670, 30.632154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644939, 25.901258, 30.489235>,  <39.531315, 26.500208, 30.830357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644939, 25.901258, 30.489235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.282986, 26.015120, 30.362648>,  <39.065811, 26.083437, 30.286695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.282986, 26.015120, 30.362648>,  <39.644939, 25.901258, 30.489235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282986, 26.015120, 30.362648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281870, -0.156375, -0.946623,
		-0.318949, -0.945790, 0.061267,
		-0.904887, 0.284655, -0.316465,
		39.011520, 26.100515, 30.267708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297218, 25.339249, 29.936144>,  <39.644939, 25.901258, 30.489235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297218, 25.339249, 29.936144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.060677, 25.655567, 29.872967>,  <38.918751, 25.845358, 29.835060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.060677, 25.655567, 29.872967>,  <39.297218, 25.339249, 29.936144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060677, 25.655567, 29.872967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007298, -0.190604, -0.981640,
		-0.806382, -0.581645, 0.106942,
		-0.591350, 0.790796, -0.157945,
		38.883270, 25.892805, 29.825583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902580, 25.060184, 29.411983>,  <39.297218, 25.339249, 29.936144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902580, 25.060184, 29.411983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.845337, 25.455828, 29.398186>,  <38.810993, 25.693213, 29.389906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.845337, 25.455828, 29.398186>,  <38.902580, 25.060184, 29.411983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845337, 25.455828, 29.398186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169487, -0.058831, -0.983775,
		-0.975087, -0.134937, 0.176060,
		-0.143106, 0.989106, -0.034495,
		38.802406, 25.752560, 29.387836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.243187, 25.209339, 28.859848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.468319, 25.534925, 28.917370>,  <38.603397, 25.730278, 28.951883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.468319, 25.534925, 28.917370>,  <38.243187, 25.209339, 28.859848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468319, 25.534925, 28.917370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224487, 0.016913, -0.974330,
		-0.795505, 0.580665, -0.173206,
		0.562830, 0.813967, 0.143806,
		38.637169, 25.779116, 28.960512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043770, 25.780447, 28.492599>,  <38.243187, 25.209339, 28.859848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043770, 25.780447, 28.492599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.418507, 25.894835, 28.573154>,  <38.643349, 25.963467, 28.621487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.418507, 25.894835, 28.573154>,  <38.043770, 25.780447, 28.492599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418507, 25.894835, 28.573154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090806, 0.357176, -0.929613,
		-0.337770, 0.889184, 0.308649,
		0.936838, 0.285968, 0.201386,
		38.699558, 25.980625, 28.633570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220631, 26.500780, 28.230909>,  <38.043770, 25.780447, 28.492599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220631, 26.500780, 28.230909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.571014, 26.308140, 28.241922>,  <38.781246, 26.192556, 28.248529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.571014, 26.308140, 28.241922>,  <38.220631, 26.500780, 28.230909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571014, 26.308140, 28.241922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228271, 0.363559, -0.903171,
		0.424957, 0.797425, 0.428398,
		0.875959, -0.481599, 0.027532,
		38.833801, 26.163660, 28.250181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690277, 26.959150, 27.976805>,  <38.220631, 26.500780, 28.230909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690277, 26.959150, 27.976805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.880447, 26.608915, 27.942579>,  <38.994549, 26.398775, 27.922045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.880447, 26.608915, 27.942579>,  <38.690277, 26.959150, 27.976805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880447, 26.608915, 27.942579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423266, 0.312909, -0.850255,
		0.771246, 0.368014, 0.519370,
		0.475422, -0.875587, -0.085562,
		39.023075, 26.346239, 27.916910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357563, 27.138861, 27.700245>,  <38.690277, 26.959150, 27.976805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357563, 27.138861, 27.700245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.268017, 26.763979, 27.593264>,  <39.214291, 26.539049, 27.529076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.268017, 26.763979, 27.593264>,  <39.357563, 27.138861, 27.700245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268017, 26.763979, 27.593264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307430, 0.192502, -0.931896,
		0.924863, -0.290841, 0.245031,
		-0.223864, -0.937206, -0.267451,
		39.200859, 26.482817, 27.513029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866638, 27.027660, 27.159769>,  <39.357563, 27.138861, 27.700245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866638, 27.027660, 27.159769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.612194, 26.725296, 27.097855>,  <39.459526, 26.543877, 27.060705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.612194, 26.725296, 27.097855>,  <39.866638, 27.027660, 27.159769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612194, 26.725296, 27.097855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262297, -0.023187, -0.964708,
		0.725645, -0.654263, 0.213023,
		-0.636112, -0.755912, -0.154786,
		39.421360, 26.498522, 27.051418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254383, 26.637218, 26.720718>,  <39.866638, 27.027660, 27.159769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254383, 26.637218, 26.720718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.890682, 26.476843, 26.675989>,  <39.672462, 26.380617, 26.649151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.890682, 26.476843, 26.675989>,  <40.254383, 26.637218, 26.720718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890682, 26.476843, 26.675989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243538, -0.294565, -0.924078,
		0.337560, -0.867455, 0.365479,
		-0.909254, -0.400940, -0.111825,
		39.617905, 26.356562, 26.642441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402458, 25.949005, 26.511246>,  <40.254383, 26.637218, 26.720718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402458, 25.949005, 26.511246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.030487, 26.045547, 26.400263>,  <39.807304, 26.103472, 26.333673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.030487, 26.045547, 26.400263>,  <40.402458, 25.949005, 26.511246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030487, 26.045547, 26.400263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194581, -0.317279, -0.928155,
		-0.312021, -0.917112, 0.248091,
		-0.929936, 0.241331, -0.277450,
		39.751511, 26.117954, 26.317026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026939, 25.362228, 26.340250>,  <40.402458, 25.949005, 26.511246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026939, 25.362228, 26.340250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.854374, 25.651333, 26.124287>,  <39.750835, 25.824795, 25.994709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.854374, 25.651333, 26.124287>,  <40.026939, 25.362228, 26.340250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854374, 25.651333, 26.124287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315957, -0.439515, -0.840832,
		-0.845018, -0.533332, -0.038750,
		-0.431411, 0.722761, -0.539908,
		39.724949, 25.868160, 25.962315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659367, 25.018946, 25.847042>,  <40.026939, 25.362228, 26.340250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659367, 25.018946, 25.847042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.705578, 25.379787, 25.680735>,  <39.733307, 25.596292, 25.580950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.705578, 25.379787, 25.680735>,  <39.659367, 25.018946, 25.847042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705578, 25.379787, 25.680735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291934, -0.430923, -0.853862,
		-0.949435, -0.022728, -0.313140,
		0.115533, 0.902102, -0.415769,
		39.740238, 25.650417, 25.556004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423210, 24.915533, 25.140490>,  <39.659367, 25.018946, 25.847042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423210, 24.915533, 25.140490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.623684, 25.261646, 25.136505>,  <39.743969, 25.469315, 25.134113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.623684, 25.261646, 25.136505>,  <39.423210, 24.915533, 25.140490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623684, 25.261646, 25.136505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363368, -0.220887, -0.905082,
		-0.785354, 0.449991, -0.425121,
		0.501182, 0.865285, -0.009962,
		39.774040, 25.521233, 25.133516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286453, 25.187834, 24.490097>,  <39.423210, 24.915533, 25.140490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286453, 25.187834, 24.490097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.623779, 25.357912, 24.621565>,  <39.826176, 25.459959, 24.700445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.623779, 25.357912, 24.621565>,  <39.286453, 25.187834, 24.490097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623779, 25.357912, 24.621565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428740, -0.163549, -0.888501,
		-0.324035, 0.890201, -0.320223,
		0.843317, 0.425198, 0.328669,
		39.876774, 25.485472, 24.720165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537392, 25.407022, 23.889862>,  <39.286453, 25.187834, 24.490097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537392, 25.407022, 23.889862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.844521, 25.419573, 24.145819>,  <40.028797, 25.427103, 24.299393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.844521, 25.419573, 24.145819>,  <39.537392, 25.407022, 23.889862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844521, 25.419573, 24.145819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634600, -0.174283, -0.752933,
		0.087896, 0.984196, -0.153731,
		0.767826, 0.031378, 0.639889,
		40.074867, 25.428986, 24.337786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076088, 25.872099, 23.616436>,  <39.537392, 25.407022, 23.889862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076088, 25.872099, 23.616436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.259361, 25.626888, 23.873890>,  <40.369324, 25.479761, 24.028362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.259361, 25.626888, 23.873890>,  <40.076088, 25.872099, 23.616436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.259361, 25.626888, 23.873890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653220, -0.258856, -0.711546,
		0.602806, 0.746452, 0.281839,
		0.458180, -0.613028, 0.643637,
		40.396816, 25.442980, 24.066980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.759369, 26.033789, 23.448467>,  <40.076088, 25.872099, 23.616436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.759369, 26.033789, 23.448467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.784180, 25.693541, 23.657310>,  <40.799065, 25.489391, 23.782616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.784180, 25.693541, 23.657310>,  <40.759369, 26.033789, 23.448467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784180, 25.693541, 23.657310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703392, -0.333871, -0.627510,
		0.708090, 0.406168, 0.577612,
		0.062026, -0.850622, 0.522106,
		40.802788, 25.438354, 23.813942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.478481, 26.007959, 23.740702>,  <40.759369, 26.033789, 23.448467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.478481, 26.007959, 23.740702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.359344, 25.626120, 23.742802>,  <41.287865, 25.397015, 23.744062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.359344, 25.626120, 23.742802>,  <41.478481, 26.007959, 23.740702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.359344, 25.626120, 23.742802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858697, -0.270312, -0.435397,
		0.417050, -0.125170, 0.900223,
		-0.297839, -0.954602, 0.005251,
		41.269993, 25.339739, 23.744377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.978222, 25.676067, 24.007288>,  <41.478481, 26.007959, 23.740702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.978222, 25.676067, 24.007288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.765690, 25.395573, 23.817150>,  <41.638172, 25.227276, 23.703068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.765690, 25.395573, 23.817150>,  <41.978222, 25.676067, 24.007288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.765690, 25.395573, 23.817150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823319, -0.295239, -0.484747,
		0.199582, -0.648923, 0.734212,
		-0.531331, -0.701237, -0.475346,
		41.606289, 25.185202, 23.674547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.268547, 25.041750, 24.026783>,  <41.978222, 25.676067, 24.007288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.268547, 25.041750, 24.026783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.034790, 25.026663, 23.702547>,  <41.894535, 25.017611, 23.508005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.034790, 25.026663, 23.702547>,  <42.268547, 25.041750, 24.026783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.034790, 25.026663, 23.702547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793652, -0.234736, -0.561262,
		-0.169104, -0.971327, 0.167116,
		-0.584397, -0.037720, -0.810590,
		41.859470, 25.015347, 23.459370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.591141, 24.539331, 23.654385>,  <42.268547, 25.041750, 24.026783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.591141, 24.539331, 23.654385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.378918, 24.743460, 23.383657>,  <42.251583, 24.865936, 23.221222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.378918, 24.743460, 23.383657>,  <42.591141, 24.539331, 23.654385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.378918, 24.743460, 23.383657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734094, -0.122594, -0.667890,
		-0.423812, -0.851201, -0.309580,
		-0.530556, 0.510321, -0.676819,
		42.219749, 24.896555, 23.180613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.769165, 24.217737, 23.028912>,  <42.591141, 24.539331, 23.654385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.769165, 24.217737, 23.028912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.608978, 24.560947, 22.900274>,  <42.512867, 24.766872, 22.823092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.608978, 24.560947, 22.900274>,  <42.769165, 24.217737, 23.028912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.608978, 24.560947, 22.900274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578531, -0.035407, -0.814892,
		-0.710583, -0.512389, -0.482214,
		-0.400468, 0.858023, -0.321592,
		42.488838, 24.818354, 22.803797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.479229, 24.139824, 22.273996>,  <42.769165, 24.217737, 23.028912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.479229, 24.139824, 22.273996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.532967, 24.536066, 22.284235>,  <42.565208, 24.773811, 22.290379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.532967, 24.536066, 22.284235>,  <42.479229, 24.139824, 22.273996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.532967, 24.536066, 22.284235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273668, -0.012264, -0.961746,
		-0.952395, 0.136211, -0.272744,
		0.134346, 0.990604, 0.025596,
		42.573269, 24.833248, 22.291914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.053005, 24.492214, 21.717255>,  <42.479229, 24.139824, 22.273996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.053005, 24.492214, 21.717255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.347954, 24.744957, 21.812786>,  <42.524921, 24.896603, 21.870106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.347954, 24.744957, 21.812786>,  <42.053005, 24.492214, 21.717255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.347954, 24.744957, 21.812786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379158, -0.094547, -0.920489,
		-0.559037, 0.769297, -0.309290,
		0.737372, 0.631857, 0.238830,
		42.569164, 24.934515, 21.884436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.138832, 25.002005, 21.169689>,  <42.053005, 24.492214, 21.717255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.138832, 25.002005, 21.169689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.485085, 24.922478, 21.353497>,  <42.692837, 24.874762, 21.463781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.485085, 24.922478, 21.353497>,  <42.138832, 25.002005, 21.169689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.485085, 24.922478, 21.353497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462291, -0.035092, -0.886034,
		0.192286, 0.979408, 0.061535,
		0.865629, -0.198819, 0.459519,
		42.744774, 24.862831, 21.491352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.575954, 25.583706, 21.121325>,  <42.138832, 25.002005, 21.169689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.575954, 25.583706, 21.121325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.763058, 25.230375, 21.109118>,  <42.875320, 25.018377, 21.101793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.763058, 25.230375, 21.109118>,  <42.575954, 25.583706, 21.121325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.763058, 25.230375, 21.109118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379526, 0.231920, -0.895641,
		0.798223, 0.407362, 0.443729,
		0.467760, -0.883328, -0.030519,
		42.903385, 24.965376, 21.099962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.843075, 25.709444, 21.032314>,  <42.575954, 25.583706, 21.121325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.843075, 25.709444, 21.032314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.764370, 26.046747, 20.832233>,  <41.717148, 26.249128, 20.712185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.764370, 26.046747, 20.832233>,  <41.843075, 25.709444, 21.032314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.764370, 26.046747, 20.832233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441944, 0.379128, 0.812987,
		0.875198, 0.381025, 0.298075,
		-0.196760, 0.843257, -0.500203,
		41.705341, 26.299725, 20.682173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.972118, 26.303923, 21.489777>,  <41.843075, 25.709444, 21.032314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.972118, 26.303923, 21.489777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.713455, 26.429403, 21.211662>,  <41.558258, 26.504692, 21.044794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.713455, 26.429403, 21.211662>,  <41.972118, 26.303923, 21.489777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.713455, 26.429403, 21.211662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638427, 0.276233, 0.718405,
		0.417427, 0.908453, 0.021647,
		-0.646658, 0.313702, -0.695288,
		41.519459, 26.523514, 21.003077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754723, 26.920853, 21.753420>,  <41.972118, 26.303923, 21.489777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.754723, 26.920853, 21.753420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.474464, 26.844128, 21.478523>,  <41.306309, 26.798092, 21.313585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.474464, 26.844128, 21.478523>,  <41.754723, 26.920853, 21.753420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.474464, 26.844128, 21.478523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680397, 0.469629, 0.562591,
		0.214836, 0.861775, -0.459553,
		-0.700647, -0.191813, -0.687243,
		41.264271, 26.786583, 21.272350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358082, 27.578419, 21.622530>,  <41.754723, 26.920853, 21.753420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.358082, 27.578419, 21.622530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.122150, 27.279589, 21.499899>,  <40.980591, 27.100290, 21.426321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.122150, 27.279589, 21.499899>,  <41.358082, 27.578419, 21.622530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.122150, 27.279589, 21.499899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719550, 0.313891, 0.619452,
		-0.366545, 0.585964, -0.722697,
		-0.589825, -0.747073, -0.306576,
		40.945202, 27.055468, 21.407927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718746, 27.870249, 21.356325>,  <41.358082, 27.578419, 21.622530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.718746, 27.870249, 21.356325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.646545, 27.483232, 21.427074>,  <40.603226, 27.251022, 21.469524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.646545, 27.483232, 21.427074>,  <40.718746, 27.870249, 21.356325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.646545, 27.483232, 21.427074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810416, 0.248205, 0.530679,
		-0.557354, -0.047550, -0.828912,
		-0.180507, -0.967540, 0.176874,
		40.592392, 27.192970, 21.480137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033607, 27.610779, 21.037169>,  <40.718746, 27.870249, 21.356325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033607, 27.610779, 21.037169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.151791, 27.385611, 21.345928>,  <40.222702, 27.250509, 21.531183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.151791, 27.385611, 21.345928>,  <40.033607, 27.610779, 21.037169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151791, 27.385611, 21.345928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643559, 0.479867, 0.596289,
		-0.706070, -0.672942, -0.220488,
		0.295462, -0.562918, 0.771897,
		40.240429, 27.216736, 21.577497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454060, 27.556271, 21.386583>,  <40.033607, 27.610779, 21.037169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454060, 27.556271, 21.386583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.676159, 27.366316, 21.659693>,  <39.809418, 27.252344, 21.823559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.676159, 27.366316, 21.659693>,  <39.454060, 27.556271, 21.386583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676159, 27.366316, 21.659693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672050, 0.227430, 0.704716,
		-0.489942, -0.850153, -0.192865,
		0.555253, -0.474885, 0.682773,
		39.842735, 27.223850, 21.864525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982349, 27.277332, 21.841793>,  <39.454060, 27.556271, 21.386583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982349, 27.277332, 21.841793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.327446, 27.280123, 22.044033>,  <39.534504, 27.281797, 22.165377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.327446, 27.280123, 22.044033>,  <38.982349, 27.277332, 21.841793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327446, 27.280123, 22.044033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484058, 0.300458, 0.821835,
		-0.146180, -0.953769, 0.262593,
		0.862740, 0.006975, 0.505601,
		39.586269, 27.282215, 22.195713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027397, 26.783812, 22.495523>,  <38.982349, 27.277332, 21.841793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027397, 26.783812, 22.495523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.259342, 27.107965, 22.529062>,  <39.398510, 27.302458, 22.549187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.259342, 27.107965, 22.529062>,  <39.027397, 26.783812, 22.495523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259342, 27.107965, 22.529062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422456, 0.211084, 0.881461,
		0.696625, -0.546551, 0.464753,
		0.579866, 0.810386, 0.083848,
		39.433304, 27.351082, 22.554216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359184, 26.647446, 23.089783>,  <39.027397, 26.783812, 22.495523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359184, 26.647446, 23.089783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.318272, 27.041061, 23.031540>,  <39.293724, 27.277231, 22.996593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.318272, 27.041061, 23.031540>,  <39.359184, 26.647446, 23.089783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318272, 27.041061, 23.031540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416272, 0.090603, 0.904715,
		0.903469, 0.153150, 0.400362,
		-0.102283, 0.984041, -0.145609,
		39.287586, 27.336273, 22.987858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782547, 27.111908, 23.677526>,  <39.359184, 26.647446, 23.089783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782547, 27.111908, 23.677526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.457027, 27.280371, 23.517351>,  <39.261715, 27.381449, 23.421246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.457027, 27.280371, 23.517351>,  <39.782547, 27.111908, 23.677526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457027, 27.280371, 23.517351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451736, -0.024958, 0.891802,
		0.365595, 0.906644, 0.210562,
		-0.813803, 0.421157, -0.400439,
		39.212887, 27.406717, 23.397219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494274, 27.408924, 24.263155>,  <39.782547, 27.111908, 23.677526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494274, 27.408924, 24.263155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.192539, 27.471586, 24.008146>,  <39.011497, 27.509184, 23.855141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.192539, 27.471586, 24.008146>,  <39.494274, 27.408924, 24.263155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192539, 27.471586, 24.008146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623561, 0.132704, 0.770429,
		0.205293, 0.978698, -0.002419,
		-0.754339, 0.156655, -0.637521,
		38.966236, 27.518583, 23.816891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137405, 28.026136, 24.416307>,  <39.494274, 27.408924, 24.263155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137405, 28.026136, 24.416307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.876411, 27.809629, 24.204159>,  <38.719814, 27.679726, 24.076870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.876411, 27.809629, 24.204159>,  <39.137405, 28.026136, 24.416307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876411, 27.809629, 24.204159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658800, 0.059285, 0.749978,
		-0.374496, 0.838758, -0.395270,
		-0.652484, -0.541268, -0.530372,
		38.680668, 27.647249, 24.045048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475239, 28.422495, 24.559002>,  <39.137405, 28.026136, 24.416307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475239, 28.422495, 24.559002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.365479, 28.065279, 24.416349>,  <38.299622, 27.850948, 24.330759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.365479, 28.065279, 24.416349>,  <38.475239, 28.422495, 24.559002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365479, 28.065279, 24.416349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747474, -0.035237, 0.663356,
		-0.604970, 0.448594, -0.657856,
		-0.274397, -0.893041, -0.356630,
		38.283161, 27.797367, 24.309361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742142, 28.401649, 24.595737>,  <38.475239, 28.422495, 24.559002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742142, 28.401649, 24.595737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.817791, 28.011419, 24.551050>,  <37.863182, 27.777281, 24.524237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.817791, 28.011419, 24.551050>,  <37.742142, 28.401649, 24.595737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817791, 28.011419, 24.551050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833905, -0.219642, 0.506320,
		-0.518492, -0.002594, -0.855079,
		0.189125, -0.975577, -0.111719,
		37.874527, 27.718746, 24.517534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137291, 28.073334, 24.445841>,  <37.742142, 28.401649, 24.595737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137291, 28.073334, 24.445841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.360416, 27.786982, 24.613823>,  <37.494289, 27.615170, 24.714613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.360416, 27.786982, 24.613823>,  <37.137291, 28.073334, 24.445841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360416, 27.786982, 24.613823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704206, -0.140441, 0.695967,
		-0.439251, -0.683952, -0.582467,
		0.557811, -0.715881, 0.419955,
		37.527760, 27.572218, 24.739809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770050, 27.467066, 24.516098>,  <37.137291, 28.073334, 24.445841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770050, 27.467066, 24.516098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.039673, 27.449492, 24.811047>,  <37.201447, 27.438946, 24.988016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.039673, 27.449492, 24.811047>,  <36.770050, 27.467066, 24.516098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039673, 27.449492, 24.811047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723650, -0.239613, 0.647237,
		0.148247, -0.969874, -0.193307,
		0.674057, -0.043936, 0.737371,
		37.241890, 27.436310, 25.032259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501785, 26.953573, 24.988228>,  <36.770050, 27.467066, 24.516098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501785, 26.953573, 24.988228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.800209, 27.106785, 25.206100>,  <36.979263, 27.198711, 25.336824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.800209, 27.106785, 25.206100>,  <36.501785, 26.953573, 24.988228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800209, 27.106785, 25.206100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507811, -0.201831, 0.837491,
		0.430720, -0.901416, 0.043930,
		0.746062, 0.383032, 0.544682,
		37.024029, 27.221695, 25.369505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595047, 26.430216, 25.561008>,  <36.501785, 26.953573, 24.988228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595047, 26.430216, 25.561008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.753948, 26.774315, 25.688862>,  <36.849289, 26.980774, 25.765574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.753948, 26.774315, 25.688862>,  <36.595047, 26.430216, 25.561008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753948, 26.774315, 25.688862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388258, -0.158047, 0.907897,
		0.831534, -0.484761, 0.271215,
		0.397248, 0.860249, 0.319634,
		36.873123, 27.032389, 25.784752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992435, 26.383507, 26.246265>,  <36.595047, 26.430216, 25.561008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992435, 26.383507, 26.246265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.882515, 26.767115, 26.218658>,  <36.816563, 26.997280, 26.202095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.882515, 26.767115, 26.218658>,  <36.992435, 26.383507, 26.246265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882515, 26.767115, 26.218658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341377, -0.030210, 0.939441,
		0.898859, 0.281717, 0.335690,
		-0.274797, 0.959022, -0.069017,
		36.800076, 27.054821, 26.197954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.929989, 25.761415, 32.135227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.684624, 26.039265, 31.984903>,  <38.537407, 26.205975, 31.894711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.684624, 26.039265, 31.984903>,  <38.929989, 25.761415, 32.135227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684624, 26.039265, 31.984903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061999, 0.432024, 0.899728,
		0.787329, 0.575200, -0.221942,
		-0.613408, 0.694622, -0.375807,
		38.500603, 26.247652, 31.872162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020935, 26.183365, 32.667557>,  <38.929989, 25.761415, 32.135227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020935, 26.183365, 32.667557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.702499, 26.285831, 32.448242>,  <38.511436, 26.347311, 32.316654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.702499, 26.285831, 32.448242>,  <39.020935, 26.183365, 32.667557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702499, 26.285831, 32.448242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508335, 0.208555, 0.835524,
		0.328380, 0.943867, -0.035811,
		-0.796092, 0.256165, -0.548286,
		38.463673, 26.362680, 32.283756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921650, 26.889248, 32.790417>,  <39.020935, 26.183365, 32.667557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921650, 26.889248, 32.790417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.564663, 26.736113, 32.694977>,  <38.350471, 26.644232, 32.637711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.564663, 26.736113, 32.694977>,  <38.921650, 26.889248, 32.790417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564663, 26.736113, 32.694977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350022, 0.254028, 0.901640,
		-0.284569, 0.888204, -0.360714,
		-0.892471, -0.382836, -0.238603,
		38.296921, 26.621262, 32.623398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523445, 27.413952, 33.022720>,  <38.921650, 26.889248, 32.790417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523445, 27.413952, 33.022720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.283745, 27.095621, 32.987949>,  <38.139923, 26.904623, 32.967087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.283745, 27.095621, 32.987949>,  <38.523445, 27.413952, 33.022720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283745, 27.095621, 32.987949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534365, 0.316780, 0.783649,
		-0.596111, 0.516055, -0.615093,
		-0.599255, -0.795825, -0.086926,
		38.103970, 26.856874, 32.961872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849133, 27.667429, 33.232277>,  <38.523445, 27.413952, 33.022720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849133, 27.667429, 33.232277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.775768, 27.274237, 33.236397>,  <37.731750, 27.038321, 33.238869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.775768, 27.274237, 33.236397>,  <37.849133, 27.667429, 33.232277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775768, 27.274237, 33.236397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214984, 0.050329, 0.975320,
		-0.959240, 0.176672, -0.220556,
		-0.183412, -0.982982, 0.010296,
		37.720745, 26.979342, 33.239487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230019, 27.560055, 33.440723>,  <37.849133, 27.667429, 33.232277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230019, 27.560055, 33.440723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.411472, 27.214649, 33.528870>,  <37.520344, 27.007406, 33.581757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.411472, 27.214649, 33.528870>,  <37.230019, 27.560055, 33.440723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411472, 27.214649, 33.528870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293642, 0.088638, 0.951797,
		-0.841421, -0.496477, -0.213354,
		0.453634, -0.863512, 0.220369,
		37.547562, 26.955595, 33.594982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759811, 27.210546, 33.919895>,  <37.230019, 27.560055, 33.440723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759811, 27.210546, 33.919895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.127647, 27.055649, 33.946430>,  <37.348347, 26.962709, 33.962353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.127647, 27.055649, 33.946430>,  <36.759811, 27.210546, 33.919895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127647, 27.055649, 33.946430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006957, 0.184881, 0.982736,
		-0.392826, -0.903249, 0.172708,
		0.919587, -0.387246, 0.066342,
		37.403522, 26.939474, 33.966331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687756, 26.865353, 34.430260>,  <36.759811, 27.210546, 33.919895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687756, 26.865353, 34.430260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.087475, 26.879299, 34.424885>,  <37.327309, 26.887667, 34.421658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.087475, 26.879299, 34.424885>,  <36.687756, 26.865353, 34.430260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087475, 26.879299, 34.424885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006134, 0.201706, 0.979427,
		0.036857, -0.978825, 0.201352,
		0.999302, 0.034864, -0.013439,
		37.387264, 26.889759, 34.420853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937149, 26.643084, 35.113007>,  <36.687756, 26.865353, 34.430260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937149, 26.643084, 35.113007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.267288, 26.814230, 34.965641>,  <37.465374, 26.916918, 34.877224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.267288, 26.814230, 34.965641>,  <36.937149, 26.643084, 35.113007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267288, 26.814230, 34.965641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216508, 0.362785, 0.906372,
		0.521459, -0.827840, 0.206790,
		0.825351, 0.427865, -0.368411,
		37.514893, 26.942589, 34.855118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512775, 26.523497, 35.592983>,  <36.937149, 26.643084, 35.113007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512775, 26.523497, 35.592983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.615345, 26.852871, 35.390518>,  <37.676888, 27.050495, 35.269039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.615345, 26.852871, 35.390518>,  <37.512775, 26.523497, 35.592983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615345, 26.852871, 35.390518> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116558, 0.493503, 0.861898,
		0.959510, -0.280010, 0.030569,
		0.256426, 0.823437, -0.506159,
		37.692272, 27.099903, 35.238670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225643, 26.653700, 35.830929>,  <37.512775, 26.523497, 35.592983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225643, 26.653700, 35.830929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.101845, 26.994076, 35.661171>,  <38.027565, 27.198301, 35.559315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.101845, 26.994076, 35.661171>,  <38.225643, 26.653700, 35.830929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101845, 26.994076, 35.661171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034325, 0.456019, 0.889308,
		0.950281, 0.260670, -0.170345,
		-0.309497, 0.850940, -0.424398,
		38.008995, 27.249357, 35.533852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639332, 27.189966, 36.007633>,  <38.225643, 26.653700, 35.830929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639332, 27.189966, 36.007633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.300934, 27.381340, 35.913494>,  <38.097893, 27.496164, 35.857010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.300934, 27.381340, 35.913494>,  <38.639332, 27.189966, 36.007633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300934, 27.381340, 35.913494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059603, 0.523498, 0.849939,
		0.529846, 0.705019, -0.471394,
		-0.845997, 0.478433, -0.235352,
		38.047134, 27.524870, 35.842888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684948, 27.833218, 36.318508>,  <38.639332, 27.189966, 36.007633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684948, 27.833218, 36.318508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.285137, 27.826227, 36.308361>,  <38.045250, 27.822033, 36.302273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.285137, 27.826227, 36.308361>,  <38.684948, 27.833218, 36.318508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285137, 27.826227, 36.308361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029997, 0.364736, 0.930627,
		-0.007013, 0.930947, -0.365088,
		-0.999525, -0.017478, -0.025368,
		37.985279, 27.820984, 36.300751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418232, 28.482239, 36.522106>,  <38.684948, 27.833218, 36.318508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418232, 28.482239, 36.522106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.117970, 28.234385, 36.613811>,  <37.937813, 28.085672, 36.668835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.117970, 28.234385, 36.613811>,  <38.418232, 28.482239, 36.522106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117970, 28.234385, 36.613811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004618, 0.342074, 0.939662,
		-0.660674, 0.706424, -0.253920,
		-0.750659, -0.619637, 0.229262,
		37.892773, 28.048492, 36.682590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094131, 28.758066, 37.078529>,  <38.418232, 28.482239, 36.522106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094131, 28.758066, 37.078529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.416725, 28.973167, 37.176846>,  <39.610279, 29.102228, 37.235836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.416725, 28.973167, 37.176846>,  <39.094131, 28.758066, 37.078529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416725, 28.973167, 37.176846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496865, -0.391063, -0.774723,
		-0.320490, 0.746922, -0.582574,
		0.806481, 0.537751, 0.245788,
		39.658669, 29.134493, 37.250584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375984, 29.010992, 36.371407>,  <39.094131, 28.758066, 37.078529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.375984, 29.010992, 36.371407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.674221, 29.047581, 36.635445>,  <39.853161, 29.069534, 36.793869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.674221, 29.047581, 36.635445>,  <39.375984, 29.010992, 36.371407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.674221, 29.047581, 36.635445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652797, -0.299410, -0.695852,
		0.133990, 0.949730, -0.282948,
		0.745589, 0.091470, 0.660098,
		39.897900, 29.075022, 36.833473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838837, 29.488235, 35.999592>,  <39.375984, 29.010992, 36.371407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838837, 29.488235, 35.999592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.043327, 29.301291, 36.288097>,  <40.166019, 29.189123, 36.461201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.043327, 29.301291, 36.288097>,  <39.838837, 29.488235, 35.999592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043327, 29.301291, 36.288097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747707, -0.171939, -0.641382,
		0.423773, 0.867184, 0.261552,
		0.511225, -0.467365, 0.721263,
		40.196693, 29.161081, 36.504475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432331, 29.745630, 35.937206>,  <39.838837, 29.488235, 35.999592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.432331, 29.745630, 35.937206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.487701, 29.398050, 36.127266>,  <40.520924, 29.189503, 36.241302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.487701, 29.398050, 36.127266>,  <40.432331, 29.745630, 35.937206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.487701, 29.398050, 36.127266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702025, -0.252316, -0.665956,
		0.698569, 0.425750, 0.575098,
		0.138424, -0.868950, 0.475147,
		40.529228, 29.137365, 36.269810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.210922, 29.649412, 36.053005>,  <40.432331, 29.745630, 35.937206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.210922, 29.649412, 36.053005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.022739, 29.296446, 36.051746>,  <40.909828, 29.084665, 36.050991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.022739, 29.296446, 36.051746>,  <41.210922, 29.649412, 36.053005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.022739, 29.296446, 36.051746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605346, -0.320137, -0.728745,
		0.642048, -0.344751, 0.684778,
		-0.470458, -0.882417, -0.003150,
		40.881603, 29.031721, 36.050800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.773087, 29.227745, 36.022770>,  <41.210922, 29.649412, 36.053005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.773087, 29.227745, 36.022770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.462051, 28.990547, 35.939133>,  <41.275433, 28.848228, 35.888950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.462051, 28.990547, 35.939133>,  <41.773087, 29.227745, 36.022770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.462051, 28.990547, 35.939133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430693, -0.260031, -0.864226,
		0.458109, -0.762065, 0.457594,
		-0.777586, -0.592993, -0.209094,
		41.228775, 28.812649, 35.876404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.106182, 28.574181, 35.781780>,  <41.773087, 29.227745, 36.022770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.106182, 28.574181, 35.781780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.726261, 28.573660, 35.656639>,  <41.498310, 28.573347, 35.581554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.726261, 28.573660, 35.656639>,  <42.106182, 28.574181, 35.781780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.726261, 28.573660, 35.656639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285303, -0.413924, -0.864447,
		-0.128370, -0.910311, 0.393517,
		-0.949802, -0.001302, -0.312850,
		41.441322, 28.573269, 35.562782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.991627, 27.970358, 35.477684>,  <42.106182, 28.574181, 35.781780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.991627, 27.970358, 35.477684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.680683, 28.169437, 35.323799>,  <41.494118, 28.288885, 35.231468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.680683, 28.169437, 35.323799>,  <41.991627, 27.970358, 35.477684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.680683, 28.169437, 35.323799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266455, -0.293486, -0.918078,
		-0.569836, -0.816186, 0.095530,
		-0.777360, 0.497700, -0.384715,
		41.447475, 28.318747, 35.208385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612404, 27.457790, 34.964863>,  <41.991627, 27.970358, 35.477684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.612404, 27.457790, 34.964863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.543564, 27.847807, 34.908760>,  <41.502258, 28.081818, 34.875099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.543564, 27.847807, 34.908760>,  <41.612404, 27.457790, 34.964863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.543564, 27.847807, 34.908760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017076, -0.139407, -0.990088,
		-0.984932, -0.172788, 0.007342,
		-0.172098, 0.975043, -0.140257,
		41.491936, 28.140320, 34.866684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.893135, 27.536064, 34.533504>,  <41.612404, 27.457790, 34.964863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.893135, 27.536064, 34.533504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.152954, 27.834249, 34.473682>,  <41.308846, 28.013161, 34.437790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.152954, 27.834249, 34.473682>,  <40.893135, 27.536064, 34.533504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.152954, 27.834249, 34.473682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095968, -0.114746, -0.988749,
		-0.754238, 0.656594, -0.002992,
		0.649550, 0.745464, -0.149557,
		41.347820, 28.057888, 34.428814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.519917, 27.987648, 34.042828>,  <40.893135, 27.536064, 34.533504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.519917, 27.987648, 34.042828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.906109, 28.083956, 34.003086>,  <41.137825, 28.141741, 33.979240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.906109, 28.083956, 34.003086>,  <40.519917, 27.987648, 34.042828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.906109, 28.083956, 34.003086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048064, -0.210197, -0.976477,
		-0.255988, 0.947549, -0.191369,
		0.965484, 0.240768, -0.099351,
		41.195755, 28.156187, 33.973282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553921, 28.502728, 33.527943>,  <40.519917, 27.987648, 34.042828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553921, 28.502728, 33.527943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.929630, 28.366320, 33.543236>,  <41.155056, 28.284475, 33.552410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.929630, 28.366320, 33.543236>,  <40.553921, 28.502728, 33.527943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.929630, 28.366320, 33.543236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026672, -0.183625, -0.982634,
		0.342119, 0.921947, -0.181570,
		0.939278, -0.341021, 0.038232,
		41.211414, 28.264013, 33.554707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770714, 28.546568, 32.996380>,  <40.553921, 28.502728, 33.527943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770714, 28.546568, 32.996380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.087051, 28.322348, 33.094650>,  <41.276852, 28.187817, 33.153614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.087051, 28.322348, 33.094650>,  <40.770714, 28.546568, 32.996380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.087051, 28.322348, 33.094650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070198, -0.315694, -0.946261,
		0.607985, 0.765586, -0.210314,
		0.790839, -0.560549, 0.245680,
		41.324303, 28.154182, 33.168354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.319008, 28.820280, 32.534531>,  <40.770714, 28.546568, 32.996380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.319008, 28.820280, 32.534531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.470860, 28.469038, 32.651020>,  <41.561970, 28.258293, 32.720913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.470860, 28.469038, 32.651020>,  <41.319008, 28.820280, 32.534531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.470860, 28.469038, 32.651020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207902, -0.225762, -0.951740,
		0.901476, 0.421854, 0.096854,
		0.379629, -0.878106, 0.291223,
		41.584747, 28.205606, 32.738388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.643993, 29.359694, 32.246990>,  <41.319008, 28.820280, 32.534531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.643993, 29.359694, 32.246990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.474220, 29.666546, 32.054588>,  <41.372356, 29.850658, 31.939148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.474220, 29.666546, 32.054588>,  <41.643993, 29.359694, 32.246990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.474220, 29.666546, 32.054588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616442, 0.144288, 0.774067,
		0.663215, 0.625051, 0.411652,
		-0.424435, 0.767133, -0.481001,
		41.346889, 29.896687, 31.910288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.492161, 29.852188, 32.807339>,  <41.643993, 29.359694, 32.246990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.492161, 29.852188, 32.807339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.255177, 29.987724, 32.514992>,  <41.112984, 30.069046, 32.339584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.255177, 29.987724, 32.514992>,  <41.492161, 29.852188, 32.807339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.255177, 29.987724, 32.514992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680817, 0.274409, 0.679108,
		0.430666, 0.899938, 0.068110,
		-0.592465, 0.338840, -0.730871,
		41.077438, 30.089376, 32.295731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.319950, 30.659941, 32.882137>,  <41.492161, 29.852188, 32.807339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.319950, 30.659941, 32.882137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.042839, 30.450026, 32.684288>,  <40.876572, 30.324076, 32.565578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.042839, 30.450026, 32.684288>,  <41.319950, 30.659941, 32.882137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.042839, 30.450026, 32.684288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672495, 0.222467, 0.705874,
		-0.260396, 0.821648, -0.507039,
		-0.692780, -0.524788, -0.494625,
		40.835007, 30.292589, 32.535900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649010, 31.082886, 32.969631>,  <41.319950, 30.659941, 32.882137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649010, 31.082886, 32.969631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.570007, 30.709896, 32.848648>,  <40.522606, 30.486101, 32.776058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.570007, 30.709896, 32.848648>,  <40.649010, 31.082886, 32.969631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.570007, 30.709896, 32.848648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879741, 0.032481, 0.474343,
		-0.432489, 0.359771, -0.826752,
		-0.197508, -0.932475, -0.302458,
		40.510754, 30.430153, 32.757912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949387, 31.165674, 32.847317>,  <40.649010, 31.082886, 32.969631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949387, 31.165674, 32.847317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.010700, 30.770405, 32.848763>,  <40.047489, 30.533243, 32.849628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.010700, 30.770405, 32.848763>,  <39.949387, 31.165674, 32.847317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010700, 30.770405, 32.848763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925449, -0.142272, 0.351144,
		-0.346478, -0.057170, -0.936314,
		0.153286, -0.988175, 0.003613,
		40.056686, 30.473951, 32.849846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366768, 30.856110, 32.541073>,  <39.949387, 31.165674, 32.847317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366768, 30.856110, 32.541073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.517509, 30.580524, 32.788723>,  <39.607952, 30.415173, 32.937313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.517509, 30.580524, 32.788723>,  <39.366768, 30.856110, 32.541073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517509, 30.580524, 32.788723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909700, -0.149412, 0.387455,
		-0.174438, -0.709228, -0.683057,
		0.376851, -0.688964, 0.619122,
		39.630566, 30.373837, 32.974461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799076, 30.430534, 32.652378>,  <39.366768, 30.856110, 32.541073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799076, 30.430534, 32.652378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.053257, 30.329527, 32.944252>,  <39.205765, 30.268923, 33.119377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.053257, 30.329527, 32.944252>,  <38.799076, 30.430534, 32.652378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053257, 30.329527, 32.944252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757021, -0.389857, 0.524338,
		0.152070, -0.885577, -0.438894,
		0.635448, -0.252516, 0.729686,
		39.243893, 30.253771, 33.163158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503712, 29.788996, 32.922592>,  <38.799076, 30.430534, 32.652378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503712, 29.788996, 32.922592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.766186, 29.920876, 33.194096>,  <38.923672, 30.000004, 33.356998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.766186, 29.920876, 33.194096>,  <38.503712, 29.788996, 32.922592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766186, 29.920876, 33.194096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709775, -0.035718, 0.703523,
		0.256194, -0.943411, 0.210574,
		0.656189, 0.329698, 0.678760,
		38.963043, 30.019785, 33.397724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459618, 29.329470, 33.404167>,  <38.503712, 29.788996, 32.922592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459618, 29.329470, 33.404167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.609940, 29.653231, 33.584675>,  <38.700134, 29.847486, 33.692978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.609940, 29.653231, 33.584675>,  <38.459618, 29.329470, 33.404167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609940, 29.653231, 33.584675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761501, -0.007781, 0.648117,
		0.528097, -0.587206, 0.613435,
		0.375805, 0.809400, 0.451267,
		38.722683, 29.896051, 33.720055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390541, 29.127140, 34.108986>,  <38.459618, 29.329470, 33.404167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390541, 29.127140, 34.108986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.395676, 29.523674, 34.056698>,  <38.398758, 29.761595, 34.025326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.395676, 29.523674, 34.056698>,  <38.390541, 29.127140, 34.108986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395676, 29.523674, 34.056698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856316, 0.078402, 0.510466,
		0.516292, 0.105386, 0.849904,
		0.012838, 0.991336, -0.130722,
		38.399529, 29.821075, 34.017483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179287, 29.442638, 34.750397>,  <38.390541, 29.127140, 34.108986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179287, 29.442638, 34.750397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.117870, 29.725422, 34.474243>,  <38.081020, 29.895092, 34.308548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.117870, 29.725422, 34.474243>,  <38.179287, 29.442638, 34.750397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117870, 29.725422, 34.474243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906196, 0.177841, 0.383642,
		0.393998, 0.684531, 0.613337,
		-0.153538, 0.706958, -0.690389,
		38.071808, 29.937510, 34.267128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968388, 30.046041, 35.074528>,  <38.179287, 29.442638, 34.750397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968388, 30.046041, 35.074528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.821888, 30.061893, 34.702660>,  <37.733990, 30.071405, 34.479538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.821888, 30.061893, 34.702660>,  <37.968388, 30.046041, 35.074528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821888, 30.061893, 34.702660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921739, 0.121456, 0.368302,
		0.127511, 0.991805, -0.007954,
		-0.366250, 0.039631, -0.929672,
		37.712013, 30.073782, 34.423759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<44.028549, 30.658117, 29.500614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.730385, 30.590101, 29.242794>,  <43.551487, 30.549292, 29.088102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.730385, 30.590101, 29.242794>,  <44.028549, 30.658117, 29.500614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.730385, 30.590101, 29.242794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658939, 0.041753, 0.751037,
		-0.100794, 0.984552, -0.143169,
		-0.745412, -0.170039, -0.644552,
		43.506760, 30.539089, 29.049429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.561535, 31.098881, 29.704161>,  <44.028549, 30.658117, 29.500614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.561535, 31.098881, 29.704161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.360561, 30.817493, 29.503086>,  <43.239979, 30.648661, 29.382441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.360561, 30.817493, 29.503086>,  <43.561535, 31.098881, 29.704161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.360561, 30.817493, 29.503086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558286, -0.179996, 0.809888,
		-0.660212, 0.687557, -0.302301,
		-0.502431, -0.703468, -0.502689,
		43.209831, 30.606453, 29.352280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.017895, 31.121862, 30.029882>,  <43.561535, 31.098881, 29.704161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.017895, 31.121862, 30.029882> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.915932, 30.810154, 29.800880>,  <42.854755, 30.623129, 29.663479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.915932, 30.810154, 29.800880>,  <43.017895, 31.121862, 30.029882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.915932, 30.810154, 29.800880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761690, -0.202923, 0.615346,
		-0.595695, 0.592926, -0.541836,
		-0.254904, -0.779270, -0.572506,
		42.839462, 30.576374, 29.629129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.280933, 31.088520, 29.647703>,  <43.017895, 31.121862, 30.029882>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.280933, 31.088520, 29.647703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.411438, 30.723911, 29.747852>,  <42.489738, 30.505146, 29.807941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.411438, 30.723911, 29.747852>,  <42.280933, 31.088520, 29.647703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.411438, 30.723911, 29.747852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781559, -0.111130, 0.613854,
		-0.531716, -0.395955, -0.748664,
		0.326258, -0.911520, 0.250372,
		42.509315, 30.450455, 29.822964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.728989, 30.651981, 29.653881>,  <42.280933, 31.088520, 29.647703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.728989, 30.651981, 29.653881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.988106, 30.425785, 29.858070>,  <42.143578, 30.290068, 29.980583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.988106, 30.425785, 29.858070>,  <41.728989, 30.651981, 29.653881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.988106, 30.425785, 29.858070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668487, -0.100581, 0.736891,
		-0.365362, -0.818598, -0.443180,
		0.647793, -0.565492, 0.510473,
		42.182442, 30.256138, 30.011211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.381878, 30.109928, 29.897486>,  <41.728989, 30.651981, 29.653881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.381878, 30.109928, 29.897486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703880, 30.118460, 30.134638>,  <41.897083, 30.123579, 30.276930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703880, 30.118460, 30.134638>,  <41.381878, 30.109928, 29.897486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.703880, 30.118460, 30.134638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587075, -0.115329, 0.801276,
		0.085468, -0.993098, -0.080318,
		0.805009, 0.021331, 0.592880,
		41.945381, 30.124859, 30.312502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.244350, 29.651625, 30.276546>,  <41.381878, 30.109928, 29.897486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.244350, 29.651625, 30.276546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.517036, 29.845043, 30.496162>,  <41.680649, 29.961094, 30.627932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.517036, 29.845043, 30.496162>,  <41.244350, 29.651625, 30.276546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.517036, 29.845043, 30.496162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538778, -0.175884, 0.823883,
		0.494954, -0.857465, 0.140621,
		0.681718, 0.483548, 0.549038,
		41.721550, 29.990107, 30.660873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.246578, 29.300966, 30.943348>,  <41.244350, 29.651625, 30.276546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.246578, 29.300966, 30.943348> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.431751, 29.644449, 31.031269>,  <41.542854, 29.850538, 31.084021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.431751, 29.644449, 31.031269>,  <41.246578, 29.300966, 30.943348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.431751, 29.644449, 31.031269> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555154, 0.087570, 0.827124,
		0.691010, -0.504929, 0.517255,
		0.462935, 0.858707, 0.219801,
		41.570633, 29.902061, 31.097210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704716, 29.142010, 31.490904>,  <41.246578, 29.300966, 30.943348>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.704716, 29.142010, 31.490904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612206, 29.531164, 31.490412>,  <41.556698, 29.764656, 31.490116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612206, 29.531164, 31.490412>,  <41.704716, 29.142010, 31.490904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.612206, 29.531164, 31.490412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533889, -0.125861, 0.836135,
		0.813309, 0.194038, 0.548523,
		-0.231280, 0.972887, -0.001231,
		41.542820, 29.823030, 31.490042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.879997, 28.668131, 32.038071>,  <41.704716, 29.142010, 31.490904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.879997, 28.668131, 32.038071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.847252, 28.314953, 32.222984>,  <41.827606, 28.103046, 32.333935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.847252, 28.314953, 32.222984>,  <41.879997, 28.668131, 32.038071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.847252, 28.314953, 32.222984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323436, -0.462274, -0.825647,
		0.942702, 0.081933, 0.323418,
		-0.081860, -0.882944, 0.462287,
		41.822693, 28.050070, 32.361671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.560627, 28.183165, 32.056313>,  <41.879997, 28.668131, 32.038071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.560627, 28.183165, 32.056313> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.231163, 27.956415, 32.062439>,  <42.033485, 27.820366, 32.066116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.231163, 27.956415, 32.062439>,  <42.560627, 28.183165, 32.056313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.231163, 27.956415, 32.062439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404545, -0.606300, -0.684648,
		0.397394, -0.557724, 0.728713,
		-0.823663, -0.566872, 0.015315,
		41.984062, 27.786354, 32.067032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.760807, 27.478235, 31.943808>,  <42.560627, 28.183165, 32.056313>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.760807, 27.478235, 31.943808> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.382458, 27.518087, 31.820257>,  <42.155449, 27.541998, 31.746126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.382458, 27.518087, 31.820257>,  <42.760807, 27.478235, 31.943808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.382458, 27.518087, 31.820257> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211917, -0.531225, -0.820299,
		-0.245811, -0.841352, 0.481356,
		-0.945869, 0.099631, -0.308878,
		42.098698, 27.547977, 31.727594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.679321, 26.849836, 31.563246>,  <42.760807, 27.478235, 31.943808>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.679321, 26.849836, 31.563246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.359093, 27.072010, 31.473289>,  <42.166954, 27.205315, 31.419315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.359093, 27.072010, 31.473289>,  <42.679321, 26.849836, 31.563246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.359093, 27.072010, 31.473289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033565, -0.416271, -0.908621,
		-0.598293, -0.719870, 0.351899,
		-0.800574, 0.555433, -0.224889,
		42.118919, 27.238640, 31.405823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.199070, 26.393152, 31.253681>,  <42.679321, 26.849836, 31.563246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.199070, 26.393152, 31.253681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.112408, 26.767113, 31.141241>,  <42.060410, 26.991489, 31.073778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.112408, 26.767113, 31.141241>,  <42.199070, 26.393152, 31.253681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.112408, 26.767113, 31.141241> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164411, -0.248883, -0.954477,
		-0.962304, -0.253011, -0.099785,
		-0.216659, 0.934902, -0.281099,
		42.047409, 27.047583, 31.056911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625938, 26.347509, 30.786409>,  <42.199070, 26.393152, 31.253681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.625938, 26.347509, 30.786409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.815357, 26.690485, 30.705856>,  <41.929008, 26.896271, 30.657524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.815357, 26.690485, 30.705856>,  <41.625938, 26.347509, 30.786409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.815357, 26.690485, 30.705856> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058004, -0.197788, -0.978527,
		-0.878857, 0.475058, -0.043927,
		0.473546, 0.857438, -0.201383,
		41.957420, 26.947716, 30.645441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170223, 26.664202, 30.266144>,  <41.625938, 26.347509, 30.786409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.170223, 26.664202, 30.266144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.520409, 26.857498, 30.263412>,  <41.730518, 26.973476, 30.261774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.520409, 26.857498, 30.263412>,  <41.170223, 26.664202, 30.266144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.520409, 26.857498, 30.263412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010153, 0.004268, -0.999940,
		-0.483182, 0.875478, 0.008642,
		0.875461, 0.483240, -0.006826,
		41.783047, 27.002470, 30.261364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.172169, 27.127754, 29.680716>,  <41.170223, 26.664202, 30.266144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.172169, 27.127754, 29.680716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565720, 27.103254, 29.747929>,  <41.801849, 27.088554, 29.788258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565720, 27.103254, 29.747929>,  <41.172169, 27.127754, 29.680716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.565720, 27.103254, 29.747929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165842, -0.039306, -0.985369,
		0.066956, 0.997348, -0.028515,
		0.983877, -0.061248, 0.168034,
		41.860882, 27.084881, 29.798338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395252, 27.530983, 29.191999>,  <41.172169, 27.127754, 29.680716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.395252, 27.530983, 29.191999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713993, 27.312710, 29.295738>,  <41.905235, 27.181746, 29.357983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713993, 27.312710, 29.295738>,  <41.395252, 27.530983, 29.191999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.713993, 27.312710, 29.295738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294781, -0.023555, -0.955275,
		0.527388, 0.837659, 0.142088,
		0.796847, -0.545685, 0.259349,
		41.953049, 27.149004, 29.373543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.050880, 27.877146, 29.019268>,  <41.395252, 27.530983, 29.191999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.050880, 27.877146, 29.019268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.141937, 27.488159, 29.039221>,  <42.196571, 27.254766, 29.051193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.141937, 27.488159, 29.039221>,  <42.050880, 27.877146, 29.019268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.141937, 27.488159, 29.039221> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412282, 0.049848, -0.909691,
		0.882158, 0.227651, 0.412278,
		0.227643, -0.972466, 0.049883,
		42.210232, 27.196419, 29.054186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.770424, 27.819416, 28.889523>,  <42.050880, 27.877146, 29.019268>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.770424, 27.819416, 28.889523> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.630711, 27.451460, 28.818192>,  <42.546883, 27.230686, 28.775393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.630711, 27.451460, 28.818192>,  <42.770424, 27.819416, 28.889523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.630711, 27.451460, 28.818192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469298, -0.007012, -0.883012,
		0.811026, -0.392107, 0.434153,
		-0.349280, -0.919893, -0.178328,
		42.525928, 27.175491, 28.764692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.281166, 27.498226, 28.572048>,  <42.770424, 27.819416, 28.889523>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.281166, 27.498226, 28.572048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.979191, 27.240644, 28.522419>,  <42.798008, 27.086096, 28.492641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.979191, 27.240644, 28.522419>,  <43.281166, 27.498226, 28.572048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.979191, 27.240644, 28.522419> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380410, -0.275895, -0.882706,
		0.534191, -0.713586, 0.453250,
		-0.754936, -0.643954, -0.124075,
		42.752708, 27.047459, 28.485197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.595184, 26.831991, 28.382402>,  <43.281166, 27.498226, 28.572048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.595184, 26.831991, 28.382402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.222286, 26.842161, 28.238033>,  <42.998547, 26.848263, 28.151413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.222286, 26.842161, 28.238033>,  <43.595184, 26.831991, 28.382402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.222286, 26.842161, 28.238033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351606, -0.171642, -0.920278,
		-0.085343, -0.984831, 0.151075,
		-0.932250, 0.025420, -0.360921,
		42.942612, 26.849789, 28.129757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.329659, 26.128565, 28.184933>,  <43.595184, 26.831991, 28.382402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.329659, 26.128565, 28.184933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.176971, 26.443123, 27.990664>,  <43.085361, 26.631857, 27.874102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.176971, 26.443123, 27.990664>,  <43.329659, 26.128565, 28.184933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.176971, 26.443123, 27.990664> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292475, -0.395693, -0.870566,
		-0.876785, -0.474356, -0.078958,
		-0.381715, 0.786393, -0.485675,
		43.062458, 26.679041, 27.844961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.306297, 30.038563, 24.492304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.671249, 30.053631, 24.655346>,  <37.890221, 30.062672, 24.753172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.671249, 30.053631, 24.655346>,  <37.306297, 30.038563, 24.492304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671249, 30.053631, 24.655346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405498, -0.053011, 0.912557,
		0.055985, -0.997883, -0.033090,
		0.912380, 0.037671, 0.407608,
		37.944962, 30.064932, 24.777628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420719, 29.512848, 24.995678>,  <37.306297, 30.038563, 24.492304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420719, 29.512848, 24.995678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.715618, 29.756374, 25.112852>,  <37.892559, 29.902491, 25.183157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.715618, 29.756374, 25.112852>,  <37.420719, 29.512848, 24.995678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715618, 29.756374, 25.112852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377040, 0.010965, 0.926132,
		0.560631, -0.793236, 0.237632,
		0.737247, 0.608815, 0.292934,
		37.936794, 29.939018, 25.200733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798954, 29.164328, 25.658333>,  <37.420719, 29.512848, 24.995678>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798954, 29.164328, 25.658333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.850986, 29.560764, 25.646938>,  <37.882206, 29.798626, 25.640100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.850986, 29.560764, 25.646938>,  <37.798954, 29.164328, 25.658333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850986, 29.560764, 25.646938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273694, 0.063508, 0.959718,
		0.952980, -0.117044, 0.279517,
		0.130081, 0.991094, -0.028488,
		37.890011, 29.858093, 25.638391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028194, 29.354700, 26.319277>,  <37.798954, 29.164328, 25.658333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028194, 29.354700, 26.319277> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.902378, 29.695436, 26.151735>,  <37.826889, 29.899878, 26.051210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.902378, 29.695436, 26.151735>,  <38.028194, 29.354700, 26.319277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902378, 29.695436, 26.151735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353142, 0.304567, 0.884607,
		0.881111, 0.426157, 0.205022,
		-0.314538, 0.851839, -0.418851,
		37.808018, 29.950989, 26.026079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192341, 29.869585, 26.794815>,  <38.028194, 29.354700, 26.319277>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192341, 29.869585, 26.794815> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.889637, 30.009607, 26.573988>,  <37.708015, 30.093620, 26.441492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.889637, 30.009607, 26.573988>,  <38.192341, 29.869585, 26.794815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889637, 30.009607, 26.573988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488974, 0.257367, 0.833467,
		0.433842, 0.900680, -0.023597,
		-0.756760, 0.350054, -0.552066,
		37.662609, 30.114624, 26.408369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080429, 30.420551, 27.173168>,  <38.192341, 29.869585, 26.794815>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080429, 30.420551, 27.173168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.759186, 30.416950, 26.934862>,  <37.566441, 30.414789, 26.791878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.759186, 30.416950, 26.934862>,  <38.080429, 30.420551, 27.173168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759186, 30.416950, 26.934862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569448, 0.305849, 0.763011,
		0.175344, 0.952037, -0.250758,
		-0.803109, -0.009005, -0.595764,
		37.518253, 30.414249, 26.756132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800365, 31.115147, 27.034281>,  <38.080429, 30.420551, 27.173168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800365, 31.115147, 27.034281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.508842, 30.842375, 27.009579>,  <37.333927, 30.678711, 26.994757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.508842, 30.842375, 27.009579>,  <37.800365, 31.115147, 27.034281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508842, 30.842375, 27.009579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492314, 0.459194, 0.739437,
		-0.475886, 0.569310, -0.670387,
		-0.728807, -0.681929, -0.061755,
		37.290199, 30.637796, 26.991053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114033, 31.477972, 27.132736>,  <37.800365, 31.115147, 27.034281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114033, 31.477972, 27.132736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.970676, 31.106590, 27.171782>,  <36.884663, 30.883762, 27.195210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.970676, 31.106590, 27.171782>,  <37.114033, 31.477972, 27.132736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970676, 31.106590, 27.171782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672340, 0.329236, 0.662995,
		-0.647698, 0.171984, -0.742233,
		-0.358394, -0.928453, 0.097614,
		36.863159, 30.828054, 27.201065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395809, 31.573162, 27.267979>,  <37.114033, 31.477972, 27.132736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395809, 31.573162, 27.267979> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.474438, 31.204185, 27.400919>,  <36.521614, 30.982800, 27.480684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.474438, 31.204185, 27.400919>,  <36.395809, 31.573162, 27.267979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474438, 31.204185, 27.400919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491815, 0.200475, 0.847306,
		-0.848220, -0.330013, -0.414264,
		0.196572, -0.922443, 0.332352,
		36.533409, 30.927452, 27.500626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778534, 31.336426, 27.511086>,  <36.395809, 31.573162, 27.267979>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778534, 31.336426, 27.511086> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.012550, 31.076260, 27.704865>,  <36.152958, 30.920160, 27.821131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.012550, 31.076260, 27.704865>,  <35.778534, 31.336426, 27.511086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012550, 31.076260, 27.704865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695896, -0.095841, 0.711719,
		-0.416484, -0.753507, -0.508693,
		0.585039, -0.650417, 0.484446,
		36.188061, 30.881134, 27.850199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322483, 30.720913, 27.750734>,  <35.778534, 31.336426, 27.511086>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322483, 30.720913, 27.750734> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.651569, 30.688551, 27.975800>,  <35.849022, 30.669134, 28.110838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.651569, 30.688551, 27.975800>,  <35.322483, 30.720913, 27.750734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651569, 30.688551, 27.975800> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557651, -0.306891, 0.771261,
		0.110276, -0.948300, -0.297602,
		0.822718, -0.080906, 0.562663,
		35.898384, 30.664278, 28.144598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265331, 30.043335, 28.132027>,  <35.322483, 30.720913, 27.750734>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265331, 30.043335, 28.132027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.520859, 30.279371, 28.329494>,  <35.674175, 30.420992, 28.447975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.520859, 30.279371, 28.329494>,  <35.265331, 30.043335, 28.132027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520859, 30.279371, 28.329494> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575464, -0.059408, 0.815666,
		0.510644, -0.805150, 0.301625,
		0.638815, 0.590089, 0.493671,
		35.712502, 30.456398, 28.477596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387653, 29.695732, 28.728861>,  <35.265331, 30.043335, 28.132027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387653, 29.695732, 28.728861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.460949, 30.078218, 28.820137>,  <35.504925, 30.307711, 28.874903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.460949, 30.078218, 28.820137>,  <35.387653, 29.695732, 28.728861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460949, 30.078218, 28.820137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520624, -0.102507, 0.847610,
		0.833891, -0.274119, 0.479046,
		0.183240, 0.956217, 0.228192,
		35.515923, 30.365084, 28.888596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572777, 29.761841, 29.511978>,  <35.387653, 29.695732, 28.728861>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572777, 29.761841, 29.511978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.474434, 30.138494, 29.419996>,  <35.415428, 30.364487, 29.364807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.474434, 30.138494, 29.419996>,  <35.572777, 29.761841, 29.511978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474434, 30.138494, 29.419996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572093, 0.050544, 0.818630,
		0.782472, 0.332824, 0.526275,
		-0.245860, 0.941633, -0.229956,
		35.400677, 30.420984, 29.351009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055153, 29.387327, 29.849115>,  <35.572777, 29.761841, 29.511978>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055153, 29.387327, 29.849115> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.056530, 29.018305, 30.003452>,  <36.057354, 28.796890, 30.096054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.056530, 29.018305, 30.003452>,  <36.055153, 29.387327, 29.849115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056530, 29.018305, 30.003452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143585, -0.381392, -0.913194,
		0.989632, 0.058541, 0.131155,
		0.003438, -0.922558, 0.385844,
		36.057560, 28.741537, 30.119205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730717, 29.016232, 29.594847>,  <36.055153, 29.387327, 29.849115>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730717, 29.016232, 29.594847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.451077, 28.747574, 29.692947>,  <36.283291, 28.586380, 29.751808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.451077, 28.747574, 29.692947>,  <36.730717, 29.016232, 29.594847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451077, 28.747574, 29.692947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047305, -0.385697, -0.921412,
		0.713452, -0.632562, 0.301414,
		-0.699105, -0.671642, 0.245253,
		36.241344, 28.546082, 29.766523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035408, 28.347521, 29.264769>,  <36.730717, 29.016232, 29.594847>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035408, 28.347521, 29.264769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.640205, 28.309906, 29.313761>,  <36.403084, 28.287336, 29.343155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.640205, 28.309906, 29.313761>,  <37.035408, 28.347521, 29.264769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640205, 28.309906, 29.313761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080934, -0.360135, -0.929383,
		0.131506, -0.928149, 0.348205,
		-0.988006, -0.094038, 0.122478,
		36.343803, 28.281694, 29.350504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847084, 27.576296, 29.109703>,  <37.035408, 28.347521, 29.264769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847084, 27.576296, 29.109703> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.523823, 27.801426, 29.040283>,  <36.329868, 27.936504, 28.998631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.523823, 27.801426, 29.040283>,  <36.847084, 27.576296, 29.109703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523823, 27.801426, 29.040283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160156, -0.493559, -0.854839,
		-0.566784, -0.663042, 0.489010,
		-0.808150, 0.562827, -0.173551,
		36.281376, 27.970274, 28.988218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297348, 27.152243, 28.908264>,  <36.847084, 27.576296, 29.109703>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297348, 27.152243, 28.908264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.151150, 27.489523, 28.750566>,  <36.063431, 27.691891, 28.655947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.151150, 27.489523, 28.750566>,  <36.297348, 27.152243, 28.908264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151150, 27.489523, 28.750566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100451, -0.456807, -0.883876,
		-0.925377, -0.283449, 0.251661,
		-0.365495, 0.843199, -0.394246,
		36.041500, 27.742483, 28.632292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827335, 26.912853, 28.408417>,  <36.297348, 27.152243, 28.908264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827335, 26.912853, 28.408417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.858627, 27.300261, 28.313881>,  <35.877403, 27.532705, 28.257160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.858627, 27.300261, 28.313881>,  <35.827335, 26.912853, 28.408417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858627, 27.300261, 28.313881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035513, -0.234206, -0.971538,
		-0.996303, 0.084392, 0.016074,
		0.078226, 0.968517, -0.236337,
		35.882095, 27.590816, 28.242979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460533, 26.934950, 27.772499>,  <35.827335, 26.912853, 28.408417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460533, 26.934950, 27.772499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.684223, 27.266407, 27.782459>,  <35.818436, 27.465281, 27.788435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.684223, 27.266407, 27.782459>,  <35.460533, 26.934950, 27.772499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684223, 27.266407, 27.782459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347274, -0.206880, -0.914659,
		-0.752774, 0.520146, -0.403458,
		0.559224, 0.828643, 0.024899,
		35.851990, 27.514999, 27.789928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450382, 27.266905, 27.103275>,  <35.460533, 26.934950, 27.772499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450382, 27.266905, 27.103275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.795349, 27.425316, 27.229391>,  <36.002327, 27.520363, 27.305059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.795349, 27.425316, 27.229391>,  <35.450382, 27.266905, 27.103275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795349, 27.425316, 27.229391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334495, 0.021652, -0.942149,
		-0.379944, 0.917983, -0.113796,
		0.862413, 0.396028, 0.315287,
		36.054073, 27.544125, 27.323977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576504, 27.639421, 26.535530>,  <35.450382, 27.266905, 27.103275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576504, 27.639421, 26.535530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.921707, 27.589201, 26.731262>,  <36.128830, 27.559069, 26.848701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.921707, 27.589201, 26.731262>,  <35.576504, 27.639421, 26.535530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921707, 27.589201, 26.731262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493929, 0.006399, -0.869479,
		0.106034, 0.992066, 0.067536,
		0.863013, -0.125552, 0.489332,
		36.180611, 27.551535, 26.878061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969707, 28.051241, 26.102495>,  <35.576504, 27.639421, 26.535530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969707, 28.051241, 26.102495> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.222355, 27.801226, 26.285967>,  <36.373943, 27.651217, 26.396049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.222355, 27.801226, 26.285967>,  <35.969707, 28.051241, 26.102495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222355, 27.801226, 26.285967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431950, -0.207583, -0.877684,
		0.643800, 0.752486, 0.138873,
		0.631617, -0.625039, 0.458678,
		36.411839, 27.613714, 26.423571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672283, 28.291737, 26.011641>,  <35.969707, 28.051241, 26.102495>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672283, 28.291737, 26.011641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.693302, 27.895914, 26.065332>,  <36.705914, 27.658421, 26.097548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.693302, 27.895914, 26.065332>,  <36.672283, 28.291737, 26.011641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693302, 27.895914, 26.065332> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589366, -0.077781, -0.804113,
		0.806156, 0.121363, 0.579124,
		0.052544, -0.989556, 0.134231,
		36.709064, 27.599047, 26.105602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448486, 28.159725, 26.202820>,  <36.672283, 28.291737, 26.011641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448486, 28.159725, 26.202820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.279106, 27.820766, 26.074692>,  <37.177479, 27.617392, 25.997816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.279106, 27.820766, 26.074692>,  <37.448486, 28.159725, 26.202820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279106, 27.820766, 26.074692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655484, -0.042532, -0.754011,
		0.625324, -0.529251, 0.573466,
		-0.423452, -0.847399, -0.320319,
		37.152069, 27.566547, 25.978596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969864, 27.649042, 26.117895>,  <37.448486, 28.159725, 26.202820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969864, 27.649042, 26.117895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.672688, 27.523232, 25.881550>,  <37.494381, 27.447746, 25.739742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.672688, 27.523232, 25.881550>,  <37.969864, 27.649042, 26.117895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672688, 27.523232, 25.881550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655546, -0.163475, -0.737248,
		0.135291, -0.935067, 0.327637,
		-0.742937, -0.314525, -0.590863,
		37.449806, 27.428875, 25.704290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253258, 27.123169, 25.717319>,  <37.969864, 27.649042, 26.117895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253258, 27.123169, 25.717319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.925728, 27.221304, 25.509729>,  <37.729210, 27.280184, 25.385176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.925728, 27.221304, 25.509729>,  <38.253258, 27.123169, 25.717319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925728, 27.221304, 25.509729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526755, -0.038193, -0.849159,
		-0.228150, -0.968686, -0.097958,
		-0.818827, 0.245335, -0.518973,
		37.680080, 27.294905, 25.354038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567192, 26.522360, 26.053612>,  <38.253258, 27.123169, 25.717319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567192, 26.522360, 26.053612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.929012, 26.360138, 26.106239>,  <39.146107, 26.262806, 26.137815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.929012, 26.360138, 26.106239>,  <38.567192, 26.522360, 26.053612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929012, 26.360138, 26.106239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214610, -0.166444, 0.962413,
		-0.368412, -0.898789, -0.237593,
		0.904553, -0.405555, 0.131569,
		39.200378, 26.238472, 26.145710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367146, 25.947187, 26.481104>,  <38.567192, 26.522360, 26.053612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367146, 25.947187, 26.481104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.747253, 26.064255, 26.523678>,  <38.975319, 26.134495, 26.549223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.747253, 26.064255, 26.523678>,  <38.367146, 25.947187, 26.481104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747253, 26.064255, 26.523678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001729, -0.336809, 0.941571,
		0.311417, -0.894933, -0.319554,
		0.950272, 0.292669, 0.106435,
		39.032333, 26.152056, 26.555609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777302, 25.436590, 26.709682>,  <38.367146, 25.947187, 26.481104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777302, 25.436590, 26.709682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.971188, 25.760105, 26.842899>,  <39.087517, 25.954214, 26.922829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.971188, 25.760105, 26.842899>,  <38.777302, 25.436590, 26.709682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971188, 25.760105, 26.842899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146863, -0.300100, 0.942534,
		0.862256, -0.505769, -0.026681,
		0.484712, 0.808787, 0.333042,
		39.116600, 26.002741, 26.942812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000313, 25.169968, 27.368195>,  <38.777302, 25.436590, 26.709682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000313, 25.169968, 27.368195> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.045303, 25.565697, 27.405275>,  <39.072296, 25.803133, 27.427523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.045303, 25.565697, 27.405275>,  <39.000313, 25.169968, 27.368195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045303, 25.565697, 27.405275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097018, -0.103781, 0.989857,
		0.988907, -0.102341, -0.107654,
		0.112476, 0.989321, 0.092701,
		39.079044, 25.862494, 27.433086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634502, 25.236332, 27.809698>,  <39.000313, 25.169968, 27.368195>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634502, 25.236332, 27.809698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.436516, 25.580833, 27.855738>,  <39.317722, 25.787535, 27.883362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.436516, 25.580833, 27.855738>,  <39.634502, 25.236332, 27.809698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436516, 25.580833, 27.855738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230808, 0.002616, 0.972996,
		0.837695, 0.508169, -0.200079,
		-0.494970, 0.861253, 0.115098,
		39.288025, 25.839209, 27.890266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008114, 25.593870, 28.348478>,  <39.634502, 25.236332, 27.809698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008114, 25.593870, 28.348478> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.656700, 25.782225, 28.316364>,  <39.445850, 25.895237, 28.297096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.656700, 25.782225, 28.316364>,  <40.008114, 25.593870, 28.348478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656700, 25.782225, 28.316364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039071, 0.096676, 0.994549,
		0.476080, 0.876881, -0.066535,
		-0.878534, 0.470885, -0.080286,
		39.393139, 25.923491, 28.292278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962303, 26.199017, 28.872496>,  <40.008114, 25.593870, 28.348478>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962303, 26.199017, 28.872496> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.578709, 26.138681, 28.776506>,  <39.348553, 26.102480, 28.718912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.578709, 26.138681, 28.776506>,  <39.962303, 26.199017, 28.872496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578709, 26.138681, 28.776506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259581, 0.127363, 0.957286,
		-0.113831, 0.980320, -0.161294,
		-0.958989, -0.150838, -0.239974,
		39.291012, 26.093430, 28.704514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477310, 26.760088, 29.151299>,  <39.962303, 26.199017, 28.872496>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477310, 26.760088, 29.151299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.211246, 26.466934, 29.094099>,  <39.051609, 26.291042, 29.059780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.211246, 26.466934, 29.094099>,  <39.477310, 26.760088, 29.151299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211246, 26.466934, 29.094099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379794, 0.167171, 0.909841,
		-0.642901, 0.659498, -0.389540,
		-0.665158, -0.732882, -0.142999,
		39.011700, 26.247070, 29.051199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777931, 27.061243, 29.338203>,  <39.477310, 26.760088, 29.151299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777931, 27.061243, 29.338203> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.780212, 26.661772, 29.358646>,  <38.781582, 26.422089, 29.370913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.780212, 26.661772, 29.358646>,  <38.777931, 27.061243, 29.338203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780212, 26.661772, 29.358646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199342, 0.048948, 0.978707,
		-0.979913, -0.015769, -0.198799,
		0.005703, -0.998677, 0.051108,
		38.781921, 26.362169, 29.373980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100887, 26.882458, 29.642162>,  <38.777931, 27.061243, 29.338203>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100887, 26.882458, 29.642162> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.345074, 26.568792, 29.686722>,  <38.491585, 26.380592, 29.713457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.345074, 26.568792, 29.686722>,  <38.100887, 26.882458, 29.642162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345074, 26.568792, 29.686722> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289625, -0.090102, 0.952890,
		-0.737186, -0.613975, -0.282119,
		0.610470, -0.784166, 0.111401,
		38.528214, 26.333542, 29.720142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754742, 26.387426, 30.004929>,  <38.100887, 26.882458, 29.642162>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754742, 26.387426, 30.004929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.136570, 26.299871, 30.085798>,  <38.365669, 26.247339, 30.134321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.136570, 26.299871, 30.085798>,  <37.754742, 26.387426, 30.004929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136570, 26.299871, 30.085798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212642, -0.025105, 0.976808,
		-0.208735, -0.975427, -0.070509,
		0.954575, -0.218887, 0.202177,
		38.422943, 26.234205, 30.146452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713779, 25.891417, 30.515291>,  <37.754742, 26.387426, 30.004929>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713779, 25.891417, 30.515291> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.103973, 25.971519, 30.551779>,  <38.338089, 26.019581, 30.573671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.103973, 25.971519, 30.551779>,  <37.713779, 25.891417, 30.515291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103973, 25.971519, 30.551779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054345, -0.182451, 0.981712,
		0.213240, -0.962605, -0.167096,
		0.975487, 0.200259, 0.091218,
		38.396618, 26.031597, 30.579144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012077, 25.312254, 30.965712>,  <37.713779, 25.891417, 30.515291>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012077, 25.312254, 30.965712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.231148, 25.646593, 30.950731>,  <38.362591, 25.847197, 30.941744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.231148, 25.646593, 30.950731>,  <38.012077, 25.312254, 30.965712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231148, 25.646593, 30.950731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095543, 0.106946, 0.989664,
		0.831215, -0.538440, 0.138431,
		0.547680, 0.835850, -0.037451,
		38.395451, 25.897348, 30.939497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415081, 25.295500, 31.640020>,  <38.012077, 25.312254, 30.965712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415081, 25.295500, 31.640020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.408821, 25.677982, 31.523109>,  <38.405067, 25.907471, 31.452963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.408821, 25.677982, 31.523109>,  <38.415081, 25.295500, 31.640020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408821, 25.677982, 31.523109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037444, 0.291550, 0.955823,
		0.999176, 0.025900, 0.031243,
		-0.015647, 0.956205, -0.292279,
		38.404125, 25.964844, 31.435425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.758286, 25.708986, 27.265108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.765736, 26.108801, 27.274769>,  <42.770206, 26.348690, 27.280565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.765736, 26.108801, 27.274769>,  <42.758286, 25.708986, 27.265108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.765736, 26.108801, 27.274769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352050, 0.016054, -0.935844,
		-0.935796, 0.025932, -0.351587,
		0.018624, 0.999535, 0.024153,
		42.771324, 26.408661, 27.282015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.340984, 25.925304, 26.646324>,  <42.758286, 25.708986, 27.265108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.340984, 25.925304, 26.646324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.578518, 26.234779, 26.734657>,  <42.721039, 26.420464, 26.787657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.578518, 26.234779, 26.734657>,  <42.340984, 25.925304, 26.646324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.578518, 26.234779, 26.734657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343654, 0.004275, -0.939087,
		-0.727503, 0.633554, -0.263342,
		0.593836, 0.773687, 0.220834,
		42.756668, 26.466885, 26.800907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.285000, 26.337475, 26.172461>,  <42.340984, 25.925304, 26.646324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.285000, 26.337475, 26.172461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.620522, 26.471859, 26.343826>,  <42.821835, 26.552490, 26.446646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.620522, 26.471859, 26.343826>,  <42.285000, 26.337475, 26.172461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.620522, 26.471859, 26.343826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382735, 0.195757, -0.902880,
		-0.387198, 0.921308, 0.035618,
		0.838804, 0.335961, 0.428414,
		42.872162, 26.572647, 26.472351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.467587, 26.948423, 25.814760>,  <42.285000, 26.337475, 26.172461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.467587, 26.948423, 25.814760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.792000, 26.795296, 25.991699>,  <42.986649, 26.703419, 26.097862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.792000, 26.795296, 25.991699>,  <42.467587, 26.948423, 25.814760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.792000, 26.795296, 25.991699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451805, -0.070440, -0.889331,
		0.371614, 0.921133, 0.115832,
		0.811033, -0.382821, 0.442349,
		43.035309, 26.680449, 26.124405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013485, 27.222612, 25.372074>,  <42.467587, 26.948423, 25.814760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.013485, 27.222612, 25.372074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.193966, 26.931917, 25.579252>,  <43.302254, 26.757500, 25.703560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.193966, 26.931917, 25.579252>,  <43.013485, 27.222612, 25.372074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.193966, 26.931917, 25.579252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559460, -0.221830, -0.798621,
		0.695284, 0.650110, 0.306491,
		0.451203, -0.726738, 0.517946,
		43.329327, 26.713896, 25.734636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.696346, 27.389517, 25.306364>,  <43.013485, 27.222612, 25.372074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.696346, 27.389517, 25.306364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.661495, 26.994850, 25.361353>,  <43.640583, 26.758051, 25.394346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.661495, 26.994850, 25.361353>,  <43.696346, 27.389517, 25.306364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.661495, 26.994850, 25.361353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740380, -0.156462, -0.653725,
		0.666518, 0.044825, 0.744140,
		-0.087126, -0.986666, 0.137472,
		43.635357, 26.698851, 25.402594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.281540, 27.121941, 25.028297>,  <43.696346, 27.389517, 25.306364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.281540, 27.121941, 25.028297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.053268, 26.794733, 25.057068>,  <43.916306, 26.598408, 25.074329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.053268, 26.794733, 25.057068>,  <44.281540, 27.121941, 25.028297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.053268, 26.794733, 25.057068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579615, -0.463303, -0.670370,
		0.581699, -0.340875, 0.738533,
		-0.570677, -0.818019, 0.071926,
		43.882065, 26.549328, 25.078646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.766178, 26.673487, 25.069933>,  <44.281540, 27.121941, 25.028297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.766178, 26.673487, 25.069933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.432709, 26.490871, 24.945641>,  <44.232628, 26.381302, 24.871065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.432709, 26.490871, 24.945641>,  <44.766178, 26.673487, 25.069933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.432709, 26.490871, 24.945641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415067, -0.146836, -0.897864,
		0.364283, -0.877503, 0.311908,
		-0.833677, -0.456539, -0.310732,
		44.182606, 26.353910, 24.852421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.969158, 26.049063, 24.647911>,  <44.766178, 26.673487, 25.069933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.969158, 26.049063, 24.647911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.597076, 26.067871, 24.502304>,  <44.373829, 26.079157, 24.414940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.597076, 26.067871, 24.502304>,  <44.969158, 26.049063, 24.647911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.597076, 26.067871, 24.502304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341740, -0.250881, -0.905689,
		-0.133909, -0.966875, 0.217303,
		-0.930206, 0.047019, -0.364015,
		44.318016, 26.081978, 24.393099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.895336, 25.427160, 24.301746>,  <44.969158, 26.049063, 24.647911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.895336, 25.427160, 24.301746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.589088, 25.647121, 24.168221>,  <44.405338, 25.779099, 24.088106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.589088, 25.647121, 24.168221>,  <44.895336, 25.427160, 24.301746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.589088, 25.647121, 24.168221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247608, -0.227021, -0.941887,
		-0.593728, -0.803784, 0.037652,
		-0.765622, 0.549902, -0.333812,
		44.359402, 25.812092, 24.068077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.575672, 25.076292, 23.796244>,  <44.895336, 25.427160, 24.301746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.575672, 25.076292, 23.796244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.470036, 25.456413, 23.730301>,  <44.406654, 25.684486, 23.690735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.470036, 25.456413, 23.730301>,  <44.575672, 25.076292, 23.796244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.470036, 25.456413, 23.730301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323238, -0.073839, -0.943433,
		-0.908721, -0.302440, -0.287674,
		-0.264090, 0.950304, -0.164859,
		44.390808, 25.741505, 23.680843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.154320, 25.057844, 23.269194>,  <44.575672, 25.076292, 23.796244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.154320, 25.057844, 23.269194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.299198, 25.430683, 23.270378>,  <44.386124, 25.654387, 23.271090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.299198, 25.430683, 23.270378>,  <44.154320, 25.057844, 23.269194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.299198, 25.430683, 23.270378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298836, -0.113111, -0.947578,
		-0.882901, 0.344090, -0.319512,
		0.362192, 0.932099, 0.002961,
		44.407856, 25.710312, 23.271267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.915421, 25.452452, 22.744558>,  <44.154320, 25.057844, 23.269194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.915421, 25.452452, 22.744558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.257816, 25.642889, 22.825176>,  <44.463253, 25.757153, 22.873547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.257816, 25.642889, 22.825176>,  <43.915421, 25.452452, 22.744558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.257816, 25.642889, 22.825176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215705, 0.025397, -0.976128,
		-0.469849, 0.879027, -0.080956,
		0.855987, 0.476096, 0.201543,
		44.514614, 25.785717, 22.885639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.941929, 26.203783, 22.390564>,  <43.915421, 25.452452, 22.744558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.941929, 26.203783, 22.390564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.255119, 25.958086, 22.429852>,  <44.443035, 25.810667, 22.453424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.255119, 25.958086, 22.429852>,  <43.941929, 26.203783, 22.390564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.255119, 25.958086, 22.429852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062162, -0.079841, -0.994867,
		0.618933, 0.785067, -0.024331,
		0.782980, -0.614244, 0.098218,
		44.490013, 25.773813, 22.459316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.412872, 25.809282, 22.370611>,  <43.941929, 26.203783, 22.390564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.412872, 25.809282, 22.370611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.157104, 25.549421, 22.206123>,  <43.003643, 25.393505, 22.107430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.157104, 25.549421, 22.206123>,  <43.412872, 25.809282, 22.370611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.157104, 25.549421, 22.206123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617885, 0.115887, 0.777681,
		-0.457566, 0.751348, -0.475509,
		-0.639415, -0.649650, -0.411221,
		42.965279, 25.354527, 22.082758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.790020, 26.088625, 22.348719>,  <43.412872, 25.809282, 22.370611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.790020, 26.088625, 22.348719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.731953, 25.692883, 22.352734>,  <42.697113, 25.455437, 22.355143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.731953, 25.692883, 22.352734>,  <42.790020, 26.088625, 22.348719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.731953, 25.692883, 22.352734> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758968, 0.117858, 0.640373,
		-0.634740, 0.085342, -0.767998,
		-0.145166, -0.989356, 0.010038,
		42.688404, 25.396076, 22.355745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.120941, 26.032419, 22.481073>,  <42.790020, 26.088625, 22.348719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.120941, 26.032419, 22.481073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.234467, 25.659225, 22.569607>,  <42.302582, 25.435308, 22.622726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.234467, 25.659225, 22.569607>,  <42.120941, 26.032419, 22.481073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.234467, 25.659225, 22.569607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875016, -0.157591, 0.457725,
		-0.392171, -0.323576, -0.861104,
		0.283811, -0.932986, 0.221332,
		42.319611, 25.379330, 22.636007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475811, 25.498764, 22.332966>,  <42.120941, 26.032419, 22.481073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.475811, 25.498764, 22.332966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.697582, 25.306673, 22.604847>,  <41.830647, 25.191420, 22.767975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.697582, 25.306673, 22.604847>,  <41.475811, 25.498764, 22.332966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.697582, 25.306673, 22.604847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805332, -0.103616, 0.583698,
		-0.209878, -0.871004, -0.444188,
		0.554429, -0.480224, 0.679701,
		41.863911, 25.162605, 22.808758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024120, 24.948874, 22.478771>,  <41.475811, 25.498764, 22.332966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.024120, 24.948874, 22.478771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.296616, 24.957561, 22.771467>,  <41.460114, 24.962774, 22.947084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.296616, 24.957561, 22.771467>,  <41.024120, 24.948874, 22.478771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296616, 24.957561, 22.771467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730261, -0.049927, 0.681341,
		0.051335, -0.998516, -0.018147,
		0.681237, 0.021724, 0.731741,
		41.500988, 24.964079, 22.990990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789421, 24.421995, 22.962286>,  <41.024120, 24.948874, 22.478771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789421, 24.421995, 22.962286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.042107, 24.635792, 23.186878>,  <41.193718, 24.764071, 23.321632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.042107, 24.635792, 23.186878>,  <40.789421, 24.421995, 22.962286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.042107, 24.635792, 23.186878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689932, 0.057396, 0.721595,
		0.353461, -0.843221, 0.405022,
		0.631711, 0.534494, 0.561479,
		41.231621, 24.796139, 23.355322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.893421, 24.052433, 23.655102>,  <40.789421, 24.421995, 22.962286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.893421, 24.052433, 23.655102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.980694, 24.440920, 23.693325>,  <41.033058, 24.674013, 23.716259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.980694, 24.440920, 23.693325>,  <40.893421, 24.052433, 23.655102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.980694, 24.440920, 23.693325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708063, 0.090154, 0.700370,
		0.671598, -0.220466, 0.707355,
		0.218179, 0.971219, 0.095557,
		41.046146, 24.732286, 23.721992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.082588, 24.333942, 24.394793>,  <40.893421, 24.052433, 23.655102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.082588, 24.333942, 24.394793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.970112, 24.677244, 24.223057>,  <40.902626, 24.883224, 24.120014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.970112, 24.677244, 24.223057>,  <41.082588, 24.333942, 24.394793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.970112, 24.677244, 24.223057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483355, 0.259835, 0.835975,
		0.829036, 0.442593, 0.341777,
		-0.281191, 0.858253, -0.429342,
		40.885754, 24.934719, 24.094254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.032238, 24.733648, 24.945469>,  <41.082588, 24.333942, 24.394793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.032238, 24.733648, 24.945469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.841743, 24.952705, 24.670284>,  <40.727448, 25.084139, 24.505175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.841743, 24.952705, 24.670284>,  <41.032238, 24.733648, 24.945469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.841743, 24.952705, 24.670284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410251, 0.553626, 0.724701,
		0.777748, 0.627365, -0.038987,
		-0.476237, 0.547641, -0.687959,
		40.698872, 25.116997, 24.463896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.144501, 25.456047, 25.102627>,  <41.032238, 24.733648, 24.945469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.144501, 25.456047, 25.102627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.825565, 25.476000, 24.862041>,  <40.634205, 25.487972, 24.717690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.825565, 25.476000, 24.862041>,  <41.144501, 25.456047, 25.102627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825565, 25.476000, 24.862041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431900, 0.648934, 0.626376,
		0.421557, 0.759207, -0.495876,
		-0.797340, 0.049884, -0.601465,
		40.586365, 25.490965, 24.681602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.883595, 26.111643, 25.303724>,  <41.144501, 25.456047, 25.102627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.883595, 26.111643, 25.303724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.585987, 25.924227, 25.113188>,  <40.407421, 25.811777, 24.998867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.585987, 25.924227, 25.113188>,  <40.883595, 26.111643, 25.303724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585987, 25.924227, 25.113188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668042, 0.534765, 0.517442,
		0.012286, 0.703203, -0.710883,
		-0.744022, -0.468542, -0.476339,
		40.362782, 25.783665, 24.970285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427143, 26.625572, 25.136011>,  <40.883595, 26.111643, 25.303724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427143, 26.625572, 25.136011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.216137, 26.286484, 25.113777>,  <40.089531, 26.083031, 25.100437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.216137, 26.286484, 25.113777>,  <40.427143, 26.625572, 25.136011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.216137, 26.286484, 25.113777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632574, 0.348277, 0.691775,
		-0.567074, 0.400087, -0.719971,
		-0.527520, -0.847722, -0.055586,
		40.057880, 26.032167, 25.097101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750217, 26.915417, 25.216265>,  <40.427143, 26.625572, 25.136011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750217, 26.915417, 25.216265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.732311, 26.523790, 25.295689>,  <39.721565, 26.288815, 25.343342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.732311, 26.523790, 25.295689>,  <39.750217, 26.915417, 25.216265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732311, 26.523790, 25.295689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685756, 0.174650, 0.706566,
		-0.726453, -0.104530, -0.679219,
		-0.044768, -0.979066, 0.198558,
		39.718880, 26.230070, 25.355255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030529, 26.718908, 25.279585>,  <39.750217, 26.915417, 25.216265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030529, 26.718908, 25.279585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.254562, 26.470175, 25.498539>,  <39.388981, 26.320934, 25.629911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.254562, 26.470175, 25.498539>,  <39.030529, 26.718908, 25.279585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254562, 26.470175, 25.498539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621515, 0.121476, 0.773927,
		-0.547747, -0.773672, -0.318441,
		0.560082, -0.621832, 0.547387,
		39.422588, 26.283625, 25.662756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302780, 26.554089, 25.182173>,  <39.030529, 26.718908, 25.279585>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302780, 26.554089, 25.182173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.075321, 26.865704, 25.076542>,  <37.938847, 27.052673, 25.013163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.075321, 26.865704, 25.076542>,  <38.302780, 26.554089, 25.182173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.075321, 26.865704, 25.076542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498153, 0.070672, -0.864204,
		-0.654586, -0.622980, -0.428268,
		-0.568648, 0.779039, -0.264078,
		37.904728, 27.099415, 24.997318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195309, 26.429234, 24.465437>,  <38.302780, 26.554089, 25.182173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195309, 26.429234, 24.465437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.087921, 26.813763, 24.490047>,  <38.023487, 27.044479, 24.504814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.087921, 26.813763, 24.490047>,  <38.195309, 26.429234, 24.465437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087921, 26.813763, 24.490047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509504, 0.195918, -0.837867,
		-0.817513, -0.193596, -0.542395,
		-0.268472, 0.961321, 0.061527,
		38.007378, 27.102160, 24.508505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838940, 26.535629, 23.907242>,  <38.195309, 26.429234, 24.465437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838940, 26.535629, 23.907242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.981735, 26.890888, 24.022999>,  <38.067413, 27.104044, 24.092453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.981735, 26.890888, 24.022999>,  <37.838940, 26.535629, 23.907242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981735, 26.890888, 24.022999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249346, 0.207958, -0.945822,
		-0.900213, 0.409809, -0.147217,
		0.356992, 0.888150, 0.289391,
		38.088833, 27.157333, 24.109816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909985, 26.908945, 23.308847>,  <37.838940, 26.535629, 23.907242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909985, 26.908945, 23.308847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.122463, 27.161053, 23.535332>,  <38.249950, 27.312317, 23.671223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.122463, 27.161053, 23.535332>,  <37.909985, 26.908945, 23.308847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122463, 27.161053, 23.535332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574067, 0.223762, -0.787640,
		-0.623121, 0.743433, -0.242955,
		0.531193, 0.630268, 0.566212,
		38.281822, 27.350134, 23.705194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929714, 27.661978, 23.028028>,  <37.909985, 26.908945, 23.308847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929714, 27.661978, 23.028028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.253029, 27.625256, 23.260664>,  <38.447018, 27.603222, 23.400246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.253029, 27.625256, 23.260664>,  <37.929714, 27.661978, 23.028028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253029, 27.625256, 23.260664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578805, 0.305027, -0.756269,
		-0.107970, 0.947908, 0.299687,
		0.808286, -0.091806, 0.581588,
		38.495514, 27.597713, 23.435141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396332, 28.313860, 23.052361>,  <37.929714, 27.661978, 23.028028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396332, 28.313860, 23.052361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.650875, 28.017324, 23.137653>,  <38.803600, 27.839403, 23.188829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.650875, 28.017324, 23.137653>,  <38.396332, 28.313860, 23.052361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650875, 28.017324, 23.137653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589262, 0.288780, -0.754570,
		0.497813, 0.605827, 0.620609,
		0.636358, -0.741336, 0.213232,
		38.841782, 27.794924, 23.201624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067059, 28.582134, 22.771881>,  <38.396332, 28.313860, 23.052361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067059, 28.582134, 22.771881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.112652, 28.187334, 22.817200>,  <39.140007, 27.950453, 22.844391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.112652, 28.187334, 22.817200>,  <39.067059, 28.582134, 22.771881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112652, 28.187334, 22.817200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575445, -0.027374, -0.817382,
		0.809859, 0.158363, 0.564845,
		0.113981, -0.987001, 0.113298,
		39.146847, 27.891233, 22.851189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785908, 28.606821, 22.816847>,  <39.067059, 28.582134, 22.771881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785908, 28.606821, 22.816847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.700657, 28.963137, 22.656309>,  <39.649506, 29.176926, 22.559986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.700657, 28.963137, 22.656309>,  <39.785908, 28.606821, 22.816847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700657, 28.963137, 22.656309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685290, 0.156499, 0.711257,
		0.696388, 0.426621, 0.577094,
		-0.213123, 0.890787, -0.401343,
		39.636719, 29.230373, 22.535906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976978, 29.048094, 23.267033>,  <39.785908, 28.606821, 22.816847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976978, 29.048094, 23.267033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.675652, 29.192980, 23.047462>,  <39.494858, 29.279911, 22.915720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.675652, 29.192980, 23.047462>,  <39.976978, 29.048094, 23.267033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675652, 29.192980, 23.047462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470766, 0.285843, 0.834670,
		0.459235, 0.887184, -0.044813,
		-0.753315, 0.362213, -0.548925,
		39.449657, 29.301643, 22.882786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024162, 29.611303, 23.529379>,  <39.976978, 29.048094, 23.267033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024162, 29.611303, 23.529379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.652576, 29.627562, 23.382206>,  <39.429626, 29.637316, 23.293901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.652576, 29.627562, 23.382206>,  <40.024162, 29.611303, 23.529379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.652576, 29.627562, 23.382206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340859, 0.293713, 0.893055,
		0.144365, 0.955029, -0.258995,
		-0.928964, 0.040645, -0.367932,
		39.373886, 29.639755, 23.271826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759766, 30.174536, 23.718317>,  <40.024162, 29.611303, 23.529379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759766, 30.174536, 23.718317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.433491, 29.958214, 23.636160>,  <39.237728, 29.828421, 23.586866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.433491, 29.958214, 23.636160>,  <39.759766, 30.174536, 23.718317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433491, 29.958214, 23.636160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468391, 0.409039, 0.783133,
		-0.339510, 0.734993, -0.586957,
		-0.815685, -0.540807, -0.205392,
		39.188786, 29.795971, 23.574543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190815, 30.628332, 23.653812>,  <39.759766, 30.174536, 23.718317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190815, 30.628332, 23.653812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.026573, 30.272787, 23.735128>,  <38.928028, 30.059460, 23.783918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.026573, 30.272787, 23.735128>,  <39.190815, 30.628332, 23.653812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026573, 30.272787, 23.735128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508699, 0.408335, 0.757950,
		-0.756725, 0.207803, -0.619827,
		-0.410602, -0.888865, 0.203288,
		38.903393, 30.006128, 23.796114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401081, 30.754601, 23.736681>,  <39.190815, 30.628332, 23.653812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401081, 30.754601, 23.736681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.459366, 30.403599, 23.919441>,  <38.494339, 30.192999, 24.029097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.459366, 30.403599, 23.919441>,  <38.401081, 30.754601, 23.736681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459366, 30.403599, 23.919441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679074, 0.247138, 0.691217,
		-0.719461, -0.410990, -0.559877,
		0.145716, -0.877502, 0.456899,
		38.503082, 30.140348, 24.056511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693058, 30.586664, 24.032324>,  <38.401081, 30.754601, 23.736681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693058, 30.586664, 24.032324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.969696, 30.365444, 24.218157>,  <38.135677, 30.232712, 24.329657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.969696, 30.365444, 24.218157>,  <37.693058, 30.586664, 24.032324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969696, 30.365444, 24.218157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443963, 0.181869, 0.877394,
		-0.569736, -0.813055, -0.119755,
		0.691590, -0.553051, 0.464584,
		38.177174, 30.199530, 24.357533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<45.328053, 29.085470, 22.402203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.318787, 28.777006, 22.656691>,  <45.313229, 28.591928, 22.809383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.318787, 28.777006, 22.656691>,  <45.328053, 29.085470, 22.402203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.318787, 28.777006, 22.656691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527385, 0.550063, 0.647531,
		-0.849311, -0.320534, -0.419439,
		-0.023162, -0.771161, 0.636219,
		45.311836, 28.545658, 22.847557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.667229, 29.064140, 22.772303>,  <45.328053, 29.085470, 22.402203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.667229, 29.064140, 22.772303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.904961, 28.850182, 23.012520>,  <45.047600, 28.721806, 23.156651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.904961, 28.850182, 23.012520>,  <44.667229, 29.064140, 22.772303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.904961, 28.850182, 23.012520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437662, 0.411352, 0.799526,
		-0.674700, -0.738020, 0.010375,
		0.594333, -0.534899, 0.600542,
		45.083260, 28.689713, 23.192682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.227226, 28.849371, 23.304089>,  <44.667229, 29.064140, 22.772303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.227226, 28.849371, 23.304089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.589764, 28.782169, 23.459171>,  <44.807285, 28.741848, 23.552221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.589764, 28.782169, 23.459171>,  <44.227226, 28.849371, 23.304089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.589764, 28.782169, 23.459171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334613, 0.274925, 0.901360,
		-0.258023, -0.946673, 0.192959,
		0.906343, -0.168005, 0.387706,
		44.861668, 28.731768, 23.575483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.050987, 28.606697, 24.022287>,  <44.227226, 28.849371, 23.304089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.050987, 28.606697, 24.022287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.438946, 28.703600, 24.032246>,  <44.671719, 28.761742, 24.038219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.438946, 28.703600, 24.032246>,  <44.050987, 28.606697, 24.022287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.438946, 28.703600, 24.032246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096127, 0.286907, 0.953123,
		0.223760, -0.926820, 0.301556,
		0.969892, 0.242259, 0.024894,
		44.729912, 28.776278, 24.039715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.381077, 28.273193, 24.699970>,  <44.050987, 28.606697, 24.022287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.381077, 28.273193, 24.699970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.615807, 28.581850, 24.601822>,  <44.756645, 28.767044, 24.542933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.615807, 28.581850, 24.601822>,  <44.381077, 28.273193, 24.699970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.615807, 28.581850, 24.601822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092137, 0.237430, 0.967025,
		0.804455, -0.590082, 0.068233,
		0.586825, 0.771641, -0.245370,
		44.791855, 28.813343, 24.528212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.932823, 28.291014, 25.261763>,  <44.381077, 28.273193, 24.699970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.932823, 28.291014, 25.261763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.909317, 28.632193, 25.054291>,  <44.895214, 28.836901, 24.929808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.909317, 28.632193, 25.054291>,  <44.932823, 28.291014, 25.261763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.909317, 28.632193, 25.054291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032138, 0.520925, 0.852998,
		0.997754, 0.033455, -0.058023,
		-0.058763, 0.852947, -0.518680,
		44.891689, 28.888077, 24.898687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.448376, 28.721378, 25.598625>,  <44.932823, 28.291014, 25.261763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.448376, 28.721378, 25.598625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.194210, 28.962963, 25.406178>,  <45.041710, 29.107914, 25.290709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.194210, 28.962963, 25.406178>,  <45.448376, 28.721378, 25.598625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.194210, 28.962963, 25.406178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117022, 0.540559, 0.833128,
		0.763250, 0.585685, -0.272804,
		-0.635417, 0.603961, -0.481120,
		45.003586, 29.144152, 25.261841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.662331, 29.486292, 25.706488>,  <45.448376, 28.721378, 25.598625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.662331, 29.486292, 25.706488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.281834, 29.494743, 25.583395>,  <45.053535, 29.499815, 25.509541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.281834, 29.494743, 25.583395>,  <45.662331, 29.486292, 25.706488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.281834, 29.494743, 25.583395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218001, 0.659745, 0.719175,
		0.218219, 0.751193, -0.622969,
		-0.951239, 0.021130, -0.307729,
		44.996460, 29.501081, 25.491076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.431484, 30.271835, 25.637926>,  <45.662331, 29.486292, 25.706488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.431484, 30.271835, 25.637926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.130177, 30.018873, 25.710205>,  <44.949390, 29.867096, 25.753572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.130177, 30.018873, 25.710205>,  <45.431484, 30.271835, 25.637926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.130177, 30.018873, 25.710205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275175, 0.552560, 0.786737,
		-0.597380, 0.542903, -0.590249,
		-0.753270, -0.632403, 0.180695,
		44.904194, 29.829153, 25.764414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.926643, 30.747431, 25.794714>,  <45.431484, 30.271835, 25.637926>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.926643, 30.747431, 25.794714> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.793571, 30.397816, 25.936352>,  <44.713726, 30.188047, 26.021334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.793571, 30.397816, 25.936352>,  <44.926643, 30.747431, 25.794714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.793571, 30.397816, 25.936352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489989, 0.481027, 0.726996,
		-0.805749, 0.068358, -0.588299,
		-0.332684, -0.874036, 0.354093,
		44.693768, 30.135605, 26.042580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.297592, 30.910143, 26.095022>,  <44.926643, 30.747431, 25.794714>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.297592, 30.910143, 26.095022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.362614, 30.538683, 26.228399>,  <44.401627, 30.315807, 26.308426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.362614, 30.538683, 26.228399>,  <44.297592, 30.910143, 26.095022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.362614, 30.538683, 26.228399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548142, 0.196002, 0.813095,
		-0.820437, -0.314946, -0.477171,
		0.162554, -0.928651, 0.333443,
		44.411381, 30.260088, 26.328432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.675716, 30.552851, 26.272917>,  <44.297592, 30.910143, 26.095022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.675716, 30.552851, 26.272917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.957050, 30.348923, 26.471069>,  <44.125851, 30.226566, 26.589962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.957050, 30.348923, 26.471069>,  <43.675716, 30.552851, 26.272917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.957050, 30.348923, 26.471069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469010, 0.190868, 0.862322,
		-0.534182, -0.838840, -0.104866,
		0.703335, -0.509820, 0.495383,
		44.168053, 30.195976, 26.619684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.107258, 30.175209, 25.959997>,  <43.675716, 30.552851, 26.272917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.107258, 30.175209, 25.959997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.801464, 30.394220, 25.823889>,  <42.617989, 30.525627, 25.742224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.801464, 30.394220, 25.823889>,  <43.107258, 30.175209, 25.959997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.801464, 30.394220, 25.823889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346245, -0.096493, -0.933168,
		-0.543768, -0.831206, -0.115811,
		-0.764480, 0.547526, -0.340271,
		42.572121, 30.558477, 25.721807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.779903, 29.806862, 25.341591>,  <43.107258, 30.175209, 25.959997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.779903, 29.806862, 25.341591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.746696, 30.205418, 25.334482>,  <42.726772, 30.444551, 25.330217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.746696, 30.205418, 25.334482>,  <42.779903, 29.806862, 25.341591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.746696, 30.205418, 25.334482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247386, 0.003330, -0.968911,
		-0.965354, -0.084830, -0.246770,
		-0.083015, 0.996390, -0.017771,
		42.721790, 30.504335, 25.329151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.468040, 29.959301, 24.729521>,  <42.779903, 29.806862, 25.341591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.468040, 29.959301, 24.729521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.581657, 30.330177, 24.827206>,  <42.649826, 30.552702, 24.885817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.581657, 30.330177, 24.827206>,  <42.468040, 29.959301, 24.729521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.581657, 30.330177, 24.827206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097042, 0.225597, -0.969375,
		-0.953889, 0.299040, -0.025898,
		0.284039, 0.927190, 0.244214,
		42.666870, 30.608334, 24.900471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.100124, 30.430460, 24.274038>,  <42.468040, 29.959301, 24.729521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.100124, 30.430460, 24.274038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.399628, 30.658707, 24.408955>,  <42.579330, 30.795654, 24.489904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.399628, 30.658707, 24.408955>,  <42.100124, 30.430460, 24.274038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.399628, 30.658707, 24.408955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175427, 0.320114, -0.930995,
		-0.639212, 0.756257, 0.139585,
		0.748755, 0.570616, 0.337289,
		42.624252, 30.829891, 24.510141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.045235, 31.079134, 24.002161>,  <42.100124, 30.430460, 24.274038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.045235, 31.079134, 24.002161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.429138, 31.050968, 24.110903>,  <42.659481, 31.034069, 24.176147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.429138, 31.050968, 24.110903>,  <42.045235, 31.079134, 24.002161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.429138, 31.050968, 24.110903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280077, 0.310696, -0.908309,
		-0.020504, 0.947897, 0.317915,
		0.959759, -0.070417, 0.271855,
		42.717064, 31.029842, 24.192459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.461372, 31.677710, 23.783251>,  <42.045235, 31.079134, 24.002161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.461372, 31.677710, 23.783251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.716316, 31.371529, 23.818718>,  <42.869282, 31.187820, 23.839998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.716316, 31.371529, 23.818718>,  <42.461372, 31.677710, 23.783251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.716316, 31.371529, 23.818718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317820, 0.156306, -0.935178,
		0.701973, 0.624223, 0.342899,
		0.637357, -0.765450, 0.088668,
		42.907524, 31.141893, 23.845318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.170956, 32.036453, 23.569298>,  <42.461372, 31.677710, 23.783251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.170956, 32.036453, 23.569298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.177048, 31.636534, 23.564220>,  <43.180702, 31.396582, 23.561174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.177048, 31.636534, 23.564220>,  <43.170956, 32.036453, 23.569298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.177048, 31.636534, 23.564220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357827, 0.017305, -0.933628,
		0.933664, 0.009681, 0.358020,
		0.015234, -0.999803, -0.012693,
		43.181618, 31.336594, 23.560413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.848866, 31.910566, 23.222389>,  <43.170956, 32.036453, 23.569298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.848866, 31.910566, 23.222389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.624283, 31.581144, 23.190083>,  <43.489532, 31.383492, 23.170698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.624283, 31.581144, 23.190083>,  <43.848866, 31.910566, 23.222389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.624283, 31.581144, 23.190083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355234, -0.151723, -0.922382,
		0.747378, -0.546570, 0.377740,
		-0.561458, -0.823554, -0.080766,
		43.455845, 31.334078, 23.165854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.341015, 31.390278, 22.930290>,  <43.848866, 31.910566, 23.222389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.341015, 31.390278, 22.930290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.970749, 31.265207, 22.845079>,  <43.748589, 31.190165, 22.793953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.970749, 31.265207, 22.845079>,  <44.341015, 31.390278, 22.930290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.970749, 31.265207, 22.845079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323236, -0.360931, -0.874784,
		0.196637, -0.878614, 0.435169,
		-0.925663, -0.312677, -0.213027,
		43.693050, 31.171404, 22.781172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.499557, 30.856701, 22.511099>,  <44.341015, 31.390278, 22.930290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.499557, 30.856701, 22.511099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.107456, 30.907213, 22.450235>,  <43.872196, 30.937521, 22.413717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.107456, 30.907213, 22.450235>,  <44.499557, 30.856701, 22.511099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.107456, 30.907213, 22.450235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102437, -0.333869, -0.937037,
		-0.169133, -0.934122, 0.314341,
		-0.980255, 0.126283, -0.152157,
		43.813381, 30.945099, 22.404589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.293854, 30.212578, 22.192581>,  <44.499557, 30.856701, 22.511099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.293854, 30.212578, 22.192581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.034389, 30.506626, 22.113762>,  <43.878712, 30.683056, 22.066471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.034389, 30.506626, 22.113762>,  <44.293854, 30.212578, 22.192581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.034389, 30.506626, 22.113762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092265, -0.181043, -0.979138,
		-0.755461, -0.653313, 0.049610,
		-0.648665, 0.735123, -0.197049,
		43.839790, 30.727163, 22.054647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.862747, 29.905302, 21.659435>,  <44.293854, 30.212578, 22.192581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.862747, 29.905302, 21.659435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.812687, 30.301506, 21.636719>,  <43.782650, 30.539228, 21.623089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.812687, 30.301506, 21.636719>,  <43.862747, 29.905302, 21.659435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.812687, 30.301506, 21.636719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316700, -0.014361, -0.948417,
		-0.940233, -0.136680, -0.311898,
		-0.125150, 0.990511, -0.056790,
		43.775143, 30.598660, 21.619682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.432388, 30.068806, 21.035151>,  <43.862747, 29.905302, 21.659435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.432388, 30.068806, 21.035151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.631107, 30.403461, 21.127436>,  <43.750340, 30.604254, 21.182806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.631107, 30.403461, 21.127436>,  <43.432388, 30.068806, 21.035151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.631107, 30.403461, 21.127436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323485, 0.068169, -0.943775,
		-0.805324, 0.543499, -0.236773,
		0.496800, 0.836637, 0.230712,
		43.780148, 30.654453, 21.196650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.790382, 30.204460, 21.375999>,  <43.432388, 30.068806, 21.035151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.790382, 30.204460, 21.375999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.617283, 30.016006, 21.068556>,  <42.513424, 29.902935, 20.884090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.617283, 30.016006, 21.068556>,  <42.790382, 30.204460, 21.375999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.617283, 30.016006, 21.068556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842240, -0.092754, 0.531064,
		-0.321494, 0.877171, -0.356669,
		-0.432751, -0.471135, -0.768608,
		42.487457, 29.874666, 20.837973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.159889, 30.479073, 21.232096>,  <42.790382, 30.204460, 21.375999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.159889, 30.479073, 21.232096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.076637, 30.130117, 21.055180>,  <42.026684, 29.920744, 20.949030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.076637, 30.130117, 21.055180>,  <42.159889, 30.479073, 21.232096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.076637, 30.130117, 21.055180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840888, -0.071373, 0.536482,
		-0.499587, 0.483576, -0.718725,
		-0.208133, -0.872387, -0.442291,
		42.014198, 29.868401, 20.922493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.478920, 30.518560, 21.171509>,  <42.159889, 30.479073, 21.232096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.478920, 30.518560, 21.171509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.563213, 30.130962, 21.119913>,  <41.613789, 29.898403, 21.088957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.563213, 30.130962, 21.119913>,  <41.478920, 30.518560, 21.171509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.563213, 30.130962, 21.119913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831573, -0.247065, 0.497439,
		-0.513884, 0.002434, -0.857856,
		0.210735, -0.968996, -0.128987,
		41.626434, 29.840263, 21.081217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885380, 30.362795, 20.860693>,  <41.478920, 30.518560, 21.171509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.885380, 30.362795, 20.860693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.036007, 30.036041, 21.035461>,  <41.126385, 29.839989, 21.140322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.036007, 30.036041, 21.035461>,  <40.885380, 30.362795, 20.860693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.036007, 30.036041, 21.035461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920474, -0.276718, 0.275962,
		-0.104526, -0.506091, -0.856123,
		0.376567, -0.816883, 0.436920,
		41.148975, 29.790976, 21.166536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357868, 29.928843, 20.763813>,  <40.885380, 30.362795, 20.860693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357868, 29.928843, 20.763813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.569717, 29.747644, 21.050669>,  <40.696827, 29.638926, 21.222782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.569717, 29.747644, 21.050669>,  <40.357868, 29.928843, 20.763813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569717, 29.747644, 21.050669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844976, -0.207754, 0.492803,
		-0.074249, -0.866968, -0.492802,
		0.529625, -0.452996, 0.717141,
		40.728603, 29.611746, 21.265810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957844, 29.259781, 20.982882>,  <40.357868, 29.928843, 20.763813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957844, 29.259781, 20.982882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.205147, 29.346287, 21.285135>,  <40.353531, 29.398190, 21.466488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.205147, 29.346287, 21.285135>,  <39.957844, 29.259781, 20.982882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205147, 29.346287, 21.285135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699494, -0.287016, 0.654469,
		0.358418, -0.933194, -0.026174,
		0.618259, 0.216265, 0.755635,
		40.390625, 29.411167, 21.511826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783939, 28.776791, 21.416084>,  <39.957844, 29.259781, 20.982882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783939, 28.776791, 21.416084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.979660, 29.035889, 21.649668>,  <40.097092, 29.191347, 21.789818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.979660, 29.035889, 21.649668>,  <39.783939, 28.776791, 21.416084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.979660, 29.035889, 21.649668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685531, -0.128239, 0.716661,
		0.539100, -0.750986, 0.381303,
		0.489304, 0.647747, 0.583957,
		40.126450, 29.230213, 21.824856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886387, 28.505079, 22.106405>,  <39.783939, 28.776791, 21.416084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886387, 28.505079, 22.106405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.880264, 28.904844, 22.118660>,  <39.876591, 29.144703, 22.126013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.880264, 28.904844, 22.118660>,  <39.886387, 28.505079, 22.106405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880264, 28.904844, 22.118660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706448, -0.032495, 0.707018,
		0.707599, -0.010821, 0.706531,
		-0.015308, 0.999413, 0.030637,
		39.875671, 29.204668, 22.127851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342876, 28.022760, 22.508865>,  <39.886387, 28.505079, 22.106405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.342876, 28.022760, 22.508865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.108238, 27.746145, 22.677477>,  <39.967457, 27.580177, 22.778645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.108238, 27.746145, 22.677477>,  <40.342876, 28.022760, 22.508865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108238, 27.746145, 22.677477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283455, -0.662867, -0.693009,
		0.758658, -0.287030, 0.584853,
		-0.586594, -0.691536, 0.421529,
		39.932259, 27.538685, 22.803936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756729, 27.339399, 22.737036>,  <40.342876, 28.022760, 22.508865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.756729, 27.339399, 22.737036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.380795, 27.296667, 22.607244>,  <40.155231, 27.271029, 22.529369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.380795, 27.296667, 22.607244>,  <40.756729, 27.339399, 22.737036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380795, 27.296667, 22.607244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318416, -0.617995, -0.718814,
		-0.123734, -0.778890, 0.614834,
		-0.939841, -0.106831, -0.324478,
		40.098843, 27.264618, 22.509901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570137, 26.642895, 22.742214>,  <40.756729, 27.339399, 22.737036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570137, 26.642895, 22.742214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.356773, 26.846352, 22.471878>,  <40.228756, 26.968426, 22.309677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.356773, 26.846352, 22.471878>,  <40.570137, 26.642895, 22.742214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.356773, 26.846352, 22.471878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449654, -0.506237, -0.735891,
		-0.716438, -0.696426, 0.041321,
		-0.533412, 0.508640, -0.675838,
		40.196751, 26.998943, 22.269127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283581, 26.122929, 22.293154>,  <40.570137, 26.642895, 22.742214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283581, 26.122929, 22.293154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.296974, 26.479713, 22.112806>,  <40.305012, 26.693785, 22.004599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.296974, 26.479713, 22.112806>,  <40.283581, 26.122929, 22.293154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296974, 26.479713, 22.112806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451607, -0.415943, -0.789331,
		-0.891589, -0.177184, -0.416744,
		0.033485, 0.891963, -0.450867,
		40.307018, 26.747303, 21.977547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138058, 25.976984, 21.556870>,  <40.283581, 26.122929, 22.293154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.138058, 25.976984, 21.556870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.307831, 26.338213, 21.583158>,  <40.409695, 26.554951, 21.598932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.307831, 26.338213, 21.583158>,  <40.138058, 25.976984, 21.556870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307831, 26.338213, 21.583158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614379, -0.233911, -0.753541,
		-0.665128, 0.360205, -0.654107,
		0.424432, 0.903072, 0.065721,
		40.435162, 26.609135, 21.602875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224796, 26.095678, 20.873507>,  <40.138058, 25.976984, 21.556870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224796, 26.095678, 20.873507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.433598, 26.393833, 21.039354>,  <40.558880, 26.572725, 21.138863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.433598, 26.393833, 21.039354>,  <40.224796, 26.095678, 20.873507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433598, 26.393833, 21.039354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650730, -0.033773, -0.758558,
		-0.551416, 0.665776, -0.502675,
		0.522006, 0.745387, 0.414618,
		40.590199, 26.617449, 21.163740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357906, 26.571823, 20.346643>,  <40.224796, 26.095678, 20.873507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357906, 26.571823, 20.346643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.637955, 26.625269, 20.627207>,  <40.805984, 26.657337, 20.795546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.637955, 26.625269, 20.627207>,  <40.357906, 26.571823, 20.346643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.637955, 26.625269, 20.627207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699008, 0.072139, -0.711466,
		-0.145663, 0.988404, -0.042893,
		0.700122, 0.133617, 0.701410,
		40.847992, 26.665354, 20.837629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.891788, 27.004776, 20.003838>,  <40.357906, 26.571823, 20.346643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.891788, 27.004776, 20.003838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.095455, 26.887398, 20.327477>,  <41.217655, 26.816971, 20.521660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.095455, 26.887398, 20.327477>,  <40.891788, 27.004776, 20.003838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.095455, 26.887398, 20.327477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842505, -0.022176, -0.538231,
		0.175884, 0.955719, 0.235938,
		0.509166, -0.293445, 0.809098,
		41.248203, 26.799364, 20.570206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.504211, 27.400675, 20.014387>,  <40.891788, 27.004776, 20.003838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.504211, 27.400675, 20.014387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.590641, 27.082983, 20.241547>,  <41.642498, 26.892368, 20.377842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.590641, 27.082983, 20.241547>,  <41.504211, 27.400675, 20.014387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.590641, 27.082983, 20.241547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955135, 0.051276, -0.291700,
		0.202558, 0.605448, 0.769677,
		0.216075, -0.794232, 0.567898,
		41.655464, 26.844713, 20.411917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.881504, 29.115179, 34.646084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.217175, 28.911978, 34.723766>,  <35.418575, 28.790058, 34.770378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.217175, 28.911978, 34.723766>,  <34.881504, 29.115179, 34.646084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217175, 28.911978, 34.723766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371737, 0.275115, -0.886636,
		0.396982, 0.816239, 0.419713,
		0.839176, -0.508002, 0.194210,
		35.468929, 28.759577, 34.782028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365032, 29.520977, 34.530514>,  <34.881504, 29.115179, 34.646084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365032, 29.520977, 34.530514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.518986, 29.152304, 34.511063>,  <35.611359, 28.931099, 34.499390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.518986, 29.152304, 34.511063>,  <35.365032, 29.520977, 34.530514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518986, 29.152304, 34.511063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248650, 0.154286, -0.956226,
		0.888841, 0.355944, 0.288558,
		0.384883, -0.921683, -0.048630,
		35.634449, 28.875799, 34.496475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139507, 29.625147, 34.118809>,  <35.365032, 29.520977, 34.530514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139507, 29.625147, 34.118809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.052650, 29.237080, 34.075687>,  <36.000538, 29.004240, 34.049816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.052650, 29.237080, 34.075687>,  <36.139507, 29.625147, 34.118809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052650, 29.237080, 34.075687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352945, 0.024933, -0.935312,
		0.910098, -0.241145, 0.337002,
		-0.217143, -0.970169, -0.107803,
		35.987507, 28.946030, 34.043346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816299, 29.207983, 33.897430>,  <36.139507, 29.625147, 34.118809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816299, 29.207983, 33.897430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.472858, 29.026354, 33.802254>,  <36.266792, 28.917376, 33.745148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.472858, 29.026354, 33.802254>,  <36.816299, 29.207983, 33.897430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472858, 29.026354, 33.802254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333237, -0.141658, -0.932141,
		0.389555, -0.879630, 0.272943,
		-0.858604, -0.454075, -0.237941,
		36.215279, 28.890131, 33.730873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024639, 28.709778, 33.388294>,  <36.816299, 29.207983, 33.897430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024639, 28.709778, 33.388294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.631580, 28.726709, 33.316063>,  <36.395744, 28.736868, 33.272724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.631580, 28.726709, 33.316063>,  <37.024639, 28.709778, 33.388294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631580, 28.726709, 33.316063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171920, -0.157479, -0.972442,
		-0.069598, -0.986615, 0.147469,
		-0.982650, 0.042327, -0.180579,
		36.336784, 28.739408, 33.261890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868980, 28.095947, 32.954128>,  <37.024639, 28.709778, 33.388294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868980, 28.095947, 32.954128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.538166, 28.319054, 32.926090>,  <36.339680, 28.452917, 32.909267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.538166, 28.319054, 32.926090>,  <36.868980, 28.095947, 32.954128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538166, 28.319054, 32.926090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098533, -0.266596, -0.958759,
		-0.553452, -0.786017, 0.275442,
		-0.827032, 0.557767, -0.070100,
		36.290058, 28.486383, 32.905060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410980, 27.756052, 32.657578>,  <36.868980, 28.095947, 32.954128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410980, 27.756052, 32.657578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.312614, 28.132483, 32.564713>,  <36.253593, 28.358341, 32.508995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.312614, 28.132483, 32.564713>,  <36.410980, 27.756052, 32.657578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312614, 28.132483, 32.564713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048048, -0.251055, -0.966780,
		-0.968099, -0.226594, 0.106956,
		-0.245918, 0.941077, -0.232159,
		36.238838, 28.414806, 32.495064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931896, 27.644096, 32.174152>,  <36.410980, 27.756052, 32.657578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931896, 27.644096, 32.174152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.033203, 28.029049, 32.134804>,  <36.093987, 28.260021, 32.111195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.033203, 28.029049, 32.134804>,  <35.931896, 27.644096, 32.174152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033203, 28.029049, 32.134804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049259, -0.088726, -0.994837,
		-0.966140, 0.256810, 0.024934,
		0.253272, 0.962381, -0.098372,
		36.109184, 28.317762, 32.105293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450642, 27.910950, 31.600185>,  <35.931896, 27.644096, 32.174152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450642, 27.910950, 31.600185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.751839, 28.172974, 31.625170>,  <35.932556, 28.330189, 31.640160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.751839, 28.172974, 31.625170>,  <35.450642, 27.910950, 31.600185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751839, 28.172974, 31.625170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036225, 0.136039, -0.990041,
		-0.657034, 0.743229, 0.126165,
		0.752990, 0.655061, 0.062459,
		35.977737, 28.369492, 31.643908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283806, 28.575718, 31.341064>,  <35.450642, 27.910950, 31.600185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283806, 28.575718, 31.341064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.681942, 28.561596, 31.305170>,  <35.920822, 28.553123, 31.283632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.681942, 28.561596, 31.305170>,  <35.283806, 28.575718, 31.341064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681942, 28.561596, 31.305170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077015, 0.269006, -0.960054,
		0.058034, 0.962491, 0.265034,
		0.995340, -0.035304, -0.089738,
		35.980545, 28.551004, 31.278248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511417, 29.186668, 31.076895>,  <35.283806, 28.575718, 31.341064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511417, 29.186668, 31.076895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.802124, 28.926031, 30.989956>,  <35.976547, 28.769648, 30.937794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.802124, 28.926031, 30.989956>,  <35.511417, 29.186668, 31.076895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802124, 28.926031, 30.989956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139555, 0.169752, -0.975556,
		0.672561, 0.739330, 0.032436,
		0.726764, -0.651594, -0.217346,
		36.020153, 28.730553, 30.924751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740063, 29.433807, 30.487247>,  <35.511417, 29.186668, 31.076895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740063, 29.433807, 30.487247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.919472, 29.076311, 30.490231>,  <36.027119, 28.861814, 30.492022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.919472, 29.076311, 30.490231>,  <35.740063, 29.433807, 30.487247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919472, 29.076311, 30.490231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132996, -0.074993, -0.988275,
		0.883820, 0.442275, -0.152500,
		0.448526, -0.893739, 0.007459,
		36.054028, 28.808189, 30.492468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653027, 30.045643, 30.191616>,  <35.740063, 29.433807, 30.487247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653027, 30.045643, 30.191616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.428772, 30.301483, 29.981245>,  <35.294220, 30.454987, 29.855022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.428772, 30.301483, 29.981245>,  <35.653027, 30.045643, 30.191616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428772, 30.301483, 29.981245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613590, 0.105616, 0.782530,
		0.556053, 0.761417, 0.333240,
		-0.560636, 0.639601, -0.525926,
		35.260582, 30.493364, 29.823467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652687, 30.694466, 30.537819>,  <35.653027, 30.045643, 30.191616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652687, 30.694466, 30.537819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.314545, 30.715061, 30.325129>,  <35.111660, 30.727419, 30.197515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.314545, 30.715061, 30.325129>,  <35.652687, 30.694466, 30.537819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314545, 30.715061, 30.325129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517943, 0.164761, 0.839398,
		0.130826, 0.984989, -0.112613,
		-0.845351, 0.051488, -0.531724,
		35.060940, 30.730507, 30.165611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335262, 31.239935, 30.830986>,  <35.652687, 30.694466, 30.537819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335262, 31.239935, 30.830986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.063747, 31.030352, 30.625185>,  <34.900837, 30.904602, 30.501705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.063747, 31.030352, 30.625185>,  <35.335262, 31.239935, 30.830986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063747, 31.030352, 30.625185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605209, 0.002355, 0.796063,
		-0.415893, 0.851740, -0.318703,
		-0.678790, -0.523959, -0.514501,
		34.860111, 30.873163, 30.470835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617741, 31.597610, 30.921284>,  <35.335262, 31.239935, 30.830986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617741, 31.597610, 30.921284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.539680, 31.218618, 30.819937>,  <34.492844, 30.991222, 30.759129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.539680, 31.218618, 30.819937>,  <34.617741, 31.597610, 30.921284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539680, 31.218618, 30.819937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771311, -0.011300, 0.636358,
		-0.605800, 0.319611, -0.728598,
		-0.195154, -0.947481, -0.253365,
		34.481133, 30.934374, 30.743927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977196, 31.615889, 31.125780>,  <34.617741, 31.597610, 30.921284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977196, 31.615889, 31.125780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.031590, 31.225626, 31.056965>,  <34.064224, 30.991468, 31.015675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.031590, 31.225626, 31.056965>,  <33.977196, 31.615889, 31.125780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031590, 31.225626, 31.056965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681969, -0.218147, 0.698090,
		-0.718628, 0.022396, -0.695034,
		0.135985, -0.975659, -0.172040,
		34.072384, 30.932928, 31.005352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331440, 31.214102, 31.012505>,  <33.977196, 31.615889, 31.125780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331440, 31.214102, 31.012505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.589016, 30.945488, 31.159138>,  <33.743561, 30.784319, 31.247118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.589016, 30.945488, 31.159138>,  <33.331440, 31.214102, 31.012505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589016, 30.945488, 31.159138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592124, -0.134016, 0.794625,
		-0.484491, -0.728752, -0.483930,
		0.643939, -0.671536, 0.366583,
		33.782196, 30.744028, 31.269114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898575, 30.713779, 31.231010>,  <33.331440, 31.214102, 31.012505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898575, 30.713779, 31.231010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.241306, 30.646761, 31.426056>,  <33.446945, 30.606550, 31.543083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.241306, 30.646761, 31.426056>,  <32.898575, 30.713779, 31.231010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241306, 30.646761, 31.426056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513975, -0.202616, 0.833533,
		-0.040855, -0.964819, -0.259722,
		0.856832, -0.167545, 0.487614,
		33.498356, 30.596497, 31.572340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724152, 30.215357, 31.822765>,  <32.898575, 30.713779, 31.231010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724152, 30.215357, 31.822765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.078800, 30.368631, 31.926357>,  <33.291588, 30.460596, 31.988512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.078800, 30.368631, 31.926357>,  <32.724152, 30.215357, 31.822765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078800, 30.368631, 31.926357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295058, 0.037437, 0.954746,
		0.356150, -0.922912, 0.146255,
		0.886622, 0.383186, 0.258979,
		33.344788, 30.483587, 32.004051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967571, 29.817211, 32.390060>,  <32.724152, 30.215357, 31.822765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967571, 29.817211, 32.390060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.185017, 30.152683, 32.403320>,  <33.315483, 30.353966, 32.411278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.185017, 30.152683, 32.403320>,  <32.967571, 29.817211, 32.390060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185017, 30.152683, 32.403320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087328, 0.017235, 0.996030,
		0.834778, -0.544353, 0.082610,
		0.543616, 0.838679, 0.033150,
		33.348103, 30.404287, 32.413265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528606, 29.647055, 32.762718>,  <32.967571, 29.817211, 32.390060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528606, 29.647055, 32.762718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.484074, 30.044392, 32.774551>,  <33.457352, 30.282793, 32.781651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.484074, 30.044392, 32.774551>,  <33.528606, 29.647055, 32.762718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484074, 30.044392, 32.774551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178598, -0.009287, 0.983878,
		0.977603, 0.114823, -0.176375,
		-0.111334, 0.993343, 0.029586,
		33.450672, 30.342394, 32.783428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004406, 29.877378, 33.445633>,  <33.528606, 29.647055, 32.762718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004406, 29.877378, 33.445633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.759930, 30.180180, 33.353203>,  <33.613243, 30.361860, 33.297745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.759930, 30.180180, 33.353203>,  <34.004406, 29.877378, 33.445633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759930, 30.180180, 33.353203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297066, 0.051208, 0.953483,
		0.733622, 0.651402, 0.193582,
		-0.611188, 0.757002, -0.231077,
		33.576572, 30.407280, 33.283878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222214, 30.347803, 34.001286>,  <34.004406, 29.877378, 33.445633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222214, 30.347803, 34.001286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.869934, 30.495155, 33.882179>,  <33.658566, 30.583567, 33.810715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.869934, 30.495155, 33.882179>,  <34.222214, 30.347803, 34.001286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869934, 30.495155, 33.882179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299517, 0.053907, 0.952567,
		0.366959, 0.928111, 0.062861,
		-0.880699, 0.368381, -0.297767,
		33.605724, 30.605669, 33.792850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140762, 30.995018, 34.330036>,  <34.222214, 30.347803, 34.001286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140762, 30.995018, 34.330036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.773174, 30.855797, 34.255890>,  <33.552624, 30.772264, 34.211403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.773174, 30.855797, 34.255890>,  <34.140762, 30.995018, 34.330036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773174, 30.855797, 34.255890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251551, 0.155400, 0.955287,
		-0.303684, 0.924505, -0.230360,
		-0.918966, -0.348053, -0.185368,
		33.497486, 30.751381, 34.200279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790928, 31.677917, 34.355106>,  <34.140762, 30.995018, 34.330036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790928, 31.677917, 34.355106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.861553, 31.654116, 33.962112>,  <33.903927, 31.639835, 33.726315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.861553, 31.654116, 33.962112>,  <33.790928, 31.677917, 34.355106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861553, 31.654116, 33.962112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231679, 0.967614, -0.100237,
		0.956635, 0.245320, 0.157060,
		0.176564, -0.059503, -0.982489,
		33.914524, 31.636265, 33.667366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250168, 32.286709, 34.091255>,  <33.790928, 31.677917, 34.355106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250168, 32.286709, 34.091255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.027004, 32.143383, 33.791832>,  <33.893105, 32.057388, 33.612179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.027004, 32.143383, 33.791832>,  <34.250168, 32.286709, 34.091255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027004, 32.143383, 33.791832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240085, 0.933107, -0.267713,
		0.794413, 0.030358, -0.606618,
		-0.557913, -0.358315, -0.748561,
		33.859631, 32.035889, 33.567265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482986, 32.303425, 33.322838>,  <34.250168, 32.286709, 34.091255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482986, 32.303425, 33.322838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.673347, 31.955006, 33.371487>,  <34.787563, 31.745955, 33.400677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.673347, 31.955006, 33.371487>,  <34.482986, 32.303425, 33.322838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673347, 31.955006, 33.371487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557211, 0.191620, -0.807959,
		0.680468, 0.452276, 0.576550,
		0.475899, -0.871050, 0.121622,
		34.816116, 31.693691, 33.407974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198433, 32.522858, 33.461090>,  <34.482986, 32.303425, 33.322838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198433, 32.522858, 33.461090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.113754, 32.159595, 33.316631>,  <35.062946, 31.941637, 33.229954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.113754, 32.159595, 33.316631>,  <35.198433, 32.522858, 33.461090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113754, 32.159595, 33.316631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276843, 0.298670, -0.913320,
		0.937306, -0.293330, 0.188190,
		-0.211698, -0.908159, -0.361151,
		35.050243, 31.887148, 33.208286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906765, 32.325939, 33.166580>,  <35.198433, 32.522858, 33.461090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906765, 32.325939, 33.166580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.092152, 31.990515, 33.281139>,  <36.203384, 31.789261, 33.349873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.092152, 31.990515, 33.281139>,  <35.906765, 32.325939, 33.166580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092152, 31.990515, 33.281139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609996, 0.067491, -0.789525,
		0.642734, 0.540615, 0.542797,
		0.463463, -0.838559, 0.286394,
		36.231190, 31.738947, 33.367058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492424, 32.433819, 32.905678>,  <35.906765, 32.325939, 33.166580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492424, 32.433819, 32.905678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.500813, 32.043308, 32.991879>,  <36.505844, 31.809002, 33.043598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.500813, 32.043308, 32.991879>,  <36.492424, 32.433819, 32.905678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500813, 32.043308, 32.991879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554078, -0.168069, -0.815322,
		0.832201, 0.136502, 0.537410,
		0.020972, -0.976279, 0.215500,
		36.507103, 31.750425, 33.056530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181358, 32.251625, 32.934799>,  <36.492424, 32.433819, 32.905678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181358, 32.251625, 32.934799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.991837, 31.908676, 32.854382>,  <36.878124, 31.702906, 32.806129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.991837, 31.908676, 32.854382>,  <37.181358, 32.251625, 32.934799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991837, 31.908676, 32.854382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534311, -0.098405, -0.839540,
		0.700016, -0.505198, 0.504729,
		-0.473803, -0.857375, -0.201048,
		36.849697, 31.651464, 32.794067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653900, 31.730352, 32.698902>,  <37.181358, 32.251625, 32.934799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653900, 31.730352, 32.698902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.305893, 31.563902, 32.593143>,  <37.097088, 31.464031, 32.529690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.305893, 31.563902, 32.593143>,  <37.653900, 31.730352, 32.698902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305893, 31.563902, 32.593143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399184, -0.279850, -0.873118,
		0.289336, -0.865173, 0.409586,
		-0.870021, -0.416125, -0.264393,
		37.044888, 31.439064, 32.513824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766571, 30.980936, 32.586895>,  <37.653900, 31.730352, 32.698902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766571, 30.980936, 32.586895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.460152, 31.130949, 32.378082>,  <37.276299, 31.220957, 32.252796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.460152, 31.130949, 32.378082>,  <37.766571, 30.980936, 32.586895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460152, 31.130949, 32.378082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351997, -0.434785, -0.828891,
		-0.537835, -0.818724, 0.201055,
		-0.766049, 0.375036, -0.522032,
		37.230335, 31.243460, 32.221474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490353, 30.432684, 32.132824>,  <37.766571, 30.980936, 32.586895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490353, 30.432684, 32.132824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.350052, 30.765497, 31.960918>,  <37.265869, 30.965185, 31.857777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.350052, 30.765497, 31.960918>,  <37.490353, 30.432684, 32.132824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350052, 30.765497, 31.960918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480783, -0.233822, -0.845088,
		-0.803628, -0.503040, -0.318013,
		-0.350755, 0.832032, -0.429759,
		37.244823, 31.015106, 31.831991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275936, 30.255976, 31.474047>,  <37.490353, 30.432684, 32.132824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275936, 30.255976, 31.474047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.345169, 30.649424, 31.453899>,  <37.386707, 30.885492, 31.441811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.345169, 30.649424, 31.453899>,  <37.275936, 30.255976, 31.474047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345169, 30.649424, 31.453899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335936, -0.107031, -0.935784,
		-0.925846, 0.145044, -0.348958,
		0.173079, 0.983619, -0.050369,
		37.397095, 30.944510, 31.438789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174026, 30.437899, 30.763418>,  <37.275936, 30.255976, 31.474047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174026, 30.437899, 30.763418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.384296, 30.752764, 30.892441>,  <37.510460, 30.941683, 30.969854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.384296, 30.752764, 30.892441>,  <37.174026, 30.437899, 30.763418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384296, 30.752764, 30.892441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462860, 0.053468, -0.884818,
		-0.713742, 0.614423, -0.336239,
		0.525674, 0.787163, 0.322554,
		37.542000, 30.988913, 30.989206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215046, 30.806055, 30.217381>,  <37.174026, 30.437899, 30.763418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215046, 30.806055, 30.217381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.507423, 30.956142, 30.445395>,  <37.682850, 31.046194, 30.582203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.507423, 30.956142, 30.445395>,  <37.215046, 30.806055, 30.217381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507423, 30.956142, 30.445395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624424, -0.030692, -0.780483,
		-0.275355, 0.926429, -0.256728,
		0.730941, 0.375217, 0.570033,
		37.726707, 31.068707, 30.616404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594307, 31.467161, 29.866550>,  <37.215046, 30.806055, 30.217381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594307, 31.467161, 29.866550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.855793, 31.331999, 30.137392>,  <38.012684, 31.250902, 30.299898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.855793, 31.331999, 30.137392>,  <37.594307, 31.467161, 29.866550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855793, 31.331999, 30.137392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715930, -0.013703, -0.698038,
		0.245150, 0.941080, 0.232959,
		0.653717, -0.337906, 0.677106,
		38.051907, 31.230627, 30.340525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167820, 31.940372, 29.719292>,  <37.594307, 31.467161, 29.866550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167820, 31.940372, 29.719292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.281063, 31.611143, 29.916229>,  <38.349010, 31.413607, 30.034391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.281063, 31.611143, 29.916229>,  <38.167820, 31.940372, 29.719292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281063, 31.611143, 29.916229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899080, 0.049030, -0.435031,
		0.333922, 0.565817, 0.753888,
		0.283111, -0.823072, 0.492343,
		38.365997, 31.364222, 30.063932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859486, 32.067356, 30.031399>,  <38.167820, 31.940372, 29.719292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859486, 32.067356, 30.031399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.811363, 31.670315, 30.024952>,  <38.782490, 31.432089, 30.021084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.811363, 31.670315, 30.024952>,  <38.859486, 32.067356, 30.031399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811363, 31.670315, 30.024952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856380, -0.095555, -0.507427,
		0.502135, -0.074849, 0.861544,
		-0.120305, -0.992606, -0.016118,
		38.775272, 31.372534, 30.020117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526882, 31.755836, 30.288351>,  <38.859486, 32.067356, 30.031399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526882, 31.755836, 30.288351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.340393, 31.490808, 30.053869>,  <39.228500, 31.331791, 29.913179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.340393, 31.490808, 30.053869>,  <39.526882, 31.755836, 30.288351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340393, 31.490808, 30.053869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774249, 0.014976, -0.632704,
		0.427991, -0.748848, 0.506014,
		-0.466221, -0.662572, -0.586205,
		39.200527, 31.292036, 29.878008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119751, 31.297852, 30.148674>,  <39.526882, 31.755836, 30.288351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119751, 31.297852, 30.148674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.837688, 31.195366, 29.884214>,  <39.668453, 31.133875, 29.725538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.837688, 31.195366, 29.884214>,  <40.119751, 31.297852, 30.148674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837688, 31.195366, 29.884214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707206, -0.186836, -0.681873,
		0.051179, -0.948392, 0.312944,
		-0.705152, -0.256213, -0.661147,
		39.626144, 31.118502, 29.685871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256523, 30.606781, 29.927135>,  <40.119751, 31.297852, 30.148674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256523, 30.606781, 29.927135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.039612, 30.790762, 29.645885>,  <39.909466, 30.901150, 29.477137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.039612, 30.790762, 29.645885>,  <40.256523, 30.606781, 29.927135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039612, 30.790762, 29.645885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694532, -0.225549, -0.683193,
		-0.472825, -0.858819, -0.197143,
		-0.542274, 0.459953, -0.703123,
		39.876930, 30.928747, 29.434948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280018, 30.219740, 29.308184>,  <40.256523, 30.606781, 29.927135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280018, 30.219740, 29.308184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.170151, 30.568083, 29.145130>,  <40.104233, 30.777088, 29.047298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.170151, 30.568083, 29.145130>,  <40.280018, 30.219740, 29.308184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.170151, 30.568083, 29.145130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642339, -0.149287, -0.751741,
		-0.715514, -0.468314, -0.518383,
		-0.274663, 0.870859, -0.407634,
		40.087753, 30.829340, 29.022840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344475, 30.009153, 28.547331>,  <40.280018, 30.219740, 29.308184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344475, 30.009153, 28.547331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.318409, 30.407747, 28.568384>,  <40.302769, 30.646904, 28.581017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.318409, 30.407747, 28.568384>,  <40.344475, 30.009153, 28.547331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.318409, 30.407747, 28.568384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543008, 0.079664, -0.835940,
		-0.837195, -0.025895, -0.546291,
		-0.065167, 0.996485, 0.052633,
		40.298859, 30.706694, 28.584173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032318, 30.188398, 27.947630>,  <40.344475, 30.009153, 28.547331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.032318, 30.188398, 27.947630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.253269, 30.490953, 28.087776>,  <40.385841, 30.672487, 28.171864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.253269, 30.490953, 28.087776>,  <40.032318, 30.188398, 27.947630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.253269, 30.490953, 28.087776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473078, 0.061620, -0.878863,
		-0.686351, 0.651214, -0.323793,
		0.552376, 0.756388, 0.350368,
		40.418983, 30.717871, 28.192886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080158, 30.629562, 27.444584>,  <40.032318, 30.188398, 27.947630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080158, 30.629562, 27.444584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.387768, 30.748848, 27.670742>,  <40.572334, 30.820419, 27.806437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.387768, 30.748848, 27.670742>,  <40.080158, 30.629562, 27.444584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387768, 30.748848, 27.670742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559198, 0.114656, -0.821068,
		-0.309680, 0.947588, -0.078588,
		0.769023, 0.298215, 0.565396,
		40.618473, 30.838312, 27.840361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198940, 31.202406, 27.182850>,  <40.080158, 30.629562, 27.444584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198940, 31.202406, 27.182850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.533928, 31.091429, 27.371180>,  <40.734921, 31.024841, 27.484179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.533928, 31.091429, 27.371180>,  <40.198940, 31.202406, 27.182850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.533928, 31.091429, 27.371180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538953, 0.276704, -0.795591,
		0.090452, 0.920032, 0.381260,
		0.837465, -0.277444, 0.470826,
		40.785168, 31.008196, 27.512426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619041, 31.656298, 26.859159>,  <40.198940, 31.202406, 27.182850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619041, 31.656298, 26.859159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.881683, 31.394405, 27.008932>,  <41.039268, 31.237270, 27.098797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.881683, 31.394405, 27.008932>,  <40.619041, 31.656298, 26.859159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.881683, 31.394405, 27.008932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569346, 0.104652, -0.815410,
		0.494687, 0.748584, 0.441482,
		0.656605, -0.654728, 0.374433,
		41.078667, 31.197987, 27.121262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.279758, 31.958757, 26.858915>,  <40.619041, 31.656298, 26.859159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.279758, 31.958757, 26.858915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.370857, 31.570784, 26.893223>,  <41.425518, 31.337999, 26.913807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.370857, 31.570784, 26.893223>,  <41.279758, 31.958757, 26.858915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370857, 31.570784, 26.893223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679165, 0.095115, -0.727797,
		0.697758, 0.224004, 0.680409,
		0.227746, -0.969936, 0.085769,
		41.439182, 31.279802, 26.918953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.060234, 31.898640, 26.755070>,  <41.279758, 31.958757, 26.858915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.060234, 31.898640, 26.755070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.900757, 31.536177, 26.698606>,  <41.805069, 31.318699, 26.664728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.900757, 31.536177, 26.698606>,  <42.060234, 31.898640, 26.755070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.900757, 31.536177, 26.698606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694032, -0.197516, -0.692320,
		0.599470, -0.373989, 0.707649,
		-0.398692, -0.906156, -0.141156,
		41.781151, 31.264330, 26.656260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.705593, 31.442692, 26.672697>,  <42.060234, 31.898640, 26.755070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.705593, 31.442692, 26.672697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.394089, 31.255573, 26.505507>,  <42.207188, 31.143301, 26.405193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.394089, 31.255573, 26.505507>,  <42.705593, 31.442692, 26.672697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.394089, 31.255573, 26.505507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585398, -0.302411, -0.752235,
		0.225494, -0.830489, 0.509353,
		-0.778756, -0.467799, -0.417975,
		42.160461, 31.115234, 26.380114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.998013, 30.749523, 26.518734>,  <42.705593, 31.442692, 26.672697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.998013, 30.749523, 26.518734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.663139, 30.785433, 26.302933>,  <42.462215, 30.806978, 26.173452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.663139, 30.785433, 26.302933>,  <42.998013, 30.749523, 26.518734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.663139, 30.785433, 26.302933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509407, -0.231047, -0.828928,
		-0.199060, -0.968793, 0.147702,
		-0.837185, 0.089765, -0.539502,
		42.411983, 30.812365, 26.141081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.298439, 30.025896, 26.639799>,  <42.998013, 30.749523, 26.518734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.298439, 30.025896, 26.639799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.642345, 30.039625, 26.843611>,  <43.848690, 30.047863, 26.965897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.642345, 30.039625, 26.843611>,  <43.298439, 30.025896, 26.639799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.642345, 30.039625, 26.843611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509905, 0.002663, 0.860227,
		0.028185, -0.999407, 0.019801,
		0.859769, 0.034343, 0.509527,
		43.900276, 30.049923, 26.996469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.322372, 29.603159, 27.164185>,  <43.298439, 30.025896, 26.639799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.322372, 29.603159, 27.164185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.595181, 29.867519, 27.289444>,  <43.758865, 30.026136, 27.364599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.595181, 29.867519, 27.289444>,  <43.322372, 29.603159, 27.164185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.595181, 29.867519, 27.289444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317808, -0.117810, 0.940808,
		0.658673, -0.741168, 0.129692,
		0.682017, 0.660902, 0.313147,
		43.799786, 30.065790, 27.383389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.678524, 29.304445, 27.796505>,  <43.322372, 29.603159, 27.164185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.678524, 29.304445, 27.796505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.754902, 29.696712, 27.813627>,  <43.800728, 29.932072, 27.823900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.754902, 29.696712, 27.813627>,  <43.678524, 29.304445, 27.796505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.754902, 29.696712, 27.813627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368197, 0.031135, 0.929226,
		0.909928, -0.193195, 0.367024,
		0.190949, 0.980666, 0.042804,
		43.812187, 29.990911, 27.826468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.023964, 29.411970, 28.473438>,  <43.678524, 29.304445, 27.796505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.023964, 29.411970, 28.473438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.885414, 29.763220, 28.341425>,  <43.802284, 29.973970, 28.262217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.885414, 29.763220, 28.341425>,  <44.023964, 29.411970, 28.473438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.885414, 29.763220, 28.341425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246135, 0.254415, 0.935249,
		0.905230, 0.405179, 0.128014,
		-0.346375, 0.878125, -0.330032,
		43.781502, 30.026657, 28.242414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.200943, 29.983873, 29.072746>,  <44.023964, 29.411970, 28.473438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.200943, 29.983873, 29.072746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.914238, 30.134491, 28.837984>,  <43.742214, 30.224861, 28.697126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.914238, 30.134491, 28.837984>,  <44.200943, 29.983873, 29.072746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.914238, 30.134491, 28.837984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415202, 0.445742, 0.793046,
		0.560225, 0.812114, -0.163152,
		-0.716767, 0.376543, -0.586907,
		43.699207, 30.247454, 28.661911>
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
