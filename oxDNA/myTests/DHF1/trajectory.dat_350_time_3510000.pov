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
	<1.447214, 0.004446, 2.803297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.163025, 0.222527, 2.981277>,  <0.992511, 0.353375, 3.088066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.163025, 0.222527, 2.981277>,  <1.447214, 0.004446, 2.803297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.163025, 0.222527, 2.981277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625570, -0.199705, -0.754175,
		-0.322319, -0.814169, 0.482948,
		-0.710473, 0.545203, 0.444952,
		0.949883, 0.386087, 3.114763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.802124, -0.344517, 2.906494>,  <1.447214, 0.004446, 2.803297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.802124, -0.344517, 2.906494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.729012, 0.045868, 2.859016>,  <0.685144, 0.280099, 2.830530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.729012, 0.045868, 2.859016>,  <0.802124, -0.344517, 2.906494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.729012, 0.045868, 2.859016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560242, -0.202601, -0.803170,
		-0.807911, -0.080307, 0.583807,
		-0.182780, 0.975963, -0.118693,
		0.674178, 0.338657, 2.823409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.047233, -0.023310, 3.006617>,  <0.802124, -0.344517, 2.906494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.047233, -0.023310, 3.006617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.269749, 0.156967, 2.727356>,  <0.403258, 0.265134, 2.559799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.269749, 0.156967, 2.727356>,  <0.047233, -0.023310, 3.006617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.269749, 0.156967, 2.727356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552084, -0.427483, -0.715864,
		-0.621084, 0.783667, 0.011016,
		0.556290, 0.450694, -0.698153,
		0.436636, 0.292175, 2.517910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.319331, 0.378018, 2.539087>,  <0.047233, -0.023310, 3.006617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.319331, 0.378018, 2.539087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.008881, 0.263985, 2.340912>,  <0.205808, 0.195565, 2.222007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.008881, 0.263985, 2.340912>,  <-0.319331, 0.378018, 2.539087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.008881, 0.263985, 2.340912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571473, -0.390569, -0.721717,
		0.012246, 0.875319, -0.483390,
		0.820530, -0.285082, -0.495438,
		0.255040, 0.178460, 2.192280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.461748, 0.675469, 1.852590>,  <-0.319331, 0.378018, 2.539087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.461748, 0.675469, 1.852590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.197506, 0.376350, 1.879120>,  <-0.038961, 0.196879, 1.895038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.197506, 0.376350, 1.879120>,  <-0.461748, 0.675469, 1.852590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.197506, 0.376350, 1.879120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454033, -0.468321, -0.757977,
		0.597875, 0.470611, -0.648900,
		0.660606, -0.747797, 0.066325,
		0.000676, 0.152011, 1.899017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.107467, 0.639158, 1.255624>,  <-0.461748, 0.675469, 1.852590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.107467, 0.639158, 1.255624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.022377, 0.294250, 1.439468>,  <-0.028677, 0.087306, 1.549775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.022377, 0.294250, 1.439468>,  <0.107467, 0.639158, 1.255624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.022377, 0.294250, 1.439468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518410, -0.299118, -0.801111,
		0.828250, -0.408684, -0.383379,
		-0.212725, -0.862268, 0.459611,
		-0.041441, 0.035570, 1.577352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.330411, 0.133819, 0.777750>,  <0.107467, 0.639158, 1.255624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.330411, 0.133819, 0.777750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.049976, -0.000687, 1.029274>,  <-0.118285, -0.081390, 1.180189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.049976, -0.000687, 1.029274>,  <0.330411, 0.133819, 0.777750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.049976, -0.000687, 1.029274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529407, -0.345306, -0.774914,
		0.477708, -0.876179, 0.064069,
		-0.701087, -0.336264, 0.628811,
		-0.160350, -0.101566, 1.217917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.132063, -0.246884, 0.307553>,  <0.330411, 0.133819, 0.777750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.132063, -0.246884, 0.307553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.131012, -0.282875, 0.606712>,  <-0.288857, -0.304470, 0.786208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.131012, -0.282875, 0.606712>,  <0.132063, -0.246884, 0.307553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.131012, -0.282875, 0.606712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697865, -0.301013, -0.649904,
		0.283605, -0.949366, 0.135180,
		-0.657688, -0.089978, 0.747898,
		-0.328318, -0.309868, 0.831082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.466993, 5.281582, -0.011102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.545039, 4.890717, 0.022552>,  <3.591867, 4.656197, 0.042745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.545039, 4.890717, 0.022552>,  <3.466993, 5.281582, -0.011102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.545039, 4.890717, 0.022552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104302, 0.105971, 0.988884,
		-0.975219, -0.184171, 0.122597,
		0.195116, -0.977165, 0.084135,
		3.603574, 4.597567, 0.047793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.182703, 5.097512, 0.593381>,  <3.466993, 5.281582, -0.011102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.182703, 5.097512, 0.593381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.482469, 4.837372, 0.543709>,  <3.662328, 4.681287, 0.513905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.482469, 4.837372, 0.543709>,  <3.182703, 5.097512, 0.593381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.482469, 4.837372, 0.543709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251729, 0.106399, 0.961931,
		-0.612381, -0.752145, 0.243449,
		0.749415, -0.650351, -0.124180,
		3.707293, 4.642266, 0.506455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.513422, 5.163013, 1.158444>,  <3.182703, 5.097512, 0.593381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.513422, 5.163013, 1.158444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.785285, 4.913696, 1.003746>,  <3.948403, 4.764106, 0.910927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.785285, 4.913696, 1.003746>,  <3.513422, 5.163013, 1.158444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.785285, 4.913696, 1.003746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521839, 0.040318, 0.852090,
		-0.515509, -0.780948, 0.352661,
		0.679657, -0.623293, -0.386745,
		3.989182, 4.726708, 0.887722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.672632, 4.769842, 1.680535>,  <3.513422, 5.163013, 1.158444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.672632, 4.769842, 1.680535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.977952, 4.739899, 1.423859>,  <4.161144, 4.721933, 1.269853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.977952, 4.739899, 1.423859>,  <3.672632, 4.769842, 1.680535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.977952, 4.739899, 1.423859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645490, 0.047260, 0.762305,
		-0.026739, -0.996074, 0.084394,
		0.763300, -0.074859, -0.641692,
		4.206942, 4.717441, 1.231351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.013775, 4.183724, 1.898057>,  <3.672632, 4.769842, 1.680535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.013775, 4.183724, 1.898057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.254930, 4.436249, 1.702927>,  <4.399622, 4.587763, 1.585848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.254930, 4.436249, 1.702927>,  <4.013775, 4.183724, 1.898057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.254930, 4.436249, 1.702927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598625, 0.046264, 0.799692,
		0.527423, -0.774149, -0.350026,
		0.602887, 0.631311, -0.487826,
		4.435796, 4.625642, 1.556579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.637454, 3.831814, 2.001734>,  <4.013775, 4.183724, 1.898057>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.637454, 3.831814, 2.001734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.731471, 4.208191, 1.904259>,  <4.787881, 4.434017, 1.845773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.731471, 4.208191, 1.904259>,  <4.637454, 3.831814, 2.001734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.731471, 4.208191, 1.904259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639881, 0.038927, 0.767487,
		0.731646, -0.336324, -0.592941,
		0.235043, 0.940941, -0.243689,
		4.801984, 4.490473, 1.831152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.418802, 3.887454, 2.144617>,  <4.637454, 3.831814, 2.001734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.418802, 3.887454, 2.144617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.284612, 4.260162, 2.089104>,  <5.204097, 4.483787, 2.055796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.284612, 4.260162, 2.089104>,  <5.418802, 3.887454, 2.144617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.284612, 4.260162, 2.089104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722620, 0.349041, 0.596650,
		0.604381, 0.099875, -0.790410,
		-0.335476, 0.931770, -0.138782,
		5.183969, 4.539693, 2.047469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.993040, 4.392707, 1.813804>,  <5.418802, 3.887454, 2.144617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.993040, 4.392707, 1.813804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.733043, 4.553207, 2.071953>,  <5.577044, 4.649508, 2.226842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.733043, 4.553207, 2.071953>,  <5.993040, 4.392707, 1.813804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.733043, 4.553207, 2.071953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757932, 0.403979, 0.512191,
		-0.055199, 0.822069, -0.566705,
		-0.649994, 0.401252, 0.645372,
		5.538044, 4.673583, 2.265564>
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
