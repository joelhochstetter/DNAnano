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
	<36.527599, 52.331795, 50.398029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550114, 52.663544, 50.175690>,  <36.563622, 52.862595, 50.042286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550114, 52.663544, 50.175690>,  <36.527599, 52.331795, 50.398029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550114, 52.663544, 50.175690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856183, 0.246293, 0.454191,
		0.513597, -0.501475, -0.696233,
		0.056288, 0.829375, -0.555850,
		36.567001, 52.912357, 50.008934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239494, 52.518250, 50.373516>,  <36.527599, 52.331795, 50.398029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239494, 52.518250, 50.373516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051636, 52.855026, 50.267258>,  <36.938923, 53.057091, 50.203503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051636, 52.855026, 50.267258>,  <37.239494, 52.518250, 50.373516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051636, 52.855026, 50.267258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733778, 0.539567, 0.412841,
		0.490922, -0.001038, -0.871203,
		-0.469644, 0.841942, -0.265647,
		36.910744, 53.107609, 50.187565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650742, 52.870388, 49.894402>,  <37.239494, 52.518250, 50.373516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650742, 52.870388, 49.894402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.428242, 53.090252, 50.143703>,  <37.294743, 53.222172, 50.293285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.428242, 53.090252, 50.143703>,  <37.650742, 52.870388, 49.894402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428242, 53.090252, 50.143703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812600, 0.516781, 0.269479,
		-0.173966, 0.656359, -0.734118,
		-0.556253, 0.549664, 0.623259,
		37.261364, 53.255150, 50.330681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818680, 53.652531, 49.874001>,  <37.650742, 52.870388, 49.894402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818680, 53.652531, 49.874001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671177, 53.570122, 50.236565>,  <37.582676, 53.520676, 50.454102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671177, 53.570122, 50.236565>,  <37.818680, 53.652531, 49.874001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671177, 53.570122, 50.236565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775084, 0.470109, 0.422187,
		-0.513088, 0.858227, -0.013677,
		-0.368762, -0.206019, 0.906406,
		37.560547, 53.508316, 50.508488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635712, 54.247047, 50.292835>,  <37.818680, 53.652531, 49.874001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635712, 54.247047, 50.292835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735897, 53.966007, 50.559254>,  <37.796009, 53.797382, 50.719105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735897, 53.966007, 50.559254>,  <37.635712, 54.247047, 50.292835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735897, 53.966007, 50.559254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733773, 0.586560, 0.342818,
		-0.631540, 0.402861, 0.662466,
		0.250468, -0.702603, 0.666044,
		37.811039, 53.755226, 50.759068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534939, 54.453171, 51.016926>,  <37.635712, 54.247047, 50.292835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534939, 54.453171, 51.016926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837093, 54.191498, 51.001785>,  <38.018387, 54.034492, 50.992699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837093, 54.191498, 51.001785>,  <37.534939, 54.453171, 51.016926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837093, 54.191498, 51.001785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623657, 0.700000, 0.347925,
		-0.201111, -0.286424, 0.936758,
		0.755385, -0.654187, -0.037853,
		38.063709, 53.995243, 50.990429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918228, 54.525593, 51.678986>,  <37.534939, 54.453171, 51.016926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918228, 54.525593, 51.678986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146309, 54.391090, 51.379173>,  <38.283157, 54.310390, 51.199284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146309, 54.391090, 51.379173>,  <37.918228, 54.525593, 51.678986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146309, 54.391090, 51.379173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761735, 0.558059, 0.329135,
		0.307611, -0.758620, 0.574344,
		0.570206, -0.336252, -0.749533,
		38.317371, 54.290215, 51.154312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605206, 54.304665, 51.916199>,  <37.918228, 54.525593, 51.678986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605206, 54.304665, 51.916199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.630268, 54.458225, 51.547699>,  <38.645306, 54.550362, 51.326599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.630268, 54.458225, 51.547699>,  <38.605206, 54.304665, 51.916199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630268, 54.458225, 51.547699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773590, 0.564528, 0.287867,
		0.630582, -0.730703, -0.261611,
		0.062659, 0.383904, -0.921245,
		38.649067, 54.573395, 51.271324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263290, 54.560776, 51.775269>,  <38.605206, 54.304665, 51.916199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263290, 54.560776, 51.775269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097027, 54.777107, 51.482765>,  <38.997269, 54.906906, 51.307262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097027, 54.777107, 51.482765>,  <39.263290, 54.560776, 51.775269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097027, 54.777107, 51.482765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660334, 0.732333, 0.166276,
		0.625447, -0.413758, -0.661529,
		-0.415661, 0.540827, -0.731254,
		38.972328, 54.939354, 51.263390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861122, 54.874374, 51.628345>,  <39.263290, 54.560776, 51.775269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861122, 54.874374, 51.628345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.583000, 55.104568, 51.456127>,  <39.416126, 55.242683, 51.352795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.583000, 55.104568, 51.456127>,  <39.861122, 54.874374, 51.628345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583000, 55.104568, 51.456127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530497, 0.815099, 0.232781,
		0.484901, -0.066550, -0.872033,
		-0.695302, 0.575487, -0.430547,
		39.374409, 55.277214, 51.326962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278393, 55.345020, 51.136814>,  <39.861122, 54.874374, 51.628345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.278393, 55.345020, 51.136814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.908939, 55.489399, 51.188362>,  <39.687267, 55.576027, 51.219292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.908939, 55.489399, 51.188362>,  <40.278393, 55.345020, 51.136814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.908939, 55.489399, 51.188362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374452, 0.921551, 0.102612,
		-0.081722, 0.143032, -0.986338,
		-0.923638, 0.360951, 0.128869,
		39.631847, 55.597683, 51.227024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739212, 55.044136, 50.670044>,  <40.278393, 55.345020, 51.136814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739212, 55.044136, 50.670044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.110355, 55.079430, 50.525101>,  <41.333042, 55.100605, 50.438137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.110355, 55.079430, 50.525101>,  <40.739212, 55.044136, 50.670044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.110355, 55.079430, 50.525101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368802, -0.361429, 0.856361,
		-0.055408, -0.928216, -0.367894,
		0.927855, 0.088230, -0.362354,
		41.388710, 55.105900, 50.416393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.203018, 54.365074, 50.739349>,  <40.739212, 55.044136, 50.670044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.203018, 54.365074, 50.739349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.447731, 54.680981, 50.757172>,  <41.594559, 54.870525, 50.767864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.447731, 54.680981, 50.757172>,  <41.203018, 54.365074, 50.739349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.447731, 54.680981, 50.757172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531218, -0.451930, 0.716636,
		0.586111, -0.414760, -0.696023,
		0.611786, 0.789768, 0.044553,
		41.631268, 54.917912, 50.770538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.948105, 54.188576, 50.656189>,  <41.203018, 54.365074, 50.739349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.948105, 54.188576, 50.656189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.931068, 54.491657, 50.916672>,  <41.920845, 54.673508, 51.072960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.931068, 54.491657, 50.916672>,  <41.948105, 54.188576, 50.656189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.931068, 54.491657, 50.916672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602766, -0.500321, 0.621572,
		0.796780, 0.419000, -0.435409,
		-0.042595, 0.757706, 0.651205,
		41.918289, 54.718967, 51.112034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.576019, 54.526470, 51.105213>,  <41.948105, 54.188576, 50.656189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.576019, 54.526470, 51.105213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246944, 54.523441, 51.332588>,  <42.049500, 54.521622, 51.469013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246944, 54.523441, 51.332588>,  <42.576019, 54.526470, 51.105213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.246944, 54.523441, 51.332588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465153, -0.583816, 0.665425,
		0.326822, 0.811850, 0.483825,
		-0.822691, -0.007577, 0.568439,
		42.000137, 54.521168, 51.503120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.742229, 54.806465, 51.826607>,  <42.576019, 54.526470, 51.105213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.742229, 54.806465, 51.826607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.480206, 54.504875, 51.806976>,  <42.322990, 54.323921, 51.795197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.480206, 54.504875, 51.806976>,  <42.742229, 54.806465, 51.826607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.480206, 54.504875, 51.806976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609704, -0.565849, 0.555046,
		-0.446264, 0.333667, 0.830370,
		-0.655065, -0.753977, -0.049080,
		42.283688, 54.278683, 51.792252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.048550, 54.413132, 52.300007>,  <42.742229, 54.806465, 51.826607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.048550, 54.413132, 52.300007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.734276, 54.217789, 52.148109>,  <42.545712, 54.100582, 52.056973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.734276, 54.217789, 52.148109>,  <43.048550, 54.413132, 52.300007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.734276, 54.217789, 52.148109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311491, -0.842655, 0.439211,
		-0.534484, 0.226795, 0.814181,
		-0.785684, -0.488362, -0.379741,
		42.498569, 54.071281, 52.034187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.604431, 54.149822, 52.804592>,  <43.048550, 54.413132, 52.300007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.604431, 54.149822, 52.804592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832901, 53.847618, 52.932941>,  <43.969982, 53.666294, 53.009949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832901, 53.847618, 52.932941>,  <43.604431, 54.149822, 52.804592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.832901, 53.847618, 52.932941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520374, 0.030972, -0.853377,
		0.634800, 0.654400, 0.410840,
		0.571174, -0.755514, 0.320872,
		44.004253, 53.620964, 53.029202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.275700, 54.397388, 52.594383>,  <43.604431, 54.149822, 52.804592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.275700, 54.397388, 52.594383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.296234, 54.009995, 52.691875>,  <44.308556, 53.777557, 52.750370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.296234, 54.009995, 52.691875>,  <44.275700, 54.397388, 52.594383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.296234, 54.009995, 52.691875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669674, -0.147663, -0.727827,
		0.740879, 0.200584, 0.640988,
		0.051340, -0.968484, 0.243726,
		44.311638, 53.719448, 52.764992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.018032, 54.106720, 52.823944>,  <44.275700, 54.397388, 52.594383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.018032, 54.106720, 52.823944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.759090, 53.858036, 52.647575>,  <44.603725, 53.708828, 52.541756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.759090, 53.858036, 52.647575>,  <45.018032, 54.106720, 52.823944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.759090, 53.858036, 52.647575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682401, -0.215087, -0.698617,
		0.339498, -0.753139, 0.563491,
		-0.647355, -0.621706, -0.440922,
		44.564884, 53.671524, 52.515297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.355530, 53.358284, 52.740547>,  <45.018032, 54.106720, 52.823944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.355530, 53.358284, 52.740547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.084148, 53.457989, 52.464119>,  <44.921322, 53.517811, 52.298264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.084148, 53.457989, 52.464119>,  <45.355530, 53.358284, 52.740547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.084148, 53.457989, 52.464119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663276, -0.196622, -0.722084,
		-0.315867, -0.948266, -0.031932,
		-0.678449, 0.249262, -0.691068,
		44.880615, 53.532768, 52.256798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.349037, 52.930973, 52.159676>,  <45.355530, 53.358284, 52.740547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.349037, 52.930973, 52.159676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.175499, 53.259697, 52.011940>,  <45.071377, 53.456932, 51.923298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.175499, 53.259697, 52.011940>,  <45.349037, 52.930973, 52.159676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.175499, 53.259697, 52.011940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491414, -0.127754, -0.861505,
		-0.755176, -0.555257, -0.348423,
		-0.433844, 0.821808, -0.369338,
		45.045345, 53.506241, 51.901138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.587517, 52.960754, 51.463600>,  <45.349037, 52.930973, 52.159676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.587517, 52.960754, 51.463600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.447887, 53.335350, 51.477058>,  <45.364109, 53.560108, 51.485134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.447887, 53.335350, 51.477058>,  <45.587517, 52.960754, 51.463600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.447887, 53.335350, 51.477058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546011, 0.232437, -0.804888,
		-0.761592, -0.262592, -0.592472,
		-0.349070, 0.936493, 0.033644,
		45.343166, 53.616299, 51.487152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.103161, 53.218079, 50.913700>,  <45.587517, 52.960754, 51.463600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.103161, 53.218079, 50.913700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.333073, 53.509827, 51.062103>,  <45.471020, 53.684875, 51.151146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.333073, 53.509827, 51.062103>,  <45.103161, 53.218079, 50.913700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.333073, 53.509827, 51.062103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552946, -0.011955, -0.833131,
		-0.603225, 0.684016, -0.410173,
		0.574779, 0.729369, 0.371012,
		45.505505, 53.728638, 51.173409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.258930, 53.816227, 50.426247>,  <45.103161, 53.218079, 50.913700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.258930, 53.816227, 50.426247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.559734, 53.756985, 50.683167>,  <45.740215, 53.721439, 50.837318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.559734, 53.756985, 50.683167>,  <45.258930, 53.816227, 50.426247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.559734, 53.756985, 50.683167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654347, 0.050255, -0.754523,
		0.079471, 0.987694, 0.134704,
		0.752007, -0.148106, 0.642301,
		45.785336, 53.712551, 50.875858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.850056, 54.401222, 50.368946>,  <45.258930, 53.816227, 50.426247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.850056, 54.401222, 50.368946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.960766, 54.047653, 50.519722>,  <46.027191, 53.835514, 50.610188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.960766, 54.047653, 50.519722>,  <45.850056, 54.401222, 50.368946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.960766, 54.047653, 50.519722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542358, -0.180118, -0.820612,
		0.793249, 0.431560, 0.429549,
		0.276774, -0.883919, 0.376939,
		46.043797, 53.782478, 50.632805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.598114, 54.263897, 50.553097>,  <45.850056, 54.401222, 50.368946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.598114, 54.263897, 50.553097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.421803, 53.923698, 50.438293>,  <46.316017, 53.719578, 50.369411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.421803, 53.923698, 50.438293>,  <46.598114, 54.263897, 50.553097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.421803, 53.923698, 50.438293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667101, -0.096445, -0.738697,
		0.600577, -0.517066, 0.609877,
		-0.440775, -0.850495, -0.287012,
		46.289570, 53.668549, 50.352188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.930874, 53.613361, 50.511616>,  <46.598114, 54.263897, 50.553097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.930874, 53.613361, 50.511616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.702785, 53.562649, 50.186954>,  <46.565933, 53.532219, 49.992157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.702785, 53.562649, 50.186954>,  <46.930874, 53.613361, 50.511616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.702785, 53.562649, 50.186954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820292, -0.141274, -0.554222,
		-0.044397, -0.981818, 0.184559,
		-0.570219, -0.126786, -0.811650,
		46.531719, 53.524612, 49.943459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.462894, 53.208488, 50.753704>,  <46.930874, 53.613361, 50.511616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.462894, 53.208488, 50.753704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.849415, 53.250648, 50.847649>,  <48.081326, 53.275944, 50.904015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.849415, 53.250648, 50.847649>,  <47.462894, 53.208488, 50.753704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.849415, 53.250648, 50.847649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179289, 0.930234, 0.320189,
		-0.184730, -0.351506, 0.917779,
		0.966297, 0.105399, 0.234863,
		48.139305, 53.282269, 50.918106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.453293, 53.480270, 51.455090>,  <47.462894, 53.208488, 50.753704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.453293, 53.480270, 51.455090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.788017, 53.572845, 51.256618>,  <47.988850, 53.628391, 51.137535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.788017, 53.572845, 51.256618>,  <47.453293, 53.480270, 51.455090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.788017, 53.572845, 51.256618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050484, 0.935017, 0.350990,
		0.545163, -0.268663, 0.794114,
		0.836808, 0.231437, -0.496174,
		48.039059, 53.642277, 51.107765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.972645, 53.767982, 51.930672>,  <47.453293, 53.480270, 51.455090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.972645, 53.767982, 51.930672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.022163, 53.927307, 51.567127>,  <48.051872, 54.022903, 51.349003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.022163, 53.927307, 51.567127>,  <47.972645, 53.767982, 51.930672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.022163, 53.927307, 51.567127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174026, 0.910423, 0.375292,
		0.976929, 0.111706, 0.182021,
		0.123794, 0.398310, -0.908858,
		48.059303, 54.046799, 51.294468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.182945, 54.342697, 52.121418>,  <47.972645, 53.767982, 51.930672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.182945, 54.342697, 52.121418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.095848, 54.384529, 51.733261>,  <48.043591, 54.409626, 51.500366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.095848, 54.384529, 51.733261>,  <48.182945, 54.342697, 52.121418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.095848, 54.384529, 51.733261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148921, 0.979042, 0.138924,
		0.964579, 0.174760, -0.197603,
		-0.217740, 0.104576, -0.970388,
		48.030525, 54.415901, 51.442146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.738567, 54.579594, 52.401810>,  <48.182945, 54.342697, 52.121418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.738567, 54.579594, 52.401810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.440594, 54.830620, 52.492359>,  <48.261810, 54.981236, 52.546688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.440594, 54.830620, 52.492359>,  <48.738567, 54.579594, 52.401810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.440594, 54.830620, 52.492359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134636, 0.473749, -0.870308,
		-0.653414, -0.617842, -0.437403,
		-0.744931, 0.627562, 0.226370,
		48.217113, 55.018887, 52.560268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.348885, 54.695408, 52.628719>,  <48.738567, 54.579594, 52.401810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.348885, 54.695408, 52.628719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.744297, 54.706875, 52.688019>,  <49.981544, 54.713757, 52.723598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.744297, 54.706875, 52.688019>,  <49.348885, 54.695408, 52.628719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.744297, 54.706875, 52.688019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147464, 0.394312, 0.907068,
		-0.032453, -0.918529, 0.394019,
		0.988535, 0.028667, 0.148247,
		50.040859, 54.715477, 52.732494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.471172, 54.388706, 53.310120>,  <49.348885, 54.695408, 52.628719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.471172, 54.388706, 53.310120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.773548, 54.637283, 53.227798>,  <49.954975, 54.786430, 53.178406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.773548, 54.637283, 53.227798>,  <49.471172, 54.388706, 53.310120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.773548, 54.637283, 53.227798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017272, 0.333196, 0.942699,
		0.654410, -0.709072, 0.262611,
		0.755943, 0.621448, -0.205799,
		50.000332, 54.823719, 53.166058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.697823, 54.628887, 54.021114>,  <49.471172, 54.388706, 53.310120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.697823, 54.628887, 54.021114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.852436, 54.892403, 53.762943>,  <49.945206, 55.050514, 53.608040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.852436, 54.892403, 53.762943>,  <49.697823, 54.628887, 54.021114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.852436, 54.892403, 53.762943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092190, 0.668722, 0.737775,
		0.917655, -0.344679, 0.197752,
		0.386537, 0.658792, -0.645431,
		49.968399, 55.090042, 53.569313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.364422, 54.751801, 54.252575>,  <49.697823, 54.628887, 54.021114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.364422, 54.751801, 54.252575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.173790, 55.046486, 54.060684>,  <50.059410, 55.223297, 53.945549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.173790, 55.046486, 54.060684>,  <50.364422, 54.751801, 54.252575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.173790, 55.046486, 54.060684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091243, 0.501281, 0.860460,
		0.874385, 0.453846, -0.171679,
		-0.476576, 0.736709, -0.479723,
		50.030819, 55.267498, 53.916767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.613159, 55.383858, 54.345604>,  <50.364422, 54.751801, 54.252575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.613159, 55.383858, 54.345604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.226643, 55.445660, 54.263233>,  <49.994732, 55.482738, 54.213810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.226643, 55.445660, 54.263233>,  <50.613159, 55.383858, 54.345604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.226643, 55.445660, 54.263233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054294, 0.659604, 0.749649,
		0.251654, 0.735562, -0.628982,
		-0.966293, 0.154503, -0.205929,
		49.936756, 55.492012, 54.201454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.800064, 55.532417, 54.941975>,  <50.613159, 55.383858, 54.345604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.800064, 55.532417, 54.941975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.414532, 55.637897, 54.957413>,  <50.183212, 55.701187, 54.966675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.414532, 55.637897, 54.957413>,  <50.800064, 55.532417, 54.941975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.414532, 55.637897, 54.957413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121826, -0.564730, 0.816234,
		0.237034, 0.782012, 0.576431,
		-0.963833, 0.263700, 0.038591,
		50.125381, 55.717007, 54.968990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.208958, 56.113770, 54.859627>,  <50.800064, 55.532417, 54.941975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.208958, 56.113770, 54.859627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.023960, 56.468266, 54.870110>,  <50.912964, 56.680962, 54.876400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.023960, 56.468266, 54.870110>,  <51.208958, 56.113770, 54.859627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.023960, 56.468266, 54.870110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655862, 0.322078, 0.682723,
		0.596614, 0.332939, -0.730207,
		-0.462489, 0.886237, 0.026206,
		50.885212, 56.734138, 54.877972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.689064, 56.753605, 54.772781>,  <51.208958, 56.113770, 54.859627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.689064, 56.753605, 54.772781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.376995, 56.798515, 55.018944>,  <51.189754, 56.825462, 55.166641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.376995, 56.798515, 55.018944>,  <51.689064, 56.753605, 54.772781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.376995, 56.798515, 55.018944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578156, 0.505077, 0.640806,
		-0.238877, 0.855740, -0.458963,
		-0.780175, 0.112278, 0.615403,
		51.142944, 56.832199, 55.203564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.301914, 57.350964, 54.596668>,  <51.689064, 56.753605, 54.772781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.301914, 57.350964, 54.596668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.371700, 57.165775, 54.944283>,  <51.413570, 57.054661, 55.152851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.371700, 57.165775, 54.944283>,  <51.301914, 57.350964, 54.596668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.371700, 57.165775, 54.944283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641060, 0.723310, 0.256643,
		-0.747399, 0.512328, 0.422984,
		0.174464, -0.462973, 0.869033,
		51.424038, 57.026882, 55.204994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.736179, 57.827778, 54.950787>,  <51.301914, 57.350964, 54.596668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.736179, 57.827778, 54.950787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.735516, 57.486439, 55.159325>,  <51.735119, 57.281635, 55.284447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.735516, 57.486439, 55.159325>,  <51.736179, 57.827778, 54.950787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.735516, 57.486439, 55.159325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694818, 0.373960, 0.614314,
		-0.719183, 0.363260, 0.592299,
		-0.001660, -0.853344, 0.521345,
		51.735016, 57.230434, 55.315727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.391617, 57.758743, 55.742031>,  <51.736179, 57.827778, 54.950787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.391617, 57.758743, 55.742031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.694901, 57.507675, 55.671425>,  <51.876869, 57.357033, 55.629063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.694901, 57.507675, 55.671425>,  <51.391617, 57.758743, 55.742031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.694901, 57.507675, 55.671425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488776, 0.367982, 0.791004,
		-0.431535, -0.686018, 0.585796,
		0.758205, -0.627669, -0.176512,
		51.922363, 57.319374, 55.618473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.706043, 57.614433, 56.357231>,  <51.391617, 57.758743, 55.742031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.706043, 57.614433, 56.357231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.002083, 57.512981, 56.108093>,  <52.179707, 57.452110, 55.958611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.002083, 57.512981, 56.108093>,  <51.706043, 57.614433, 56.357231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.002083, 57.512981, 56.108093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649923, 0.507720, 0.565526,
		0.172797, -0.823343, 0.540599,
		0.740096, -0.253626, -0.622842,
		52.224110, 57.436893, 55.921242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.271896, 57.378113, 56.786045>,  <51.706043, 57.614433, 56.357231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.271896, 57.378113, 56.786045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.395607, 57.480171, 56.419601>,  <52.469833, 57.541405, 56.199738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.395607, 57.480171, 56.419601>,  <52.271896, 57.378113, 56.786045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.395607, 57.480171, 56.419601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694027, 0.598030, 0.400858,
		0.650135, -0.759778, 0.007880,
		0.309275, 0.255143, -0.916106,
		52.488388, 57.556713, 56.144768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.934368, 57.220470, 56.732304>,  <52.271896, 57.378113, 56.786045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.934368, 57.220470, 56.732304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.884384, 57.512558, 56.463631>,  <52.854393, 57.687813, 56.302425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.884384, 57.512558, 56.463631>,  <52.934368, 57.220470, 56.732304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.884384, 57.512558, 56.463631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703068, 0.542848, 0.459359,
		0.700058, -0.414841, -0.581228,
		-0.124957, 0.730221, -0.671687,
		52.846897, 57.731625, 56.262123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.695831, 57.362511, 56.500923>,  <52.934368, 57.220470, 56.732304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.695831, 57.362511, 56.500923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.451324, 57.677128, 56.465805>,  <53.304623, 57.865898, 56.444736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.451324, 57.677128, 56.465805>,  <53.695831, 57.362511, 56.500923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.451324, 57.677128, 56.465805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626253, 0.548529, 0.554006,
		0.483906, 0.283665, -0.827871,
		-0.611263, 0.786543, -0.087791,
		53.267944, 57.913090, 56.439468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.417110, 57.232918, 56.753834>,  <53.695831, 57.362511, 56.500923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.417110, 57.232918, 56.753834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.556839, 57.311974, 56.387466>,  <54.640675, 57.359409, 56.167645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.556839, 57.311974, 56.387466>,  <54.417110, 57.232918, 56.753834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.556839, 57.311974, 56.387466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924818, -0.229864, 0.303109,
		-0.150631, -0.952943, -0.263078,
		0.349318, 0.197642, -0.915923,
		54.661633, 57.371265, 56.112690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.916512, 56.731098, 56.563072>,  <54.417110, 57.232918, 56.753834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.916512, 56.731098, 56.563072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.972870, 57.058498, 56.340286>,  <55.006683, 57.254940, 56.206615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.972870, 57.058498, 56.340286>,  <54.916512, 56.731098, 56.563072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.972870, 57.058498, 56.340286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984668, -0.174295, -0.007052,
		-0.102848, -0.547429, -0.830508,
		0.140893, 0.818500, -0.556962,
		55.015137, 57.304047, 56.173199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.115078, 56.554203, 55.931129>,  <54.916512, 56.731098, 56.563072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.115078, 56.554203, 55.931129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.261765, 56.917274, 56.012756>,  <55.349777, 57.135117, 56.061733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.261765, 56.917274, 56.012756>,  <55.115078, 56.554203, 55.931129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.261765, 56.917274, 56.012756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923350, -0.381923, 0.039484,
		0.113779, 0.173950, -0.978159,
		0.366713, 0.907676, 0.204071,
		55.371780, 57.189579, 56.073978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.680309, 56.758175, 55.482059>,  <55.115078, 56.554203, 55.931129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.680309, 56.758175, 55.482059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.723495, 56.946007, 55.832565>,  <55.749405, 57.058704, 56.042870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.723495, 56.946007, 55.832565>,  <55.680309, 56.758175, 55.482059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.723495, 56.946007, 55.832565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894715, -0.430139, 0.120272,
		0.433393, 0.771022, -0.466578,
		0.107961, 0.469580, 0.876264,
		55.755882, 57.086880, 56.095444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.327141, 57.268734, 55.574577>,  <55.680309, 56.758175, 55.482059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.327141, 57.268734, 55.574577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.239975, 57.056786, 55.902420>,  <56.187675, 56.929615, 56.099125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.239975, 57.056786, 55.902420>,  <56.327141, 57.268734, 55.574577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.239975, 57.056786, 55.902420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921373, -0.388629, -0.006278,
		0.321849, 0.753794, 0.572894,
		-0.217911, -0.529870, 0.819605,
		56.174603, 56.897823, 56.148300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.912708, 57.337986, 55.916256>,  <56.327141, 57.268734, 55.574577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.912708, 57.337986, 55.916256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.736153, 57.005981, 56.052643>,  <56.630219, 56.806778, 56.134476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.736153, 57.005981, 56.052643>,  <56.912708, 57.337986, 55.916256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.736153, 57.005981, 56.052643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894946, -0.434806, 0.100074,
		0.065192, 0.349318, 0.934734,
		-0.441386, -0.830012, 0.340967,
		56.603737, 56.756977, 56.154934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.956585, 57.237530, 56.721348>,  <56.912708, 57.337986, 55.916256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.956585, 57.237530, 56.721348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.943008, 56.913277, 56.487518>,  <56.934860, 56.718723, 56.347221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.943008, 56.913277, 56.487518>,  <56.956585, 57.237530, 56.721348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.943008, 56.913277, 56.487518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963975, -0.180953, 0.194956,
		-0.263817, -0.556895, 0.787571,
		-0.033943, -0.810632, -0.584571,
		56.932827, 56.670086, 56.312145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.265400, 56.669365, 57.145004>,  <56.956585, 57.237530, 56.721348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.265400, 56.669365, 57.145004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.280174, 56.577293, 56.756027>,  <57.289040, 56.522049, 56.522640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.280174, 56.577293, 56.756027>,  <57.265400, 56.669365, 57.145004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.280174, 56.577293, 56.756027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994500, -0.086974, 0.058356,
		-0.098010, -0.969253, 0.225705,
		0.036931, -0.230183, -0.972446,
		57.291252, 56.508240, 56.464294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.512794, 56.043030, 57.005726>,  <57.265400, 56.669365, 57.145004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.512794, 56.043030, 57.005726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.578133, 56.318794, 56.723442>,  <57.617336, 56.484253, 56.554070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.578133, 56.318794, 56.723442>,  <57.512794, 56.043030, 57.005726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.578133, 56.318794, 56.723442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985060, -0.074431, 0.155296,
		0.054536, -0.720537, -0.691268,
		0.163348, 0.689410, -0.705713,
		57.627136, 56.525616, 56.511726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.978035, 55.782219, 56.494682>,  <57.512794, 56.043030, 57.005726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.978035, 55.782219, 56.494682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.975426, 56.177776, 56.554070>,  <57.973858, 56.415112, 56.589703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.975426, 56.177776, 56.554070>,  <57.978035, 55.782219, 56.494682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.975426, 56.177776, 56.554070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990650, -0.013838, 0.135722,
		0.136269, 0.147961, -0.979560,
		-0.006526, 0.988896, 0.148464,
		57.973469, 56.474445, 56.598610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.417152, 56.166428, 56.056744>,  <57.978035, 55.782219, 56.494682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.417152, 56.166428, 56.056744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.380753, 56.359333, 56.405258>,  <58.358913, 56.475075, 56.614368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.380753, 56.359333, 56.405258>,  <58.417152, 56.166428, 56.056744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.380753, 56.359333, 56.405258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988714, -0.060807, 0.136923,
		0.119013, 0.873913, -0.471288,
		-0.091001, 0.482265, 0.871286,
		58.353451, 56.504013, 56.666645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.793423, 56.777390, 56.187653>,  <58.417152, 56.166428, 56.056744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.793423, 56.777390, 56.187653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.780296, 56.595142, 56.543480>,  <58.772419, 56.485794, 56.756977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.780296, 56.595142, 56.543480>,  <58.793423, 56.777390, 56.187653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.780296, 56.595142, 56.543480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992001, 0.093700, 0.084585,
		-0.121891, 0.885229, 0.448901,
		-0.032815, -0.455620, 0.889569,
		58.770451, 56.458458, 56.810352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.095657, 57.246506, 56.794945>,  <58.793423, 56.777390, 56.187653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.095657, 57.246506, 56.794945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.126366, 56.852287, 56.855347>,  <59.144791, 56.615757, 56.891590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.126366, 56.852287, 56.855347>,  <59.095657, 57.246506, 56.794945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.126366, 56.852287, 56.855347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989039, 0.094436, 0.113505,
		-0.126125, 0.140639, 0.981995,
		0.076772, -0.985547, 0.151008,
		59.149399, 56.556622, 56.900650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.437016, 56.987675, 57.451347>,  <59.095657, 57.246506, 56.794945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.437016, 56.987675, 57.451347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.500038, 56.786747, 57.111267>,  <59.537853, 56.666191, 56.907219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.500038, 56.786747, 57.111267>,  <59.437016, 56.987675, 57.451347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.500038, 56.786747, 57.111267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986477, 0.119426, 0.112250,
		0.045151, -0.856393, 0.514347,
		0.157556, -0.502323, -0.850205,
		59.547306, 56.636051, 56.856205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.930725, 56.604641, 57.651974>,  <59.437016, 56.987675, 57.451347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.930725, 56.604641, 57.651974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.955299, 56.629333, 57.253494>,  <59.970043, 56.644150, 57.014408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.955299, 56.629333, 57.253494>,  <59.930725, 56.604641, 57.651974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.955299, 56.629333, 57.253494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982572, 0.171691, 0.071234,
		0.175436, -0.983215, -0.050113,
		0.061434, 0.061736, -0.996200,
		59.973728, 56.647854, 56.954636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.508648, 56.356010, 57.562458>,  <59.930725, 56.604641, 57.651974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.508648, 56.356010, 57.562458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.436882, 56.572414, 57.233795>,  <60.393822, 56.702255, 57.036598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.436882, 56.572414, 57.233795>,  <60.508648, 56.356010, 57.562458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.436882, 56.572414, 57.233795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975995, 0.202711, -0.079641,
		0.123473, -0.816222, -0.564390,
		-0.179412, 0.541008, -0.821658,
		60.383057, 56.734718, 56.987297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.956268, 56.133770, 57.011513>,  <60.508648, 56.356010, 57.562458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.956268, 56.133770, 57.011513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.866997, 56.523521, 57.000412>,  <60.813435, 56.757374, 56.993752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.866997, 56.523521, 57.000412>,  <60.956268, 56.133770, 57.011513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.866997, 56.523521, 57.000412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974560, 0.222437, -0.027462,
		-0.020586, -0.033171, -0.999238,
		-0.223179, 0.974383, -0.027748,
		60.800045, 56.815838, 56.992088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.379768, 56.318779, 56.509373>,  <60.956268, 56.133770, 57.011513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.379768, 56.318779, 56.509373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.297508, 56.654903, 56.710007>,  <61.248154, 56.856579, 56.830387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.297508, 56.654903, 56.710007>,  <61.379768, 56.318779, 56.509373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.297508, 56.654903, 56.710007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964301, 0.261373, -0.042522,
		-0.166832, 0.474934, -0.864063,
		-0.205648, 0.840311, 0.501584,
		61.235813, 56.906998, 56.860481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.812828, 56.780849, 56.189587>,  <61.379768, 56.318779, 56.509373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.812828, 56.780849, 56.189587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.723175, 56.887798, 56.564453>,  <61.669384, 56.951969, 56.789371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.723175, 56.887798, 56.564453>,  <61.812828, 56.780849, 56.189587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.723175, 56.887798, 56.564453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974152, 0.089255, 0.207511,
		-0.028165, 0.959451, -0.280465,
		-0.224129, 0.267371, 0.937165,
		61.655937, 56.968010, 56.845604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.308762, 57.339367, 56.279728>,  <61.812828, 56.780849, 56.189587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.308762, 57.339367, 56.279728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.161423, 57.257999, 56.642593>,  <62.073021, 57.209179, 56.860313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.161423, 57.257999, 56.642593>,  <62.308762, 57.339367, 56.279728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.161423, 57.257999, 56.642593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847373, 0.327967, 0.417607,
		-0.382468, 0.922529, 0.051566,
		-0.368343, -0.203417, 0.907163,
		62.050919, 57.196976, 56.914742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.121964, 57.917351, 55.874863>,  <62.308762, 57.339367, 56.279728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.121964, 57.917351, 55.874863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.815308, 57.794540, 56.100426>,  <61.631313, 57.720856, 56.235764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.815308, 57.794540, 56.100426>,  <62.121964, 57.917351, 55.874863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.815308, 57.794540, 56.100426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484170, 0.300397, 0.821791,
		-0.421706, 0.903049, -0.081646,
		-0.766644, -0.307024, 0.563909,
		61.585316, 57.702435, 56.269600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.728134, 58.427967, 56.225613>,  <62.121964, 57.917351, 55.874863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.728134, 58.427967, 56.225613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.718681, 58.092285, 56.442932>,  <61.713009, 57.890877, 56.573326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.718681, 58.092285, 56.442932>,  <61.728134, 58.427967, 56.225613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.718681, 58.092285, 56.442932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513212, 0.456197, 0.726979,
		-0.857937, 0.296008, 0.419909,
		-0.023630, -0.839204, 0.543303,
		61.711594, 57.840523, 56.605923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.459774, 58.625557, 56.861908>,  <61.728134, 58.427967, 56.225613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.459774, 58.625557, 56.861908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.709267, 58.314686, 56.895279>,  <61.858963, 58.128162, 56.915302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.709267, 58.314686, 56.895279>,  <61.459774, 58.625557, 56.861908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.709267, 58.314686, 56.895279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443515, 0.439779, 0.780954,
		-0.643627, -0.450103, 0.618992,
		0.623730, -0.777176, 0.083426,
		61.896385, 58.081532, 56.920307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.603943, 58.548027, 57.617893>,  <61.459774, 58.625557, 56.861908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.603943, 58.548027, 57.617893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.900970, 58.370800, 57.416985>,  <62.079189, 58.264465, 57.296440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.900970, 58.370800, 57.416985>,  <61.603943, 58.548027, 57.617893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.900970, 58.370800, 57.416985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638853, 0.243347, 0.729828,
		-0.201135, -0.862829, 0.463757,
		0.742571, -0.443066, -0.502275,
		62.123741, 58.237881, 57.266300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.078529, 58.102676, 58.075729>,  <61.603943, 58.548027, 57.617893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.078529, 58.102676, 58.075729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.274017, 58.225494, 57.749077>,  <62.391308, 58.299187, 57.553085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.274017, 58.225494, 57.749077>,  <62.078529, 58.102676, 58.075729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.274017, 58.225494, 57.749077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750195, 0.329943, 0.573014,
		0.445381, -0.892671, -0.069094,
		0.488717, 0.307043, -0.816628,
		62.420631, 58.317608, 57.504089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.644966, 57.846363, 57.795586>,  <62.078529, 58.102676, 58.075729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.644966, 57.846363, 57.795586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.005028, 57.687149, 57.724831>,  <63.221066, 57.591621, 57.682377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.005028, 57.687149, 57.724831>,  <62.644966, 57.846363, 57.795586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.005028, 57.687149, 57.724831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220639, 0.766828, -0.602738,
		0.375549, 0.503531, 0.778087,
		0.900156, -0.398035, -0.176883,
		63.275074, 57.567738, 57.671764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.148773, 58.391014, 57.874298>,  <62.644966, 57.846363, 57.795586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.148773, 58.391014, 57.874298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.298523, 58.113121, 57.628632>,  <63.388371, 57.946384, 57.481232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.298523, 58.113121, 57.628632>,  <63.148773, 58.391014, 57.874298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.298523, 58.113121, 57.628632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271257, 0.715406, -0.643906,
		0.886716, 0.074465, 0.456278,
		0.374373, -0.694730, -0.614162,
		63.410835, 57.904701, 57.444382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.915874, 58.437416, 57.821171>,  <63.148773, 58.391014, 57.874298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.915874, 58.437416, 57.821171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.702705, 58.304466, 57.509911>,  <63.574806, 58.224697, 57.323154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.702705, 58.304466, 57.509911>,  <63.915874, 58.437416, 57.821171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.702705, 58.304466, 57.509911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378115, 0.729159, -0.570401,
		0.756985, -0.598209, -0.262906,
		-0.532919, -0.332377, -0.778154,
		63.542828, 58.204754, 57.276466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.416725, 58.478756, 57.315865>,  <63.915874, 58.437416, 57.821171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.416725, 58.478756, 57.315865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.060478, 58.479599, 57.133972>,  <63.846729, 58.480103, 57.024837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.060478, 58.479599, 57.133972>,  <64.416725, 58.478756, 57.315865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.060478, 58.479599, 57.133972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271701, 0.804330, -0.528424,
		0.364644, -0.594179, -0.716928,
		-0.890625, 0.002103, -0.454733,
		63.793289, 58.480228, 56.997551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.420738, 58.914799, 56.761230>,  <64.416725, 58.478756, 57.315865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.420738, 58.914799, 56.761230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.041367, 58.824043, 56.672684>,  <63.813744, 58.769588, 56.619556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.041367, 58.824043, 56.672684>,  <64.420738, 58.914799, 56.761230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.041367, 58.824043, 56.672684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099189, 0.875691, -0.472574,
		0.301071, -0.426246, -0.853036,
		-0.948429, -0.226891, -0.221366,
		63.756840, 58.755978, 56.606274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.929604, 59.516750, 56.669037>,  <64.420738, 58.914799, 56.761230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.929604, 59.516750, 56.669037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.142853, 59.409157, 56.989891>,  <65.270805, 59.344601, 57.182404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.142853, 59.409157, 56.989891>,  <64.929604, 59.516750, 56.669037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.142853, 59.409157, 56.989891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720910, 0.640649, -0.264306,
		-0.442793, 0.719176, 0.535462,
		0.533126, -0.268987, 0.802136,
		65.302788, 59.328461, 57.230534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.285233, 59.299412, 56.083466>,  <64.929604, 59.516750, 56.669037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.285233, 59.299412, 56.083466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.412781, 59.001080, 56.317406>,  <65.489311, 58.822079, 56.457771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.412781, 59.001080, 56.317406>,  <65.285233, 59.299412, 56.083466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.412781, 59.001080, 56.317406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430830, 0.663689, 0.611476,
		-0.844219, 0.056987, 0.532961,
		0.318874, -0.745835, 0.584850,
		65.508446, 58.777328, 56.492859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.927032, 59.261211, 56.523952>,  <65.285233, 59.299412, 56.083466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.927032, 59.261211, 56.523952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.898010, 59.660042, 56.533516>,  <65.880592, 59.899342, 56.539253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.898010, 59.660042, 56.533516>,  <65.927032, 59.261211, 56.523952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.898010, 59.660042, 56.533516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972874, 0.076041, -0.218482,
		-0.219661, 0.007404, -0.975548,
		-0.072564, 0.997077, 0.023906,
		65.876244, 59.959164, 56.540688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.238815, 59.533451, 55.880936>,  <65.927032, 59.261211, 56.523952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.238815, 59.533451, 55.880936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.236115, 59.783722, 56.192955>,  <66.234497, 59.933884, 56.380169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.236115, 59.783722, 56.192955>,  <66.238815, 59.533451, 55.880936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.236115, 59.783722, 56.192955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866503, 0.393023, -0.307741,
		-0.499125, 0.673839, -0.544807,
		-0.006753, 0.625679, 0.780052,
		66.234085, 59.971424, 56.426971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.385361, 60.244244, 55.644936>,  <66.238815, 59.533451, 55.880936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.385361, 60.244244, 55.644936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.493042, 60.252449, 56.030083>,  <66.557648, 60.257370, 56.261169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.493042, 60.252449, 56.030083>,  <66.385361, 60.244244, 55.644936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.493042, 60.252449, 56.030083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770536, 0.595180, -0.228112,
		-0.577757, 0.803330, 0.144422,
		0.269206, 0.020511, 0.962864,
		66.573807, 60.258602, 56.318943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.625221, 60.926132, 55.828480>,  <66.385361, 60.244244, 55.644936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.625221, 60.926132, 55.828480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.776855, 60.697136, 56.119286>,  <66.867836, 60.559738, 56.293770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.776855, 60.697136, 56.119286>,  <66.625221, 60.926132, 55.828480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.776855, 60.697136, 56.119286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878407, 0.469711, -0.088159,
		-0.291016, 0.672034, 0.680941,
		0.379092, -0.572488, 0.727013,
		66.890579, 60.525391, 56.337391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.737083, 61.118084, 56.500931>,  <66.625221, 60.926132, 55.828480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.737083, 61.118084, 56.500931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.056602, 60.878128, 56.482880>,  <67.248314, 60.734154, 56.472050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.056602, 60.878128, 56.482880>,  <66.737083, 61.118084, 56.500931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.056602, 60.878128, 56.482880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597383, 0.782129, 0.177222,
		-0.071017, -0.168526, 0.983136,
		0.798806, -0.599894, -0.045130,
		67.296242, 60.698158, 56.469341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.100883, 61.002102, 57.174149>,  <66.737083, 61.118084, 56.500931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.100883, 61.002102, 57.174149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.323326, 61.001610, 56.841705>,  <67.456795, 61.001316, 56.642239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.323326, 61.001610, 56.841705>,  <67.100883, 61.002102, 57.174149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.323326, 61.001610, 56.841705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465977, 0.828502, 0.310565,
		0.688193, -0.559985, 0.461309,
		0.556107, -0.001230, -0.831109,
		67.490158, 61.001240, 56.592373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.620010, 61.307991, 57.376171>,  <67.100883, 61.002102, 57.174149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.620010, 61.307991, 57.376171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.712509, 61.321751, 56.987259>,  <67.768013, 61.330006, 56.753910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.712509, 61.321751, 56.987259>,  <67.620010, 61.307991, 57.376171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.712509, 61.321751, 56.987259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614671, 0.769483, 0.173422,
		0.754123, -0.637740, 0.156801,
		0.231254, 0.034400, -0.972285,
		67.781883, 61.332069, 56.695572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.382568, 61.537785, 57.500126>,  <67.620010, 61.307991, 57.376171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.382568, 61.537785, 57.500126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.313431, 61.491997, 57.108818>,  <68.271950, 61.464523, 56.874031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.313431, 61.491997, 57.108818>,  <68.382568, 61.537785, 57.500126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.313431, 61.491997, 57.108818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753168, 0.624684, -0.206174,
		0.634713, -0.772441, -0.021762,
		-0.172852, -0.114471, -0.978273,
		68.261574, 61.457657, 56.815334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.109444, 61.548615, 57.134892>,  <68.382568, 61.537785, 57.500126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.109444, 61.548615, 57.134892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.399811, 61.650558, 57.390419>,  <69.574028, 61.711727, 57.543736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.399811, 61.650558, 57.390419>,  <69.109444, 61.548615, 57.134892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.399811, 61.650558, 57.390419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442690, -0.883975, -0.150375,
		0.526378, 0.391960, -0.754516,
		0.725914, 0.254863, 0.638822,
		69.617584, 61.727016, 57.582066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.864967, 61.395145, 56.940659>,  <69.109444, 61.548615, 57.134892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.864967, 61.395145, 56.940659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.845261, 61.392586, 57.340164>,  <69.833435, 61.391048, 57.579868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.845261, 61.392586, 57.340164>,  <69.864967, 61.395145, 56.940659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.845261, 61.392586, 57.340164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427958, -0.903669, 0.015322,
		0.902454, 0.428184, 0.047264,
		-0.049271, -0.006400, 0.998765,
		69.830482, 61.390667, 57.639793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.507118, 61.203644, 57.333607>,  <69.864967, 61.395145, 56.940659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.507118, 61.203644, 57.333607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.199806, 61.099518, 57.567528>,  <70.015419, 61.037041, 57.707882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.199806, 61.099518, 57.567528>,  <70.507118, 61.203644, 57.333607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.199806, 61.099518, 57.567528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316392, -0.948606, -0.006610,
		0.556466, 0.179948, 0.811150,
		-0.768272, -0.260319, 0.584801,
		69.969322, 61.021423, 57.742970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.714508, 60.800987, 57.970051>,  <70.507118, 61.203644, 57.333607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.714508, 60.800987, 57.970051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.332985, 60.700481, 57.904182>,  <70.104073, 60.640179, 57.864662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.332985, 60.700481, 57.904182>,  <70.714508, 60.800987, 57.970051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.332985, 60.700481, 57.904182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217249, -0.955491, 0.199599,
		-0.207497, 0.154604, 0.965941,
		-0.953807, -0.251266, -0.164674,
		70.046844, 60.625103, 57.854778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.498260, 60.382908, 58.522442>,  <70.714508, 60.800987, 57.970051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.498260, 60.382908, 58.522442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.275490, 60.275913, 58.207916>,  <70.141830, 60.211716, 58.019199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.275490, 60.275913, 58.207916>,  <70.498260, 60.382908, 58.522442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.275490, 60.275913, 58.207916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087155, -0.960317, 0.264944,
		-0.825981, 0.079021, 0.558132,
		-0.556919, -0.267483, -0.786317,
		70.108414, 60.195667, 57.972023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.035072, 59.886307, 58.467117>,  <70.498260, 60.382908, 58.522442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.035072, 59.886307, 58.467117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.129326, 60.004341, 58.837502>,  <71.185875, 60.075161, 59.059731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.129326, 60.004341, 58.837502>,  <71.035072, 59.886307, 58.467117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.129326, 60.004341, 58.837502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550268, -0.825855, 0.123158,
		0.801052, 0.480507, -0.356972,
		0.235629, 0.295086, 0.925961,
		71.200012, 60.092869, 59.115292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.733086, 59.888760, 58.527214>,  <71.035072, 59.886307, 58.467117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.733086, 59.888760, 58.527214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.582993, 59.850166, 58.895973>,  <71.492935, 59.827011, 59.117229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.582993, 59.850166, 58.895973>,  <71.733086, 59.888760, 58.527214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.582993, 59.850166, 58.895973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581123, -0.799329, 0.152871,
		0.722149, 0.593097, 0.356001,
		-0.375229, -0.096485, 0.921897,
		71.470421, 59.821220, 59.172543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.276550, 60.030807, 59.054825>,  <71.733086, 59.888760, 58.527214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.276550, 60.030807, 59.054825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.002045, 59.773300, 59.190239>,  <71.837341, 59.618797, 59.271488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.002045, 59.773300, 59.190239>,  <72.276550, 60.030807, 59.054825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.002045, 59.773300, 59.190239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727228, -0.615787, 0.303226,
		0.013257, 0.454284, 0.890759,
		-0.686268, -0.643764, 0.338531,
		71.796165, 59.580170, 59.291798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.530907, 59.779324, 59.681583>,  <72.276550, 60.030807, 59.054825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.530907, 59.779324, 59.681583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.296097, 59.497025, 59.522926>,  <72.155212, 59.327644, 59.427731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.296097, 59.497025, 59.522926>,  <72.530907, 59.779324, 59.681583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.296097, 59.497025, 59.522926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697118, -0.689761, 0.195594,
		-0.411631, -0.161691, 0.896892,
		-0.587015, -0.705752, -0.396645,
		72.119995, 59.285297, 59.403934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.316177, 59.264305, 60.219387>,  <72.530907, 59.779324, 59.681583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.316177, 59.264305, 60.219387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.323158, 59.090984, 59.858955>,  <72.327347, 58.986992, 59.642696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.323158, 59.090984, 59.858955>,  <72.316177, 59.264305, 60.219387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.323158, 59.090984, 59.858955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598208, -0.717596, 0.356656,
		-0.801151, -0.545254, 0.246687,
		0.017447, -0.433305, -0.901078,
		72.328392, 58.960991, 59.588631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.309425, 58.589489, 60.265629>,  <72.316177, 59.264305, 60.219387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.309425, 58.589489, 60.265629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.469337, 58.627304, 59.900940>,  <72.565285, 58.649994, 59.682125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.469337, 58.627304, 59.900940>,  <72.309425, 58.589489, 60.265629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.469337, 58.627304, 59.900940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672049, -0.706629, 0.221415,
		-0.623318, -0.701240, -0.346032,
		0.399781, 0.094539, -0.911722,
		72.589272, 58.655666, 59.627422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.426979, 57.950962, 60.078026>,  <72.309425, 58.589489, 60.265629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.426979, 57.950962, 60.078026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.661606, 58.168526, 59.837990>,  <72.802383, 58.299065, 59.693970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.661606, 58.168526, 59.837990>,  <72.426979, 57.950962, 60.078026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.661606, 58.168526, 59.837990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787743, -0.555283, 0.266688,
		-0.188162, -0.629143, -0.754171,
		0.586563, 0.543912, -0.600086,
		72.837578, 58.331699, 59.657963>
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
