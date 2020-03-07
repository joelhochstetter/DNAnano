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
	<1.549790, 2.760389, 3.480397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.856544, 2.604591, 3.276365>,  <2.040597, 2.511113, 3.153947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.856544, 2.604591, 3.276365>,  <1.549790, 2.760389, 3.480397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.856544, 2.604591, 3.276365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631477, 0.599804, 0.491398,
		0.114551, -0.698949, 0.705938,
		0.766887, -0.389493, -0.510078,
		2.086611, 2.487743, 3.123342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.088693, 2.449612, 3.856429>,  <1.549790, 2.760389, 3.480397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.088693, 2.449612, 3.856429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.260704, 2.575018, 3.517776>,  <2.363911, 2.650261, 3.314585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.260704, 2.575018, 3.517776>,  <2.088693, 2.449612, 3.856429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.260704, 2.575018, 3.517776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556681, 0.646199, 0.522046,
		0.710762, -0.695798, 0.103357,
		0.430028, 0.313514, -0.846631,
		2.389713, 2.669072, 3.263787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.851568, 2.277370, 3.688105>,  <2.088693, 2.449612, 3.856429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.851568, 2.277370, 3.688105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.723717, 2.641499, 3.582916>,  <2.647006, 2.859975, 3.519803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.723717, 2.641499, 3.582916>,  <2.851568, 2.277370, 3.688105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.723717, 2.641499, 3.582916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666537, 0.413264, 0.620436,
		0.673473, 0.023028, -0.738853,
		-0.319629, 0.910320, -0.262973,
		2.627828, 2.914595, 3.504025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.271624, 2.755701, 3.350699>,  <2.851568, 2.277370, 3.688105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.271624, 2.755701, 3.350699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.024414, 2.944719, 3.602015>,  <2.876088, 3.058130, 3.752804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.024414, 2.944719, 3.602015>,  <3.271624, 2.755701, 3.350699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.024414, 2.944719, 3.602015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786081, 0.360208, 0.502321,
		0.011055, 0.804333, -0.594076,
		-0.618025, 0.472545, 0.628289,
		2.839007, 3.086483, 3.790501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.560447, 3.481018, 3.434905>,  <3.271624, 2.755701, 3.350699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.560447, 3.481018, 3.434905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.306839, 3.485668, 3.744196>,  <3.154674, 3.488458, 3.929771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.306839, 3.485668, 3.744196>,  <3.560447, 3.481018, 3.434905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.306839, 3.485668, 3.744196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677536, 0.490344, 0.548186,
		-0.372775, 0.871452, -0.318764,
		-0.634021, 0.011625, 0.773228,
		3.116632, 3.489156, 3.976164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.372645, 4.230973, 3.723438>,  <3.560447, 3.481018, 3.434905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.372645, 4.230973, 3.723438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.298454, 3.970066, 4.017416>,  <3.253940, 3.813522, 4.193803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.298454, 3.970066, 4.017416>,  <3.372645, 4.230973, 3.723438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.298454, 3.970066, 4.017416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581632, 0.529961, 0.617127,
		-0.792025, 0.541930, 0.281085,
		-0.185476, -0.652267, 0.734946,
		3.242811, 3.774386, 4.237900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.280362, 4.699175, 4.344670>,  <3.372645, 4.230973, 3.723438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.280362, 4.699175, 4.344670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.364075, 4.333527, 4.483570>,  <3.414302, 4.114137, 4.566910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.364075, 4.333527, 4.483570>,  <3.280362, 4.699175, 4.344670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.364075, 4.333527, 4.483570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553017, 0.403513, 0.728937,
		-0.806457, 0.039482, 0.589973,
		0.209282, -0.914122, 0.347250,
		3.426859, 4.059290, 4.587745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.211158, 4.663121, 5.052957>,  <3.280362, 4.699175, 4.344670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.211158, 4.663121, 5.052957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.528046, 4.429016, 4.983839>,  <3.718178, 4.288553, 4.942369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.528046, 4.429016, 4.983839>,  <3.211158, 4.663121, 5.052957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.528046, 4.429016, 4.983839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466354, 0.398024, 0.789994,
		-0.393577, -0.706431, 0.588262,
		0.792219, -0.585262, -0.172794,
		3.765711, 4.253438, 4.932001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.913352, 4.500695, 5.341284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.011208, 4.117092, 5.284075>,  <5.069921, 3.886930, 5.249749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.011208, 4.117092, 5.284075>,  <4.913352, 4.500695, 5.341284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.011208, 4.117092, 5.284075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964384, -0.225357, -0.138483,
		0.100575, 0.171807, -0.979983,
		0.244638, -0.959008, -0.143023,
		5.084599, 3.829390, 5.241168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.642913, 4.357260, 4.773259>,  <4.913352, 4.500695, 5.341284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.642913, 4.357260, 4.773259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.655968, 4.024521, 4.994877>,  <4.663801, 3.824878, 5.127847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.655968, 4.024521, 4.994877>,  <4.642913, 4.357260, 4.773259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.655968, 4.024521, 4.994877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967128, -0.166157, -0.192499,
		0.252188, -0.529548, -0.809926,
		0.032637, -0.831848, 0.554044,
		4.665759, 3.774967, 5.161090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.203690, 3.872912, 4.372804>,  <4.642913, 4.357260, 4.773259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.203690, 3.872912, 4.372804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.207664, 3.796616, 4.765440>,  <4.210050, 3.750838, 5.001022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.207664, 3.796616, 4.765440>,  <4.203690, 3.872912, 4.372804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.207664, 3.796616, 4.765440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949439, -0.309848, -0.050597,
		0.313794, -0.931457, -0.184175,
		0.009938, -0.190740, 0.981590,
		4.210646, 3.739393, 5.059917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.281140, 3.149229, 4.716909>,  <4.203690, 3.872912, 4.372804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.281140, 3.149229, 4.716909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.044769, 3.433758, 4.869133>,  <3.902947, 3.604475, 4.960467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.044769, 3.433758, 4.869133>,  <4.281140, 3.149229, 4.716909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.044769, 3.433758, 4.869133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776629, -0.373958, -0.506955,
		-0.218296, -0.595126, 0.773416,
		-0.590927, 0.711323, 0.380558,
		3.867491, 3.647155, 4.983301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.683644, 2.914894, 5.142397>,  <4.281140, 3.149229, 4.716909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.683644, 2.914894, 5.142397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.594261, 3.263500, 4.967800>,  <3.540631, 3.472664, 4.863042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.594261, 3.263500, 4.967800>,  <3.683644, 2.914894, 5.142397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.594261, 3.263500, 4.967800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841581, -0.398431, -0.364683,
		-0.491740, 0.285854, 0.822484,
		-0.223457, 0.871516, -0.436494,
		3.527224, 3.524955, 4.836852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.920240, 2.985402, 5.198007>,  <3.683644, 2.914894, 5.142397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.920240, 2.985402, 5.198007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.051308, 3.235607, 4.914778>,  <3.129948, 3.385730, 4.744840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.051308, 3.235607, 4.914778>,  <2.920240, 2.985402, 5.198007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.051308, 3.235607, 4.914778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810706, -0.198707, -0.550701,
		-0.485169, 0.754487, 0.441996,
		0.327669, 0.625512, -0.708073,
		3.149608, 3.423261, 4.702356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.431863, 3.524194, 5.026370>,  <2.920240, 2.985402, 5.198007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.431863, 3.524194, 5.026370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.651794, 3.470982, 4.696524>,  <2.783753, 3.439054, 4.498616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.651794, 3.470982, 4.696524>,  <2.431863, 3.524194, 5.026370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.651794, 3.470982, 4.696524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822665, -0.257157, -0.507042,
		-0.144602, 0.957169, -0.250833,
		0.549829, -0.133032, -0.824615,
		2.816743, 3.431072, 4.449139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.977759, 3.761622, 4.431344>,  <2.431863, 3.524194, 5.026370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.977759, 3.761622, 4.431344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.243134, 3.542137, 4.227867>,  <2.402358, 3.410446, 4.105781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.243134, 3.542137, 4.227867>,  <1.977759, 3.761622, 4.431344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.243134, 3.542137, 4.227867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721110, -0.287502, -0.630352,
		0.199632, 0.785021, -0.586421,
		0.663437, -0.548712, -0.508692,
		2.442164, 3.377523, 4.075260>
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
