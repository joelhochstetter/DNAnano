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
	<36.470177, 53.252392, 49.261093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552578, 52.897667, 49.426567>,  <36.602020, 52.684834, 49.525852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552578, 52.897667, 49.426567>,  <36.470177, 53.252392, 49.261093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552578, 52.897667, 49.426567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503961, -0.266230, -0.821672,
		0.838800, 0.377747, 0.392073,
		0.206003, -0.886808, 0.413684,
		36.614380, 52.631626, 49.550671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209442, 53.124111, 49.320240>,  <36.470177, 53.252392, 49.261093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209442, 53.124111, 49.320240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.023682, 52.770393, 49.300858>,  <36.912224, 52.558163, 49.289227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.023682, 52.770393, 49.300858>,  <37.209442, 53.124111, 49.320240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023682, 52.770393, 49.300858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484588, -0.207925, -0.849672,
		0.741288, -0.418071, 0.525081,
		-0.464400, -0.884299, -0.048460,
		36.884361, 52.505104, 49.286320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682373, 53.201389, 48.724785>,  <37.209442, 53.124111, 49.320240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682373, 53.201389, 48.724785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850662, 53.045464, 49.052452>,  <37.951633, 52.951908, 49.249054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850662, 53.045464, 49.052452>,  <37.682373, 53.201389, 48.724785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850662, 53.045464, 49.052452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885877, -0.018047, -0.463569,
		0.195489, 0.920717, 0.337734,
		0.420720, -0.389814, 0.819170,
		37.976879, 52.928520, 49.298203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310081, 53.658504, 48.984287>,  <37.682373, 53.201389, 48.724785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310081, 53.658504, 48.984287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.339424, 53.261723, 49.025555>,  <38.357029, 53.023655, 49.050316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.339424, 53.261723, 49.025555>,  <38.310081, 53.658504, 48.984287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339424, 53.261723, 49.025555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742654, -0.014706, -0.669514,
		0.665645, 0.125732, 0.735601,
		0.073361, -0.991955, 0.103164,
		38.361431, 52.964134, 49.056503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008083, 53.536114, 48.965595>,  <38.310081, 53.658504, 48.984287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008083, 53.536114, 48.965595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802570, 53.200718, 48.892967>,  <38.679264, 52.999481, 48.849388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802570, 53.200718, 48.892967>,  <39.008083, 53.536114, 48.965595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802570, 53.200718, 48.892967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709503, -0.296285, -0.639391,
		0.482325, -0.457331, 0.747135,
		-0.513778, -0.838489, -0.181572,
		38.648438, 52.949173, 48.838497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383915, 52.847424, 49.111088>,  <39.008083, 53.536114, 48.965595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383915, 52.847424, 49.111088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110310, 52.812157, 48.821438>,  <38.946148, 52.790997, 48.647648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110310, 52.812157, 48.821438>,  <39.383915, 52.847424, 49.111088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110310, 52.812157, 48.821438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690874, -0.396921, -0.604274,
		-0.234143, -0.913608, 0.332410,
		-0.684010, -0.088167, -0.724125,
		38.905106, 52.785706, 48.604202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060326, 52.670059, 48.871243>,  <39.383915, 52.847424, 49.111088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060326, 52.670059, 48.871243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063530, 53.051300, 48.750229>,  <40.065453, 53.280045, 48.677620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063530, 53.051300, 48.750229>,  <40.060326, 52.670059, 48.871243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063530, 53.051300, 48.750229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915913, 0.114423, 0.384722,
		0.401297, -0.280175, -0.872045,
		0.008007, 0.953105, -0.302534,
		40.065933, 53.337231, 48.659470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672966, 52.883545, 48.322849>,  <40.060326, 52.670059, 48.871243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.672966, 52.883545, 48.322849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.539597, 53.133224, 48.605465>,  <40.459576, 53.283031, 48.775036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.539597, 53.133224, 48.605465>,  <40.672966, 52.883545, 48.322849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.539597, 53.133224, 48.605465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925363, 0.073312, 0.371924,
		0.180358, 0.777817, -0.602056,
		-0.333427, 0.624200, 0.706541,
		40.439568, 53.320484, 48.817429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304890, 53.162277, 48.526661>,  <40.672966, 52.883545, 48.322849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.304890, 53.162277, 48.526661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.020802, 53.308853, 48.767097>,  <40.850349, 53.396801, 48.911358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.020802, 53.308853, 48.767097>,  <41.304890, 53.162277, 48.526661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.020802, 53.308853, 48.767097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703966, 0.374742, 0.603324,
		-0.004168, 0.851638, -0.524113,
		-0.710221, 0.366443, 0.601087,
		40.807735, 53.418785, 48.947422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.480488, 53.937305, 48.671417>,  <41.304890, 53.162277, 48.526661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.480488, 53.937305, 48.671417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.252411, 53.764145, 48.950695>,  <41.115566, 53.660248, 49.118263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.252411, 53.764145, 48.950695>,  <41.480488, 53.937305, 48.671417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.252411, 53.764145, 48.950695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589603, 0.376175, 0.714745,
		-0.572056, 0.819202, 0.040745,
		-0.570194, -0.432897, 0.698197,
		41.081352, 53.634277, 49.160152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.097126, 54.293362, 48.806408>,  <41.480488, 53.937305, 48.671417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.097126, 54.293362, 48.806408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.374809, 54.182846, 49.072262>,  <42.541420, 54.116535, 49.231773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.374809, 54.182846, 49.072262>,  <42.097126, 54.293362, 48.806408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.374809, 54.182846, 49.072262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716853, 0.348474, -0.603894,
		-0.064754, 0.895672, 0.439976,
		0.694211, -0.276294, 0.664630,
		42.583073, 54.099957, 49.271652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.665165, 54.756615, 48.886551>,  <42.097126, 54.293362, 48.806408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.665165, 54.756615, 48.886551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.831593, 54.403740, 48.974762>,  <42.931450, 54.192017, 49.027687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.831593, 54.403740, 48.974762>,  <42.665165, 54.756615, 48.886551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.831593, 54.403740, 48.974762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686092, 0.145393, -0.712838,
		0.596794, 0.447891, 0.665755,
		0.416070, -0.882188, 0.220525,
		42.956413, 54.139084, 49.040920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.299545, 54.944263, 49.079288>,  <42.665165, 54.756615, 48.886551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.299545, 54.944263, 49.079288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.290184, 54.583759, 48.906235>,  <43.284569, 54.367455, 48.802402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.290184, 54.583759, 48.906235>,  <43.299545, 54.944263, 49.079288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.290184, 54.583759, 48.906235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749392, 0.270627, -0.604296,
		0.661713, -0.338356, 0.669067,
		-0.023399, -0.901264, -0.432639,
		43.283165, 54.313381, 48.776443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.913429, 54.589355, 49.329998>,  <43.299545, 54.944263, 49.079288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.913429, 54.589355, 49.329998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.790447, 54.427139, 48.985668>,  <43.716660, 54.329811, 48.779072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.790447, 54.427139, 48.985668>,  <43.913429, 54.589355, 49.329998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.790447, 54.427139, 48.985668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939935, 0.011568, -0.341157,
		0.148310, -0.914005, 0.377622,
		-0.307450, -0.405537, -0.860821,
		43.698212, 54.305477, 48.727421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.293289, 53.982285, 49.261631>,  <43.913429, 54.589355, 49.329998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.293289, 53.982285, 49.261631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.168140, 54.180832, 48.937721>,  <44.093052, 54.299961, 48.743374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.168140, 54.180832, 48.937721>,  <44.293289, 53.982285, 49.261631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.168140, 54.180832, 48.937721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904338, -0.104923, -0.413719,
		-0.290319, -0.861750, -0.416054,
		-0.312869, 0.496364, -0.809775,
		44.074280, 54.329742, 48.694790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.407337, 53.557625, 48.715916>,  <44.293289, 53.982285, 49.261631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.407337, 53.557625, 48.715916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.422203, 53.926876, 48.562836>,  <44.431122, 54.148426, 48.470989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.422203, 53.926876, 48.562836>,  <44.407337, 53.557625, 48.715916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.422203, 53.926876, 48.562836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751602, -0.278206, -0.598078,
		-0.658570, -0.265411, -0.704161,
		0.037165, 0.923124, -0.382701,
		44.433353, 54.203812, 48.448025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.468380, 53.742920, 47.948071>,  <44.407337, 53.557625, 48.715916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.468380, 53.742920, 47.948071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.650097, 54.062531, 48.105637>,  <44.759129, 54.254299, 48.200176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.650097, 54.062531, 48.105637>,  <44.468380, 53.742920, 47.948071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.650097, 54.062531, 48.105637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864402, -0.288426, -0.411848,
		-0.215463, 0.527602, -0.821713,
		0.454295, 0.799028, 0.393915,
		44.786385, 54.302238, 48.223812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.807869, 54.143661, 47.373489>,  <44.468380, 53.742920, 47.948071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.807869, 54.143661, 47.373489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.984608, 54.180717, 47.730408>,  <45.090652, 54.202950, 47.944557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.984608, 54.180717, 47.730408>,  <44.807869, 54.143661, 47.373489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.984608, 54.180717, 47.730408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862898, -0.315880, -0.394495,
		0.245312, 0.944266, -0.219508,
		0.441847, 0.092638, 0.892295,
		45.117161, 54.208508, 47.998096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.507309, 54.444286, 47.342236>,  <44.807869, 54.143661, 47.373489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.507309, 54.444286, 47.342236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.523933, 54.218555, 47.672035>,  <45.533909, 54.083115, 47.869915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.523933, 54.218555, 47.672035>,  <45.507309, 54.444286, 47.342236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.523933, 54.218555, 47.672035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903954, -0.330283, -0.271627,
		0.425606, 0.756601, 0.496402,
		0.041560, -0.564330, 0.824502,
		45.536400, 54.049255, 47.919384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.087303, 54.607204, 47.757244>,  <45.507309, 54.444286, 47.342236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.087303, 54.607204, 47.757244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.985470, 54.221684, 47.788918>,  <45.924370, 53.990372, 47.807922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.985470, 54.221684, 47.788918>,  <46.087303, 54.607204, 47.757244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.985470, 54.221684, 47.788918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966767, -0.251675, 0.044947,
		-0.023392, 0.087992, 0.995846,
		-0.254585, -0.963803, 0.079181,
		45.909096, 53.932541, 47.812672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.269470, 54.277809, 48.440155>,  <46.087303, 54.607204, 47.757244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.269470, 54.277809, 48.440155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.261261, 54.005936, 48.146866>,  <46.256336, 53.842812, 47.970894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.261261, 54.005936, 48.146866>,  <46.269470, 54.277809, 48.440155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.261261, 54.005936, 48.146866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964942, -0.205397, 0.163395,
		-0.261658, -0.704164, 0.660067,
		-0.020519, -0.679680, -0.733222,
		46.255104, 53.802032, 47.926899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.438160, 53.628876, 48.662354>,  <46.269470, 54.277809, 48.440155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.438160, 53.628876, 48.662354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.543072, 53.636757, 48.276436>,  <46.606018, 53.641487, 48.044888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.543072, 53.636757, 48.276436>,  <46.438160, 53.628876, 48.662354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.543072, 53.636757, 48.276436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844166, -0.489087, 0.219495,
		-0.467542, -0.872012, -0.144909,
		0.262276, 0.019704, -0.964792,
		46.621754, 53.642670, 47.987000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.442078, 52.924568, 48.343697>,  <46.438160, 53.628876, 48.662354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.442078, 52.924568, 48.343697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.704605, 53.196770, 48.213364>,  <46.862122, 53.360088, 48.135162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.704605, 53.196770, 48.213364>,  <46.442078, 52.924568, 48.343697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.704605, 53.196770, 48.213364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753350, -0.567393, 0.332460,
		0.041365, -0.463664, -0.885045,
		0.656318, 0.680501, -0.325831,
		46.901501, 53.400921, 48.115616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.810829, 52.609917, 47.903774>,  <46.442078, 52.924568, 48.343697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.810829, 52.609917, 47.903774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.042072, 52.919445, 48.007301>,  <47.180820, 53.105164, 48.069420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.042072, 52.919445, 48.007301>,  <46.810829, 52.609917, 47.903774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.042072, 52.919445, 48.007301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711102, -0.633358, 0.305271,
		0.400151, 0.007567, -0.916418,
		0.578111, 0.773822, 0.258820,
		47.215504, 53.151592, 48.084946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.649467, 51.846642, 47.636200>,  <46.810829, 52.609917, 47.903774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.649467, 51.846642, 47.636200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.293385, 51.664864, 47.623466>,  <46.079735, 51.555798, 47.615826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.293385, 51.664864, 47.623466>,  <46.649467, 51.846642, 47.636200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.293385, 51.664864, 47.623466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419672, -0.845261, 0.330772,
		-0.177224, 0.281096, 0.943174,
		-0.890206, -0.454444, -0.031833,
		46.026321, 51.528530, 47.613918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.016998, 51.821724, 48.176647>,  <46.649467, 51.846642, 47.636200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.016998, 51.821724, 48.176647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.924541, 51.435902, 48.125740>,  <46.869068, 51.204407, 48.095196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.924541, 51.435902, 48.125740>,  <47.016998, 51.821724, 48.176647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.924541, 51.435902, 48.125740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814271, -0.263384, 0.517292,
		-0.532480, 0.015935, 0.846292,
		-0.231143, -0.964560, -0.127271,
		46.855198, 51.146534, 48.087559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.899830, 51.387398, 48.840050>,  <47.016998, 51.821724, 48.176647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.899830, 51.387398, 48.840050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.070526, 51.195438, 48.533432>,  <47.172943, 51.080261, 48.349461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.070526, 51.195438, 48.533432>,  <46.899830, 51.387398, 48.840050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.070526, 51.195438, 48.533432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829706, -0.129496, 0.542972,
		-0.359836, -0.867714, 0.342915,
		0.426738, -0.479899, -0.766545,
		47.198547, 51.051468, 48.303467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.150307, 50.724407, 49.082355>,  <46.899830, 51.387398, 48.840050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.150307, 50.724407, 49.082355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.367710, 50.855080, 48.773064>,  <47.498150, 50.933483, 48.587490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.367710, 50.855080, 48.773064>,  <47.150307, 50.724407, 49.082355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.367710, 50.855080, 48.773064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823360, -0.028230, 0.566817,
		0.163341, -0.944713, -0.284320,
		0.543506, 0.326682, -0.773227,
		47.530762, 50.953083, 48.541096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.781769, 50.238861, 48.883408>,  <47.150307, 50.724407, 49.082355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.781769, 50.238861, 48.883408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.865887, 50.610481, 48.761658>,  <47.916359, 50.833454, 48.688610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.865887, 50.610481, 48.761658>,  <47.781769, 50.238861, 48.883408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.865887, 50.610481, 48.761658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807476, 0.010454, 0.589808,
		0.551143, -0.369806, -0.747987,
		0.210295, 0.929050, -0.304371,
		47.928974, 50.889194, 48.670345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.535347, 50.354630, 48.695728>,  <47.781769, 50.238861, 48.883408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.535347, 50.354630, 48.695728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.400501, 50.712471, 48.813057>,  <48.319595, 50.927177, 48.883453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.400501, 50.712471, 48.813057>,  <48.535347, 50.354630, 48.695728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.400501, 50.712471, 48.813057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898569, 0.212765, 0.383803,
		0.280944, 0.392953, -0.875590,
		-0.337112, 0.894606, 0.293320,
		48.299366, 50.980854, 48.901054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.014740, 50.881435, 48.521942>,  <48.535347, 50.354630, 48.695728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.014740, 50.881435, 48.521942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.846500, 51.005081, 48.863125>,  <48.745556, 51.079269, 49.067837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.846500, 51.005081, 48.863125>,  <49.014740, 50.881435, 48.521942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.846500, 51.005081, 48.863125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903873, 0.223754, 0.364620,
		-0.078145, 0.924329, -0.373509,
		-0.420603, 0.309111, 0.852961,
		48.720318, 51.097813, 49.119015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.324482, 51.524323, 48.715187>,  <49.014740, 50.881435, 48.521942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.324482, 51.524323, 48.715187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.159618, 51.387577, 49.053005>,  <49.060699, 51.305531, 49.255695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.159618, 51.387577, 49.053005>,  <49.324482, 51.524323, 48.715187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.159618, 51.387577, 49.053005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886575, 0.063177, 0.458250,
		-0.210015, 0.937623, 0.277049,
		-0.412163, -0.341865, 0.844542,
		49.035969, 51.285019, 49.306366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.529861, 51.970032, 49.228390>,  <49.324482, 51.524323, 48.715187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.529861, 51.970032, 49.228390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.446781, 51.605972, 49.371773>,  <49.396935, 51.387535, 49.457802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.446781, 51.605972, 49.371773>,  <49.529861, 51.970032, 49.228390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.446781, 51.605972, 49.371773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904559, -0.039224, 0.424540,
		-0.372334, 0.412423, 0.831429,
		-0.207702, -0.910148, 0.358456,
		49.384472, 51.332928, 49.479309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.656780, 51.948917, 49.973785>,  <49.529861, 51.970032, 49.228390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.656780, 51.948917, 49.973785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.720821, 51.605789, 49.778435>,  <49.759247, 51.399914, 49.661224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.720821, 51.605789, 49.778435>,  <49.656780, 51.948917, 49.973785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.720821, 51.605789, 49.778435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949316, -0.001771, 0.314319,
		-0.270494, -0.513950, 0.814057,
		0.160103, -0.857818, -0.488380,
		49.768852, 51.348442, 49.631920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.863579, 51.345085, 50.426109>,  <49.656780, 51.948917, 49.973785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.863579, 51.345085, 50.426109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.006683, 51.278339, 50.058594>,  <50.092545, 51.238293, 49.838085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.006683, 51.278339, 50.058594>,  <49.863579, 51.345085, 50.426109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.006683, 51.278339, 50.058594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886715, -0.247825, 0.390281,
		-0.292822, -0.954326, 0.059301,
		0.357759, -0.166866, -0.918784,
		50.114010, 51.228279, 49.782959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.302628, 50.726944, 50.409912>,  <49.863579, 51.345085, 50.426109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.302628, 50.726944, 50.409912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.409592, 50.988632, 50.126934>,  <50.473770, 51.145645, 49.957146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.409592, 50.988632, 50.126934>,  <50.302628, 50.726944, 50.409912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.409592, 50.988632, 50.126934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960443, -0.121747, 0.250454,
		0.077724, -0.746436, -0.660902,
		0.267411, 0.654225, -0.707447,
		50.489815, 51.184898, 49.914700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.818165, 50.399780, 49.921349>,  <50.302628, 50.726944, 50.409912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.818165, 50.399780, 49.921349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.844494, 50.793819, 49.984917>,  <50.860291, 51.030243, 50.023060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.844494, 50.793819, 49.984917>,  <50.818165, 50.399780, 49.921349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.844494, 50.793819, 49.984917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907145, -0.125420, 0.401695,
		0.415639, 0.117724, -0.901879,
		0.065825, 0.985094, 0.158922,
		50.864243, 51.089348, 50.032593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.364815, 50.665569, 49.543816>,  <50.818165, 50.399780, 49.921349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.364815, 50.665569, 49.543816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.293667, 50.894150, 49.864265>,  <51.250977, 51.031300, 50.056538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.293667, 50.894150, 49.864265>,  <51.364815, 50.665569, 49.543816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.293667, 50.894150, 49.864265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935804, -0.153567, 0.317315,
		0.304358, 0.806138, -0.507452,
		-0.177872, 0.571452, 0.801126,
		51.240307, 51.065586, 50.104603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.897697, 51.047829, 49.409885>,  <51.364815, 50.665569, 49.543816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.897697, 51.047829, 49.409885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.809727, 51.021820, 49.799225>,  <51.756947, 51.006214, 50.032829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.809727, 51.021820, 49.799225>,  <51.897697, 51.047829, 49.409885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.809727, 51.021820, 49.799225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975262, -0.037470, 0.217854,
		0.022306, 0.997180, 0.071654,
		-0.219925, -0.065022, 0.973347,
		51.743748, 51.002312, 50.091228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.380466, 51.542694, 49.806679>,  <51.897697, 51.047829, 49.409885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.380466, 51.542694, 49.806679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.262363, 51.242367, 50.043015>,  <52.191502, 51.062172, 50.184814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.262363, 51.242367, 50.043015>,  <52.380466, 51.542694, 49.806679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.262363, 51.242367, 50.043015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919353, -0.054972, 0.389575,
		-0.260021, 0.658216, 0.706499,
		-0.295262, -0.750819, 0.590839,
		52.173786, 51.017120, 50.220264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.545818, 51.621304, 50.600143>,  <52.380466, 51.542694, 49.806679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.545818, 51.621304, 50.600143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.539734, 51.231400, 50.511047>,  <52.536083, 50.997456, 50.457588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.539734, 51.231400, 50.511047>,  <52.545818, 51.621304, 50.600143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.539734, 51.231400, 50.511047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920368, -0.100706, 0.377865,
		-0.390758, -0.199256, 0.898669,
		-0.015210, -0.974759, -0.222740,
		52.535172, 50.938972, 50.444225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.693626, 51.197315, 51.208359>,  <52.545818, 51.621304, 50.600143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.693626, 51.197315, 51.208359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.818790, 51.038559, 50.863209>,  <52.893890, 50.943306, 50.656116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.818790, 51.038559, 50.863209>,  <52.693626, 51.197315, 51.208359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.818790, 51.038559, 50.863209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928028, -0.065565, 0.366694,
		-0.202114, -0.915519, 0.347814,
		0.312912, -0.396895, -0.862879,
		52.912663, 50.919491, 50.604343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.026985, 50.580044, 51.291473>,  <52.693626, 51.197315, 51.208359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.026985, 50.580044, 51.291473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.164822, 50.688301, 50.931915>,  <53.247524, 50.753254, 50.716179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.164822, 50.688301, 50.931915>,  <53.026985, 50.580044, 51.291473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.164822, 50.688301, 50.931915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938753, -0.098539, 0.330200,
		0.000790, -0.957624, -0.288020,
		0.344589, 0.270641, -0.898895,
		53.268200, 50.769493, 50.662247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.752850, 50.266590, 51.285069>,  <53.026985, 50.580044, 51.291473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.752850, 50.266590, 51.285069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.673485, 50.607235, 51.091000>,  <53.625866, 50.811623, 50.974556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.673485, 50.607235, 51.091000>,  <53.752850, 50.266590, 51.285069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.673485, 50.607235, 51.091000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950137, 0.288624, 0.118049,
		0.240565, -0.437561, -0.866411,
		-0.198413, 0.851608, -0.485176,
		53.613960, 50.862717, 50.945446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.065853, 50.254433, 50.638496>,  <53.752850, 50.266590, 51.285069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.065853, 50.254433, 50.638496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.029518, 50.621422, 50.793411>,  <54.007717, 50.841614, 50.886360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.029518, 50.621422, 50.793411>,  <54.065853, 50.254433, 50.638496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.029518, 50.621422, 50.793411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994481, 0.104067, -0.013282,
		-0.052490, 0.383942, -0.921864,
		-0.090837, 0.917474, 0.387286,
		54.002266, 50.896664, 50.909595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.624866, 50.753368, 50.498196>,  <54.065853, 50.254433, 50.638496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.624866, 50.753368, 50.498196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.498627, 51.027443, 50.760773>,  <54.422882, 51.191887, 50.918320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.498627, 51.027443, 50.760773>,  <54.624866, 50.753368, 50.498196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.498627, 51.027443, 50.760773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869371, 0.486018, -0.089337,
		-0.380254, 0.542495, -0.749070,
		-0.315597, 0.685190, 0.656440,
		54.403946, 51.233002, 50.957706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.614677, 51.525009, 50.175205>,  <54.624866, 50.753368, 50.498196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.614677, 51.525009, 50.175205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.685669, 51.524719, 50.568855>,  <54.728264, 51.524544, 50.805046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.685669, 51.524719, 50.568855>,  <54.614677, 51.525009, 50.175205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.685669, 51.524719, 50.568855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905242, 0.392403, -0.162961,
		-0.386055, 0.919793, 0.070302,
		0.177477, -0.000729, 0.984125,
		54.738911, 51.524502, 50.864094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.717098, 52.208580, 50.553013>,  <54.614677, 51.525009, 50.175205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.717098, 52.208580, 50.553013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.929665, 51.890308, 50.669281>,  <55.057205, 51.699345, 50.739040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.929665, 51.890308, 50.669281>,  <54.717098, 52.208580, 50.553013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.929665, 51.890308, 50.669281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823343, 0.404437, -0.398167,
		0.199259, 0.450910, 0.870044,
		0.531415, -0.795683, 0.290666,
		55.089088, 51.651604, 50.756481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.338150, 52.312614, 50.848656>,  <54.717098, 52.208580, 50.553013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.338150, 52.312614, 50.848656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.433105, 51.985603, 50.638783>,  <55.490078, 51.789398, 50.512859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.433105, 51.985603, 50.638783>,  <55.338150, 52.312614, 50.848656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.433105, 51.985603, 50.638783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853564, 0.433407, -0.289114,
		0.463761, -0.379222, 0.800697,
		0.237390, -0.817526, -0.524688,
		55.504322, 51.740345, 50.481377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.880337, 51.909801, 51.071465>,  <55.338150, 52.312614, 50.848656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.880337, 51.909801, 51.071465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.866432, 51.846302, 50.676781>,  <55.858089, 51.808205, 50.439972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.866432, 51.846302, 50.676781>,  <55.880337, 51.909801, 51.071465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.866432, 51.846302, 50.676781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908791, 0.405747, -0.097298,
		0.415800, -0.900094, 0.130161,
		-0.034765, -0.158746, -0.986707,
		55.856003, 51.798679, 50.380768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.414459, 51.488159, 50.671143>,  <55.880337, 51.909801, 51.071465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.414459, 51.488159, 50.671143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.269012, 51.760860, 50.417213>,  <56.181744, 51.924480, 50.264854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.269012, 51.760860, 50.417213>,  <56.414459, 51.488159, 50.671143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.269012, 51.760860, 50.417213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930574, 0.296983, -0.214086,
		0.042578, -0.668594, -0.742408,
		-0.363619, 0.681750, -0.634821,
		56.159927, 51.965385, 50.226768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.601349, 50.900280, 51.077492>,  <56.414459, 51.488159, 50.671143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.601349, 50.900280, 51.077492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.679703, 51.275566, 51.191601>,  <56.726715, 51.500736, 51.260067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.679703, 51.275566, 51.191601>,  <56.601349, 50.900280, 51.077492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.679703, 51.275566, 51.191601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606913, -0.112508, 0.786765,
		0.770249, -0.327256, 0.547375,
		0.195889, 0.938214, 0.285275,
		56.738468, 51.557030, 51.277184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.320816, 51.044136, 50.988247>,  <56.601349, 50.900280, 51.077492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.320816, 51.044136, 50.988247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.652092, 51.221237, 51.125690>,  <57.850857, 51.327499, 51.208157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.652092, 51.221237, 51.125690>,  <57.320816, 51.044136, 50.988247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.652092, 51.221237, 51.125690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205663, -0.330233, 0.921221,
		0.521346, -0.833616, -0.182438,
		0.828192, 0.442754, 0.343610,
		57.900551, 51.354065, 51.228775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.659710, 50.578690, 51.518555>,  <57.320816, 51.044136, 50.988247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.659710, 50.578690, 51.518555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.788109, 50.955307, 51.559467>,  <57.865147, 51.181278, 51.584015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.788109, 50.955307, 51.559467>,  <57.659710, 50.578690, 51.518555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.788109, 50.955307, 51.559467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146935, -0.057180, 0.987492,
		0.935614, -0.332007, 0.119991,
		0.320993, 0.941542, 0.102282,
		57.884407, 51.237770, 51.590153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.300018, 50.735432, 51.936142>,  <57.659710, 50.578690, 51.518555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.300018, 50.735432, 51.936142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.055458, 51.051949, 51.938751>,  <57.908722, 51.241859, 51.940319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.055458, 51.051949, 51.938751>,  <58.300018, 50.735432, 51.936142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.055458, 51.051949, 51.938751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082743, -0.072130, 0.993957,
		0.786981, 0.607170, 0.109574,
		-0.611404, 0.791292, 0.006526,
		57.872036, 51.289337, 51.940708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.402615, 51.017876, 52.623890>,  <58.300018, 50.735432, 51.936142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.402615, 51.017876, 52.623890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.437157, 50.647198, 52.477592>,  <58.457882, 50.424789, 52.389812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.437157, 50.647198, 52.477592>,  <58.402615, 51.017876, 52.623890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.437157, 50.647198, 52.477592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029248, -0.369318, 0.928843,
		-0.995835, -0.069514, -0.058997,
		0.086356, -0.926700, -0.365746,
		58.463062, 50.369186, 52.367870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.119747, 50.717888, 52.637627>,  <58.402615, 51.017876, 52.623890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.119747, 50.717888, 52.637627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.934738, 50.593487, 52.969734>,  <58.823734, 50.518845, 53.168999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.934738, 50.593487, 52.969734>,  <59.119747, 50.717888, 52.637627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.934738, 50.593487, 52.969734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858037, 0.078802, 0.507507,
		-0.223264, 0.947136, 0.230405,
		-0.462522, -0.311004, 0.830271,
		58.795982, 50.500187, 53.218815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.421436, 51.214622, 53.146355>,  <59.119747, 50.717888, 52.637627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.421436, 51.214622, 53.146355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.245506, 50.883148, 53.284828>,  <59.139950, 50.684265, 53.367912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.245506, 50.883148, 53.284828>,  <59.421436, 51.214622, 53.146355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.245506, 50.883148, 53.284828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789283, -0.172761, 0.589224,
		-0.428472, 0.532391, 0.730049,
		-0.439822, -0.828682, 0.346184,
		59.113560, 50.634544, 53.388683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.345905, 51.069492, 53.849083>,  <59.421436, 51.214622, 53.146355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.345905, 51.069492, 53.849083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.367165, 50.696472, 53.706238>,  <59.379921, 50.472660, 53.620529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.367165, 50.696472, 53.706238>,  <59.345905, 51.069492, 53.849083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.367165, 50.696472, 53.706238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865224, -0.135544, 0.482716,
		-0.498560, -0.334640, 0.799659,
		0.053147, -0.932547, -0.357116,
		59.383110, 50.416710, 53.599102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.486919, 50.443687, 54.368885>,  <59.345905, 51.069492, 53.849083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.486919, 50.443687, 54.368885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.678024, 50.455910, 54.017700>,  <59.792686, 50.463242, 53.806992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.678024, 50.455910, 54.017700>,  <59.486919, 50.443687, 54.368885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.678024, 50.455910, 54.017700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873787, -0.119816, 0.471318,
		-0.090791, -0.992325, -0.083945,
		0.477759, 0.030558, -0.877960,
		59.821350, 50.465076, 53.754311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.071548, 50.769310, 54.796474>,  <59.486919, 50.443687, 54.368885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.071548, 50.769310, 54.796474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.191101, 50.416237, 54.651402>,  <60.262833, 50.204391, 54.564358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.191101, 50.416237, 54.651402>,  <60.071548, 50.769310, 54.796474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.191101, 50.416237, 54.651402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898297, 0.388502, -0.205252,
		0.322077, -0.264453, 0.909028,
		0.298880, -0.882684, -0.362685,
		60.280766, 50.151432, 54.542595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.725742, 50.524326, 55.165558>,  <60.071548, 50.769310, 54.796474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.725742, 50.524326, 55.165558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.656044, 50.407310, 54.789459>,  <60.614223, 50.337101, 54.563801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.656044, 50.407310, 54.789459>,  <60.725742, 50.524326, 55.165558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.656044, 50.407310, 54.789459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837804, 0.457691, -0.297663,
		0.517419, -0.839607, 0.165339,
		-0.174245, -0.292538, -0.940245,
		60.603771, 50.319550, 54.507385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.339481, 50.088322, 54.771545>,  <60.725742, 50.524326, 55.165558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.339481, 50.088322, 54.771545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.099037, 50.330307, 54.562668>,  <60.954769, 50.475498, 54.437340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.099037, 50.330307, 54.562668>,  <61.339481, 50.088322, 54.771545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.099037, 50.330307, 54.562668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790482, 0.546151, -0.277232,
		0.117483, -0.579433, -0.806508,
		-0.601112, 0.604960, -0.522195,
		60.918705, 50.511795, 54.406010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.649029, 50.291710, 54.078434>,  <61.339481, 50.088322, 54.771545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.649029, 50.291710, 54.078434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.373650, 50.566223, 54.172283>,  <61.208420, 50.730930, 54.228592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.373650, 50.566223, 54.172283>,  <61.649029, 50.291710, 54.078434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.373650, 50.566223, 54.172283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609236, 0.722726, -0.326342,
		-0.393534, -0.081727, -0.915670,
		-0.688450, 0.686286, 0.234626,
		61.167114, 50.772110, 54.242672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.282539, 50.608582, 54.396603>,  <61.649029, 50.291710, 54.078434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.282539, 50.608582, 54.396603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.655426, 50.675014, 54.525223>,  <62.879158, 50.714874, 54.602394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.655426, 50.675014, 54.525223>,  <62.282539, 50.608582, 54.396603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.655426, 50.675014, 54.525223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356907, -0.569090, -0.740779,
		0.059966, 0.805329, -0.589788,
		0.932213, 0.166078, 0.321554,
		62.935089, 50.724838, 54.621689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.946045, 50.304081, 54.134960>,  <62.282539, 50.608582, 54.396603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.946045, 50.304081, 54.134960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.982872, 50.702248, 54.145287>,  <63.004971, 50.941147, 54.151482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.982872, 50.702248, 54.145287>,  <62.946045, 50.304081, 54.134960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.982872, 50.702248, 54.145287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973072, -0.095446, 0.209811,
		0.211314, 0.005806, -0.977401,
		0.092071, 0.995418, 0.025819,
		63.010494, 51.000874, 54.153030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.681969, 50.458813, 53.861774>,  <62.946045, 50.304081, 54.134960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.681969, 50.458813, 53.861774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.549850, 50.788010, 54.046638>,  <63.470581, 50.985527, 54.157558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.549850, 50.788010, 54.046638>,  <63.681969, 50.458813, 53.861774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.549850, 50.788010, 54.046638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943504, 0.274118, 0.186169,
		0.026528, 0.497544, -0.867033,
		-0.330297, 0.822988, 0.462163,
		63.450760, 51.034904, 54.185287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.850761, 51.114647, 53.616898>,  <63.681969, 50.458813, 53.861774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.850761, 51.114647, 53.616898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.808319, 51.228790, 53.997910>,  <63.782852, 51.297276, 54.226517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.808319, 51.228790, 53.997910>,  <63.850761, 51.114647, 53.616898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.808319, 51.228790, 53.997910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959924, 0.279292, 0.023259,
		-0.259396, 0.916823, -0.303561,
		-0.106107, 0.285362, 0.952528,
		63.776485, 51.314400, 54.283669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.979008, 51.877174, 53.726082>,  <63.850761, 51.114647, 53.616898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.979008, 51.877174, 53.726082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.084244, 51.620811, 54.014534>,  <64.147385, 51.466995, 54.187603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.084244, 51.620811, 54.014534>,  <63.979008, 51.877174, 53.726082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.084244, 51.620811, 54.014534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874584, 0.473986, 0.102175,
		-0.407288, 0.603804, 0.685228,
		0.263095, -0.640905, 0.721126,
		64.163170, 51.428539, 54.230873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.245575, 52.230404, 54.354546>,  <63.979008, 51.877174, 53.726082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.245575, 52.230404, 54.354546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.429688, 51.875305, 54.357334>,  <64.540154, 51.662247, 54.359009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.429688, 51.875305, 54.357334>,  <64.245575, 52.230404, 54.354546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.429688, 51.875305, 54.357334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882911, 0.456930, -0.108090,
		0.092771, 0.055907, 0.994117,
		0.460285, -0.887744, 0.006971,
		64.567772, 51.608982, 54.359425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.777786, 52.190697, 54.925156>,  <64.245575, 52.230404, 54.354546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.777786, 52.190697, 54.925156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.787636, 52.040577, 54.554523>,  <64.793549, 51.950504, 54.332146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.787636, 52.040577, 54.554523>,  <64.777786, 52.190697, 54.925156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.787636, 52.040577, 54.554523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898873, 0.413950, -0.143778,
		0.437516, -0.829335, 0.347540,
		0.024624, -0.375300, -0.926576,
		64.795021, 51.927986, 54.276550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.301971, 51.735413, 54.677441>,  <64.777786, 52.190697, 54.925156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.301971, 51.735413, 54.677441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.162529, 51.990822, 54.402992>,  <65.078865, 52.144066, 54.238323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.162529, 51.990822, 54.402992>,  <65.301971, 51.735413, 54.677441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.162529, 51.990822, 54.402992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875863, 0.482542, 0.004061,
		0.333677, -0.599535, -0.727473,
		-0.348602, 0.638522, -0.686124,
		65.057945, 52.182377, 54.197155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.779289, 51.733997, 53.992229>,  <65.301971, 51.735413, 54.677441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.779289, 51.733997, 53.992229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.592682, 52.067665, 54.109894>,  <65.480721, 52.267864, 54.180492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.592682, 52.067665, 54.109894>,  <65.779289, 51.733997, 53.992229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.592682, 52.067665, 54.109894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866418, 0.497886, -0.037818,
		-0.178003, 0.237221, -0.955008,
		-0.466514, 0.834168, 0.294158,
		65.452728, 52.317917, 54.198139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.346336, 52.086067, 54.268192>,  <65.779289, 51.733997, 53.992229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.346336, 52.086067, 54.268192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.066528, 52.370060, 54.300674>,  <65.898643, 52.540455, 54.320164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.066528, 52.370060, 54.300674>,  <66.346336, 52.086067, 54.268192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.066528, 52.370060, 54.300674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612797, 0.537516, 0.579272,
		0.367627, 0.454973, -0.811080,
		-0.699522, 0.709983, 0.081201,
		65.856674, 52.583054, 54.325035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.624565, 52.698219, 54.109222>,  <66.346336, 52.086067, 54.268192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.624565, 52.698219, 54.109222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.309883, 52.754692, 54.349613>,  <66.121078, 52.788574, 54.493847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.309883, 52.754692, 54.349613>,  <66.624565, 52.698219, 54.109222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.309883, 52.754692, 54.349613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568787, 0.544192, 0.616714,
		-0.239980, 0.826996, -0.508417,
		-0.786696, 0.141182, 0.600980,
		66.073875, 52.797047, 54.529907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.535431, 53.394333, 54.327641>,  <66.624565, 52.698219, 54.109222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.535431, 53.394333, 54.327641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.402130, 53.187340, 54.642891>,  <66.322151, 53.063145, 54.832043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.402130, 53.187340, 54.642891>,  <66.535431, 53.394333, 54.327641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.402130, 53.187340, 54.642891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446299, 0.649746, 0.615343,
		-0.830515, 0.556810, 0.014418,
		-0.333261, -0.517486, 0.788127,
		66.302155, 53.032093, 54.879330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.290283, 53.831078, 54.837166>,  <66.535431, 53.394333, 54.327641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.290283, 53.831078, 54.837166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.422546, 53.489613, 54.998123>,  <66.501907, 53.284733, 55.094700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.422546, 53.489613, 54.998123>,  <66.290283, 53.831078, 54.837166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.422546, 53.489613, 54.998123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591919, 0.519688, 0.616082,
		-0.735045, 0.034468, 0.677141,
		0.330667, -0.853660, 0.402397,
		66.521744, 53.233513, 55.118843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.263405, 53.886513, 55.606861>,  <66.290283, 53.831078, 54.837166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.263405, 53.886513, 55.606861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.548561, 53.627838, 55.498352>,  <66.719658, 53.472633, 55.433247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.548561, 53.627838, 55.498352>,  <66.263405, 53.886513, 55.606861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.548561, 53.627838, 55.498352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653090, 0.471313, 0.592737,
		-0.255460, -0.599721, 0.758337,
		0.712891, -0.646683, -0.271270,
		66.762428, 53.433834, 55.416969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.537704, 53.483768, 56.231949>,  <66.263405, 53.886513, 55.606861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.537704, 53.483768, 56.231949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.790779, 53.558113, 55.931244>,  <66.942627, 53.602722, 55.750820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.790779, 53.558113, 55.931244>,  <66.537704, 53.483768, 56.231949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.790779, 53.558113, 55.931244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530333, 0.603410, 0.595519,
		0.564309, -0.775468, 0.283204,
		0.632694, 0.185864, -0.751766,
		66.980591, 53.613873, 55.705715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.199387, 53.353619, 56.398563>,  <66.537704, 53.483768, 56.231949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.199387, 53.353619, 56.398563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.238663, 53.650581, 56.133476>,  <67.262230, 53.828758, 55.974422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.238663, 53.650581, 56.133476>,  <67.199387, 53.353619, 56.398563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.238663, 53.650581, 56.133476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414813, 0.574793, 0.705368,
		0.904592, -0.344168, -0.251516,
		0.098195, 0.742402, -0.662719,
		67.268120, 53.873302, 55.934662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.886963, 53.603027, 56.149193>,  <67.199387, 53.353619, 56.398563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.886963, 53.603027, 56.149193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.638580, 53.916119, 56.132431>,  <67.489555, 54.103973, 56.122375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.638580, 53.916119, 56.132431>,  <67.886963, 53.603027, 56.149193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.638580, 53.916119, 56.132431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537535, 0.464125, 0.704020,
		0.570505, 0.414637, -0.708943,
		-0.620951, 0.782729, -0.041903,
		67.452293, 54.150936, 56.119862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.171104, 54.317936, 55.842243>,  <67.886963, 53.603027, 56.149193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.171104, 54.317936, 55.842243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.886002, 54.365948, 56.118668>,  <67.714943, 54.394756, 56.284523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.886002, 54.365948, 56.118668>,  <68.171104, 54.317936, 55.842243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.886002, 54.365948, 56.118668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617961, 0.573549, 0.537742,
		-0.331814, 0.810330, -0.482975,
		-0.712758, 0.120030, 0.691064,
		67.672173, 54.401958, 56.325985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.097359, 55.080460, 55.983765>,  <68.171104, 54.317936, 55.842243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.097359, 55.080460, 55.983765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.035858, 54.829105, 56.288788>,  <67.998955, 54.678291, 56.471802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.035858, 54.829105, 56.288788>,  <68.097359, 55.080460, 55.983765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.035858, 54.829105, 56.288788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588554, 0.561653, 0.581506,
		-0.793702, 0.538215, 0.283481,
		-0.153757, -0.628386, 0.762554,
		67.989731, 54.640591, 56.517555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.782883, 55.471992, 56.579662>,  <68.097359, 55.080460, 55.983765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.782883, 55.471992, 56.579662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.985512, 55.148243, 56.698524>,  <68.107086, 54.953995, 56.769840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.985512, 55.148243, 56.698524>,  <67.782883, 55.471992, 56.579662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.985512, 55.148243, 56.698524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608206, 0.579732, 0.542214,
		-0.611125, -0.093936, 0.785940,
		0.506568, -0.809375, 0.297156,
		68.137482, 54.905430, 56.787670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.979134, 55.668251, 57.259346>,  <67.782883, 55.471992, 56.579662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.979134, 55.668251, 57.259346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.227829, 55.381596, 57.132942>,  <68.377045, 55.209602, 57.057098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.227829, 55.381596, 57.132942>,  <67.979134, 55.668251, 57.259346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.227829, 55.381596, 57.132942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780333, 0.532149, 0.328478,
		-0.067235, -0.450823, 0.890077,
		0.621739, -0.716642, -0.316013,
		68.414352, 55.166603, 57.038139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.540733, 55.369061, 57.748932>,  <67.979134, 55.668251, 57.259346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.540733, 55.369061, 57.748932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.680336, 55.297531, 57.380974>,  <68.764099, 55.254612, 57.160198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.680336, 55.297531, 57.380974>,  <68.540733, 55.369061, 57.748932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.680336, 55.297531, 57.380974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904183, 0.322210, 0.280417,
		0.246254, -0.929624, 0.274148,
		0.349016, -0.178826, -0.919896,
		68.785042, 55.243885, 57.105003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.226440, 55.139473, 57.893513>,  <68.540733, 55.369061, 57.748932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.226440, 55.139473, 57.893513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.228081, 55.205791, 57.499054>,  <69.229065, 55.245583, 57.262379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.228081, 55.205791, 57.499054>,  <69.226440, 55.139473, 57.893513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.228081, 55.205791, 57.499054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849756, 0.519291, 0.090835,
		0.527160, -0.838360, -0.138763,
		0.004094, 0.165799, -0.986151,
		69.229309, 55.255531, 57.203209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.819748, 54.840607, 57.479610>,  <69.226440, 55.139473, 57.893513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.819748, 54.840607, 57.479610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.682877, 55.188671, 57.337776>,  <69.600754, 55.397511, 57.252674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.682877, 55.188671, 57.337776>,  <69.819748, 54.840607, 57.479610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.682877, 55.188671, 57.337776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911549, 0.398979, 0.099469,
		0.228028, -0.289188, -0.929717,
		-0.342172, 0.870164, -0.354587,
		69.580223, 55.449722, 57.231400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.314301, 55.020374, 57.020050>,  <69.819748, 54.840607, 57.479610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.314301, 55.020374, 57.020050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.124413, 55.353836, 57.132950>,  <70.010483, 55.553913, 57.200687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.124413, 55.353836, 57.132950>,  <70.314301, 55.020374, 57.020050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.124413, 55.353836, 57.132950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880054, 0.445136, 0.165406,
		0.012254, 0.326911, -0.944976,
		-0.474715, 0.833657, 0.282245,
		69.981995, 55.603931, 57.217625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.704887, 55.727249, 56.934937>,  <70.314301, 55.020374, 57.020050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.704887, 55.727249, 56.934937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.452049, 55.771461, 57.241722>,  <70.300346, 55.797989, 57.425793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.452049, 55.771461, 57.241722>,  <70.704887, 55.727249, 56.934937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.452049, 55.771461, 57.241722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767135, 0.228907, 0.599254,
		-0.109329, 0.967153, -0.229481,
		-0.632100, 0.110527, 0.766963,
		70.262421, 55.804619, 57.471809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.028374, 56.201920, 57.403328>,  <70.704887, 55.727249, 56.934937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.028374, 56.201920, 57.403328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.768044, 56.023998, 57.649437>,  <70.611847, 55.917244, 57.797104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.768044, 56.023998, 57.649437>,  <71.028374, 56.201920, 57.403328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.768044, 56.023998, 57.649437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530173, 0.313809, 0.787680,
		-0.543444, 0.838851, 0.031587,
		-0.650834, -0.444807, 0.615274,
		70.572792, 55.890556, 57.834019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.874092, 56.754017, 57.819073>,  <71.028374, 56.201920, 57.403328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.874092, 56.754017, 57.819073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.849403, 56.385689, 57.973099>,  <70.834587, 56.164692, 58.065514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.849403, 56.385689, 57.973099>,  <70.874092, 56.754017, 57.819073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.849403, 56.385689, 57.973099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699994, 0.235073, 0.674351,
		-0.711476, 0.311169, 0.630060,
		-0.061727, -0.920823, 0.385065,
		70.830887, 56.109444, 58.088619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.727692, 56.834656, 58.627033>,  <70.874092, 56.754017, 57.819073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.727692, 56.834656, 58.627033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.913582, 56.503944, 58.500244>,  <71.025116, 56.305519, 58.424171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.913582, 56.503944, 58.500244>,  <70.727692, 56.834656, 58.627033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.913582, 56.503944, 58.500244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655239, 0.080328, 0.751139,
		-0.595562, -0.556767, 0.579066,
		0.464725, -0.826776, -0.316975,
		71.053001, 56.255913, 58.405151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.810318, 56.398777, 59.147831>,  <70.727692, 56.834656, 58.627033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.810318, 56.398777, 59.147831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.097786, 56.317696, 58.881767>,  <71.270264, 56.269047, 58.722130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.097786, 56.317696, 58.881767>,  <70.810318, 56.398777, 59.147831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.097786, 56.317696, 58.881767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680222, 0.006447, 0.732978,
		-0.144288, -0.979219, 0.142515,
		0.718665, -0.202702, -0.665156,
		71.313385, 56.256886, 58.682220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.227791, 55.690239, 59.240292>,  <70.810318, 56.398777, 59.147831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.227791, 55.690239, 59.240292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.451729, 55.969925, 59.062454>,  <71.586090, 56.137737, 58.955753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.451729, 55.969925, 59.062454>,  <71.227791, 55.690239, 59.240292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.451729, 55.969925, 59.062454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653981, -0.043397, 0.755265,
		0.508801, -0.713589, -0.481572,
		0.559848, 0.699219, -0.444593,
		71.619682, 56.179691, 58.929077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.884727, 55.690651, 59.471073>,  <71.227791, 55.690239, 59.240292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.884727, 55.690651, 59.471073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.941933, 56.046135, 59.296837>,  <71.976257, 56.259426, 59.192295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.941933, 56.046135, 59.296837>,  <71.884727, 55.690651, 59.471073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.941933, 56.046135, 59.296837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457590, 0.330877, 0.825307,
		0.877586, -0.317358, -0.359343,
		0.143019, 0.888710, -0.435592,
		71.984840, 56.312748, 59.166161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.530655, 55.916378, 59.572216>,  <71.884727, 55.690651, 59.471073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.530655, 55.916378, 59.572216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.354889, 56.268234, 59.499382>,  <72.249428, 56.479347, 59.455681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.354889, 56.268234, 59.499382>,  <72.530655, 55.916378, 59.572216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.354889, 56.268234, 59.499382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581471, 0.433041, 0.688743,
		0.684695, 0.196764, -0.701766,
		-0.439413, 0.879636, -0.182089,
		72.223068, 56.532124, 59.444756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.084404, 56.238754, 59.421650>,  <72.530655, 55.916378, 59.572216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.084404, 56.238754, 59.421650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.807091, 56.511028, 59.516342>,  <72.640701, 56.674393, 59.573158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.807091, 56.511028, 59.516342>,  <73.084404, 56.238754, 59.421650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.807091, 56.511028, 59.516342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718343, 0.626284, 0.302906,
		0.057926, 0.380048, -0.923151,
		-0.693274, 0.680685, 0.236727,
		72.599106, 56.715233, 59.587360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.227730, 56.884674, 59.825451>,  <73.084404, 56.238754, 59.421650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.227730, 56.884674, 59.825451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.483498, 57.042862, 60.089195>,  <73.636955, 57.137775, 60.247440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.483498, 57.042862, 60.089195>,  <73.227730, 56.884674, 59.825451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.483498, 57.042862, 60.089195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303096, 0.917779, -0.256542,
		-0.706603, -0.035813, 0.706704,
		0.639411, 0.395472, 0.659360,
		73.675323, 57.161503, 60.287003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.901611, 57.432369, 60.095074>,  <73.227730, 56.884674, 59.825451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.901611, 57.432369, 60.095074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.298622, 57.481171, 60.094948>,  <73.536827, 57.510452, 60.094872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.298622, 57.481171, 60.094948>,  <72.901611, 57.432369, 60.095074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.298622, 57.481171, 60.094948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112058, 0.910586, -0.397839,
		-0.048252, 0.394902, 0.917455,
		0.992530, 0.122005, -0.000314,
		73.596382, 57.517773, 60.094852>
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
