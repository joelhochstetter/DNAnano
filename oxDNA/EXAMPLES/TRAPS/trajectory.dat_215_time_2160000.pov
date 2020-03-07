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
	<36.215412, 52.483532, 49.571697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515163, 52.514030, 49.834793>,  <36.695015, 52.532330, 49.992649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515163, 52.514030, 49.834793>,  <36.215412, 52.483532, 49.571697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515163, 52.514030, 49.834793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485561, -0.612087, 0.624162,
		0.450185, -0.787106, -0.421661,
		0.749376, 0.076246, 0.657741,
		36.739975, 52.536903, 50.032116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846035, 52.160564, 50.136459>,  <36.215412, 52.483532, 49.571697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846035, 52.160564, 50.136459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221523, 52.230263, 50.255417>,  <36.446815, 52.272079, 50.326790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221523, 52.230263, 50.255417>,  <35.846035, 52.160564, 50.136459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221523, 52.230263, 50.255417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227133, -0.336267, 0.913967,
		0.259256, -0.925507, -0.276084,
		0.938721, 0.174244, 0.297392,
		36.503139, 52.282536, 50.344635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215187, 51.603012, 50.473343>,  <35.846035, 52.160564, 50.136459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215187, 51.603012, 50.473343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364033, 51.942307, 50.624084>,  <36.453339, 52.145885, 50.714531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364033, 51.942307, 50.624084>,  <36.215187, 51.603012, 50.473343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364033, 51.942307, 50.624084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268171, -0.290449, 0.918544,
		0.888604, -0.442864, 0.119394,
		0.372112, 0.848240, 0.376858,
		36.475666, 52.196777, 50.737141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538071, 51.073715, 50.620747>,  <36.215187, 51.603012, 50.473343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538071, 51.073715, 50.620747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785545, 50.760857, 50.650326>,  <36.934032, 50.573143, 50.668076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785545, 50.760857, 50.650326>,  <36.538071, 51.073715, 50.620747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785545, 50.760857, 50.650326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785536, 0.614367, -0.074071,
		0.012501, 0.103919, 0.994507,
		0.618689, -0.782147, 0.073952,
		36.971153, 50.526211, 50.672512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121582, 51.134827, 51.089432>,  <36.538071, 51.073715, 50.620747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121582, 51.134827, 51.089432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.233601, 50.860481, 50.820759>,  <37.300812, 50.695873, 50.659554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.233601, 50.860481, 50.820759>,  <37.121582, 51.134827, 51.089432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233601, 50.860481, 50.820759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858714, 0.491770, -0.144127,
		0.429166, -0.536421, 0.726683,
		0.280048, -0.685868, -0.671684,
		37.317616, 50.654720, 50.619255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087528, 51.857018, 51.067387>,  <37.121582, 51.134827, 51.089432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087528, 51.857018, 51.067387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418194, 51.835846, 51.291466>,  <37.616592, 51.823143, 51.425915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418194, 51.835846, 51.291466>,  <37.087528, 51.857018, 51.067387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418194, 51.835846, 51.291466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548373, -0.147383, -0.823144,
		0.126129, 0.987662, -0.092813,
		0.826667, -0.052927, 0.560197,
		37.666195, 51.819969, 51.459526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730865, 52.364056, 50.864120>,  <37.087528, 51.857018, 51.067387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730865, 52.364056, 50.864120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.855118, 52.032658, 51.050495>,  <37.929668, 51.833817, 51.162319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.855118, 52.032658, 51.050495>,  <37.730865, 52.364056, 50.864120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855118, 52.032658, 51.050495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556394, -0.238948, -0.795820,
		0.770670, 0.506453, 0.386746,
		0.310634, -0.828498, 0.465937,
		37.948307, 51.784107, 51.190277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259705, 52.429832, 51.432705>,  <37.730865, 52.364056, 50.864120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259705, 52.429832, 51.432705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.143524, 52.798553, 51.330006>,  <38.073818, 53.019787, 51.268387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.143524, 52.798553, 51.330006>,  <38.259705, 52.429832, 51.432705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143524, 52.798553, 51.330006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935365, -0.330095, -0.127004,
		-0.201825, 0.203269, 0.958096,
		-0.290447, 0.921802, -0.256752,
		38.056389, 53.075092, 51.252979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375744, 52.743301, 50.835079>,  <38.259705, 52.429832, 51.432705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375744, 52.743301, 50.835079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720364, 52.790314, 50.637527>,  <38.927135, 52.818520, 50.518997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720364, 52.790314, 50.637527>,  <38.375744, 52.743301, 50.835079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720364, 52.790314, 50.637527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504924, -0.097362, 0.857655,
		0.052713, -0.988285, -0.143224,
		0.861553, 0.117527, -0.493877,
		38.978828, 52.825573, 50.489365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974194, 52.234295, 50.920097>,  <38.375744, 52.743301, 50.835079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974194, 52.234295, 50.920097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.115036, 52.605106, 50.868500>,  <39.199539, 52.827595, 50.837540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.115036, 52.605106, 50.868500>,  <38.974194, 52.234295, 50.920097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115036, 52.605106, 50.868500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622354, -0.128955, 0.772040,
		0.699070, -0.352117, -0.622346,
		0.352103, 0.927030, -0.128994,
		39.220669, 52.883217, 50.829803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689899, 52.218094, 51.116043>,  <38.974194, 52.234295, 50.920097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689899, 52.218094, 51.116043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529205, 52.583187, 51.145767>,  <39.432789, 52.802242, 51.163601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529205, 52.583187, 51.145767>,  <39.689899, 52.218094, 51.116043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529205, 52.583187, 51.145767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403569, 0.103613, 0.909064,
		0.822035, 0.395194, -0.409976,
		-0.401735, 0.912736, 0.074315,
		39.408684, 52.857006, 51.168060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281326, 51.774517, 51.396511>,  <39.689899, 52.218094, 51.116043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.281326, 51.774517, 51.396511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322170, 51.377098, 51.416237>,  <40.346676, 51.138645, 51.428070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322170, 51.377098, 51.416237>,  <40.281326, 51.774517, 51.396511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322170, 51.377098, 51.416237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983189, 0.093256, -0.156980,
		0.151369, 0.064514, 0.986370,
		0.102112, -0.993550, 0.049313,
		40.352802, 51.079033, 51.431030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613106, 51.642719, 51.991745>,  <40.281326, 51.774517, 51.396511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613106, 51.642719, 51.991745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.678928, 51.408180, 51.674477>,  <40.718422, 51.267456, 51.484116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.678928, 51.408180, 51.674477>,  <40.613106, 51.642719, 51.991745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.678928, 51.408180, 51.674477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978168, 0.200483, 0.054727,
		0.126928, -0.784859, 0.606536,
		0.164553, -0.586347, -0.793170,
		40.728294, 51.232277, 51.436527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.204414, 51.219677, 52.182320>,  <40.613106, 51.642719, 51.991745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.204414, 51.219677, 52.182320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.174950, 51.269684, 51.786552>,  <41.157269, 51.299686, 51.549091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.174950, 51.269684, 51.786552>,  <41.204414, 51.219677, 52.182320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.174950, 51.269684, 51.786552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986557, 0.154247, -0.053962,
		0.145868, -0.980092, -0.134696,
		-0.073664, 0.125014, -0.989417,
		41.152851, 51.307190, 51.489727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.619675, 50.784233, 51.795868>,  <41.204414, 51.219677, 52.182320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.619675, 50.784233, 51.795868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566708, 51.137299, 51.615479>,  <41.534927, 51.349136, 51.507244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566708, 51.137299, 51.615479>,  <41.619675, 50.784233, 51.795868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566708, 51.137299, 51.615479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991183, 0.115820, -0.064359,
		-0.004576, -0.455517, -0.890215,
		-0.132421, 0.882661, -0.450971,
		41.526981, 51.402096, 51.480186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.960709, 50.723801, 51.240803>,  <41.619675, 50.784233, 51.795868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.960709, 50.723801, 51.240803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.931492, 51.107609, 51.349602>,  <41.913960, 51.337894, 51.414883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.931492, 51.107609, 51.349602>,  <41.960709, 50.723801, 51.240803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.931492, 51.107609, 51.349602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991323, 0.099739, -0.085626,
		-0.109289, 0.263387, -0.958480,
		-0.073045, 0.959520, 0.272002,
		41.909576, 51.395466, 51.431202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.411068, 51.147877, 50.876171>,  <41.960709, 50.723801, 51.240803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.411068, 51.147877, 50.876171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.355236, 51.352242, 51.215462>,  <42.321735, 51.474861, 51.419037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.355236, 51.352242, 51.215462>,  <42.411068, 51.147877, 50.876171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.355236, 51.352242, 51.215462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989648, 0.100848, 0.102111,
		-0.033372, 0.853696, -0.519701,
		-0.139583, 0.510913, 0.848224,
		42.313362, 51.505516, 51.469929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.901554, 51.765888, 51.019569>,  <42.411068, 51.147877, 50.876171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.901554, 51.765888, 51.019569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.795540, 51.604637, 51.369938>,  <42.731930, 51.507885, 51.580158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.795540, 51.604637, 51.369938>,  <42.901554, 51.765888, 51.019569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.795540, 51.604637, 51.369938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963390, -0.072583, 0.258094,
		-0.040467, 0.912261, 0.407605,
		-0.265034, -0.403126, 0.875926,
		42.716030, 51.483700, 51.632717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.985386, 52.265499, 51.525707>,  <42.901554, 51.765888, 51.019569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.985386, 52.265499, 51.525707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.054482, 51.886471, 51.633232>,  <43.095940, 51.659054, 51.697746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.054482, 51.886471, 51.633232>,  <42.985386, 52.265499, 51.525707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.054482, 51.886471, 51.633232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944438, 0.236828, 0.227923,
		-0.279637, 0.214509, 0.935836,
		0.172740, -0.947575, 0.268817,
		43.106304, 51.602200, 51.713879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.192032, 52.183533, 52.268494>,  <42.985386, 52.265499, 51.525707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.192032, 52.183533, 52.268494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.345684, 51.926517, 52.003288>,  <43.437874, 51.772308, 51.844166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.345684, 51.926517, 52.003288>,  <43.192032, 52.183533, 52.268494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.345684, 51.926517, 52.003288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923203, 0.276563, 0.266851,
		0.011904, -0.714603, 0.699429,
		0.384129, -0.642538, -0.663016,
		43.460922, 51.733757, 51.804382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.716057, 51.843430, 52.507275>,  <43.192032, 52.183533, 52.268494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.716057, 51.843430, 52.507275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.802891, 51.754631, 52.127045>,  <43.854992, 51.701351, 51.898907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.802891, 51.754631, 52.127045>,  <43.716057, 51.843430, 52.507275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.802891, 51.754631, 52.127045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939310, 0.312515, 0.141534,
		0.265649, -0.923609, 0.276364,
		0.217090, -0.221993, -0.950574,
		43.868019, 51.688034, 51.841873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.362392, 51.473930, 52.555367>,  <43.716057, 51.843430, 52.507275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.362392, 51.473930, 52.555367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.348164, 51.594009, 52.174080>,  <44.339626, 51.666058, 51.945309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.348164, 51.594009, 52.174080>,  <44.362392, 51.473930, 52.555367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.348164, 51.594009, 52.174080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972953, 0.228246, 0.035573,
		0.228246, -0.926167, -0.300198,
		-0.035573, 0.300198, -0.953213,
		44.337490, 51.684071, 51.888115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.982868, 51.701805, 52.518417>,  <44.362392, 51.473930, 52.555367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.982868, 51.701805, 52.518417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.880272, 51.809128, 52.146992>,  <44.818714, 51.873520, 51.924137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.880272, 51.809128, 52.146992>,  <44.982868, 51.701805, 52.518417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.880272, 51.809128, 52.146992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935179, 0.311650, -0.168269,
		0.244239, -0.911530, -0.330848,
		-0.256491, 0.268304, -0.928561,
		44.803326, 51.889618, 51.868423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.406281, 51.332413, 51.864090>,  <44.982868, 51.701805, 52.518417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.406281, 51.332413, 51.864090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.273212, 51.709629, 51.865715>,  <45.193371, 51.935959, 51.866692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.273212, 51.709629, 51.865715>,  <45.406281, 51.332413, 51.864090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.273212, 51.709629, 51.865715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942885, 0.332527, 0.019865,
		0.017382, 0.010439, -0.999795,
		-0.332666, 0.943036, 0.004062,
		45.173412, 51.992538, 51.866932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.899296, 51.694218, 51.425842>,  <45.406281, 51.332413, 51.864090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.899296, 51.694218, 51.425842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.671654, 51.986877, 51.575939>,  <45.535069, 52.162476, 51.665997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.671654, 51.986877, 51.575939>,  <45.899296, 51.694218, 51.425842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.671654, 51.986877, 51.575939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785750, 0.618384, -0.014044,
		-0.242322, 0.286858, -0.926818,
		-0.569101, 0.731651, 0.375247,
		45.500923, 52.206371, 51.688515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.748840, 52.407032, 51.014645>,  <45.899296, 51.694218, 51.425842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.748840, 52.407032, 51.014645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.794678, 52.420471, 51.411781>,  <45.822182, 52.428535, 51.650063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.794678, 52.420471, 51.411781>,  <45.748840, 52.407032, 51.014645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.794678, 52.420471, 51.411781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891543, 0.437375, -0.117702,
		-0.438199, 0.898652, 0.020169,
		0.114594, 0.033595, 0.992844,
		45.829056, 52.430550, 51.709633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.975327, 53.075916, 51.165504>,  <45.748840, 52.407032, 51.014645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.975327, 53.075916, 51.165504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.108574, 52.843884, 51.462837>,  <46.188522, 52.704662, 51.641235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.108574, 52.843884, 51.462837>,  <45.975327, 53.075916, 51.165504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.108574, 52.843884, 51.462837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927288, 0.344347, -0.146843,
		-0.170782, 0.738195, 0.652611,
		0.333123, -0.580081, 0.743327,
		46.208511, 52.669861, 51.685837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.585468, 53.485252, 51.481239>,  <45.975327, 53.075916, 51.165504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.585468, 53.485252, 51.481239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.630447, 53.089279, 51.515640>,  <46.657433, 52.851696, 51.536282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.630447, 53.089279, 51.515640>,  <46.585468, 53.485252, 51.481239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.630447, 53.089279, 51.515640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984326, 0.099137, -0.145856,
		0.135861, 0.101058, 0.985560,
		0.112445, -0.989929, 0.086005,
		46.664181, 52.792301, 51.541443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.521214, 52.985992, 52.080040>,  <46.585468, 53.485252, 51.481239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.521214, 52.985992, 52.080040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.632339, 53.363499, 52.008343>,  <46.699013, 53.590004, 51.965324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.632339, 53.363499, 52.008343>,  <46.521214, 52.985992, 52.080040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.632339, 53.363499, 52.008343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506864, 0.014493, 0.861904,
		0.816033, -0.330299, -0.474334,
		0.277812, 0.943765, -0.179243,
		46.715683, 53.646629, 51.954571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.255985, 53.020973, 51.976479>,  <46.521214, 52.985992, 52.080040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.255985, 53.020973, 51.976479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.101410, 53.363724, 52.112965>,  <47.008663, 53.569374, 52.194859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.101410, 53.363724, 52.112965>,  <47.255985, 53.020973, 51.976479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.101410, 53.363724, 52.112965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554207, -0.079988, 0.828527,
		0.737237, 0.509281, -0.443975,
		-0.386440, 0.856875, 0.341217,
		46.985477, 53.620785, 52.215328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.821869, 53.584393, 52.129501>,  <47.255985, 53.020973, 51.976479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.821869, 53.584393, 52.129501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.488308, 53.638340, 52.343575>,  <47.288174, 53.670708, 52.472019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.488308, 53.638340, 52.343575>,  <47.821869, 53.584393, 52.129501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.488308, 53.638340, 52.343575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504396, -0.207408, 0.838193,
		0.224051, 0.968912, 0.104928,
		-0.833898, 0.134872, 0.535185,
		47.238140, 53.678802, 52.504131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.919407, 54.088764, 52.802753>,  <47.821869, 53.584393, 52.129501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.919407, 54.088764, 52.802753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.639492, 53.811256, 52.870850>,  <47.471542, 53.644753, 52.911709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.639492, 53.811256, 52.870850>,  <47.919407, 54.088764, 52.802753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.639492, 53.811256, 52.870850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448305, -0.240962, 0.860790,
		-0.556170, 0.678688, 0.479643,
		-0.699784, -0.693772, 0.170244,
		47.429558, 53.603127, 52.921925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.857964, 53.699215, 53.348869>,  <47.919407, 54.088764, 52.802753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.857964, 53.699215, 53.348869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.231697, 53.742153, 53.484806>,  <48.455936, 53.767918, 53.566368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.231697, 53.742153, 53.484806>,  <47.857964, 53.699215, 53.348869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.231697, 53.742153, 53.484806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351885, 0.126647, 0.927436,
		0.056509, -0.986123, 0.156101,
		0.934336, 0.107339, 0.339845,
		48.511997, 53.774357, 53.586758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.043419, 53.184368, 54.000034>,  <47.857964, 53.699215, 53.348869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.043419, 53.184368, 54.000034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.259266, 53.521061, 54.006969>,  <48.388775, 53.723076, 54.011131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.259266, 53.521061, 54.006969>,  <48.043419, 53.184368, 54.000034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.259266, 53.521061, 54.006969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275197, 0.156890, 0.948500,
		0.795665, -0.516595, 0.316303,
		0.539615, 0.841733, 0.017333,
		48.421150, 53.773582, 54.012169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.580429, 53.324257, 54.515347>,  <48.043419, 53.184368, 54.000034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.580429, 53.324257, 54.515347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.396751, 53.664318, 54.412292>,  <48.286545, 53.868355, 54.350460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.396751, 53.664318, 54.412292>,  <48.580429, 53.324257, 54.515347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.396751, 53.664318, 54.412292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320608, 0.111864, 0.940583,
		0.828461, 0.514513, 0.221199,
		-0.459198, 0.850155, -0.257632,
		48.258991, 53.919365, 54.335003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.819019, 53.887268, 54.923218>,  <48.580429, 53.324257, 54.515347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.819019, 53.887268, 54.923218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.439018, 53.897415, 54.798729>,  <48.211018, 53.903503, 54.724037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.439018, 53.897415, 54.798729>,  <48.819019, 53.887268, 54.923218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.439018, 53.897415, 54.798729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312251, -0.081845, 0.946467,
		-0.001463, 0.996322, 0.085674,
		-0.949998, 0.025367, -0.311222,
		48.154018, 53.905025, 54.705360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.513485, 54.382130, 55.372387>,  <48.819019, 53.887268, 54.923218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.513485, 54.382130, 55.372387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.302246, 54.084896, 55.207977>,  <48.175503, 53.906555, 55.109333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.302246, 54.084896, 55.207977>,  <48.513485, 54.382130, 55.372387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.302246, 54.084896, 55.207977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382001, -0.224401, 0.896504,
		-0.758413, 0.630450, -0.165354,
		-0.528095, -0.743086, -0.411021,
		48.143818, 53.861969, 55.084671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.800064, 54.797035, 56.009289>,  <48.513485, 54.382130, 55.372387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.800064, 54.797035, 56.009289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.675961, 54.992756, 56.335312>,  <48.601498, 55.110188, 56.530926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.675961, 54.992756, 56.335312>,  <48.800064, 54.797035, 56.009289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.675961, 54.992756, 56.335312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792090, -0.341039, 0.506247,
		0.525675, 0.802669, -0.281759,
		-0.310258, 0.489300, 0.815062,
		48.582882, 55.139545, 56.579830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.363922, 54.968666, 56.269146>,  <48.800064, 54.797035, 56.009289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.363922, 54.968666, 56.269146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.101746, 54.941589, 56.570030>,  <48.944439, 54.925343, 56.750561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.101746, 54.941589, 56.570030>,  <49.363922, 54.968666, 56.269146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.101746, 54.941589, 56.570030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677289, -0.493387, 0.545755,
		0.334187, 0.867172, 0.369232,
		-0.655438, -0.067692, 0.752209,
		48.905113, 54.921280, 56.795692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.972576, 54.539688, 56.341412>,  <49.363922, 54.968666, 56.269146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.972576, 54.539688, 56.341412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.967060, 54.562378, 55.942093>,  <49.963753, 54.575993, 55.702503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.967060, 54.562378, 55.942093>,  <49.972576, 54.539688, 56.341412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.967060, 54.562378, 55.942093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885585, -0.462877, -0.038528,
		-0.464273, -0.884606, -0.043850,
		-0.013785, 0.056720, -0.998295,
		49.962925, 54.579395, 55.642605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.357986, 53.970745, 55.961887>,  <49.972576, 54.539688, 56.341412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.357986, 53.970745, 55.961887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.387161, 54.272659, 55.701126>,  <50.404667, 54.453808, 55.544670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.387161, 54.272659, 55.701126>,  <50.357986, 53.970745, 55.961887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.387161, 54.272659, 55.701126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967309, -0.212720, -0.138066,
		-0.242883, -0.620518, -0.745631,
		0.072938, 0.754790, -0.651899,
		50.409042, 54.499096, 55.505558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.828320, 53.815090, 55.496674>,  <50.357986, 53.970745, 55.961887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.828320, 53.815090, 55.496674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.778332, 54.200809, 55.403290>,  <50.748337, 54.432243, 55.347260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.778332, 54.200809, 55.403290>,  <50.828320, 53.815090, 55.496674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.778332, 54.200809, 55.403290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940850, 0.040492, -0.336394,
		-0.314932, -0.261691, -0.912324,
		-0.124973, 0.964302, -0.233460,
		50.740841, 54.490101, 55.333252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.072956, 53.949585, 54.830555>,  <50.828320, 53.815090, 55.496674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.072956, 53.949585, 54.830555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.075653, 54.293522, 55.034760>,  <51.077271, 54.499886, 55.157284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.075653, 54.293522, 55.034760>,  <51.072956, 53.949585, 54.830555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.075653, 54.293522, 55.034760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817413, 0.289336, -0.498117,
		-0.576013, 0.420661, -0.700895,
		0.006745, 0.859842, 0.510515,
		51.077675, 54.551476, 55.187916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.638035, 53.336597, 54.697460>,  <51.072956, 53.949585, 54.830555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.638035, 53.336597, 54.697460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.828316, 53.434372, 54.359474>,  <50.942482, 53.493038, 54.156685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.828316, 53.434372, 54.359474>,  <50.638035, 53.336597, 54.697460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.828316, 53.434372, 54.359474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736067, 0.415304, 0.534536,
		0.481579, -0.876225, 0.017634,
		0.475697, 0.244441, -0.844962,
		50.971024, 53.507706, 54.105984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.415848, 53.207523, 54.754070>,  <50.638035, 53.336597, 54.697460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.415848, 53.207523, 54.754070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.356392, 53.478592, 54.465996>,  <51.320721, 53.641235, 54.293152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.356392, 53.478592, 54.465996>,  <51.415848, 53.207523, 54.754070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.356392, 53.478592, 54.465996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757756, 0.545982, 0.357363,
		0.635384, -0.492607, -0.594665,
		-0.148637, 0.677674, -0.720184,
		51.311802, 53.681892, 54.249939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.049248, 53.302971, 54.475002>,  <51.415848, 53.207523, 54.754070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.049248, 53.302971, 54.475002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.829617, 53.618309, 54.363991>,  <51.697838, 53.807510, 54.297386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.829617, 53.618309, 54.363991>,  <52.049248, 53.302971, 54.475002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.829617, 53.618309, 54.363991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811063, 0.582756, 0.050715,
		0.201711, -0.197244, -0.959379,
		-0.549081, 0.788346, -0.277526,
		51.664894, 53.854813, 54.280731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.245110, 53.719761, 53.783672>,  <52.049248, 53.302971, 54.475002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.245110, 53.719761, 53.783672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.089626, 53.955494, 54.066963>,  <51.996338, 54.096935, 54.236938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.089626, 53.955494, 54.066963>,  <52.245110, 53.719761, 53.783672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.089626, 53.955494, 54.066963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815718, 0.577516, -0.032866,
		-0.428383, 0.564941, -0.705216,
		-0.388706, 0.589337, 0.708230,
		51.973015, 54.132294, 54.279430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.947289, 53.727501, 53.808479>,  <52.245110, 53.719761, 53.783672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.947289, 53.727501, 53.808479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.141079, 53.889572, 53.498352>,  <53.257355, 53.986816, 53.312275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.141079, 53.889572, 53.498352>,  <52.947289, 53.727501, 53.808479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.141079, 53.889572, 53.498352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741517, 0.660438, -0.118208,
		0.464151, 0.632177, 0.620416,
		0.484475, 0.405183, -0.775314,
		53.286423, 54.011127, 53.265759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.934914, 54.471573, 53.884518>,  <52.947289, 53.727501, 53.808479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.934914, 54.471573, 53.884518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.990494, 54.424278, 53.491230>,  <53.023842, 54.395901, 53.255257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.990494, 54.424278, 53.491230>,  <52.934914, 54.471573, 53.884518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.990494, 54.424278, 53.491230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687103, 0.703474, -0.181699,
		0.713150, 0.700818, 0.016510,
		0.138952, -0.118235, -0.983216,
		53.032181, 54.388809, 53.196266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.993916, 55.115433, 53.695786>,  <52.934914, 54.471573, 53.884518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.993916, 55.115433, 53.695786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.902096, 54.893955, 53.375603>,  <52.847004, 54.761070, 53.183495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.902096, 54.893955, 53.375603>,  <52.993916, 55.115433, 53.695786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.902096, 54.893955, 53.375603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553309, 0.750832, -0.360695,
		0.800723, 0.360103, -0.478715,
		-0.229547, -0.553694, -0.800457,
		52.833233, 54.727848, 53.135468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.001202, 55.583717, 53.115211>,  <52.993916, 55.115433, 53.695786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.001202, 55.583717, 53.115211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.827225, 55.253948, 52.970348>,  <52.722839, 55.056087, 52.883430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.827225, 55.253948, 52.970348>,  <53.001202, 55.583717, 53.115211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.827225, 55.253948, 52.970348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614396, 0.565733, -0.549966,
		0.658285, -0.016698, -0.752583,
		-0.434945, -0.824419, -0.362155,
		52.696739, 55.006622, 52.861702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.742935, 55.503082, 53.200287>,  <53.001202, 55.583717, 53.115211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.742935, 55.503082, 53.200287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.949097, 55.812050, 53.348732>,  <54.072796, 55.997429, 53.437798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.949097, 55.812050, 53.348732>,  <53.742935, 55.503082, 53.200287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.949097, 55.812050, 53.348732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844331, -0.383699, -0.374006,
		-0.146495, 0.506106, -0.849939,
		0.515407, 0.772419, 0.371112,
		54.103718, 56.043777, 53.460064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.119488, 55.911800, 52.654518>,  <53.742935, 55.503082, 53.200287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.119488, 55.911800, 52.654518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.315498, 55.928864, 53.002785>,  <54.433105, 55.939102, 53.211742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.315498, 55.928864, 53.002785>,  <54.119488, 55.911800, 52.654518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.315498, 55.928864, 53.002785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839814, -0.290806, -0.458414,
		0.233637, 0.955830, -0.178331,
		0.490026, 0.042662, 0.870663,
		54.462505, 55.941662, 53.263985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.684769, 56.409035, 52.683586>,  <54.119488, 55.911800, 52.654518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.684769, 56.409035, 52.683586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.727959, 56.076801, 52.902115>,  <54.753872, 55.877460, 53.033230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.727959, 56.076801, 52.902115>,  <54.684769, 56.409035, 52.683586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.727959, 56.076801, 52.902115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758528, -0.286395, -0.585331,
		0.642632, 0.477600, 0.599101,
		0.107975, -0.830588, 0.546319,
		54.760349, 55.827625, 53.066010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.804375, 57.030163, 53.179790>,  <54.684769, 56.409035, 52.683586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.804375, 57.030163, 53.179790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.867416, 56.650787, 53.289795>,  <54.905239, 56.423161, 53.355797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.867416, 56.650787, 53.289795>,  <54.804375, 57.030163, 53.179790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.867416, 56.650787, 53.289795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910330, 0.247464, 0.331755,
		-0.382703, 0.198062, 0.902391,
		0.157601, -0.948437, 0.275007,
		54.914696, 56.366257, 53.372295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.061214, 57.075539, 53.841045>,  <54.804375, 57.030163, 53.179790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.061214, 57.075539, 53.841045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.205299, 56.785900, 53.605782>,  <55.291748, 56.612118, 53.464622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.205299, 56.785900, 53.605782>,  <55.061214, 57.075539, 53.841045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.205299, 56.785900, 53.605782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931118, 0.240418, 0.274262,
		-0.057187, -0.646441, 0.760818,
		0.360208, -0.724095, -0.588164,
		55.313362, 56.568672, 53.429333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.661465, 56.661488, 54.089893>,  <55.061214, 57.075539, 53.841045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.661465, 56.661488, 54.089893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.719032, 56.451305, 54.425316>,  <55.753574, 56.325195, 54.626572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.719032, 56.451305, 54.425316>,  <55.661465, 56.661488, 54.089893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.719032, 56.451305, 54.425316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989449, 0.062163, -0.130867,
		0.016638, 0.848548, 0.528857,
		0.143922, -0.525454, 0.838561,
		55.762211, 56.293671, 54.676884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.137470, 56.958927, 54.538452>,  <55.661465, 56.661488, 54.089893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.137470, 56.958927, 54.538452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.155586, 56.564514, 54.602570>,  <56.166454, 56.327866, 54.641041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.155586, 56.564514, 54.602570>,  <56.137470, 56.958927, 54.538452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.155586, 56.564514, 54.602570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993260, 0.027306, -0.112644,
		0.106693, 0.164313, 0.980621,
		0.045286, -0.986030, 0.160292,
		56.169170, 56.268703, 54.650658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.717125, 56.858555, 55.009636>,  <56.137470, 56.958927, 54.538452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.717125, 56.858555, 55.009636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.644928, 56.505665, 54.835693>,  <56.601612, 56.293930, 54.731327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.644928, 56.505665, 54.835693>,  <56.717125, 56.858555, 55.009636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.644928, 56.505665, 54.835693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975446, -0.217285, 0.035958,
		-0.126211, -0.417688, 0.899782,
		-0.180489, -0.882227, -0.434856,
		56.590782, 56.240997, 54.705238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.393257, 56.881008, 55.162445>,  <56.717125, 56.858555, 55.009636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.393257, 56.881008, 55.162445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.724823, 56.744064, 55.339394>,  <57.923763, 56.661900, 55.445564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.724823, 56.744064, 55.339394>,  <57.393257, 56.881008, 55.162445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.724823, 56.744064, 55.339394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318463, 0.938985, 0.129957,
		-0.459875, 0.033157, 0.887364,
		0.828913, -0.342357, 0.442375,
		57.973495, 56.641357, 55.472107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.578316, 57.212193, 55.800560>,  <57.393257, 56.881008, 55.162445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.578316, 57.212193, 55.800560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.919533, 57.068501, 55.649155>,  <58.124264, 56.982285, 55.558311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.919533, 57.068501, 55.649155>,  <57.578316, 57.212193, 55.800560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.919533, 57.068501, 55.649155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446055, 0.878396, 0.171624,
		0.270833, -0.315241, 0.909545,
		0.853044, -0.359226, -0.378514,
		58.175446, 56.960732, 55.535599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.034878, 57.401939, 56.281433>,  <57.578316, 57.212193, 55.800560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.034878, 57.401939, 56.281433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.229279, 57.337273, 55.937881>,  <58.345917, 57.298473, 55.731750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.229279, 57.337273, 55.937881>,  <58.034878, 57.401939, 56.281433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.229279, 57.337273, 55.937881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494632, 0.861081, 0.117808,
		0.720516, -0.482082, 0.498452,
		0.486000, -0.161668, -0.858875,
		58.375080, 57.288773, 55.680218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.710548, 57.679771, 56.456646>,  <58.034878, 57.401939, 56.281433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.710548, 57.679771, 56.456646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.629280, 57.686584, 56.065048>,  <58.580517, 57.690670, 55.830090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.629280, 57.686584, 56.065048>,  <58.710548, 57.679771, 56.456646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.629280, 57.686584, 56.065048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234904, 0.971497, -0.031851,
		0.950547, -0.236441, -0.201382,
		-0.203173, 0.017030, -0.978994,
		58.568329, 57.691692, 55.771351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.954113, 57.452236, 57.095074>,  <58.710548, 57.679771, 56.456646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.954113, 57.452236, 57.095074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.577690, 57.560402, 57.013802>,  <58.351837, 57.625301, 56.965038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.577690, 57.560402, 57.013802>,  <58.954113, 57.452236, 57.095074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.577690, 57.560402, 57.013802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038301, 0.511634, 0.858350,
		0.336066, 0.815540, -0.471120,
		-0.941059, 0.270418, -0.203179,
		58.295372, 57.641529, 56.952847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.491516, 57.130783, 57.548805>,  <58.954113, 57.452236, 57.095074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.491516, 57.130783, 57.548805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.556984, 56.762268, 57.689911>,  <58.596264, 56.541161, 57.774574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.556984, 56.762268, 57.689911>,  <58.491516, 57.130783, 57.548805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.556984, 56.762268, 57.689911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805058, 0.331409, 0.491986,
		-0.570170, 0.203474, 0.795930,
		0.163672, -0.921285, 0.352768,
		58.606087, 56.485882, 57.795742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.596375, 56.943726, 58.334381>,  <58.491516, 57.130783, 57.548805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.596375, 56.943726, 58.334381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.804352, 56.674835, 58.123566>,  <58.929138, 56.513500, 57.997078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.804352, 56.674835, 58.123566>,  <58.596375, 56.943726, 58.334381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.804352, 56.674835, 58.123566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852578, 0.446430, 0.271683,
		0.052652, -0.590599, 0.805246,
		0.519941, -0.672230, -0.527037,
		58.960335, 56.473167, 57.965454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.090706, 56.832291, 58.688648>,  <58.596375, 56.943726, 58.334381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.090706, 56.832291, 58.688648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.224838, 56.758484, 58.319107>,  <59.305317, 56.714199, 58.097382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.224838, 56.758484, 58.319107>,  <59.090706, 56.832291, 58.688648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.224838, 56.758484, 58.319107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815938, 0.547100, 0.186886,
		0.470956, -0.816476, 0.334016,
		0.335328, -0.184521, -0.923854,
		59.325436, 56.703129, 58.041950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.770863, 56.497135, 58.873398>,  <59.090706, 56.832291, 58.688648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.770863, 56.497135, 58.873398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.763527, 56.681717, 58.518608>,  <59.759125, 56.792465, 58.305733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.763527, 56.681717, 58.518608>,  <59.770863, 56.497135, 58.873398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.763527, 56.681717, 58.518608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867476, 0.448444, 0.215368,
		0.497141, -0.765479, -0.408525,
		-0.018341, 0.461454, -0.886975,
		59.758026, 56.820152, 58.252514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.498501, 56.599964, 58.699619>,  <59.770863, 56.497135, 58.873398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.498501, 56.599964, 58.699619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.334496, 56.879948, 58.465714>,  <60.236092, 57.047939, 58.325371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.334496, 56.879948, 58.465714>,  <60.498501, 56.599964, 58.699619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.334496, 56.879948, 58.465714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825774, 0.557115, 0.087863,
		0.387279, -0.446854, -0.806434,
		-0.410014, 0.699960, -0.584760,
		60.211491, 57.089935, 58.290287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.960411, 56.898289, 58.106899>,  <60.498501, 56.599964, 58.699619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.960411, 56.898289, 58.106899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.679054, 57.173435, 58.178535>,  <60.510239, 57.338524, 58.221516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.679054, 57.173435, 58.178535>,  <60.960411, 56.898289, 58.106899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.679054, 57.173435, 58.178535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709318, 0.695546, 0.114385,
		-0.045883, 0.207489, -0.977161,
		-0.703394, 0.687870, 0.179089,
		60.468037, 57.379795, 58.232262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.279850, 56.975632, 57.318466>,  <60.960411, 56.898289, 58.106899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.279850, 56.975632, 57.318466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.543251, 57.273220, 57.363869>,  <61.701290, 57.451775, 57.391109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.543251, 57.273220, 57.363869>,  <61.279850, 56.975632, 57.318466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.543251, 57.273220, 57.363869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492500, -0.311960, -0.812481,
		-0.569053, 0.590921, -0.571831,
		0.658500, 0.743972, 0.113507,
		61.740803, 57.496410, 57.397923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.403400, 57.263103, 56.729950>,  <61.279850, 56.975632, 57.318466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.403400, 57.263103, 56.729950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.718483, 57.319126, 56.969917>,  <61.907532, 57.352741, 57.113895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.718483, 57.319126, 56.969917>,  <61.403400, 57.263103, 56.729950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.718483, 57.319126, 56.969917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615601, -0.215978, -0.757885,
		0.023420, 0.966301, -0.256348,
		0.787710, 0.140058, 0.599914,
		61.954796, 57.361145, 57.149891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.946342, 57.477398, 56.279884>,  <61.403400, 57.263103, 56.729950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.946342, 57.477398, 56.279884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.140778, 57.450760, 56.628433>,  <62.257439, 57.434776, 56.837563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.140778, 57.450760, 56.628433>,  <61.946342, 57.477398, 56.279884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.140778, 57.450760, 56.628433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841452, -0.233555, -0.487248,
		0.235960, 0.970061, -0.057494,
		0.486088, -0.066593, 0.871369,
		62.286606, 57.430782, 56.889843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.655449, 57.758472, 56.235043>,  <61.946342, 57.477398, 56.279884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.655449, 57.758472, 56.235043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.678726, 57.485863, 56.526833>,  <62.692692, 57.322296, 56.701908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.678726, 57.485863, 56.526833>,  <62.655449, 57.758472, 56.235043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.678726, 57.485863, 56.526833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874096, -0.318203, -0.367019,
		0.482255, 0.658989, 0.577204,
		0.058194, -0.681528, 0.729475,
		62.696186, 57.281403, 56.745674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.065838, 57.871342, 56.836552>,  <62.655449, 57.758472, 56.235043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.065838, 57.871342, 56.836552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.038567, 57.495007, 56.703781>,  <63.022205, 57.269207, 56.624119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.038567, 57.495007, 56.703781>,  <63.065838, 57.871342, 56.836552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.038567, 57.495007, 56.703781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941133, 0.049761, -0.334354,
		0.331090, -0.335180, 0.882062,
		-0.068176, -0.940839, -0.331924,
		63.018112, 57.212753, 56.604202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.541058, 57.551773, 57.172680>,  <63.065838, 57.871342, 56.836552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.541058, 57.551773, 57.172680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.466194, 57.336094, 56.844231>,  <63.421276, 57.206688, 56.647163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.466194, 57.336094, 56.844231>,  <63.541058, 57.551773, 57.172680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.466194, 57.336094, 56.844231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970564, 0.027493, -0.239269,
		0.151588, -0.841731, 0.518180,
		-0.187154, -0.539197, -0.821121,
		63.410049, 57.174335, 56.597893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.816376, 56.853188, 57.095345>,  <63.541058, 57.551773, 57.172680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.816376, 56.853188, 57.095345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.802681, 57.062706, 56.754883>,  <63.794464, 57.188416, 56.550606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.802681, 57.062706, 56.754883>,  <63.816376, 56.853188, 57.095345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.802681, 57.062706, 56.754883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999078, -0.004148, -0.042737,
		-0.025916, -0.851833, -0.523171,
		-0.034234, 0.523796, -0.851155,
		63.792412, 57.219845, 56.499535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.308693, 56.504784, 56.527466>,  <63.816376, 56.853188, 57.095345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.308693, 56.504784, 56.527466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.259155, 56.901100, 56.505569>,  <64.229431, 57.138889, 56.492432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.259155, 56.901100, 56.505569>,  <64.308693, 56.504784, 56.527466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.259155, 56.901100, 56.505569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988577, 0.127970, 0.079620,
		0.085891, -0.044251, -0.995321,
		-0.123848, 0.990790, -0.054737,
		64.222000, 57.198338, 56.489147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.887962, 56.681355, 56.232887>,  <64.308693, 56.504784, 56.527466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.887962, 56.681355, 56.232887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.752747, 57.022621, 56.391800>,  <64.671616, 57.227383, 56.487148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.752747, 57.022621, 56.391800>,  <64.887962, 56.681355, 56.232887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.752747, 57.022621, 56.391800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918223, 0.206400, 0.338032,
		0.206400, 0.479060, -0.853171,
		-0.338032, 0.853171, 0.397283,
		64.651337, 57.278572, 56.510986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.169006, 57.284904, 55.810432>,  <64.887962, 56.681355, 56.232887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.169006, 57.284904, 55.810432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.146088, 57.391537, 56.195274>,  <65.132332, 57.455517, 56.426182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.146088, 57.391537, 56.195274>,  <65.169006, 57.284904, 55.810432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.146088, 57.391537, 56.195274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848607, 0.520655, -0.093724,
		-0.525911, 0.811080, -0.256060,
		-0.057301, 0.266584, 0.962107,
		65.128899, 57.471512, 56.483906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.954247, 58.006554, 55.863029>,  <65.169006, 57.284904, 55.810432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.954247, 58.006554, 55.863029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.166878, 57.861439, 56.169182>,  <65.294456, 57.774368, 56.352875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.166878, 57.861439, 56.169182>,  <64.954247, 58.006554, 55.863029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.166878, 57.861439, 56.169182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804602, 0.498623, -0.322476,
		-0.264646, 0.787248, 0.556958,
		0.531581, -0.362788, 0.765380,
		65.326355, 57.752602, 56.398796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.381004, 58.458370, 56.361118>,  <64.954247, 58.006554, 55.863029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.381004, 58.458370, 56.361118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.606880, 58.128975, 56.339195>,  <65.742401, 57.931339, 56.326042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.606880, 58.128975, 56.339195>,  <65.381004, 58.458370, 56.361118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.606880, 58.128975, 56.339195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759457, 0.544475, -0.356050,
		0.323043, 0.159432, 0.932858,
		0.564684, -0.823485, -0.054808,
		65.776283, 57.881927, 56.322754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.033241, 58.288902, 56.922100>,  <65.381004, 58.458370, 56.361118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.033241, 58.288902, 56.922100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.083038, 58.181328, 56.540070>,  <66.112915, 58.116783, 56.310852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.083038, 58.181328, 56.540070>,  <66.033241, 58.288902, 56.922100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.083038, 58.181328, 56.540070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606538, 0.782406, -0.141251,
		0.785246, -0.561705, 0.260530,
		0.124499, -0.268938, -0.955077,
		66.120384, 58.100647, 56.253548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.659508, 58.424435, 56.803818>,  <66.033241, 58.288902, 56.922100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.659508, 58.424435, 56.803818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.474373, 58.443954, 56.449776>,  <66.363297, 58.455666, 56.237350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.474373, 58.443954, 56.449776>,  <66.659508, 58.424435, 56.803818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.474373, 58.443954, 56.449776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569912, 0.781156, -0.254942,
		0.678961, -0.622425, -0.389357,
		-0.462831, 0.048804, -0.885102,
		66.335526, 58.458595, 56.184246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.087967, 58.293285, 56.178131>,  <66.659508, 58.424435, 56.803818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.087967, 58.293285, 56.178131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.789665, 58.542961, 56.084976>,  <66.610680, 58.692764, 56.029083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.789665, 58.542961, 56.084976>,  <67.087967, 58.293285, 56.178131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.789665, 58.542961, 56.084976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665753, 0.711245, -0.225618,
		0.024811, -0.323301, -0.945971,
		-0.745760, 0.624185, -0.232885,
		66.565941, 58.730217, 56.015110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.700111, 58.251434, 56.408447>,  <67.087967, 58.293285, 56.178131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.700111, 58.251434, 56.408447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.474228, 58.134254, 56.717064>,  <67.338699, 58.063946, 56.902233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.474228, 58.134254, 56.717064>,  <67.700111, 58.251434, 56.408447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.474228, 58.134254, 56.717064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624224, -0.763162, 0.167116,
		0.539853, 0.575987, 0.613838,
		-0.564715, -0.292954, 0.771541,
		67.304817, 58.046368, 56.948524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.150009, 58.102795, 57.008331>,  <67.700111, 58.251434, 56.408447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.150009, 58.102795, 57.008331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.810806, 57.895603, 57.053185>,  <67.607285, 57.771286, 57.080097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.810806, 57.895603, 57.053185>,  <68.150009, 58.102795, 57.008331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.810806, 57.895603, 57.053185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528266, -0.843134, 0.100298,
		0.042593, 0.144292, 0.988618,
		-0.848010, -0.517981, 0.112136,
		67.556404, 57.740208, 57.086826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.931442, 58.284554, 57.742802>,  <68.150009, 58.102795, 57.008331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.931442, 58.284554, 57.742802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.727013, 57.945282, 57.798523>,  <67.604355, 57.741718, 57.831955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.727013, 57.945282, 57.798523>,  <67.931442, 58.284554, 57.742802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.727013, 57.945282, 57.798523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401631, -0.092357, 0.911133,
		-0.759936, 0.521599, 0.387855,
		-0.511067, -0.848177, 0.139305,
		67.573692, 57.690830, 57.840313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.537773, 58.163750, 58.105335>,  <67.931442, 58.284554, 57.742802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.537773, 58.163750, 58.105335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.658836, 57.873188, 57.858521>,  <68.731476, 57.698853, 57.710430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.658836, 57.873188, 57.858521>,  <68.537773, 58.163750, 58.105335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.658836, 57.873188, 57.858521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945805, 0.308839, 0.100352,
		0.117670, -0.613972, 0.780507,
		0.302664, -0.726400, -0.617039,
		68.749634, 57.655270, 57.673409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.123940, 58.061394, 58.355148>,  <68.537773, 58.163750, 58.105335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.123940, 58.061394, 58.355148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.146538, 57.846188, 58.018730>,  <69.160095, 57.717064, 57.816879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.146538, 57.846188, 58.018730>,  <69.123940, 58.061394, 58.355148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.146538, 57.846188, 58.018730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963480, 0.250229, -0.095354,
		0.261754, -0.804940, 0.532500,
		0.056493, -0.538012, -0.841042,
		69.163483, 57.684784, 57.766418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.714844, 57.488594, 58.184208>,  <69.123940, 58.061394, 58.355148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.714844, 57.488594, 58.184208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.589737, 57.682018, 57.857201>,  <69.514671, 57.798073, 57.660995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.589737, 57.682018, 57.857201>,  <69.714844, 57.488594, 58.184208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.589737, 57.682018, 57.857201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935274, 0.306894, -0.176291,
		0.165645, -0.819746, -0.548250,
		-0.312769, 0.483562, -0.817523,
		69.495903, 57.827087, 57.611942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.166473, 57.040218, 58.454002>,  <69.714844, 57.488594, 58.184208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.166473, 57.040218, 58.454002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.327553, 56.674183, 58.462471>,  <70.424202, 56.454563, 58.467552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.327553, 56.674183, 58.462471>,  <70.166473, 57.040218, 58.454002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.327553, 56.674183, 58.462471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868926, 0.389447, 0.305447,
		-0.287757, -0.104605, 0.951974,
		0.402694, -0.915090, 0.021172,
		70.448364, 56.399654, 58.468822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.445793, 56.796928, 59.184555>,  <70.166473, 57.040218, 58.454002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.445793, 56.796928, 59.184555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.658447, 56.612564, 58.900322>,  <70.786041, 56.501945, 58.729782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.658447, 56.612564, 58.900322>,  <70.445793, 56.796928, 59.184555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.658447, 56.612564, 58.900322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845095, 0.344491, 0.408827,
		0.056358, -0.817858, 0.572654,
		0.531637, -0.460907, -0.710582,
		70.817940, 56.474293, 58.687149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.896561, 56.370739, 59.533634>,  <70.445793, 56.796928, 59.184555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.896561, 56.370739, 59.533634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.073524, 56.419388, 59.178223>,  <71.179703, 56.448578, 58.964977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.073524, 56.419388, 59.178223>,  <70.896561, 56.370739, 59.533634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.073524, 56.419388, 59.178223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825774, 0.331207, 0.456508,
		0.349808, -0.935687, 0.046098,
		0.442416, 0.121623, -0.888524,
		71.206253, 56.455875, 58.911667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.680099, 56.134457, 59.659473>,  <70.896561, 56.370739, 59.533634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.680099, 56.134457, 59.659473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.638878, 56.328728, 59.312256>,  <71.614143, 56.445290, 59.103924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.638878, 56.328728, 59.312256>,  <71.680099, 56.134457, 59.659473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.638878, 56.328728, 59.312256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941344, 0.329540, 0.072627,
		0.321328, -0.809645, -0.491144,
		-0.103049, 0.485673, -0.868045,
		71.607964, 56.474430, 59.051842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.268066, 56.024960, 59.258614>,  <71.680099, 56.134457, 59.659473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.268066, 56.024960, 59.258614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.115601, 56.379082, 59.152069>,  <72.024124, 56.591557, 59.088142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.115601, 56.379082, 59.152069>,  <72.268066, 56.024960, 59.258614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.115601, 56.379082, 59.152069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877063, 0.437375, 0.198654,
		0.292368, -0.157894, -0.943181,
		-0.381158, 0.885309, -0.266357,
		72.001251, 56.644676, 59.072163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.685928, 56.408718, 58.855682>,  <72.268066, 56.024960, 59.258614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.685928, 56.408718, 58.855682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.457832, 56.718636, 58.964874>,  <72.320976, 56.904587, 59.030388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.457832, 56.718636, 58.964874>,  <72.685928, 56.408718, 58.855682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.457832, 56.718636, 58.964874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804952, 0.593335, -0.002521,
		-0.163919, 0.218295, -0.962018,
		-0.570248, 0.774791, 0.272976,
		72.286758, 56.951073, 59.046768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.632751, 56.573380, 59.619385>,  <72.685928, 56.408718, 58.855682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.632751, 56.573380, 59.619385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.853416, 56.740570, 59.908096>,  <72.985817, 56.840885, 60.081326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.853416, 56.740570, 59.908096>,  <72.632751, 56.573380, 59.619385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.853416, 56.740570, 59.908096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106829, 0.893652, -0.435860,
		-0.827203, 0.163336, 0.537639,
		0.551654, 0.417980, 0.721783,
		73.018913, 56.865963, 60.124630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.220009, 57.066784, 59.919823>,  <72.632751, 56.573380, 59.619385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.220009, 57.066784, 59.919823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.616356, 57.119278, 59.907326>,  <72.854164, 57.150776, 59.899826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.616356, 57.119278, 59.907326>,  <72.220009, 57.066784, 59.919823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.616356, 57.119278, 59.907326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134578, 0.945525, -0.296431,
		-0.009358, 0.297926, 0.954543,
		0.990859, 0.131234, -0.031246,
		72.913612, 57.158649, 59.897953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.502892, 57.580086, 60.424480>,  <72.220009, 57.066784, 59.919823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.502892, 57.580086, 60.424480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.680252, 57.532726, 60.069092>,  <72.786667, 57.504311, 59.855858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.680252, 57.532726, 60.069092>,  <72.502892, 57.580086, 60.424480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.680252, 57.532726, 60.069092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502006, 0.788379, -0.355595,
		0.742552, 0.603688, 0.290132,
		0.443403, -0.118400, -0.888468,
		72.813271, 57.497208, 59.802551>
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
