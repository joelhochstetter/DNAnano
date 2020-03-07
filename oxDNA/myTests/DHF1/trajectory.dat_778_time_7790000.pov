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
	<5.236835, -1.140645, 0.263960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.085220, -1.001190, -0.078918>,  <4.994252, -0.917518, -0.284646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.085220, -1.001190, -0.078918>,  <5.236835, -1.140645, 0.263960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.085220, -1.001190, -0.078918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582769, 0.629622, 0.513767,
		0.718827, 0.694283, -0.035475,
		-0.379035, 0.348636, -0.857196,
		4.971510, -0.896599, -0.336077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.424155, -0.405630, 0.208038>,  <5.236835, -1.140645, 0.263960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.424155, -0.405630, 0.208038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.071159, -0.488064, 0.038927>,  <4.859362, -0.537524, -0.062540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.071159, -0.488064, 0.038927>,  <5.424155, -0.405630, 0.208038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.071159, -0.488064, 0.038927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457710, 0.583143, 0.671153,
		0.108226, 0.785795, -0.608945,
		-0.882490, -0.206084, -0.422777,
		4.806412, -0.549889, -0.087906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.042410, 0.248558, -0.041228>,  <5.424155, -0.405630, 0.208038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.042410, 0.248558, -0.041228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.805351, -0.047924, 0.084875>,  <4.663116, -0.225813, 0.160537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.805351, -0.047924, 0.084875>,  <5.042410, 0.248558, -0.041228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.805351, -0.047924, 0.084875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482817, 0.640194, 0.597528,
		-0.644715, 0.201912, -0.737274,
		-0.592646, -0.741204, 0.315257,
		4.627557, -0.270285, 0.179452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.363688, 0.469917, -0.224163>,  <5.042410, 0.248558, -0.041228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.363688, 0.469917, -0.224163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.402084, 0.228783, 0.092665>,  <4.425122, 0.084102, 0.282761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.402084, 0.228783, 0.092665>,  <4.363688, 0.469917, -0.224163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.402084, 0.228783, 0.092665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606688, 0.595420, 0.526693,
		-0.789124, -0.531096, -0.308580,
		0.095990, -0.602837, 0.792069,
		4.430881, 0.047932, 0.330285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.698224, 0.300920, 0.032904>,  <4.363688, 0.469917, -0.224163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.698224, 0.300920, 0.032904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.924812, 0.242748, 0.357364>,  <4.060765, 0.207845, 0.552039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.924812, 0.242748, 0.357364>,  <3.698224, 0.300920, 0.032904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.924812, 0.242748, 0.357364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673229, 0.485999, 0.557287,
		-0.475263, -0.861775, 0.177396,
		0.566470, -0.145430, 0.811149,
		4.094753, 0.199119, 0.600708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.192926, 0.399932, 0.527620>,  <3.698224, 0.300920, 0.032904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.192926, 0.399932, 0.527620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.543705, 0.420628, 0.718737>,  <3.754173, 0.433045, 0.833407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.543705, 0.420628, 0.718737>,  <3.192926, 0.399932, 0.527620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.543705, 0.420628, 0.718737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392928, 0.649624, 0.650842,
		-0.276712, -0.758493, 0.590016,
		0.876948, 0.051738, 0.477792,
		3.806789, 0.436149, 0.862074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.026653, 0.378009, 1.256480>,  <3.192926, 0.399932, 0.527620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.026653, 0.378009, 1.256480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.384300, 0.552830, 1.217417>,  <3.598889, 0.657722, 1.193980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.384300, 0.552830, 1.217417>,  <3.026653, 0.378009, 1.256480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.384300, 0.552830, 1.217417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329067, 0.789101, 0.518685,
		0.303753, -0.431631, 0.849370,
		0.894119, 0.437052, -0.097657,
		3.652536, 0.683945, 1.188120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.408689, 0.519858, 1.888633>,  <3.026653, 0.378009, 1.256480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.408689, 0.519858, 1.888633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.482502, 0.806553, 1.619638>,  <3.526790, 0.978570, 1.458242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.482502, 0.806553, 1.619638>,  <3.408689, 0.519858, 1.888633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.482502, 0.806553, 1.619638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439608, 0.672166, 0.595767,
		0.879030, 0.185692, 0.439119,
		0.184532, 0.716736, -0.672486,
		3.537862, 1.021574, 1.417893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.433105, 2.661336, 1.657833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.493759, 2.609692, 1.265846>,  <5.530152, 2.578705, 1.030654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.493759, 2.609692, 1.265846>,  <5.433105, 2.661336, 1.657833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.493759, 2.609692, 1.265846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255092, -0.952735, 0.164995,
		-0.954953, -0.275001, -0.111530,
		0.151632, -0.129112, -0.979969,
		5.539250, 2.570958, 0.971856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.033514, 2.109657, 1.320297>,  <5.433105, 2.661336, 1.657833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.033514, 2.109657, 1.320297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.383553, 2.152802, 1.131588>,  <5.593576, 2.178688, 1.018362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.383553, 2.152802, 1.131588>,  <5.033514, 2.109657, 1.320297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.383553, 2.152802, 1.131588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108422, -0.993762, -0.026090,
		-0.471645, -0.028320, -0.881334,
		0.875097, 0.107861, -0.471774,
		5.646082, 2.185160, 0.990056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.083488, 1.718052, 0.688938>,  <5.033514, 2.109657, 1.320297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.083488, 1.718052, 0.688938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.458580, 1.745667, 0.825111>,  <5.683635, 1.762235, 0.906816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.458580, 1.745667, 0.825111>,  <5.083488, 1.718052, 0.688938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.458580, 1.745667, 0.825111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132641, -0.976953, -0.167242,
		0.321043, 0.201984, -0.925275,
		0.937730, 0.069037, 0.340435,
		5.739899, 1.766378, 0.927242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.316788, 1.689311, 0.900563>,  <5.083488, 1.718052, 0.688938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.316788, 1.689311, 0.900563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.185318, 1.420628, 1.166128>,  <4.106436, 1.259417, 1.325467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.185318, 1.420628, 1.166128>,  <4.316788, 1.689311, 0.900563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.185318, 1.420628, 1.166128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318359, -0.740623, -0.591714,
		0.889168, 0.016881, 0.457269,
		-0.328675, -0.671709, 0.663912,
		4.086716, 1.219115, 1.365302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.824456, 1.182276, 1.123068>,  <4.316788, 1.689311, 0.900563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.824456, 1.182276, 1.123068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.464920, 1.013371, 1.170023>,  <4.249198, 0.912027, 1.198196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.464920, 1.013371, 1.170023>,  <4.824456, 1.182276, 1.123068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.464920, 1.013371, 1.170023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279205, -0.758140, -0.589295,
		0.337835, -0.496907, 0.799344,
		-0.898839, -0.422265, 0.117387,
		4.195268, 0.886691, 1.205239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.932168, 0.464444, 1.543037>,  <4.824456, 1.182276, 1.123068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.932168, 0.464444, 1.543037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.608368, 0.459419, 1.308243>,  <4.414088, 0.456404, 1.167366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.608368, 0.459419, 1.308243>,  <4.932168, 0.464444, 1.543037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.608368, 0.459419, 1.308243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213054, -0.937908, -0.273746,
		-0.547100, -0.346657, 0.761912,
		-0.809499, -0.012562, -0.586986,
		4.365518, 0.455651, 1.132147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.811115, -0.180563, 1.577208>,  <4.932168, 0.464444, 1.543037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.811115, -0.180563, 1.577208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.559364, -0.084259, 1.281662>,  <4.408314, -0.026477, 1.104335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.559364, -0.084259, 1.281662>,  <4.811115, -0.180563, 1.577208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.559364, -0.084259, 1.281662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329532, -0.778389, -0.534340,
		-0.703770, -0.579781, 0.410562,
		-0.629377, 0.240760, -0.738863,
		4.370552, -0.012031, 1.060003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.359318, -0.759508, 1.401882>,  <4.811115, -0.180563, 1.577208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.359318, -0.759508, 1.401882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.398338, -0.525078, 1.080137>,  <4.421751, -0.384420, 0.887090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.398338, -0.525078, 1.080137>,  <4.359318, -0.759508, 1.401882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.398338, -0.525078, 1.080137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397197, -0.763987, -0.508486,
		-0.912534, -0.269886, -0.307316,
		0.097552, 0.586076, -0.804362,
		4.427604, -0.349255, 0.838829>
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
