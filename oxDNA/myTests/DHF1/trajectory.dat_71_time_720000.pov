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
	<2.795512, 4.344875, 2.718611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.948797, 4.023430, 2.900755>,  <3.040768, 3.830563, 3.010041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.948797, 4.023430, 2.900755>,  <2.795512, 4.344875, 2.718611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.948797, 4.023430, 2.900755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366205, -0.584780, -0.723828,
		0.847963, 0.110625, -0.518383,
		0.383213, -0.803613, 0.455361,
		3.063761, 3.782346, 3.037363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.333056, 3.975075, 2.294311>,  <2.795512, 4.344875, 2.718611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.333056, 3.975075, 2.294311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.137616, 3.715561, 2.527668>,  <3.020352, 3.559852, 2.667682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.137616, 3.715561, 2.527668>,  <3.333056, 3.975075, 2.294311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.137616, 3.715561, 2.527668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272263, -0.521880, -0.808403,
		0.828940, -0.553822, 0.078351,
		-0.488601, -0.648786, 0.583392,
		2.991036, 3.520925, 2.702686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.564967, 3.222463, 2.316527>,  <3.333056, 3.975075, 2.294311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.564967, 3.222463, 2.316527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.176976, 3.297974, 2.377857>,  <2.944182, 3.343280, 2.414655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.176976, 3.297974, 2.377857>,  <3.564967, 3.222463, 2.316527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.176976, 3.297974, 2.377857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232641, -0.536508, -0.811195,
		-0.070875, -0.822510, 0.564318,
		-0.969977, 0.188777, 0.153325,
		2.885983, 3.354607, 2.423855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.290138, 2.532811, 2.355212>,  <3.564967, 3.222463, 2.316527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.290138, 2.532811, 2.355212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.059984, 2.839985, 2.242636>,  <2.921892, 3.024289, 2.175090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.059984, 2.839985, 2.242636>,  <3.290138, 2.532811, 2.355212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.059984, 2.839985, 2.242636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356554, -0.545207, -0.758695,
		-0.736073, -0.336191, 0.587514,
		-0.575384, 0.767935, -0.281442,
		2.887369, 3.070365, 2.158203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.566973, 2.380761, 2.353251>,  <3.290138, 2.532811, 2.355212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.566973, 2.380761, 2.353251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.619665, 2.668152, 2.080067>,  <2.651281, 2.840586, 1.916156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.619665, 2.668152, 2.080067>,  <2.566973, 2.380761, 2.353251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.619665, 2.668152, 2.080067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444812, -0.572866, -0.688452,
		-0.885883, 0.394480, 0.244123,
		0.131731, 0.718478, -0.682962,
		2.659184, 2.883695, 1.875178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.964439, 2.560839, 2.014200>,  <2.566973, 2.380761, 2.353251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.964439, 2.560839, 2.014200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.228980, 2.664448, 1.732628>,  <2.387705, 2.726613, 1.563684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.228980, 2.664448, 1.732628>,  <1.964439, 2.560839, 2.014200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.228980, 2.664448, 1.732628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541524, -0.484483, -0.687043,
		-0.519002, 0.835574, -0.180148,
		0.661354, 0.259022, -0.703931,
		2.427386, 2.742154, 1.521448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.645058, 3.079813, 1.615085>,  <1.964439, 2.560839, 2.014200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.645058, 3.079813, 1.615085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.922263, 2.890774, 1.397320>,  <2.088586, 2.777350, 1.266661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.922263, 2.890774, 1.397320>,  <1.645058, 3.079813, 1.615085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.922263, 2.890774, 1.397320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717150, -0.374741, -0.587592,
		0.073681, 0.797634, -0.598624,
		0.693013, -0.472597, -0.544412,
		2.130167, 2.748995, 1.233996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.294313, 3.057103, 0.938810>,  <1.645058, 3.079813, 1.615085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.294313, 3.057103, 0.938810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.579666, 2.778427, 0.908585>,  <1.750878, 2.611222, 0.890449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.579666, 2.778427, 0.908585>,  <1.294313, 3.057103, 0.938810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.579666, 2.778427, 0.908585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571221, -0.515644, -0.638606,
		0.405946, 0.498734, -0.765815,
		0.713382, -0.696689, -0.075564,
		1.793681, 2.569420, 0.885915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.009002, 0.830333, 0.026356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.388781, 0.821274, 0.151600>,  <1.616648, 0.815838, 0.226746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.388781, 0.821274, 0.151600>,  <1.009002, 0.830333, 0.026356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.388781, 0.821274, 0.151600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043756, 0.978112, 0.203428,
		-0.310864, -0.206844, 0.927674,
		0.949447, -0.022648, 0.313111,
		1.673615, 0.814480, 0.245533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.004306, 1.202521, 0.743440>,  <1.009002, 0.830333, 0.026356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.004306, 1.202521, 0.743440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.359100, 1.185242, 0.559532>,  <1.571977, 1.174874, 0.449187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.359100, 1.185242, 0.559532>,  <1.004306, 1.202521, 0.743440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.359100, 1.185242, 0.559532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172366, 0.954632, 0.242833,
		0.428421, -0.294638, 0.854192,
		0.886987, -0.043199, -0.459770,
		1.625196, 1.172282, 0.421601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.494950, 1.666801, 1.200140>,  <1.004306, 1.202521, 0.743440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.494950, 1.666801, 1.200140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.620035, 1.682617, 0.820530>,  <1.695086, 1.692107, 0.592764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.620035, 1.682617, 0.820530>,  <1.494950, 1.666801, 1.200140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.620035, 1.682617, 0.820530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458602, 0.868677, 0.187307,
		0.831802, -0.493798, 0.253514,
		0.312713, 0.039541, -0.949024,
		1.713849, 1.694479, 0.535823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.256843, 1.537041, 1.121217>,  <1.494950, 1.666801, 1.200140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.256843, 1.537041, 1.121217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.082949, 1.784645, 0.859581>,  <1.978612, 1.933207, 0.702600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.082949, 1.784645, 0.859581>,  <2.256843, 1.537041, 1.121217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.082949, 1.784645, 0.859581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642496, 0.722131, 0.256372,
		0.631035, -0.308796, -0.711646,
		-0.434735, 0.619009, -0.654090,
		1.952528, 1.970348, 0.663354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.827618, 1.766334, 0.627086>,  <2.256843, 1.537041, 1.121217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.827618, 1.766334, 0.627086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.512659, 2.004501, 0.690941>,  <2.323684, 2.147402, 0.729254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.512659, 2.004501, 0.690941>,  <2.827618, 1.766334, 0.627086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.512659, 2.004501, 0.690941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608454, 0.709108, 0.356301,
		0.098947, 0.377682, -0.920633,
		-0.787396, 0.595418, 0.159638,
		2.276440, 2.183127, 0.738832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.003853, 2.358294, 0.331951>,  <2.827618, 1.766334, 0.627086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.003853, 2.358294, 0.331951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.743362, 2.440353, 0.624203>,  <2.587068, 2.489589, 0.799554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.743362, 2.440353, 0.624203>,  <3.003853, 2.358294, 0.331951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.743362, 2.440353, 0.624203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654600, 0.638933, 0.404058,
		-0.383932, 0.741403, -0.550379,
		-0.651225, 0.205147, 0.730630,
		2.547995, 2.501898, 0.843392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.247664, 3.032428, 0.565893>,  <3.003853, 2.358294, 0.331951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.247664, 3.032428, 0.565893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.998056, 2.931984, 0.861877>,  <2.848292, 2.871717, 1.039468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.998056, 2.931984, 0.861877>,  <3.247664, 3.032428, 0.565893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.998056, 2.931984, 0.861877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463744, 0.643154, 0.609340,
		-0.628920, 0.723393, -0.284890,
		-0.624020, -0.251110, 0.739961,
		2.810850, 2.856651, 1.083866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.961802, 3.675466, 0.858251>,  <3.247664, 3.032428, 0.565893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.961802, 3.675466, 0.858251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.892296, 3.427086, 1.163990>,  <2.850592, 3.278058, 1.347433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.892296, 3.427086, 1.163990>,  <2.961802, 3.675466, 0.858251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.892296, 3.427086, 1.163990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391547, 0.668606, 0.632184,
		-0.903602, 0.409130, 0.126950,
		-0.173766, -0.620949, 0.764348,
		2.840166, 3.240801, 1.393294>
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
