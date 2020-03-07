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
	<4.797959, -0.203061, 4.286364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.826084, 0.190132, 4.354248>,  <4.842959, 0.426048, 4.394979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.826084, 0.190132, 4.354248>,  <4.797959, -0.203061, 4.286364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.826084, 0.190132, 4.354248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980891, 0.099072, -0.167442,
		-0.181406, -0.154694, 0.971165,
		0.070313, 0.982983, 0.169711,
		4.847178, 0.485027, 4.405161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.378131, 0.008338, 4.848132>,  <4.797959, -0.203061, 4.286364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.378131, 0.008338, 4.848132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.429741, 0.307556, 4.587738>,  <4.460707, 0.487087, 4.431502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.429741, 0.307556, 4.587738>,  <4.378131, 0.008338, 4.848132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.429741, 0.307556, 4.587738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988930, 0.145579, -0.028720,
		0.073285, 0.647483, 0.758548,
		0.129024, 0.748046, -0.650984,
		4.468448, 0.531970, 4.392443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.853168, 0.235469, 5.200610>,  <4.378131, 0.008338, 4.848132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.853168, 0.235469, 5.200610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.074970, 0.568062, 5.186989>,  <4.208052, 0.767618, 5.178816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.074970, 0.568062, 5.186989>,  <3.853168, 0.235469, 5.200610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.074970, 0.568062, 5.186989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373167, 0.211869, -0.903249,
		-0.743822, 0.513563, 0.427765,
		0.554505, 0.831483, -0.034052,
		4.241322, 0.817507, 5.176773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.376956, 0.685016, 5.010034>,  <3.853168, 0.235469, 5.200610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.376956, 0.685016, 5.010034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.743896, 0.797188, 4.897018>,  <3.964061, 0.864491, 4.829209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.743896, 0.797188, 4.897018>,  <3.376956, 0.685016, 5.010034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.743896, 0.797188, 4.897018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366048, 0.315290, -0.875558,
		-0.156450, 0.906616, 0.391882,
		0.917351, 0.280429, -0.282538,
		4.019102, 0.881316, 4.812257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.332467, 1.335482, 4.758416>,  <3.376956, 0.685016, 5.010034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.332467, 1.335482, 4.758416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.673553, 1.223030, 4.582306>,  <3.878205, 1.155559, 4.476640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.673553, 1.223030, 4.582306>,  <3.332467, 1.335482, 4.758416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.673553, 1.223030, 4.582306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140126, 0.688842, -0.711240,
		0.503230, 0.668179, 0.547993,
		0.852716, -0.281129, -0.440275,
		3.929368, 1.138691, 4.450223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.487597, 1.955582, 4.408039>,  <3.332467, 1.335482, 4.758416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.487597, 1.955582, 4.408039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.740898, 1.684471, 4.258583>,  <3.892879, 1.521804, 4.168910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.740898, 1.684471, 4.258583>,  <3.487597, 1.955582, 4.408039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.740898, 1.684471, 4.258583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022144, 0.466708, -0.884134,
		0.773627, 0.568156, 0.280535,
		0.633254, -0.677778, -0.373639,
		3.930874, 1.481138, 4.146491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.046722, 2.369703, 4.072188>,  <3.487597, 1.955582, 4.408039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.046722, 2.369703, 4.072188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.010853, 2.000191, 3.923279>,  <3.989331, 1.778483, 3.833933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.010853, 2.000191, 3.923279>,  <4.046722, 2.369703, 4.072188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.010853, 2.000191, 3.923279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224934, 0.382907, -0.895984,
		0.970239, 0.003391, -0.242126,
		-0.089674, -0.923781, -0.372274,
		3.983951, 1.723057, 3.811597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.149161, 2.455354, 3.309052>,  <4.046722, 2.369703, 4.072188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.149161, 2.455354, 3.309052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.976044, 2.095497, 3.332153>,  <3.872173, 1.879583, 3.346014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.976044, 2.095497, 3.332153>,  <4.149161, 2.455354, 3.309052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.976044, 2.095497, 3.332153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295860, 0.081230, -0.951771,
		0.851561, -0.429007, -0.301324,
		-0.432793, -0.899641, 0.057754,
		3.846206, 1.825605, 3.349479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.271733, 2.161574, 2.609215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.958611, 1.914490, 2.639290>,  <2.770739, 1.766239, 2.657335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.958611, 1.914490, 2.639290>,  <3.271733, 2.161574, 2.609215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.958611, 1.914490, 2.639290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541604, -0.616842, 0.571114,
		-0.306404, 0.487791, 0.817421,
		-0.782803, -0.617710, 0.075187,
		2.723770, 1.729177, 2.661846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.948375, 2.101970, 3.292198>,  <3.271733, 2.161574, 2.609215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.948375, 2.101970, 3.292198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.994514, 1.786049, 3.051231>,  <3.022197, 1.596496, 2.906651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.994514, 1.786049, 3.051231>,  <2.948375, 2.101970, 3.292198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.994514, 1.786049, 3.051231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715855, -0.354357, 0.601650,
		-0.688656, -0.500641, 0.524511,
		0.115346, -0.789804, -0.602416,
		3.029118, 1.549108, 2.870507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.829276, 1.357319, 3.604277>,  <2.948375, 2.101970, 3.292198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.829276, 1.357319, 3.604277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.098678, 1.345360, 3.308846>,  <3.260319, 1.338184, 3.131587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.098678, 1.345360, 3.308846>,  <2.829276, 1.357319, 3.604277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.098678, 1.345360, 3.308846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694972, -0.314764, 0.646481,
		-0.251807, -0.948699, -0.191217,
		0.673504, -0.029898, -0.738579,
		3.300729, 1.336390, 3.087272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.162656, 0.673358, 3.423540>,  <2.829276, 1.357319, 3.604277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.162656, 0.673358, 3.423540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.369589, 1.013702, 3.386871>,  <3.493749, 1.217909, 3.364870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.369589, 1.013702, 3.386871>,  <3.162656, 0.673358, 3.423540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.369589, 1.013702, 3.386871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517520, -0.225734, 0.825359,
		0.681572, -0.474427, -0.557116,
		0.517333, 0.850860, -0.091671,
		3.524789, 1.268960, 3.359370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.911313, 0.550192, 3.338412>,  <3.162656, 0.673358, 3.423540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.911313, 0.550192, 3.338412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.885760, 0.914909, 3.500671>,  <3.870429, 1.133740, 3.598027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.885760, 0.914909, 3.500671>,  <3.911313, 0.550192, 3.338412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.885760, 0.914909, 3.500671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652764, -0.269288, 0.708085,
		0.754863, 0.310027, -0.577983,
		-0.063881, 0.911793, 0.405650,
		3.866596, 1.188447, 3.622366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.634138, 0.573992, 3.556009>,  <3.911313, 0.550192, 3.338412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.634138, 0.573992, 3.556009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.406027, 0.845177, 3.741547>,  <4.269160, 1.007888, 3.852869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.406027, 0.845177, 3.741547>,  <4.634138, 0.573992, 3.556009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.406027, 0.845177, 3.741547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341477, -0.317908, 0.884493,
		0.747113, 0.662798, -0.050213,
		-0.570278, 0.677962, 0.463843,
		4.234943, 1.048565, 3.880700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.079951, 0.970705, 3.929018>,  <4.634138, 0.573992, 3.556009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.079951, 0.970705, 3.929018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.713813, 1.010925, 4.084984>,  <4.494130, 1.035057, 4.178563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.713813, 1.010925, 4.084984>,  <5.079951, 0.970705, 3.929018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.713813, 1.010925, 4.084984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347936, -0.289923, 0.891563,
		0.202691, 0.951753, 0.230395,
		-0.915345, 0.100550, 0.389914,
		4.439209, 1.041090, 4.201958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.182454, 1.396539, 4.543673>,  <5.079951, 0.970705, 3.929018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.182454, 1.396539, 4.543673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.843312, 1.197632, 4.617287>,  <4.639827, 1.078288, 4.661455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.843312, 1.197632, 4.617287>,  <5.182454, 1.396539, 4.543673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.843312, 1.197632, 4.617287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267633, -0.101722, 0.958136,
		-0.457729, 0.861614, 0.219330,
		-0.847854, -0.497267, 0.184035,
		4.588956, 1.048452, 4.672497>
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
