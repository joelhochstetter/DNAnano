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
	<2.397490, -0.740162, 1.490502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.073914, -0.625153, 1.285389>,  <1.879768, -0.556147, 1.162321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.073914, -0.625153, 1.285389>,  <2.397490, -0.740162, 1.490502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.073914, -0.625153, 1.285389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587156, 0.438720, -0.680274,
		0.029374, -0.851384, -0.523720,
		-0.808941, 0.287523, -0.512782,
		1.831231, -0.538896, 1.131554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.377675, -1.106621, 0.790715>,  <2.397490, -0.740162, 1.490502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.377675, -1.106621, 0.790715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.226406, -0.737740, 0.823036>,  <2.135645, -0.516411, 0.842429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.226406, -0.737740, 0.823036>,  <2.377675, -1.106621, 0.790715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.226406, -0.737740, 0.823036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771295, 0.362149, -0.523404,
		-0.511947, -0.135614, -0.848245,
		-0.378171, 0.922202, 0.080803,
		2.112955, -0.461079, 0.847277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.619802, -0.746177, 0.246755>,  <2.377675, -1.106621, 0.790715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.619802, -0.746177, 0.246755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.488892, -0.442291, 0.471512>,  <2.410345, -0.259960, 0.606366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.488892, -0.442291, 0.471512>,  <2.619802, -0.746177, 0.246755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.488892, -0.442291, 0.471512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638489, 0.616150, -0.461184,
		-0.696579, 0.207828, -0.686721,
		-0.327276, 0.759715, 0.561893,
		2.390709, -0.214377, 0.640080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.472728, -0.039130, -0.142008>,  <2.619802, -0.746177, 0.246755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.472728, -0.039130, -0.142008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.604019, 0.017952, 0.231495>,  <2.682794, 0.052201, 0.455597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.604019, 0.017952, 0.231495>,  <2.472728, -0.039130, -0.142008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.604019, 0.017952, 0.231495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669242, 0.662485, -0.336495,
		-0.666619, 0.735356, 0.121942,
		0.328228, 0.142705, 0.933757,
		2.702488, 0.060763, 0.511622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.548575, 0.650764, -0.085004>,  <2.472728, -0.039130, -0.142008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.548575, 0.650764, -0.085004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.790718, 0.468445, 0.176006>,  <2.936004, 0.359053, 0.332612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.790718, 0.468445, 0.176006>,  <2.548575, 0.650764, -0.085004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.790718, 0.468445, 0.176006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766559, 0.554585, -0.323764,
		-0.214310, 0.696193, 0.685118,
		0.605358, -0.455798, 0.652525,
		2.972326, 0.331705, 0.371764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.841461, 1.139318, 0.398708>,  <2.548575, 0.650764, -0.085004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.841461, 1.139318, 0.398708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.085205, 0.824234, 0.362499>,  <3.231452, 0.635184, 0.340774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.085205, 0.824234, 0.362499>,  <2.841461, 1.139318, 0.398708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.085205, 0.824234, 0.362499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786521, 0.614956, -0.056693,
		0.100324, -0.036650, 0.994279,
		0.609360, -0.787709, -0.090521,
		3.268013, 0.587921, 0.335343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.382595, 1.217289, 0.875533>,  <2.841461, 1.139318, 0.398708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.382595, 1.217289, 0.875533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.510719, 0.986687, 0.574856>,  <3.587594, 0.848325, 0.394449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.510719, 0.986687, 0.574856>,  <3.382595, 1.217289, 0.875533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.510719, 0.986687, 0.574856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836508, 0.544530, -0.061170,
		0.444585, -0.609203, 0.656670,
		0.320312, -0.576505, -0.751693,
		3.606813, 0.813735, 0.349348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.007152, 1.070771, 1.022761>,  <3.382595, 1.217289, 0.875533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.007152, 1.070771, 1.022761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.998028, 0.981529, 0.632950>,  <3.992553, 0.927984, 0.399063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.998028, 0.981529, 0.632950>,  <4.007152, 1.070771, 1.022761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.998028, 0.981529, 0.632950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909526, 0.400028, -0.112870,
		0.415020, -0.888933, 0.193795,
		-0.022811, -0.223105, -0.974528,
		3.991184, 0.914598, 0.340592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.486427, 1.824971, 4.827753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.283387, 1.834160, 4.483238>,  <5.161563, 1.839673, 4.276529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.283387, 1.834160, 4.483238>,  <5.486427, 1.824971, 4.827753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.283387, 1.834160, 4.483238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653925, -0.661164, 0.367756,
		-0.561003, 0.749890, 0.350628,
		-0.507599, 0.022973, -0.861287,
		5.131107, 1.841052, 4.224852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.804075, 2.047485, 4.973693>,  <5.486427, 1.824971, 4.827753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.804075, 2.047485, 4.973693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.840573, 1.784805, 4.674248>,  <4.862472, 1.627198, 4.494581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.840573, 1.784805, 4.674248>,  <4.804075, 2.047485, 4.973693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.840573, 1.784805, 4.674248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731819, -0.554050, 0.396825,
		-0.675363, 0.511641, -0.531139,
		0.091246, -0.656698, -0.748613,
		4.867947, 1.587796, 4.449664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.191586, 1.861184, 4.654672>,  <4.804075, 2.047485, 4.973693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.191586, 1.861184, 4.654672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.415446, 1.533112, 4.607178>,  <4.549762, 1.336268, 4.578681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.415446, 1.533112, 4.607178>,  <4.191586, 1.861184, 4.654672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.415446, 1.533112, 4.607178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755295, -0.563759, 0.334222,
		-0.341060, -0.097368, -0.934985,
		0.559650, -0.820180, -0.118734,
		4.583341, 1.287058, 4.571558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.882173, 1.303731, 4.159459>,  <4.191586, 1.861184, 4.654672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.882173, 1.303731, 4.159459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.117183, 1.159622, 4.449291>,  <4.258189, 1.073157, 4.623191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.117183, 1.159622, 4.449291>,  <3.882173, 1.303731, 4.159459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.117183, 1.159622, 4.449291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729760, -0.622815, 0.282051,
		0.349665, -0.694483, -0.628831,
		0.587525, -0.360272, 0.724582,
		4.293440, 1.051541, 4.666666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.952414, 0.560347, 4.049603>,  <3.882173, 1.303731, 4.159459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.952414, 0.560347, 4.049603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.973889, 0.663895, 4.435371>,  <3.986775, 0.726023, 4.666832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.973889, 0.663895, 4.435371>,  <3.952414, 0.560347, 4.049603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.973889, 0.663895, 4.435371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733003, -0.645649, 0.214110,
		0.678103, -0.718418, 0.155087,
		0.053689, 0.258868, 0.964420,
		3.989996, 0.741555, 4.724697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.016463, -0.053213, 4.458020>,  <3.952414, 0.560347, 4.049603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.016463, -0.053213, 4.458020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.903302, 0.206711, 4.740215>,  <3.835406, 0.362665, 4.909533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.903302, 0.206711, 4.740215>,  <4.016463, -0.053213, 4.458020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.903302, 0.206711, 4.740215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624832, -0.682906, 0.378450,
		0.727703, -0.333748, 0.599217,
		-0.282901, 0.649809, 0.705489,
		3.818432, 0.401654, 4.951862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.101029, -0.381304, 5.145825>,  <4.016463, -0.053213, 4.458020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.101029, -0.381304, 5.145825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.833312, -0.089188, 5.200558>,  <3.672682, 0.086082, 5.233397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.833312, -0.089188, 5.200558>,  <4.101029, -0.381304, 5.145825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.833312, -0.089188, 5.200558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656861, -0.667648, 0.350399,
		0.347249, 0.144639, 0.926551,
		-0.669292, 0.730291, 0.136832,
		3.632524, 0.129900, 5.241607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.895878, -0.375096, 5.772828>,  <4.101029, -0.381304, 5.145825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.895878, -0.375096, 5.772828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.563891, -0.219940, 5.612480>,  <3.364699, -0.126847, 5.516272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.563891, -0.219940, 5.612480>,  <3.895878, -0.375096, 5.772828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.563891, -0.219940, 5.612480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555177, -0.644194, 0.526111,
		-0.054165, 0.659208, 0.750007,
		-0.829967, 0.387890, -0.400870,
		3.314901, -0.103573, 5.492219>
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
