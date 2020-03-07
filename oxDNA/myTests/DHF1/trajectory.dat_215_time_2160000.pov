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
	<2.095025, 4.262150, 2.221727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.740555, 4.111504, 2.113762>,  <1.527873, 4.021116, 2.048983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.740555, 4.111504, 2.113762>,  <2.095025, 4.262150, 2.221727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.740555, 4.111504, 2.113762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422040, 0.896513, 0.134708,
		0.191247, 0.233289, -0.953415,
		-0.886175, -0.376617, -0.269913,
		1.474702, 3.998519, 2.032788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.971335, 3.593982, 2.601894>,  <2.095025, 4.262150, 2.221727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.971335, 3.593982, 2.601894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.142979, 3.908623, 2.779488>,  <2.245965, 4.097407, 2.886044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.142979, 3.908623, 2.779488>,  <1.971335, 3.593982, 2.601894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.142979, 3.908623, 2.779488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418878, -0.608786, 0.673736,
		0.800254, -0.103130, -0.590726,
		0.429109, 0.786602, 0.443985,
		2.271711, 4.144603, 2.912683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.735473, 3.494000, 2.738468>,  <1.971335, 3.593982, 2.601894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.735473, 3.494000, 2.738468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.596771, 3.773079, 2.989220>,  <2.513550, 3.940526, 3.139671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.596771, 3.773079, 2.989220>,  <2.735473, 3.494000, 2.738468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.596771, 3.773079, 2.989220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226363, -0.586343, 0.777793,
		0.910231, 0.411606, 0.045384,
		-0.346755, 0.697698, 0.626880,
		2.492745, 3.982388, 3.177284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.162422, 3.712774, 3.369640>,  <2.735473, 3.494000, 2.738468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.162422, 3.712774, 3.369640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.778309, 3.729561, 3.479980>,  <2.547841, 3.739633, 3.546185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.778309, 3.729561, 3.479980>,  <3.162422, 3.712774, 3.369640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.778309, 3.729561, 3.479980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223194, -0.477767, 0.849661,
		0.167450, 0.877484, 0.449425,
		-0.960284, 0.041967, 0.275851,
		2.490224, 3.742151, 3.562736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.031247, 4.031009, 4.064470>,  <3.162422, 3.712774, 3.369640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.031247, 4.031009, 4.064470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.747551, 3.762939, 3.976974>,  <2.577333, 3.602098, 3.924477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.747551, 3.762939, 3.976974>,  <3.031247, 4.031009, 4.064470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.747551, 3.762939, 3.976974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241512, -0.522488, 0.817727,
		-0.662308, 0.527136, 0.532424,
		-0.709239, -0.670174, -0.218738,
		2.534779, 3.561887, 3.911353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.619342, 3.973395, 4.692695>,  <3.031247, 4.031009, 4.064470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.619342, 3.973395, 4.692695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.581745, 3.642616, 4.470947>,  <2.559187, 3.444149, 4.337899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.581745, 3.642616, 4.470947>,  <2.619342, 3.973395, 4.692695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.581745, 3.642616, 4.470947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198078, -0.561235, 0.803605,
		-0.975669, -0.034275, 0.216552,
		-0.093993, -0.826946, -0.554369,
		2.553547, 3.394532, 4.304636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.272277, 3.422563, 5.127337>,  <2.619342, 3.973395, 4.692695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.272277, 3.422563, 5.127337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.411453, 3.182472, 4.839264>,  <2.494959, 3.038418, 4.666420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.411453, 3.182472, 4.839264>,  <2.272277, 3.422563, 5.127337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.411453, 3.182472, 4.839264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105429, -0.738258, 0.666227,
		-0.931570, -0.307735, -0.193588,
		0.347940, -0.600228, -0.720184,
		2.515835, 3.002404, 4.623209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.018507, 2.778659, 5.265068>,  <2.272277, 3.422563, 5.127337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.018507, 2.778659, 5.265068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.336994, 2.711052, 5.032700>,  <2.528086, 2.670488, 4.893279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.336994, 2.711052, 5.032700>,  <2.018507, 2.778659, 5.265068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.336994, 2.711052, 5.032700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282296, -0.745468, 0.603810,
		-0.535112, -0.644756, -0.545842,
		0.796218, -0.169017, -0.580921,
		2.575860, 2.660347, 4.858423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.036927, 1.546069, 5.988287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.350733, 1.540970, 5.740295>,  <3.539016, 1.537910, 5.591500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.350733, 1.540970, 5.740295>,  <3.036927, 1.546069, 5.988287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.350733, 1.540970, 5.740295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325023, 0.843001, -0.428613,
		0.528107, 0.537761, 0.657203,
		0.784514, -0.012747, -0.619979,
		3.586087, 1.537146, 5.554302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.518360, 2.204890, 5.978825>,  <3.036927, 1.546069, 5.988287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.518360, 2.204890, 5.978825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.463150, 1.981522, 5.651627>,  <3.430024, 1.847501, 5.455308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.463150, 1.981522, 5.651627>,  <3.518360, 2.204890, 5.978825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.463150, 1.981522, 5.651627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428547, 0.778256, -0.458982,
		0.892915, 0.287199, -0.346727,
		-0.138024, -0.558421, -0.817995,
		3.421743, 1.813995, 5.406228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.722149, 2.533583, 5.341991>,  <3.518360, 2.204890, 5.978825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.722149, 2.533583, 5.341991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.447969, 2.276550, 5.205025>,  <3.283462, 2.122331, 5.122845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.447969, 2.276550, 5.205025>,  <3.722149, 2.533583, 5.341991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.447969, 2.276550, 5.205025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249477, 0.649075, -0.718654,
		0.684050, -0.407174, -0.605215,
		-0.685447, -0.642582, -0.342419,
		3.242335, 2.083776, 5.102300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.811364, 2.543566, 4.645375>,  <3.722149, 2.533583, 5.341991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.811364, 2.543566, 4.645375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.433687, 2.419266, 4.689072>,  <3.207081, 2.344686, 4.715290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.433687, 2.419266, 4.689072>,  <3.811364, 2.543566, 4.645375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.433687, 2.419266, 4.689072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288731, 0.621172, -0.728547,
		0.158538, -0.719431, -0.676229,
		-0.944193, -0.310750, 0.109243,
		3.150429, 2.326041, 4.721845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.505098, 2.476238, 3.966130>,  <3.811364, 2.543566, 4.645375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.505098, 2.476238, 3.966130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.204691, 2.498337, 4.229317>,  <3.024446, 2.511596, 4.387228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.204691, 2.498337, 4.229317>,  <3.505098, 2.476238, 3.966130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.204691, 2.498337, 4.229317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505059, 0.593808, -0.626345,
		-0.425308, -0.802708, -0.418058,
		-0.751019, 0.055246, 0.657966,
		2.979385, 2.514910, 4.426706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.873989, 2.281518, 3.645209>,  <3.505098, 2.476238, 3.966130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.873989, 2.281518, 3.645209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.770720, 2.511353, 3.955872>,  <2.708758, 2.649254, 4.142269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.770720, 2.511353, 3.955872>,  <2.873989, 2.281518, 3.645209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.770720, 2.511353, 3.955872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463194, 0.631870, -0.621444,
		-0.847820, -0.520183, 0.103014,
		-0.258172, 0.574588, 0.776657,
		2.693268, 2.683729, 4.188869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.112448, 2.353767, 3.660267>,  <2.873989, 2.281518, 3.645209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.112448, 2.353767, 3.660267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.269999, 2.671127, 3.845901>,  <2.364529, 2.861544, 3.957282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.269999, 2.671127, 3.845901>,  <2.112448, 2.353767, 3.660267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.269999, 2.671127, 3.845901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532983, 0.608494, -0.587932,
		-0.748860, -0.015779, 0.662540,
		0.393875, 0.793402, 0.464087,
		2.388161, 2.909148, 3.985127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.514919, 2.754433, 3.650759>,  <2.112448, 2.353767, 3.660267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.514919, 2.754433, 3.650759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.838789, 2.979233, 3.718384>,  <2.033111, 3.114113, 3.758959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.838789, 2.979233, 3.718384>,  <1.514919, 2.754433, 3.650759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.838789, 2.979233, 3.718384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328296, 0.672510, -0.663289,
		-0.486465, 0.481546, 0.729017,
		0.809675, 0.562000, 0.169063,
		2.081692, 3.147833, 3.769103>
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
