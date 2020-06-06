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
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<24.548504, 34.676098, 34.927860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.255901, 34.842278, 35.144119>,  <24.080339, 34.941986, 35.273876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.255901, 34.842278, 35.144119>,  <24.548504, 34.676098, 34.927860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.255901, 34.842278, 35.144119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660445, 0.628777, 0.410428,
		-0.169437, 0.657300, -0.734335,
		-0.731507, 0.415447, 0.540649,
		24.036449, 34.966911, 35.306313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.418114, 35.410286, 34.942677>,  <24.548504, 34.676098, 34.927860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.418114, 35.410286, 34.942677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.399359, 35.244038, 35.306007>,  <24.388105, 35.144291, 35.524006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.399359, 35.244038, 35.306007>,  <24.418114, 35.410286, 34.942677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.399359, 35.244038, 35.306007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584413, 0.726046, 0.362379,
		-0.810101, 0.547830, 0.208851,
		-0.046887, -0.415619, 0.908329,
		24.385292, 35.119350, 35.578506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.092812, 35.941986, 35.365749>,  <24.418114, 35.410286, 34.942677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.092812, 35.941986, 35.365749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.331398, 35.712097, 35.589863>,  <24.474550, 35.574162, 35.724331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.331398, 35.712097, 35.589863>,  <24.092812, 35.941986, 35.365749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.331398, 35.712097, 35.589863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356409, 0.815110, 0.456694,
		-0.719167, -0.072712, 0.691022,
		0.596466, -0.574726, 0.560285,
		24.510338, 35.539680, 35.757950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.112423, 36.301155, 35.994610>,  <24.092812, 35.941986, 35.365749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.112423, 36.301155, 35.994610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.424438, 36.050880, 35.991695>,  <24.611647, 35.900715, 35.989948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.424438, 36.050880, 35.991695>,  <24.112423, 36.301155, 35.994610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.424438, 36.050880, 35.991695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552754, 0.683560, 0.476665,
		-0.293265, -0.375842, 0.879055,
		0.780038, -0.625690, -0.007284,
		24.658449, 35.863174, 35.989510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.356766, 36.212307, 36.739948>,  <24.112423, 36.301155, 35.994610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.356766, 36.212307, 36.739948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.656872, 36.124725, 36.490417>,  <24.836935, 36.072178, 36.340698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.656872, 36.124725, 36.490417>,  <24.356766, 36.212307, 36.739948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.656872, 36.124725, 36.490417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495838, 0.810485, 0.311865,
		0.437322, -0.543300, 0.716642,
		0.750263, -0.218953, -0.623831,
		24.881950, 36.059040, 36.303268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.980278, 36.332256, 37.036865>,  <24.356766, 36.212307, 36.739948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.980278, 36.332256, 37.036865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.048910, 36.390629, 36.647144>,  <25.090090, 36.425652, 36.413311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.048910, 36.390629, 36.647144>,  <24.980278, 36.332256, 37.036865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.048910, 36.390629, 36.647144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219774, 0.958376, 0.182249,
		0.960342, -0.245398, 0.132375,
		0.171588, 0.145929, -0.974301,
		25.100384, 36.434406, 36.354855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.600533, 36.583408, 36.925850>,  <24.980278, 36.332256, 37.036865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.600533, 36.583408, 36.925850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.429146, 36.693977, 36.581757>,  <25.326313, 36.760319, 36.375301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.429146, 36.693977, 36.581757>,  <25.600533, 36.583408, 36.925850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.429146, 36.693977, 36.581757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229724, 0.954097, 0.192159,
		0.873865, -0.115283, -0.472302,
		-0.428469, 0.276420, -0.860236,
		25.300606, 36.776905, 36.323685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.078556, 36.941433, 36.496105>,  <25.600533, 36.583408, 36.925850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.078556, 36.941433, 36.496105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.724306, 37.076427, 36.368500>,  <25.511757, 37.157425, 36.291935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.724306, 37.076427, 36.368500>,  <26.078556, 36.941433, 36.496105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.724306, 37.076427, 36.368500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360896, 0.932478, -0.015421,
		0.292270, -0.128788, -0.947624,
		-0.885625, 0.337487, -0.319015,
		25.458618, 37.177673, 36.272797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.312731, 37.485466, 36.062916>,  <26.078556, 36.941433, 36.496105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.312731, 37.485466, 36.062916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.924036, 37.572498, 36.099556>,  <25.690819, 37.624718, 36.121540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.924036, 37.572498, 36.099556>,  <26.312731, 37.485466, 36.062916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.924036, 37.572498, 36.099556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206800, 0.971693, -0.114217,
		-0.113859, -0.092046, -0.989224,
		-0.971735, 0.217577, 0.091601,
		25.632515, 37.637772, 36.127037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.194866, 37.941654, 35.491951>,  <26.312731, 37.485466, 36.062916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.194866, 37.941654, 35.491951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.917086, 37.988071, 35.775997>,  <25.750418, 38.015923, 35.946426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.917086, 37.988071, 35.775997>,  <26.194866, 37.941654, 35.491951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.917086, 37.988071, 35.775997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134799, 0.990418, -0.030027,
		-0.706799, 0.074871, -0.703441,
		-0.694452, 0.116047, 0.710119,
		25.708750, 38.022884, 35.989033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.813890, 38.492065, 35.253746>,  <26.194866, 37.941654, 35.491951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.813890, 38.492065, 35.253746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.769791, 38.460209, 35.650028>,  <25.743330, 38.441093, 35.887798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.769791, 38.460209, 35.650028>,  <25.813890, 38.492065, 35.253746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.769791, 38.460209, 35.650028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210070, 0.972398, 0.101547,
		-0.971450, 0.219313, -0.090477,
		-0.110250, -0.079642, 0.990708,
		25.736715, 38.436317, 35.947239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.322250, 38.973434, 35.577507>,  <25.813890, 38.492065, 35.253746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.322250, 38.973434, 35.577507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.614349, 38.912445, 35.843887>,  <25.789608, 38.875851, 36.003716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.614349, 38.912445, 35.843887>,  <25.322250, 38.973434, 35.577507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.614349, 38.912445, 35.843887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132739, 0.987866, 0.080627,
		-0.670163, 0.029519, 0.741627,
		0.730248, -0.152476, 0.665950,
		25.833424, 38.866703, 36.043671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.123737, 39.404938, 36.265369>,  <25.322250, 38.973434, 35.577507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.123737, 39.404938, 36.265369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.517412, 39.335205, 36.277924>,  <25.753616, 39.293365, 36.285458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.517412, 39.335205, 36.277924>,  <25.123737, 39.404938, 36.265369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.517412, 39.335205, 36.277924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154210, 0.930439, 0.332421,
		-0.087158, -0.322323, 0.942609,
		0.984186, -0.174333, 0.031390,
		25.812668, 39.282906, 36.287342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.440098, 39.445389, 37.004318>,  <25.123737, 39.404938, 36.265369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.440098, 39.445389, 37.004318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.658932, 39.561218, 36.690163>,  <25.790232, 39.630718, 36.501667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.658932, 39.561218, 36.690163>,  <25.440098, 39.445389, 37.004318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.658932, 39.561218, 36.690163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287310, 0.816300, 0.501106,
		0.786225, -0.499799, 0.363389,
		0.547086, 0.289577, -0.785392,
		25.823057, 39.648090, 36.454544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.195288, 39.551311, 37.180756>,  <25.440098, 39.445389, 37.004318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.195288, 39.551311, 37.180756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.130833, 39.764351, 36.848400>,  <26.092159, 39.892174, 36.648987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.130833, 39.764351, 36.848400>,  <26.195288, 39.551311, 37.180756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.130833, 39.764351, 36.848400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543664, 0.750539, 0.375660,
		0.823690, -0.391191, -0.410493,
		-0.161136, 0.532598, -0.830888,
		26.082491, 39.924129, 36.599133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.127960, 38.717934, 37.220154>,  <26.195288, 39.551311, 37.180756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.127960, 38.717934, 37.220154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.960613, 38.765858, 36.860016>,  <25.860205, 38.794613, 36.643932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.960613, 38.765858, 36.860016>,  <26.127960, 38.717934, 37.220154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.960613, 38.765858, 36.860016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483962, -0.868231, 0.109346,
		-0.768602, 0.481477, 0.421225,
		-0.418368, 0.119814, -0.900340,
		25.835102, 38.801804, 36.589912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.432632, 38.426754, 37.248455>,  <26.127960, 38.717934, 37.220154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.432632, 38.426754, 37.248455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.530678, 38.430683, 36.860676>,  <25.589506, 38.433041, 36.628010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.530678, 38.430683, 36.860676>,  <25.432632, 38.426754, 37.248455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.530678, 38.430683, 36.860676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532237, -0.834426, -0.143028,
		-0.810335, 0.551032, -0.199301,
		0.245115, 0.009826, -0.969444,
		25.604212, 38.433632, 36.569843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.854088, 38.169586, 36.961910>,  <25.432632, 38.426754, 37.248455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.854088, 38.169586, 36.961910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.092613, 38.147659, 36.641560>,  <25.235729, 38.134502, 36.449348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.092613, 38.147659, 36.641560>,  <24.854088, 38.169586, 36.961910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.092613, 38.147659, 36.641560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417323, -0.873422, -0.250949,
		-0.685749, 0.483870, -0.543708,
		0.596313, -0.054814, -0.800878,
		25.271507, 38.131214, 36.401295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.401478, 37.900726, 36.393578>,  <24.854088, 38.169586, 36.961910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.401478, 37.900726, 36.393578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.776232, 37.811188, 36.286144>,  <25.001085, 37.757465, 36.221684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.776232, 37.811188, 36.286144>,  <24.401478, 37.900726, 36.393578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.776232, 37.811188, 36.286144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301235, -0.906750, -0.295063,
		-0.177489, 0.357347, -0.916952,
		0.936886, -0.223848, -0.268584,
		25.057297, 37.744034, 36.205570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.315521, 37.491989, 35.817436>,  <24.401478, 37.900726, 36.393578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.315521, 37.491989, 35.817436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.678015, 37.390324, 35.952572>,  <24.895512, 37.329323, 36.033653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.678015, 37.390324, 35.952572>,  <24.315521, 37.491989, 35.817436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.678015, 37.390324, 35.952572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193093, -0.959725, -0.204068,
		0.376102, 0.119699, -0.918814,
		0.906235, -0.254167, 0.337842,
		24.949886, 37.314075, 36.053925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.071024, 37.620247, 35.143219>,  <24.315521, 37.491989, 35.817436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.071024, 37.620247, 35.143219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.309092, 37.402527, 34.906742>,  <24.451931, 37.271896, 34.764854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.309092, 37.402527, 34.906742>,  <24.071024, 37.620247, 35.143219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.309092, 37.402527, 34.906742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170750, 0.633227, -0.754896,
		0.785251, 0.550237, 0.283937,
		0.595168, -0.544301, -0.591195,
		24.487642, 37.239235, 34.729385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.586105, 37.072971, 35.278896>,  <24.071024, 37.620247, 35.143219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.586105, 37.072971, 35.278896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.837431, 36.992405, 35.579472>,  <24.988226, 36.944065, 35.759815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.837431, 36.992405, 35.579472>,  <24.586105, 37.072971, 35.278896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.837431, 36.992405, 35.579472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188563, -0.976530, -0.104086,
		0.754763, -0.076294, -0.651546,
		0.628312, -0.201418, 0.751435,
		25.025925, 36.931980, 35.804901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.143599, 36.578899, 35.068489>,  <24.586105, 37.072971, 35.278896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.143599, 36.578899, 35.068489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.080841, 36.527668, 35.460201>,  <25.043186, 36.496929, 35.695229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.080841, 36.527668, 35.460201>,  <25.143599, 36.578899, 35.068489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.080841, 36.527668, 35.460201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039349, -0.991579, -0.123381,
		0.986832, 0.019176, 0.160611,
		-0.156892, -0.128077, 0.979276,
		25.033773, 36.489246, 35.753983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.696217, 36.339622, 35.460991>,  <25.143599, 36.578899, 35.068489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.696217, 36.339622, 35.460991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.586504, 36.320442, 35.845173>,  <25.520678, 36.308933, 36.075684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.586504, 36.320442, 35.845173>,  <25.696217, 36.339622, 35.460991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.586504, 36.320442, 35.845173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439525, -0.882083, -0.169551,
		0.855330, -0.468648, 0.220863,
		-0.274279, -0.047947, 0.960454,
		25.504221, 36.306057, 36.133308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.905148, 35.646107, 35.682407>,  <25.696217, 36.339622, 35.460991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.905148, 35.646107, 35.682407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.592907, 35.779079, 35.894123>,  <25.405561, 35.858864, 36.021152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.592907, 35.779079, 35.894123>,  <25.905148, 35.646107, 35.682407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.592907, 35.779079, 35.894123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468519, -0.871725, -0.143474,
		0.413702, -0.359980, 0.836221,
		-0.780602, 0.332430, 0.529292,
		25.358727, 35.878807, 36.052910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.730707, 35.048008, 36.004826>,  <25.905148, 35.646107, 35.682407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.730707, 35.048008, 36.004826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.401606, 35.274487, 36.024826>,  <25.204145, 35.410374, 36.036827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.401606, 35.274487, 36.024826>,  <25.730707, 35.048008, 36.004826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.401606, 35.274487, 36.024826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555840, -0.783071, -0.279001,
		-0.118816, -0.257341, 0.958988,
		-0.822755, 0.566194, 0.049999,
		25.154779, 35.444344, 36.039825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.183695, 34.672413, 36.426098>,  <25.730707, 35.048008, 36.004826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.183695, 34.672413, 36.426098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.970005, 34.942516, 36.222675>,  <24.841791, 35.104580, 36.100620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.970005, 34.942516, 36.222675>,  <25.183695, 34.672413, 36.426098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.970005, 34.942516, 36.222675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621451, -0.721543, -0.305245,
		-0.573066, 0.152975, 0.805105,
		-0.534223, 0.675258, -0.508559,
		24.809738, 35.145092, 36.070107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.437031, 35.328701, 36.851601>,  <25.183695, 34.672413, 36.426098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.437031, 35.328701, 36.851601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.178713, 35.178959, 37.117775>,  <25.023722, 35.089115, 37.277481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.178713, 35.178959, 37.117775>,  <25.437031, 35.328701, 36.851601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.178713, 35.178959, 37.117775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394922, -0.582129, -0.710748,
		0.653440, -0.721795, 0.228097,
		-0.645796, -0.374351, 0.665439,
		24.984974, 35.066654, 37.317406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.028328, 35.676823, 37.210117>,  <25.437031, 35.328701, 36.851601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.028328, 35.676823, 37.210117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.041800, 35.606422, 37.603642>,  <26.049883, 35.564182, 37.839756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.041800, 35.606422, 37.603642>,  <26.028328, 35.676823, 37.210117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.041800, 35.606422, 37.603642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826651, -0.558148, -0.071553,
		0.561707, -0.810861, -0.164288,
		0.033677, -0.176000, 0.983814,
		26.051903, 35.553623, 37.898785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.062132, 34.989468, 37.353462>,  <26.028328, 35.676823, 37.210117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.062132, 34.989468, 37.353462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.857361, 35.177704, 37.640926>,  <25.734499, 35.290646, 37.813404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.857361, 35.177704, 37.640926>,  <26.062132, 34.989468, 37.353462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.857361, 35.177704, 37.640926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792491, -0.581557, -0.183708,
		0.331494, -0.663581, 0.670650,
		-0.511927, 0.470586, 0.718665,
		25.703783, 35.318878, 37.856525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.711617, 34.686539, 37.142036>,  <26.062132, 34.989468, 37.353462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.711617, 34.686539, 37.142036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.104729, 34.734299, 37.198444>,  <27.340595, 34.762955, 37.232288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.104729, 34.734299, 37.198444>,  <26.711617, 34.686539, 37.142036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.104729, 34.734299, 37.198444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181349, -0.476993, -0.859994,
		-0.035421, 0.870759, -0.490433,
		0.982781, 0.119402, 0.141016,
		27.399563, 34.770119, 37.240749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.003807, 34.958801, 36.629028>,  <26.711617, 34.686539, 37.142036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.003807, 34.958801, 36.629028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.284449, 34.731503, 36.801003>,  <27.452833, 34.595123, 36.904186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.284449, 34.731503, 36.801003>,  <27.003807, 34.958801, 36.629028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.284449, 34.731503, 36.801003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276731, -0.338715, -0.899273,
		0.656637, 0.749910, -0.080392,
		0.701604, -0.568249, 0.429936,
		27.494930, 34.561028, 36.929985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.544800, 34.987373, 36.139404>,  <27.003807, 34.958801, 36.629028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.544800, 34.987373, 36.139404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.592632, 34.671421, 36.379997>,  <27.621332, 34.481850, 36.524353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.592632, 34.671421, 36.379997>,  <27.544800, 34.987373, 36.139404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.592632, 34.671421, 36.379997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284477, -0.553171, -0.782991,
		0.951196, 0.264738, 0.158556,
		0.119579, -0.789883, 0.601486,
		27.628506, 34.434456, 36.560444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.150095, 34.594788, 35.819584>,  <27.544800, 34.987373, 36.139404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.150095, 34.594788, 35.819584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.985577, 34.321812, 36.061283>,  <27.886866, 34.158028, 36.206303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.985577, 34.321812, 36.061283>,  <28.150095, 34.594788, 35.819584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.985577, 34.321812, 36.061283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225501, -0.718487, -0.657970,
		0.883168, -0.134362, 0.449401,
		-0.411295, -0.682439, 0.604246,
		27.862188, 34.117081, 36.242558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.634657, 34.157272, 35.974831>,  <28.150095, 34.594788, 35.819584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.634657, 34.157272, 35.974831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.287342, 33.958851, 35.973640>,  <28.078953, 33.839798, 35.972927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.287342, 33.958851, 35.973640>,  <28.634657, 34.157272, 35.974831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.287342, 33.958851, 35.973640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451882, -0.788457, -0.417299,
		0.204656, -0.363680, 0.908764,
		-0.868285, -0.496057, -0.002978,
		28.026857, 33.810036, 35.972748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.775347, 33.564430, 36.452248>,  <28.634657, 34.157272, 35.974831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.775347, 33.564430, 36.452248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.402275, 33.441841, 36.528336>,  <28.178432, 33.368286, 36.573990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.402275, 33.441841, 36.528336>,  <28.775347, 33.564430, 36.452248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.402275, 33.441841, 36.528336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115752, -0.753764, -0.646870,
		0.341632, -0.581303, 0.738494,
		-0.932678, -0.306474, 0.190223,
		28.122471, 33.349899, 36.585403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.705976, 32.851746, 36.681686>,  <28.775347, 33.564430, 36.452248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.705976, 32.851746, 36.681686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.396185, 32.970108, 36.458038>,  <28.210310, 33.041126, 36.323849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.396185, 32.970108, 36.458038>,  <28.705976, 32.851746, 36.681686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.396185, 32.970108, 36.458038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257187, -0.660225, -0.705661,
		-0.577955, -0.690321, 0.435229,
		-0.774482, 0.295905, -0.559122,
		28.163841, 33.058880, 36.290302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.362078, 32.197689, 36.428017>,  <28.705976, 32.851746, 36.681686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.362078, 32.197689, 36.428017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.320770, 32.504948, 36.175259>,  <28.295986, 32.689301, 36.023602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.320770, 32.504948, 36.175259>,  <28.362078, 32.197689, 36.428017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.320770, 32.504948, 36.175259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141442, -0.617496, -0.773752,
		-0.984545, -0.169281, -0.044880,
		-0.103268, 0.768142, -0.631897,
		28.289789, 32.735390, 35.985691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.804510, 32.242191, 35.799870>,  <28.362078, 32.197689, 36.428017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.804510, 32.242191, 35.799870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.120632, 32.473545, 35.718983>,  <28.310307, 32.612358, 35.670452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.120632, 32.473545, 35.718983>,  <27.804510, 32.242191, 35.799870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.120632, 32.473545, 35.718983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067446, -0.410146, -0.909523,
		-0.608988, 0.705164, -0.363151,
		0.790307, 0.578381, -0.202213,
		28.357725, 32.647060, 35.658318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.391035, 31.830278, 35.641029>,  <27.804510, 32.242191, 35.799870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.391035, 31.830278, 35.641029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.613855, 31.760151, 35.316326>,  <28.747547, 31.718075, 35.121502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.613855, 31.760151, 35.316326>,  <28.391035, 31.830278, 35.641029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.613855, 31.760151, 35.316326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250608, 0.896410, -0.365574,
		0.791765, 0.407077, 0.455408,
		0.557049, -0.175319, -0.811763,
		28.780970, 31.707556, 35.072796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.007721, 32.341568, 35.613621>,  <28.391035, 31.830278, 35.641029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.007721, 32.341568, 35.613621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.791822, 32.172493, 35.322414>,  <28.662283, 32.071049, 35.147690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.791822, 32.172493, 35.322414>,  <29.007721, 32.341568, 35.613621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.791822, 32.172493, 35.322414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419900, 0.884723, -0.202359,
		0.729628, 0.196472, -0.655012,
		-0.539746, -0.422687, -0.728018,
		28.629898, 32.045689, 35.104008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.071136, 32.886108, 35.052658>,  <29.007721, 32.341568, 35.613621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.071136, 32.886108, 35.052658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.733875, 32.675648, 35.096943>,  <28.531519, 32.549374, 35.123516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.733875, 32.675648, 35.096943>,  <29.071136, 32.886108, 35.052658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.733875, 32.675648, 35.096943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462372, 0.814629, 0.350131,
		-0.274414, 0.244023, -0.930135,
		-0.843154, -0.526149, 0.110716,
		28.480928, 32.517803, 35.130157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.564919, 33.322433, 34.951954>,  <29.071136, 32.886108, 35.052658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.564919, 33.322433, 34.951954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.392849, 33.034531, 35.169907>,  <28.289608, 32.861790, 35.300678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.392849, 33.034531, 35.169907>,  <28.564919, 33.322433, 34.951954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.392849, 33.034531, 35.169907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359928, 0.690283, 0.627664,
		-0.827891, 0.073885, -0.556002,
		-0.430174, -0.719758, 0.544885,
		28.263798, 32.818604, 35.333374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.846487, 33.532257, 35.108963>,  <28.564919, 33.322433, 34.951954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.846487, 33.532257, 35.108963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.929058, 33.264439, 35.394367>,  <27.978601, 33.103748, 35.565609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.929058, 33.264439, 35.394367>,  <27.846487, 33.532257, 35.108963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.929058, 33.264439, 35.394367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503790, 0.552403, 0.664113,
		-0.838798, -0.496553, -0.223277,
		0.206428, -0.669542, 0.713513,
		27.990986, 33.063576, 35.608421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.243149, 33.534355, 35.435162>,  <27.846487, 33.532257, 35.108963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.243149, 33.534355, 35.435162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.542191, 33.405544, 35.667500>,  <27.721615, 33.328259, 35.806904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.542191, 33.405544, 35.667500>,  <27.243149, 33.534355, 35.435162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.542191, 33.405544, 35.667500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363382, 0.533718, 0.763609,
		-0.555914, -0.781947, 0.281990,
		0.747605, -0.322030, 0.580847,
		27.766472, 33.308937, 35.841755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.934196, 33.336357, 36.125385>,  <27.243149, 33.534355, 35.435162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.934196, 33.336357, 36.125385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.327850, 33.401520, 36.153496>,  <27.564043, 33.440617, 36.170361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.327850, 33.401520, 36.153496>,  <26.934196, 33.336357, 36.125385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.327850, 33.401520, 36.153496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140369, 0.472678, 0.869984,
		0.108509, -0.866046, 0.488046,
		0.984135, 0.162908, 0.070276,
		27.623091, 33.450394, 36.174580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.272575, 33.170521, 36.833549>,  <26.934196, 33.336357, 36.125385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.272575, 33.170521, 36.833549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.448462, 33.481033, 36.652866>,  <27.553993, 33.667339, 36.544456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.448462, 33.481033, 36.652866>,  <27.272575, 33.170521, 36.833549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.448462, 33.481033, 36.652866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011202, 0.507643, 0.861495,
		0.898069, -0.373750, 0.231913,
		0.439713, 0.776279, -0.451712,
		27.580376, 33.713917, 36.517353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.865137, 33.391350, 37.322659>,  <27.272575, 33.170521, 36.833549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.865137, 33.391350, 37.322659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806648, 33.705086, 37.081516>,  <27.771555, 33.893326, 36.936832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806648, 33.705086, 37.081516>,  <27.865137, 33.391350, 37.322659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.806648, 33.705086, 37.081516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207378, 0.620165, 0.756565,
		0.967271, -0.014390, -0.253338,
		-0.146224, 0.784340, -0.602851,
		27.762781, 33.940388, 36.900661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.406584, 33.784092, 37.385376>,  <27.865137, 33.391350, 37.322659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.406584, 33.784092, 37.385376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.130390, 34.046604, 37.263702>,  <27.964674, 34.204113, 37.190697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.130390, 34.046604, 37.263702>,  <28.406584, 33.784092, 37.385376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.130390, 34.046604, 37.263702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169658, 0.555725, 0.813871,
		0.703172, 0.510356, -0.495061,
		-0.690482, 0.656282, -0.304185,
		27.923246, 34.243488, 37.172447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.621447, 34.579090, 37.464252>,  <28.406584, 33.784092, 37.385376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.621447, 34.579090, 37.464252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.224890, 34.527325, 37.472233>,  <27.986956, 34.496265, 37.477020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.224890, 34.527325, 37.472233>,  <28.621447, 34.579090, 37.464252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.224890, 34.527325, 37.472233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053971, 0.542671, 0.838209,
		-0.119303, 0.829915, -0.544984,
		-0.991390, -0.129415, 0.019951,
		27.927473, 34.488499, 37.478218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.935717, 35.156208, 37.188229>,  <28.621447, 34.579090, 37.464252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.935717, 35.156208, 37.188229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.963120, 35.193619, 37.585533>,  <28.979561, 35.216064, 37.823914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.963120, 35.193619, 37.585533>,  <28.935717, 35.156208, 37.188229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.963120, 35.193619, 37.585533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673260, -0.739043, 0.023152,
		0.736225, 0.667134, -0.113597,
		0.068508, 0.093525, 0.993257,
		28.983671, 35.221676, 37.883511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611214, 35.380444, 37.539639>,  <28.935717, 35.156208, 37.188229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.611214, 35.380444, 37.539639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.423004, 35.167294, 37.820965>,  <29.310080, 35.039402, 37.989761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.423004, 35.167294, 37.820965>,  <29.611214, 35.380444, 37.539639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.423004, 35.167294, 37.820965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859631, -0.456672, 0.229094,
		0.199104, 0.712384, 0.672954,
		-0.470523, -0.532878, 0.703313,
		29.281847, 35.007431, 38.031960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.829620, 35.598030, 38.246357>,  <29.611214, 35.380444, 37.539639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.829620, 35.598030, 38.246357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.725632, 35.227283, 38.138039>,  <29.663239, 35.004837, 38.073048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.725632, 35.227283, 38.138039>,  <29.829620, 35.598030, 38.246357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.725632, 35.227283, 38.138039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964667, -0.236867, -0.115373,
		0.042792, -0.291225, 0.955697,
		-0.259973, -0.926867, -0.270799,
		29.647640, 34.949223, 38.056797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.096649, 34.944794, 38.393112>,  <29.829620, 35.598030, 38.246357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.096649, 34.944794, 38.393112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.413027, 35.082577, 38.595402>,  <30.602854, 35.165245, 38.716778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.413027, 35.082577, 38.595402>,  <30.096649, 34.944794, 38.393112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.413027, 35.082577, 38.595402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610225, -0.504947, -0.610454,
		0.045092, 0.791442, -0.609579,
		0.790944, 0.344454, 0.505726,
		30.650311, 35.185913, 38.747120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.553814, 35.244442, 37.973793>,  <30.096649, 34.944794, 38.393112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.553814, 35.244442, 37.973793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.734413, 35.088020, 38.294598>,  <30.842773, 34.994167, 38.487080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.734413, 35.088020, 38.294598>,  <30.553814, 35.244442, 37.973793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.734413, 35.088020, 38.294598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570684, -0.564400, -0.596467,
		0.685907, 0.727000, -0.031658,
		0.451500, -0.391055, 0.802013,
		30.869864, 34.970703, 38.535202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.350628, 35.349915, 37.844570>,  <30.553814, 35.244442, 37.973793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.350628, 35.349915, 37.844570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.217119, 35.017471, 38.022491>,  <31.137014, 34.818005, 38.129246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.217119, 35.017471, 38.022491>,  <31.350628, 35.349915, 37.844570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.217119, 35.017471, 38.022491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607785, -0.550426, -0.572389,
		0.720550, 0.079298, 0.688853,
		-0.333774, -0.831109, 0.444806,
		31.116987, 34.768139, 38.155933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015667, 35.076801, 38.183376>,  <31.350628, 35.349915, 37.844570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015667, 35.076801, 38.183376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727354, 34.825890, 38.065392>,  <31.554367, 34.675343, 37.994602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727354, 34.825890, 38.065392>,  <32.015667, 35.076801, 38.183376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727354, 34.825890, 38.065392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555685, -0.268532, -0.786832,
		0.414354, -0.731038, 0.542120,
		-0.720781, -0.627275, -0.294960,
		31.511120, 34.637707, 37.976902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283447, 34.475826, 38.000069>,  <32.015667, 35.076801, 38.183376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283447, 34.475826, 38.000069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966864, 34.511513, 37.758202>,  <31.776913, 34.532925, 37.613079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966864, 34.511513, 37.758202>,  <32.283447, 34.475826, 38.000069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966864, 34.511513, 37.758202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546210, -0.340735, -0.765216,
		-0.274301, -0.935917, 0.220949,
		-0.791463, 0.089215, -0.604671,
		31.729425, 34.538277, 37.576801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294796, 33.900951, 37.483181>,  <32.283447, 34.475826, 38.000069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294796, 33.900951, 37.483181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.065983, 34.202591, 37.354115>,  <31.928696, 34.383575, 37.276676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.065983, 34.202591, 37.354115>,  <32.294796, 33.900951, 37.483181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.065983, 34.202591, 37.354115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449092, -0.041235, -0.892533,
		-0.686364, -0.655465, -0.315073,
		-0.572032, 0.754099, -0.322666,
		31.894373, 34.428822, 37.257313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965355, 33.750587, 36.778450>,  <32.294796, 33.900951, 37.483181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965355, 33.750587, 36.778450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.986086, 34.145805, 36.836536>,  <31.998524, 34.382935, 36.871387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.986086, 34.145805, 36.836536>,  <31.965355, 33.750587, 36.778450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.986086, 34.145805, 36.836536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344888, 0.118761, -0.931100,
		-0.937212, 0.098341, -0.334609,
		0.051826, 0.988041, 0.145221,
		32.001633, 34.442219, 36.880104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452818, 34.093235, 36.366474>,  <31.965355, 33.750587, 36.778450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452818, 34.093235, 36.366474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788090, 34.308533, 36.401672>,  <31.989254, 34.437710, 36.422791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788090, 34.308533, 36.401672>,  <31.452818, 34.093235, 36.366474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788090, 34.308533, 36.401672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099768, 0.007304, -0.994984,
		-0.536188, 0.842756, -0.047578,
		0.838182, 0.538246, 0.087996,
		32.039543, 34.470005, 36.428070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.543945, 34.715855, 35.939053>,  <31.452818, 34.093235, 36.366474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.543945, 34.715855, 35.939053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887291, 34.519665, 35.999249>,  <32.093300, 34.401951, 36.035366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887291, 34.519665, 35.999249>,  <31.543945, 34.715855, 35.939053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.887291, 34.519665, 35.999249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054042, -0.205251, -0.977216,
		0.510187, 0.846940, -0.149673,
		0.858364, -0.490475, 0.150487,
		32.144798, 34.372524, 36.044395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074417, 34.977074, 35.426407>,  <31.543945, 34.715855, 35.939053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074417, 34.977074, 35.426407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159050, 34.606407, 35.550678>,  <32.209831, 34.384007, 35.625240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159050, 34.606407, 35.550678>,  <32.074417, 34.977074, 35.426407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159050, 34.606407, 35.550678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211405, -0.266953, -0.940236,
		0.954222, 0.264617, 0.139419,
		0.211584, -0.926668, 0.310674,
		32.222527, 34.328407, 35.643879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827160, 34.760014, 35.261322>,  <32.074417, 34.977074, 35.426407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827160, 34.760014, 35.261322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562191, 34.463261, 35.302906>,  <32.403210, 34.285210, 35.327858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562191, 34.463261, 35.302906>,  <32.827160, 34.760014, 35.261322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562191, 34.463261, 35.302906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069688, -0.199203, -0.977477,
		0.745883, -0.640256, 0.183657,
		-0.662421, -0.741883, 0.103964,
		32.363464, 34.240696, 35.334095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046535, 34.091438, 34.800991>,  <32.827160, 34.760014, 35.261322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046535, 34.091438, 34.800991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650555, 34.118843, 34.850468>,  <32.412968, 34.135288, 34.880154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650555, 34.118843, 34.850468>,  <33.046535, 34.091438, 34.800991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650555, 34.118843, 34.850468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139486, -0.329849, -0.933672,
		-0.023170, -0.941544, 0.336092,
		-0.989953, 0.068513, 0.123690,
		32.353569, 34.139397, 34.887573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055065, 33.410538, 34.566692>,  <33.046535, 34.091438, 34.800991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055065, 33.410538, 34.566692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.726868, 33.638027, 34.543564>,  <32.529949, 33.774521, 34.529686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.726868, 33.638027, 34.543564>,  <33.055065, 33.410538, 34.566692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726868, 33.638027, 34.543564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162527, -0.329048, -0.930222,
		-0.548068, -0.753842, 0.362414,
		-0.820492, 0.568727, -0.057821,
		32.480721, 33.808643, 34.526218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612598, 32.955231, 34.240150>,  <33.055065, 33.410538, 34.566692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.612598, 32.955231, 34.240150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518192, 33.339176, 34.179550>,  <32.461548, 33.569546, 34.143188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518192, 33.339176, 34.179550>,  <32.612598, 32.955231, 34.240150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.518192, 33.339176, 34.179550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061411, -0.170327, -0.983472,
		-0.969807, -0.222811, 0.099147,
		-0.236016, 0.959867, -0.151501,
		32.447388, 33.627136, 34.134098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.908751, 33.128918, 33.879082>,  <32.612598, 32.955231, 34.240150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.908751, 33.128918, 33.879082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195683, 33.395981, 33.799416>,  <32.367844, 33.556221, 33.751617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195683, 33.395981, 33.799416>,  <31.908751, 33.128918, 33.879082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195683, 33.395981, 33.799416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073760, -0.211477, -0.974596,
		-0.692818, 0.713797, -0.102452,
		0.717330, 0.667661, -0.199164,
		32.410881, 33.596279, 33.739666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652706, 33.435078, 33.319424>,  <31.908751, 33.128918, 33.879082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652706, 33.435078, 33.319424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022316, 33.587753, 33.328320>,  <32.244083, 33.679359, 33.333656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022316, 33.587753, 33.328320>,  <31.652706, 33.435078, 33.319424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.022316, 33.587753, 33.328320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019375, 0.011346, -0.999748,
		-0.381842, 0.924223, 0.003089,
		0.924025, 0.381686, 0.022239,
		32.299522, 33.702259, 33.334991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600828, 34.102348, 33.063728>,  <31.652706, 33.435078, 33.319424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600828, 34.102348, 33.063728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.964437, 33.945259, 33.007950>,  <32.182602, 33.851006, 32.974483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.964437, 33.945259, 33.007950>,  <31.600828, 34.102348, 33.063728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.964437, 33.945259, 33.007950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149710, 0.004535, -0.988720,
		0.388924, 0.919646, -0.054672,
		0.909024, -0.392722, -0.139444,
		32.237144, 33.827442, 32.966118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732828, 34.384369, 32.507107>,  <31.600828, 34.102348, 33.063728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732828, 34.384369, 32.507107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014107, 34.101376, 32.535351>,  <32.182873, 33.931580, 32.552296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014107, 34.101376, 32.535351>,  <31.732828, 34.384369, 32.507107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014107, 34.101376, 32.535351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052183, -0.047689, -0.997498,
		0.709079, 0.705120, 0.003384,
		0.703195, -0.707482, 0.070611,
		32.225067, 33.889130, 32.556534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334240, 34.658596, 32.164436>,  <31.732828, 34.384369, 32.507107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334240, 34.658596, 32.164436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.421696, 34.268570, 32.149231>,  <32.474167, 34.034554, 32.140106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.421696, 34.268570, 32.149231>,  <32.334240, 34.658596, 32.164436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.421696, 34.268570, 32.149231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122591, 0.066097, -0.990254,
		0.968075, 0.211845, 0.133986,
		0.218636, -0.975066, -0.038017,
		32.487286, 33.976051, 32.137825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005337, 34.598648, 31.812510>,  <32.334240, 34.658596, 32.164436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005337, 34.598648, 31.812510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787018, 34.265663, 31.774307>,  <32.656029, 34.065872, 31.751387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787018, 34.265663, 31.774307>,  <33.005337, 34.598648, 31.812510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787018, 34.265663, 31.774307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187769, -0.010429, -0.982158,
		0.816610, -0.553989, 0.162001,
		-0.545794, -0.832458, -0.095506,
		32.623280, 34.015926, 31.745655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355648, 34.271389, 31.300188>,  <33.005337, 34.598648, 31.812510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355648, 34.271389, 31.300188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008774, 34.072197, 31.299599>,  <32.800648, 33.952682, 31.299244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008774, 34.072197, 31.299599>,  <33.355648, 34.271389, 31.300188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008774, 34.072197, 31.299599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017162, -0.026925, -0.999490,
		0.497686, -0.866771, 0.031895,
		-0.867187, -0.497979, -0.001475,
		32.748619, 33.922802, 31.299156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431202, 33.897503, 30.671703>,  <33.355648, 34.271389, 31.300188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431202, 33.897503, 30.671703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044140, 33.846760, 30.758936>,  <32.811905, 33.816315, 30.811275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044140, 33.846760, 30.758936>,  <33.431202, 33.897503, 30.671703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044140, 33.846760, 30.758936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233577, 0.123737, -0.964433,
		0.095353, -0.984174, -0.149363,
		-0.967652, -0.126850, 0.218081,
		32.753845, 33.808704, 30.824360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164696, 33.432144, 30.170656>,  <33.431202, 33.897503, 30.671703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164696, 33.432144, 30.170656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824604, 33.596703, 30.302021>,  <32.620548, 33.695438, 30.380840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824604, 33.596703, 30.302021>,  <33.164696, 33.432144, 30.170656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824604, 33.596703, 30.302021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280368, 0.174123, -0.943968,
		-0.445530, -0.894669, -0.032702,
		-0.850233, 0.411397, 0.328414,
		32.569534, 33.720123, 30.400545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582485, 33.207848, 29.650326>,  <33.164696, 33.432144, 30.170656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582485, 33.207848, 29.650326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437931, 33.527431, 29.842602>,  <32.351200, 33.719181, 29.957968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437931, 33.527431, 29.842602>,  <32.582485, 33.207848, 29.650326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437931, 33.527431, 29.842602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219604, 0.428098, -0.876645,
		-0.906188, -0.422365, 0.020748,
		-0.361382, 0.798961, 0.480691,
		32.329517, 33.767120, 29.986809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923668, 33.182148, 29.496861>,  <32.582485, 33.207848, 29.650326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923668, 33.182148, 29.496861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.029102, 33.563068, 29.558376>,  <32.092361, 33.791618, 29.595285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.029102, 33.563068, 29.558376>,  <31.923668, 33.182148, 29.496861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.029102, 33.563068, 29.558376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408387, 0.254599, -0.876584,
		-0.873924, 0.168250, 0.456015,
		0.263586, 0.952298, 0.153788,
		32.108177, 33.848759, 29.604513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359924, 33.457867, 29.167065>,  <31.923668, 33.182148, 29.496861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359924, 33.457867, 29.167065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.630669, 33.742863, 29.241051>,  <31.793116, 33.913860, 29.285442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.630669, 33.742863, 29.241051>,  <31.359924, 33.457867, 29.167065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.630669, 33.742863, 29.241051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111481, 0.347591, -0.930995,
		-0.727621, 0.609534, 0.314700,
		0.676860, 0.712494, 0.184963,
		31.833727, 33.956612, 29.296539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081860, 34.170441, 29.119722>,  <31.359924, 33.457867, 29.167065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.081860, 34.170441, 29.119722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471073, 34.213554, 29.038149>,  <31.704601, 34.239422, 28.989204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471073, 34.213554, 29.038149>,  <31.081860, 34.170441, 29.119722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471073, 34.213554, 29.038149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230641, 0.467553, -0.853346,
		0.003375, 0.877370, 0.479803,
		0.973033, 0.107782, -0.203935,
		31.762983, 34.245888, 28.976969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.134928, 34.740017, 28.626595>,  <31.081860, 34.170441, 29.119722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.134928, 34.740017, 28.626595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505028, 34.588875, 28.613121>,  <31.727087, 34.498188, 28.605036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505028, 34.588875, 28.613121>,  <31.134928, 34.740017, 28.626595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.505028, 34.588875, 28.613121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179713, 0.514787, -0.838270,
		0.334089, 0.769556, 0.544213,
		0.925250, -0.377859, -0.033685,
		31.782602, 34.475517, 28.603016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587631, 35.343239, 28.565609>,  <31.134928, 34.740017, 28.626595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587631, 35.343239, 28.565609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.758387, 35.021423, 28.400450>,  <31.860840, 34.828335, 28.301353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.758387, 35.021423, 28.400450>,  <31.587631, 35.343239, 28.565609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758387, 35.021423, 28.400450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022834, 0.446857, -0.894314,
		0.904016, 0.391201, 0.172388,
		0.426889, -0.804538, -0.412898,
		31.886454, 34.780064, 28.276581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002842, 35.592312, 27.931360>,  <31.587631, 35.343239, 28.565609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002842, 35.592312, 27.931360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.964298, 35.199085, 27.869019>,  <31.941172, 34.963150, 27.831614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.964298, 35.199085, 27.869019>,  <32.002842, 35.592312, 27.931360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.964298, 35.199085, 27.869019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161373, 0.169943, -0.972151,
		0.982178, -0.068523, -0.175016,
		-0.096358, -0.983068, -0.155856,
		31.935390, 34.904163, 27.822262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365273, 35.569790, 27.317202>,  <32.002842, 35.592312, 27.931360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365273, 35.569790, 27.317202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150818, 35.235233, 27.362816>,  <32.022144, 35.034500, 27.390184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150818, 35.235233, 27.362816>,  <32.365273, 35.569790, 27.317202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150818, 35.235233, 27.362816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176209, -0.021223, -0.984124,
		0.825534, -0.547721, -0.136001,
		-0.536139, -0.836392, 0.114033,
		31.989977, 34.984314, 27.397026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459572, 35.103180, 26.712477>,  <32.365273, 35.569790, 27.317202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.459572, 35.103180, 26.712477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134834, 34.915363, 26.851297>,  <31.939993, 34.802673, 26.934589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134834, 34.915363, 26.851297>,  <32.459572, 35.103180, 26.712477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134834, 34.915363, 26.851297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400012, 0.014289, -0.916399,
		0.425329, -0.882794, -0.199423,
		-0.811841, -0.469543, 0.347050,
		31.891281, 34.774502, 26.955412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293846, 34.585453, 26.255428>,  <32.459572, 35.103180, 26.712477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293846, 34.585453, 26.255428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.944204, 34.640667, 26.441711>,  <31.734419, 34.673794, 26.553482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.944204, 34.640667, 26.441711>,  <32.293846, 34.585453, 26.255428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.944204, 34.640667, 26.441711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446808, 0.147581, -0.882373,
		-0.190530, -0.979370, -0.067326,
		-0.874106, 0.138037, 0.465709,
		31.681973, 34.682079, 26.581425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794306, 34.130123, 25.889185>,  <32.293846, 34.585453, 26.255428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794306, 34.130123, 25.889185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593311, 34.411560, 26.090170>,  <31.472713, 34.580421, 26.210762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593311, 34.411560, 26.090170>,  <31.794306, 34.130123, 25.889185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593311, 34.411560, 26.090170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466277, 0.268870, -0.842790,
		-0.728074, -0.657779, 0.192963,
		-0.502487, 0.703588, 0.502464,
		31.442566, 34.622635, 26.240910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.172836, 34.102680, 25.517057>,  <31.794306, 34.130123, 25.889185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.172836, 34.102680, 25.517057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.123491, 34.438427, 25.728809>,  <31.093885, 34.639877, 25.855860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.123491, 34.438427, 25.728809>,  <31.172836, 34.102680, 25.517057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.123491, 34.438427, 25.728809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574400, 0.374612, -0.727826,
		-0.809226, -0.393861, 0.435921,
		-0.123361, 0.839369, 0.529380,
		31.086483, 34.690239, 25.887623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.480703, 34.109283, 25.758026>,  <31.172836, 34.102680, 25.517057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.480703, 34.109283, 25.758026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603170, 34.489307, 25.733896>,  <30.676651, 34.717323, 25.719418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603170, 34.489307, 25.733896>,  <30.480703, 34.109283, 25.758026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603170, 34.489307, 25.733896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694236, 0.179469, -0.697013,
		-0.651380, 0.255284, 0.714517,
		0.306169, 0.950064, -0.060325,
		30.695021, 34.774326, 25.715799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.939365, 34.561108, 25.818073>,  <30.480703, 34.109283, 25.758026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.939365, 34.561108, 25.818073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.212217, 34.797787, 25.646214>,  <30.375929, 34.939793, 25.543098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.212217, 34.797787, 25.646214>,  <29.939365, 34.561108, 25.818073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.212217, 34.797787, 25.646214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672277, 0.276319, -0.686798,
		-0.287655, 0.757328, 0.586268,
		0.682128, 0.591695, -0.429649,
		30.416855, 34.975296, 25.517319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.651773, 35.285545, 25.790119>,  <29.939365, 34.561108, 25.818073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.651773, 35.285545, 25.790119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915886, 35.229748, 25.494940>,  <30.074354, 35.196270, 25.317831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915886, 35.229748, 25.494940>,  <29.651773, 35.285545, 25.790119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.915886, 35.229748, 25.494940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663691, 0.351488, -0.660280,
		0.351488, 0.925741, 0.139497,
		0.660280, -0.139497, -0.737950,
		30.113970, 35.187897, 25.273554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.534389, 35.847878, 25.416891>,  <29.651773, 35.285545, 25.790119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.534389, 35.847878, 25.416891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.753218, 35.620407, 25.171183>,  <29.884514, 35.483925, 25.023758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.753218, 35.620407, 25.171183>,  <29.534389, 35.847878, 25.416891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.753218, 35.620407, 25.171183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504278, 0.361828, -0.784081,
		0.668146, 0.738708, -0.088824,
		0.547068, -0.568674, -0.614269,
		29.917337, 35.449806, 24.986902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.343569, 36.158978, 24.833637>,  <29.534389, 35.847878, 25.416891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.343569, 36.158978, 24.833637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.557816, 35.858131, 24.680044>,  <29.686363, 35.677624, 24.587889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.557816, 35.858131, 24.680044>,  <29.343569, 36.158978, 24.833637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.557816, 35.858131, 24.680044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190504, 0.335370, -0.922624,
		0.822694, 0.567322, 0.036349,
		0.535615, -0.752112, -0.383984,
		29.718500, 35.632496, 24.564850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.851597, 36.518673, 24.312750>,  <29.343569, 36.158978, 24.833637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.851597, 36.518673, 24.312750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.760103, 36.134186, 24.251123>,  <29.705208, 35.903492, 24.214148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.760103, 36.134186, 24.251123>,  <29.851597, 36.518673, 24.312750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.760103, 36.134186, 24.251123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158014, 0.192822, -0.968427,
		0.960579, -0.197168, -0.195991,
		-0.228734, -0.961220, -0.154066,
		29.691483, 35.845821, 24.204905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.343935, 36.286030, 23.833418>,  <29.851597, 36.518673, 24.312750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.343935, 36.286030, 23.833418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.016245, 36.056782, 23.825346>,  <29.819632, 35.919235, 23.820503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.016245, 36.056782, 23.825346>,  <30.343935, 36.286030, 23.833418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.016245, 36.056782, 23.825346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117690, 0.202460, -0.972193,
		0.561266, -0.794069, -0.233311,
		-0.819225, -0.573117, -0.020180,
		29.770477, 35.884846, 23.819292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.420578, 35.905575, 23.308802>,  <30.343935, 36.286030, 23.833418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.420578, 35.905575, 23.308802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.026524, 35.837940, 23.320908>,  <29.790091, 35.797359, 23.328171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.026524, 35.837940, 23.320908>,  <30.420578, 35.905575, 23.308802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.026524, 35.837940, 23.320908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049789, 0.112454, -0.992409,
		0.164409, -0.979163, -0.119201,
		-0.985135, -0.169096, 0.030264,
		29.730984, 35.787212, 23.329987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.363878, 35.355633, 22.932453>,  <30.420578, 35.905575, 23.308802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.363878, 35.355633, 22.932453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.007891, 35.537128, 22.950666>,  <29.794298, 35.646027, 22.961594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.007891, 35.537128, 22.950666>,  <30.363878, 35.355633, 22.932453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.007891, 35.537128, 22.950666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081863, -0.060741, -0.994791,
		-0.448609, -0.889062, 0.091202,
		-0.889971, 0.453739, 0.045533,
		29.740900, 35.673248, 22.964327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.934481, 34.951012, 22.462109>,  <30.363878, 35.355633, 22.932453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.934481, 34.951012, 22.462109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.753485, 35.303127, 22.519165>,  <29.644888, 35.514397, 22.553398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.753485, 35.303127, 22.519165>,  <29.934481, 34.951012, 22.462109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.753485, 35.303127, 22.519165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141770, 0.086909, -0.986077,
		-0.880428, -0.466412, 0.085474,
		-0.452490, 0.880288, 0.142640,
		29.617739, 35.567215, 22.561956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.310192, 34.902733, 22.116955>,  <29.934481, 34.951012, 22.462109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.310192, 34.902733, 22.116955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.451136, 35.276905, 22.128344>,  <29.535702, 35.501408, 22.135176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.451136, 35.276905, 22.128344>,  <29.310192, 34.902733, 22.116955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.451136, 35.276905, 22.128344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040660, 0.045695, -0.998128,
		-0.934981, 0.350543, 0.054135,
		0.352360, 0.935431, 0.028471,
		29.556843, 35.557533, 22.136885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.931812, 35.213634, 21.564095>,  <29.310192, 34.902733, 22.116955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.931812, 35.213634, 21.564095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.225565, 35.469990, 21.653490>,  <29.401815, 35.623802, 21.707127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.225565, 35.469990, 21.653490>,  <28.931812, 35.213634, 21.564095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.225565, 35.469990, 21.653490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095974, 0.227909, -0.968941,
		-0.671919, 0.733020, 0.105863,
		0.734380, 0.640890, 0.223487,
		29.445879, 35.662258, 21.720535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.830885, 35.787094, 21.178839>,  <28.931812, 35.213634, 21.564095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.830885, 35.787094, 21.178839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.213751, 35.852581, 21.274366>,  <29.443470, 35.891872, 21.331682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.213751, 35.852581, 21.274366>,  <28.830885, 35.787094, 21.178839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.213751, 35.852581, 21.274366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068065, 0.674459, -0.735168,
		-0.281436, 0.719931, 0.634424,
		0.957163, 0.163721, 0.238819,
		29.500900, 35.901699, 21.346012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.939533, 36.498245, 21.241774>,  <28.830885, 35.787094, 21.178839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.939533, 36.498245, 21.241774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.288660, 36.322815, 21.156130>,  <29.498137, 36.217556, 21.104744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.288660, 36.322815, 21.156130>,  <28.939533, 36.498245, 21.241774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.288660, 36.322815, 21.156130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140639, 0.646115, -0.750171,
		0.467348, 0.624649, 0.625620,
		0.872815, -0.438577, -0.214111,
		29.550505, 36.191242, 21.091896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.378963, 37.049503, 21.232790>,  <28.939533, 36.498245, 21.241774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.378963, 37.049503, 21.232790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.582695, 36.761818, 21.043762>,  <29.704933, 36.589207, 20.930346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.582695, 36.761818, 21.043762>,  <29.378963, 37.049503, 21.232790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.582695, 36.761818, 21.043762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305529, 0.664484, -0.681992,
		0.804510, 0.202975, 0.558180,
		0.509329, -0.719210, -0.472569,
		29.735495, 36.546055, 20.901991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.995403, 37.329891, 21.068523>,  <29.378963, 37.049503, 21.232790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.995403, 37.329891, 21.068523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.963442, 37.019974, 20.817667>,  <29.944265, 36.834023, 20.667152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.963442, 37.019974, 20.817667>,  <29.995403, 37.329891, 21.068523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.963442, 37.019974, 20.817667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360067, 0.564237, -0.742959,
		0.929498, -0.285179, 0.233893,
		-0.079905, -0.774796, -0.627141,
		29.939470, 36.787537, 20.629524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.636814, 37.297424, 20.774807>,  <29.995403, 37.329891, 21.068523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.636814, 37.297424, 20.774807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.379490, 37.122646, 20.523338>,  <30.225096, 37.017780, 20.372458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.379490, 37.122646, 20.523338>,  <30.636814, 37.297424, 20.774807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.379490, 37.122646, 20.523338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449378, 0.449313, -0.772126,
		0.619850, -0.779227, -0.092692,
		-0.643309, -0.436948, -0.628673,
		30.186497, 36.991562, 20.334736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081320, 36.994511, 20.244741>,  <30.636814, 37.297424, 20.774807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.081320, 36.994511, 20.244741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.742456, 36.940437, 20.039200>,  <30.539139, 36.907993, 19.915874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.742456, 36.940437, 20.039200>,  <31.081320, 36.994511, 20.244741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.742456, 36.940437, 20.039200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460683, 0.294994, -0.837108,
		0.264752, -0.945887, -0.187627,
		-0.847158, -0.135190, -0.513855,
		30.488308, 36.899883, 19.885044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.298594, 36.943359, 19.503265>,  <31.081320, 36.994511, 20.244741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.298594, 36.943359, 19.503265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.908247, 37.030685, 19.501139>,  <30.674040, 37.083080, 19.499863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.908247, 37.030685, 19.501139>,  <31.298594, 36.943359, 19.503265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.908247, 37.030685, 19.501139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137949, 0.597406, -0.789985,
		-0.169289, -0.771651, -0.613103,
		-0.975864, 0.218313, -0.005315,
		30.615488, 37.096180, 19.499544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.069021, 36.828850, 18.776783>,  <31.298594, 36.943359, 19.503265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.069021, 36.828850, 18.776783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.801971, 37.083717, 18.930819>,  <30.641741, 37.236637, 19.023239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.801971, 37.083717, 18.930819>,  <31.069021, 36.828850, 18.776783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.801971, 37.083717, 18.930819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099594, 0.589031, -0.801950,
		-0.737805, -0.497050, -0.456710,
		-0.667626, 0.637168, 0.385087,
		30.601683, 37.274868, 19.046345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.474535, 37.075363, 18.219202>,  <31.069021, 36.828850, 18.776783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.474535, 37.075363, 18.219202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.472813, 37.330006, 18.527672>,  <30.471779, 37.482792, 18.712753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.472813, 37.330006, 18.527672>,  <30.474535, 37.075363, 18.219202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.472813, 37.330006, 18.527672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024396, 0.770885, -0.636507,
		-0.999693, -0.021554, 0.012212,
		-0.004305, 0.636610, 0.771174,
		30.471521, 37.520988, 18.759024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.042103, 37.583954, 18.038527>,  <30.474535, 37.075363, 18.219202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.042103, 37.583954, 18.038527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.253618, 37.777462, 18.317480>,  <30.380527, 37.893566, 18.484852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.253618, 37.777462, 18.317480>,  <30.042103, 37.583954, 18.038527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.253618, 37.777462, 18.317480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117067, 0.772233, -0.624460,
		-0.840642, 0.411848, 0.351713,
		0.528787, 0.483773, 0.697386,
		30.412254, 37.922592, 18.526695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.855900, 38.263191, 18.145002>,  <30.042103, 37.583954, 18.038527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.855900, 38.263191, 18.145002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.245356, 38.255466, 18.235910>,  <30.479029, 38.250832, 18.290455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.245356, 38.255466, 18.235910>,  <29.855900, 38.263191, 18.145002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.245356, 38.255466, 18.235910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174617, 0.704153, -0.688242,
		-0.146741, 0.709786, 0.688964,
		0.973641, -0.019312, 0.227269,
		30.537447, 38.249672, 18.304090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.075808, 38.989349, 18.280489>,  <29.855900, 38.263191, 18.145002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.075808, 38.989349, 18.280489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381033, 38.766308, 18.149763>,  <30.564169, 38.632481, 18.071327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381033, 38.766308, 18.149763>,  <30.075808, 38.989349, 18.280489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.381033, 38.766308, 18.149763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168699, 0.659958, -0.732118,
		0.623918, 0.503519, 0.597657,
		0.763064, -0.557606, -0.326817,
		30.609953, 38.599026, 18.051718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.794186, 39.117348, 18.577736>,  <30.075808, 38.989349, 18.280489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.794186, 39.117348, 18.577736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.109905, 39.270256, 18.385536>,  <31.299337, 39.362003, 18.270216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.109905, 39.270256, 18.385536>,  <30.794186, 39.117348, 18.577736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.109905, 39.270256, 18.385536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574640, 0.184178, -0.797413,
		-0.216333, 0.905508, 0.365041,
		0.789297, 0.382274, -0.480497,
		31.346695, 39.384937, 18.241386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492077, 39.633587, 18.273052>,  <30.794186, 39.117348, 18.577736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.492077, 39.633587, 18.273052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.819977, 39.566181, 18.054106>,  <31.016716, 39.525738, 17.922737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.819977, 39.566181, 18.054106>,  <30.492077, 39.633587, 18.273052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.819977, 39.566181, 18.054106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557471, -0.015699, -0.830048,
		0.131285, 0.985573, -0.106814,
		0.819750, -0.168518, -0.547368,
		31.065903, 39.515625, 17.889896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.400169, 40.126694, 17.709097>,  <30.492077, 39.633587, 18.273052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.400169, 40.126694, 17.709097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.635233, 39.811783, 17.634417>,  <30.776272, 39.622837, 17.589609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.635233, 39.811783, 17.634417>,  <30.400169, 40.126694, 17.709097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.635233, 39.811783, 17.634417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425196, -0.104172, -0.899086,
		0.688377, 0.607742, -0.395963,
		0.587661, -0.787273, -0.186700,
		30.811531, 39.575600, 17.578407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263947, 39.447029, 17.371191>,  <30.400169, 40.126694, 17.709097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263947, 39.447029, 17.371191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.451481, 39.673100, 17.099670>,  <30.564001, 39.808743, 16.936758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.451481, 39.673100, 17.099670>,  <30.263947, 39.447029, 17.371191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.451481, 39.673100, 17.099670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882304, -0.335877, 0.329736,
		-0.041635, -0.753500, -0.656128,
		0.468835, 0.565176, -0.678801,
		30.592131, 39.842651, 16.896030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718060, 38.925636, 16.922653>,  <30.263947, 39.447029, 17.371191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718060, 38.925636, 16.922653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.817635, 39.304287, 17.004560>,  <30.877380, 39.531479, 17.053705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.817635, 39.304287, 17.004560>,  <30.718060, 38.925636, 16.922653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.817635, 39.304287, 17.004560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691346, -0.321744, 0.646932,
		0.678285, -0.019481, -0.734540,
		0.248937, 0.946626, 0.204766,
		30.892315, 39.588276, 17.065990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431572, 38.881611, 16.906599>,  <30.718060, 38.925636, 16.922653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431572, 38.881611, 16.906599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357847, 39.222137, 17.103085>,  <31.313612, 39.426453, 17.220976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357847, 39.222137, 17.103085>,  <31.431572, 38.881611, 16.906599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357847, 39.222137, 17.103085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743905, -0.205809, 0.635805,
		0.642367, 0.482604, -0.595364,
		-0.184311, 0.851314, 0.491216,
		31.302553, 39.477531, 17.250450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025913, 39.150867, 17.208797>,  <31.431572, 38.881611, 16.906599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025913, 39.150867, 17.208797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.751879, 39.340012, 17.430449>,  <31.587458, 39.453499, 17.563438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.751879, 39.340012, 17.430449>,  <32.025913, 39.150867, 17.208797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.751879, 39.340012, 17.430449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513895, -0.225418, 0.827707,
		0.516302, 0.851814, -0.088571,
		-0.685087, 0.472863, 0.554127,
		31.546352, 39.481869, 17.596687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287079, 39.777218, 17.500397>,  <32.025913, 39.150867, 17.208797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287079, 39.777218, 17.500397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.001465, 39.625835, 17.736002>,  <31.830097, 39.535007, 17.877365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.001465, 39.625835, 17.736002>,  <32.287079, 39.777218, 17.500397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.001465, 39.625835, 17.736002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599794, 0.103281, 0.793461,
		-0.361121, 0.919841, 0.153248,
		-0.714030, -0.378453, 0.589011,
		31.787256, 39.512299, 17.912704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141842, 40.319302, 18.105152>,  <32.287079, 39.777218, 17.500397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141842, 40.319302, 18.105152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015728, 39.967110, 18.246775>,  <31.940062, 39.755795, 18.331747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015728, 39.967110, 18.246775>,  <32.141842, 40.319302, 18.105152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015728, 39.967110, 18.246775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353570, 0.237239, 0.904824,
		-0.880674, 0.410457, 0.236514,
		-0.315281, -0.880479, 0.354055,
		31.921144, 39.702965, 18.352991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.991404, 40.469517, 18.809839>,  <32.141842, 40.319302, 18.105152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.991404, 40.469517, 18.809839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.993395, 40.070576, 18.780813>,  <31.994591, 39.831211, 18.763397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.993395, 40.070576, 18.780813>,  <31.991404, 40.469517, 18.809839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993395, 40.070576, 18.780813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429029, -0.063415, 0.901062,
		-0.903277, -0.035618, 0.427577,
		0.004979, -0.997351, -0.072563,
		31.994888, 39.771370, 18.759045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582016, 40.226974, 19.460485>,  <31.991404, 40.469517, 18.809839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582016, 40.226974, 19.460485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816315, 39.940121, 19.309425>,  <31.956894, 39.768009, 19.218790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816315, 39.940121, 19.309425>,  <31.582016, 40.226974, 19.460485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816315, 39.940121, 19.309425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466392, -0.082837, 0.880691,
		-0.662858, -0.691994, 0.285944,
		0.585746, -0.717135, -0.377650,
		31.992039, 39.724979, 19.196131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568584, 39.683952, 19.936243>,  <31.582016, 40.226974, 19.460485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568584, 39.683952, 19.936243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905993, 39.659653, 19.722782>,  <32.108437, 39.645073, 19.594706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905993, 39.659653, 19.722782>,  <31.568584, 39.683952, 19.936243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905993, 39.659653, 19.722782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536704, 0.057268, 0.841825,
		-0.020585, -0.996508, 0.080915,
		0.843519, -0.060756, -0.533651,
		32.159050, 39.641426, 19.562687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802347, 39.208881, 20.354040>,  <31.568584, 39.683952, 19.936243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.802347, 39.208881, 20.354040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095058, 39.367344, 20.132208>,  <32.270687, 39.462421, 19.999107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095058, 39.367344, 20.132208>,  <31.802347, 39.208881, 20.354040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095058, 39.367344, 20.132208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596420, 0.021556, 0.802383,
		0.329822, -0.917931, -0.220500,
		0.731779, 0.396155, -0.554582,
		32.314590, 39.486191, 19.965834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438618, 38.807701, 20.405132>,  <31.802347, 39.208881, 20.354040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438618, 38.807701, 20.405132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.557693, 39.166035, 20.273151>,  <32.629139, 39.381035, 20.193962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.557693, 39.166035, 20.273151>,  <32.438618, 38.807701, 20.405132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557693, 39.166035, 20.273151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574865, 0.107726, 0.811126,
		0.762176, -0.431140, -0.482913,
		0.297687, 0.895831, -0.329953,
		32.646999, 39.434784, 20.174166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132298, 38.816475, 20.483288>,  <32.438618, 38.807701, 20.405132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132298, 38.816475, 20.483288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043114, 39.206223, 20.471355>,  <32.989605, 39.440071, 20.464195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043114, 39.206223, 20.471355>,  <33.132298, 38.816475, 20.483288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043114, 39.206223, 20.471355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571588, 0.155458, 0.805680,
		0.789669, 0.162582, -0.591600,
		-0.222958, 0.974372, -0.029830,
		32.976227, 39.498535, 20.462406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761604, 39.060390, 20.635822>,  <33.132298, 38.816475, 20.483288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761604, 39.060390, 20.635822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508896, 39.362370, 20.706152>,  <33.357269, 39.543556, 20.748350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508896, 39.362370, 20.706152>,  <33.761604, 39.060390, 20.635822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508896, 39.362370, 20.706152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495219, 0.218596, 0.840817,
		0.596341, 0.618276, -0.511969,
		-0.631772, 0.754951, 0.175825,
		33.319363, 39.588856, 20.758900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157879, 39.628941, 20.810339>,  <33.761604, 39.060390, 20.635822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157879, 39.628941, 20.810339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.799099, 39.731514, 20.954409>,  <33.583832, 39.793056, 21.040850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.799099, 39.731514, 20.954409>,  <34.157879, 39.628941, 20.810339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799099, 39.731514, 20.954409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427249, 0.293126, 0.855298,
		0.113749, 0.921043, -0.372479,
		-0.896950, 0.256430, 0.360172,
		33.530014, 39.808445, 21.062460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323803, 40.129742, 21.208042>,  <34.157879, 39.628941, 20.810339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323803, 40.129742, 21.208042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957882, 40.063320, 21.355318>,  <33.738331, 40.023468, 21.443684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957882, 40.063320, 21.355318>,  <34.323803, 40.129742, 21.208042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957882, 40.063320, 21.355318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350747, 0.125433, 0.928032,
		-0.200284, 0.978107, -0.056505,
		-0.914802, -0.166051, 0.368191,
		33.683441, 40.013504, 21.465775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265835, 40.581890, 21.824440>,  <34.323803, 40.129742, 21.208042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265835, 40.581890, 21.824440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989201, 40.295776, 21.864592>,  <33.823219, 40.124107, 21.888683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989201, 40.295776, 21.864592>,  <34.265835, 40.581890, 21.824440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989201, 40.295776, 21.864592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214579, -0.070764, 0.974140,
		-0.689681, 0.695244, 0.202424,
		-0.691589, -0.715282, 0.100380,
		33.781723, 40.081192, 21.894705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916492, 40.745647, 22.469349>,  <34.265835, 40.581890, 21.824440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916492, 40.745647, 22.469349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848183, 40.355930, 22.410585>,  <33.807198, 40.122101, 22.375328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848183, 40.355930, 22.410585>,  <33.916492, 40.745647, 22.469349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848183, 40.355930, 22.410585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079737, -0.162276, 0.983518,
		-0.982079, 0.156242, 0.105400,
		-0.170771, -0.974297, -0.146909,
		33.796951, 40.063641, 22.366512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336498, 40.451496, 22.964296>,  <33.916492, 40.745647, 22.469349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336498, 40.451496, 22.964296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561386, 40.142666, 22.845774>,  <33.696320, 39.957367, 22.774660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561386, 40.142666, 22.845774>,  <33.336498, 40.451496, 22.964296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561386, 40.142666, 22.845774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114192, -0.282387, 0.952480,
		-0.819063, -0.569342, -0.070599,
		0.562224, -0.772080, -0.296307,
		33.730053, 39.911041, 22.756882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090397, 39.911533, 23.359304>,  <33.336498, 40.451496, 22.964296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090397, 39.911533, 23.359304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427319, 39.744537, 23.222937>,  <33.629471, 39.644341, 23.141115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427319, 39.744537, 23.222937>,  <33.090397, 39.911533, 23.359304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427319, 39.744537, 23.222937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189384, -0.362940, 0.912364,
		-0.504638, -0.833052, -0.226639,
		0.842303, -0.417492, -0.340919,
		33.680008, 39.619289, 23.120661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981781, 39.186245, 23.258928>,  <33.090397, 39.911533, 23.359304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981781, 39.186245, 23.258928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370403, 39.257973, 23.320808>,  <33.603577, 39.301010, 23.357937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370403, 39.257973, 23.320808>,  <32.981781, 39.186245, 23.258928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370403, 39.257973, 23.320808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108065, -0.245587, 0.963332,
		0.210735, -0.952645, -0.219222,
		0.971552, 0.179318, 0.154701,
		33.661869, 39.311768, 23.367218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188148, 38.722649, 23.692404>,  <32.981781, 39.186245, 23.258928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188148, 38.722649, 23.692404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495155, 38.975170, 23.736893>,  <33.679359, 39.126682, 23.763586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495155, 38.975170, 23.736893>,  <33.188148, 38.722649, 23.692404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495155, 38.975170, 23.736893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058283, -0.104065, 0.992861,
		0.638375, -0.768519, -0.043077,
		0.767516, 0.631307, 0.111224,
		33.725410, 39.164562, 23.770260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882927, 38.272839, 24.004913>,  <33.188148, 38.722649, 23.692404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882927, 38.272839, 24.004913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890251, 38.664551, 24.085577>,  <33.894646, 38.899578, 24.133974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890251, 38.664551, 24.085577>,  <33.882927, 38.272839, 24.004913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890251, 38.664551, 24.085577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258277, -0.199478, 0.945252,
		0.965897, 0.034776, -0.256579,
		0.018310, 0.979285, 0.201657,
		33.895744, 38.958336, 24.146074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388504, 38.330090, 24.495989>,  <33.882927, 38.272839, 24.004913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388504, 38.330090, 24.495989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.239166, 38.700184, 24.522959>,  <34.149563, 38.922241, 24.539141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.239166, 38.700184, 24.522959>,  <34.388504, 38.330090, 24.495989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239166, 38.700184, 24.522959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121407, -0.023327, 0.992329,
		0.919715, 0.378665, -0.103621,
		-0.373343, 0.925240, 0.067427,
		34.127163, 38.977757, 24.543186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830307, 38.726410, 24.951920>,  <34.388504, 38.330090, 24.495989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830307, 38.726410, 24.951920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484020, 38.926579, 24.956169>,  <34.276249, 39.046680, 24.958719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484020, 38.926579, 24.956169>,  <34.830307, 38.726410, 24.951920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484020, 38.926579, 24.956169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028060, -0.069712, 0.997172,
		0.499743, 0.862974, 0.074393,
		-0.865719, 0.500417, 0.010623,
		34.224304, 39.076702, 24.959356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996819, 39.238422, 25.394903>,  <34.830307, 38.726410, 24.951920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996819, 39.238422, 25.394903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600784, 39.186138, 25.374357>,  <34.363163, 39.154766, 25.362030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600784, 39.186138, 25.374357>,  <34.996819, 39.238422, 25.394903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600784, 39.186138, 25.374357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017455, -0.248378, 0.968506,
		-0.139356, 0.959803, 0.243635,
		-0.990088, -0.130715, -0.051366,
		34.303757, 39.146923, 25.358948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747055, 39.517883, 26.093866>,  <34.996819, 39.238422, 25.394903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747055, 39.517883, 26.093866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439835, 39.293583, 25.970158>,  <34.255501, 39.159004, 25.895933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439835, 39.293583, 25.970158>,  <34.747055, 39.517883, 26.093866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439835, 39.293583, 25.970158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112508, -0.357274, 0.927199,
		-0.630422, 0.746936, 0.211317,
		-0.768056, -0.560752, -0.309270,
		34.209419, 39.125359, 25.877377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163303, 39.580524, 26.614721>,  <34.747055, 39.517883, 26.093866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163303, 39.580524, 26.614721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115288, 39.247246, 26.398804>,  <34.086479, 39.047279, 26.269253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115288, 39.247246, 26.398804>,  <34.163303, 39.580524, 26.614721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115288, 39.247246, 26.398804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026597, -0.540832, 0.840710,
		-0.992412, 0.115277, 0.042761,
		-0.120041, -0.833194, -0.539795,
		34.079277, 38.997288, 26.236866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708782, 39.186775, 27.066193>,  <34.163303, 39.580524, 26.614721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708782, 39.186775, 27.066193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856350, 38.917603, 26.809738>,  <33.944889, 38.756100, 26.655865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856350, 38.917603, 26.809738>,  <33.708782, 39.186775, 27.066193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856350, 38.917603, 26.809738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160954, -0.633119, 0.757136,
		-0.915419, -0.382516, -0.125259,
		0.368920, -0.672935, -0.641136,
		33.967026, 38.715721, 26.617397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367111, 38.552036, 27.192095>,  <33.708782, 39.186775, 27.066193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367111, 38.552036, 27.192095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711494, 38.449913, 27.016113>,  <33.918125, 38.388638, 26.910524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711494, 38.449913, 27.016113>,  <33.367111, 38.552036, 27.192095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711494, 38.449913, 27.016113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294712, -0.454588, 0.840532,
		-0.414600, -0.853325, -0.316138,
		0.860960, -0.255315, -0.439957,
		33.969784, 38.373318, 26.884127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395908, 37.953342, 27.274288>,  <33.367111, 38.552036, 27.192095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395908, 37.953342, 27.274288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784134, 37.984173, 27.183018>,  <34.017071, 38.002670, 27.128256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784134, 37.984173, 27.183018>,  <33.395908, 37.953342, 27.274288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784134, 37.984173, 27.183018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221867, -0.654726, 0.722571,
		-0.093701, -0.751926, -0.652554,
		0.970564, 0.077075, -0.228176,
		34.075302, 38.007294, 27.114565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645683, 37.256721, 27.198284>,  <33.395908, 37.953342, 27.274288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645683, 37.256721, 27.198284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959240, 37.490692, 27.281591>,  <34.147373, 37.631077, 27.331575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959240, 37.490692, 27.281591>,  <33.645683, 37.256721, 27.198284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959240, 37.490692, 27.281591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344151, -0.688506, 0.638373,
		0.516798, -0.428737, -0.741016,
		0.783888, 0.584931, 0.208268,
		34.194405, 37.666172, 27.344072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215912, 36.818283, 27.304121>,  <33.645683, 37.256721, 27.198284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215912, 36.818283, 27.304121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355553, 37.148338, 27.481787>,  <34.439339, 37.346371, 27.588387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355553, 37.148338, 27.481787>,  <34.215912, 36.818283, 27.304121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355553, 37.148338, 27.481787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332862, -0.552266, 0.764333,
		0.875974, -0.118984, -0.467452,
		0.349101, 0.825134, 0.444166,
		34.460281, 37.395878, 27.615036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936134, 36.601406, 27.650965>,  <34.215912, 36.818283, 27.304121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936134, 36.601406, 27.650965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806728, 36.930080, 27.838652>,  <34.729084, 37.127285, 27.951263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806728, 36.930080, 27.838652>,  <34.936134, 36.601406, 27.650965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806728, 36.930080, 27.838652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210248, -0.421067, 0.882325,
		0.922568, 0.384102, -0.036535,
		-0.323519, 0.821686, 0.469219,
		34.709671, 37.176586, 27.979418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334164, 36.593925, 28.152412>,  <34.936134, 36.601406, 27.650965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334164, 36.593925, 28.152412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026173, 36.822102, 28.266768>,  <34.841377, 36.959007, 28.335381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026173, 36.822102, 28.266768>,  <35.334164, 36.593925, 28.152412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026173, 36.822102, 28.266768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082182, -0.355660, 0.930995,
		0.632753, 0.740343, 0.226972,
		-0.769981, 0.570437, 0.285887,
		34.795177, 36.993233, 28.352533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577110, 37.069244, 28.760876>,  <35.334164, 36.593925, 28.152412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577110, 37.069244, 28.760876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178829, 37.032536, 28.765825>,  <34.939861, 37.010509, 28.768795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178829, 37.032536, 28.765825>,  <35.577110, 37.069244, 28.760876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178829, 37.032536, 28.765825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049069, -0.409560, 0.910963,
		-0.078529, 0.907656, 0.412303,
		-0.995704, -0.091768, 0.012375,
		34.880119, 37.005005, 28.769537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382378, 37.307487, 29.502079>,  <35.577110, 37.069244, 28.760876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382378, 37.307487, 29.502079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076019, 37.086090, 29.371204>,  <34.892204, 36.953251, 29.292679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076019, 37.086090, 29.371204>,  <35.382378, 37.307487, 29.502079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076019, 37.086090, 29.371204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008475, -0.500137, 0.865905,
		-0.642911, 0.665964, 0.378361,
		-0.765894, -0.553493, -0.327187,
		34.846252, 36.920044, 29.273048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832081, 37.456257, 29.992069>,  <35.382378, 37.307487, 29.502079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832081, 37.456257, 29.992069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751186, 37.101196, 29.826578>,  <34.702652, 36.888161, 29.727283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751186, 37.101196, 29.826578>,  <34.832081, 37.456257, 29.992069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751186, 37.101196, 29.826578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082649, -0.405481, 0.910359,
		-0.975844, 0.218299, 0.008638,
		-0.202233, -0.887655, -0.413729,
		34.690517, 36.834900, 29.702459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240055, 37.328484, 30.337645>,  <34.832081, 37.456257, 29.992069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240055, 37.328484, 30.337645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377701, 36.981071, 30.194958>,  <34.460289, 36.772625, 30.109346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377701, 36.981071, 30.194958>,  <34.240055, 37.328484, 30.337645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377701, 36.981071, 30.194958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342095, -0.469780, 0.813804,
		-0.874389, -0.158012, -0.458777,
		0.344115, -0.868527, -0.356715,
		34.480934, 36.720512, 30.087944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807224, 36.830021, 30.516405>,  <34.240055, 37.328484, 30.337645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807224, 36.830021, 30.516405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147392, 36.629238, 30.453375>,  <34.351494, 36.508770, 30.415556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147392, 36.629238, 30.453375>,  <33.807224, 36.830021, 30.516405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147392, 36.629238, 30.453375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198700, -0.583768, 0.787232,
		-0.487145, -0.638165, -0.596185,
		0.850417, -0.501957, -0.157576,
		34.402515, 36.478649, 30.406101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621025, 36.056274, 30.673914>,  <33.807224, 36.830021, 30.516405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621025, 36.056274, 30.673914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019337, 36.092983, 30.675262>,  <34.258324, 36.115009, 30.676071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019337, 36.092983, 30.675262>,  <33.621025, 36.056274, 30.673914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019337, 36.092983, 30.675262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059772, -0.675596, 0.734845,
		0.069714, -0.731539, -0.678226,
		0.995775, 0.091768, 0.003372,
		34.318069, 36.120514, 30.676273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854172, 35.462666, 30.664444>,  <33.621025, 36.056274, 30.673914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854172, 35.462666, 30.664444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.178356, 35.643921, 30.812941>,  <34.372868, 35.752674, 30.902039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.178356, 35.643921, 30.812941>,  <33.854172, 35.462666, 30.664444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.178356, 35.643921, 30.812941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006486, -0.626760, 0.779186,
		0.585756, -0.633907, -0.505026,
		0.810462, 0.453137, 0.371240,
		34.421494, 35.779861, 30.924313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351238, 34.968941, 30.796259>,  <33.854172, 35.462666, 30.664444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351238, 34.968941, 30.796259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462269, 35.282166, 31.018887>,  <34.528885, 35.470100, 31.152464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462269, 35.282166, 31.018887>,  <34.351238, 34.968941, 30.796259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462269, 35.282166, 31.018887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107174, -0.600958, 0.792063,
		0.954708, -0.160205, -0.250733,
		0.277572, 0.783061, 0.556569,
		34.545540, 35.517082, 31.185858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049271, 34.769108, 30.964233>,  <34.351238, 34.968941, 30.796259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049271, 34.769108, 30.964233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958935, 35.033600, 31.250387>,  <34.904732, 35.192295, 31.422079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958935, 35.033600, 31.250387>,  <35.049271, 34.769108, 30.964233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958935, 35.033600, 31.250387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286485, -0.656803, 0.697522,
		0.931087, 0.362475, -0.041100,
		-0.225840, 0.661228, 0.715384,
		34.891182, 35.231968, 31.465002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474194, 34.689369, 31.474228>,  <35.049271, 34.769108, 30.964233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474194, 34.689369, 31.474228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.169952, 34.864120, 31.666323>,  <34.987408, 34.968971, 31.781580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.169952, 34.864120, 31.666323>,  <35.474194, 34.689369, 31.474228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169952, 34.864120, 31.666323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004138, -0.736437, 0.676493,
		0.649207, 0.516528, 0.558326,
		-0.760600, 0.436874, 0.480238,
		34.941772, 34.995182, 31.810394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041153, 34.716866, 30.874247>,  <35.474194, 34.689369, 31.474228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041153, 34.716866, 30.874247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437347, 34.661991, 30.878527>,  <36.675064, 34.629066, 30.881094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437347, 34.661991, 30.878527>,  <36.041153, 34.716866, 30.874247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437347, 34.661991, 30.878527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097601, 0.645624, -0.757393,
		0.096992, 0.751233, 0.652872,
		0.990488, -0.137182, 0.010701,
		36.734493, 34.620838, 30.881737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405048, 35.413700, 31.059498>,  <36.041153, 34.716866, 30.874247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405048, 35.413700, 31.059498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651081, 35.167442, 30.862457>,  <36.798702, 35.019688, 30.744232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651081, 35.167442, 30.862457>,  <36.405048, 35.413700, 31.059498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651081, 35.167442, 30.862457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114956, 0.688111, -0.716442,
		0.780036, 0.384045, 0.494018,
		0.615085, -0.615641, -0.492602,
		36.835606, 34.982750, 30.714676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968262, 35.855286, 30.879917>,  <36.405048, 35.413700, 31.059498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968262, 35.855286, 30.879917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948387, 35.532108, 30.645052>,  <36.936462, 35.338203, 30.504133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948387, 35.532108, 30.645052>,  <36.968262, 35.855286, 30.879917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948387, 35.532108, 30.645052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155123, 0.574511, -0.803663,
		0.986645, -0.131011, 0.096787,
		-0.049684, -0.807944, -0.587161,
		36.933483, 35.289726, 30.468903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544048, 35.891159, 30.495041>,  <36.968262, 35.855286, 30.879917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544048, 35.891159, 30.495041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.284321, 35.675632, 30.280354>,  <37.128487, 35.546318, 30.151541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.284321, 35.675632, 30.280354>,  <37.544048, 35.891159, 30.495041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284321, 35.675632, 30.280354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321538, 0.445052, -0.835788,
		0.689204, -0.715265, -0.115730,
		-0.649316, -0.538817, -0.536716,
		37.089527, 35.513988, 30.119339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909214, 35.833080, 29.966587>,  <37.544048, 35.891159, 30.495041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909214, 35.833080, 29.966587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.552139, 35.728786, 29.819550>,  <37.337894, 35.666210, 29.731327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.552139, 35.728786, 29.819550>,  <37.909214, 35.833080, 29.966587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552139, 35.728786, 29.819550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225842, 0.447038, -0.865536,
		0.389999, -0.855673, -0.340182,
		-0.892690, -0.260731, -0.367591,
		37.284332, 35.650566, 29.709272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021038, 35.515987, 29.214605>,  <37.909214, 35.833080, 29.966587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021038, 35.515987, 29.214605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637058, 35.620247, 29.255720>,  <37.406670, 35.682804, 29.280390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637058, 35.620247, 29.255720>,  <38.021038, 35.515987, 29.214605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637058, 35.620247, 29.255720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014294, 0.320824, -0.947031,
		-0.279822, -0.910567, -0.304248,
		-0.959946, 0.260651, 0.102789,
		37.349075, 35.698441, 29.286556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658588, 35.235912, 28.601564>,  <38.021038, 35.515987, 29.214605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658588, 35.235912, 28.601564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.448849, 35.546318, 28.741766>,  <37.323006, 35.732563, 28.825886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.448849, 35.546318, 28.741766>,  <37.658588, 35.235912, 28.601564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448849, 35.546318, 28.741766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104984, 0.349569, -0.931010,
		-0.845005, -0.524974, -0.101828,
		-0.524352, 0.776018, 0.350502,
		37.291542, 35.779121, 28.846916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987873, 35.325184, 28.171799>,  <37.658588, 35.235912, 28.601564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987873, 35.325184, 28.171799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026726, 35.680847, 28.350664>,  <37.050037, 35.894245, 28.457983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026726, 35.680847, 28.350664>,  <36.987873, 35.325184, 28.171799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026726, 35.680847, 28.350664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179925, 0.457574, -0.870777,
		-0.978873, 0.004126, 0.204429,
		0.097134, 0.889162, 0.447164,
		37.055866, 35.947598, 28.484814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476913, 35.786011, 27.897446>,  <36.987873, 35.325184, 28.171799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476913, 35.786011, 27.897446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743706, 36.046303, 28.042606>,  <36.903782, 36.202477, 28.129704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743706, 36.046303, 28.042606>,  <36.476913, 35.786011, 27.897446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743706, 36.046303, 28.042606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066298, 0.536967, -0.840994,
		-0.742123, 0.536864, 0.401287,
		0.666977, 0.650725, 0.362902,
		36.943798, 36.241520, 28.151478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148067, 36.414986, 27.804522>,  <36.476913, 35.786011, 27.897446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148067, 36.414986, 27.804522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537136, 36.496975, 27.848148>,  <36.770576, 36.546169, 27.874325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537136, 36.496975, 27.848148>,  <36.148067, 36.414986, 27.804522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537136, 36.496975, 27.848148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004914, 0.487807, -0.872938,
		-0.232133, 0.848546, 0.475483,
		0.972672, 0.204974, 0.109067,
		36.828938, 36.558468, 27.880869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233356, 37.081047, 27.618643>,  <36.148067, 36.414986, 27.804522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233356, 37.081047, 27.618643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611019, 36.954636, 27.581339>,  <36.837616, 36.878788, 27.558956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611019, 36.954636, 27.581339>,  <36.233356, 37.081047, 27.618643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611019, 36.954636, 27.581339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106895, 0.561497, -0.820545,
		0.311679, 0.764753, 0.563922,
		0.944156, -0.316027, -0.093258,
		36.894264, 36.859829, 27.553362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602787, 37.670063, 27.413172>,  <36.233356, 37.081047, 27.618643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602787, 37.670063, 27.413172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859093, 37.379562, 27.313587>,  <37.012875, 37.205261, 27.253836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859093, 37.379562, 27.313587>,  <36.602787, 37.670063, 27.413172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859093, 37.379562, 27.313587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231702, 0.492091, -0.839143,
		0.731939, 0.480008, 0.483588,
		0.640765, -0.726250, -0.248962,
		37.051323, 37.161686, 27.238899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194237, 37.995880, 27.170391>,  <36.602787, 37.670063, 27.413172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194237, 37.995880, 27.170391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.216633, 37.631260, 27.007444>,  <37.230068, 37.412487, 26.909676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.216633, 37.631260, 27.007444>,  <37.194237, 37.995880, 27.170391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216633, 37.631260, 27.007444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324430, 0.402477, -0.856012,
		0.944251, -0.084238, 0.318266,
		0.055986, -0.911546, -0.407369,
		37.233429, 37.357796, 26.885233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846184, 37.988583, 26.812241>,  <37.194237, 37.995880, 27.170391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846184, 37.988583, 26.812241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.623459, 37.719158, 26.617805>,  <37.489826, 37.557503, 26.501144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.623459, 37.719158, 26.617805>,  <37.846184, 37.988583, 26.812241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623459, 37.719158, 26.617805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138367, 0.501810, -0.853839,
		0.819036, -0.542683, -0.186214,
		-0.556808, -0.673559, -0.486090,
		37.456417, 37.517090, 26.471979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205379, 37.815788, 26.179886>,  <37.846184, 37.988583, 26.812241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205379, 37.815788, 26.179886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831299, 37.689777, 26.115187>,  <37.606850, 37.614170, 26.076368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831299, 37.689777, 26.115187>,  <38.205379, 37.815788, 26.179886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831299, 37.689777, 26.115187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007789, 0.438340, -0.898775,
		0.354038, -0.841793, -0.407481,
		-0.935198, -0.315027, -0.161746,
		37.550739, 37.595268, 26.066662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236176, 37.551586, 25.517172>,  <38.205379, 37.815788, 26.179886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236176, 37.551586, 25.517172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.841408, 37.602077, 25.557301>,  <37.604549, 37.632370, 25.581379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.841408, 37.602077, 25.557301>,  <38.236176, 37.551586, 25.517172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841408, 37.602077, 25.557301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066234, 0.249911, -0.966001,
		-0.147006, -0.960006, -0.238281,
		-0.986915, 0.126225, 0.100324,
		37.545334, 37.639946, 25.587399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900291, 37.279198, 24.889387>,  <38.236176, 37.551586, 25.517172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900291, 37.279198, 24.889387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619282, 37.513714, 25.050741>,  <37.450676, 37.654423, 25.147554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619282, 37.513714, 25.050741>,  <37.900291, 37.279198, 24.889387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619282, 37.513714, 25.050741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310866, 0.257073, -0.915028,
		-0.640171, -0.768231, 0.001657,
		-0.702527, 0.586289, 0.403387,
		37.408524, 37.689602, 25.171757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145741, 37.124550, 24.576618>,  <37.900291, 37.279198, 24.889387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145741, 37.124550, 24.576618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133583, 37.496555, 24.723125>,  <37.126289, 37.719757, 24.811029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133583, 37.496555, 24.723125>,  <37.145741, 37.124550, 24.576618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133583, 37.496555, 24.723125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541247, 0.292753, -0.788256,
		-0.840314, -0.222198, 0.494470,
		-0.030392, 0.930013, 0.366268,
		37.124466, 37.775558, 24.833006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334084, 37.324493, 24.608414>,  <37.145741, 37.124550, 24.576618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334084, 37.324493, 24.608414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555828, 37.657383, 24.604660>,  <36.688873, 37.857117, 24.602407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555828, 37.657383, 24.604660>,  <36.334084, 37.324493, 24.608414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555828, 37.657383, 24.604660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435654, 0.280555, -0.855274,
		-0.709148, 0.478217, 0.518091,
		0.554360, 0.832224, -0.009382,
		36.722137, 37.907051, 24.601845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916130, 37.882153, 24.664576>,  <36.334084, 37.324493, 24.608414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916130, 37.882153, 24.664576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258381, 37.986492, 24.485754>,  <36.463730, 38.049095, 24.378460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258381, 37.986492, 24.485754>,  <35.916130, 37.882153, 24.664576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258381, 37.986492, 24.485754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515998, 0.362135, -0.776276,
		-0.040599, 0.894882, 0.444452,
		0.855627, 0.260852, -0.447055,
		36.515068, 38.064747, 24.351637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861362, 38.644951, 24.353308>,  <35.916130, 37.882153, 24.664576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861362, 38.644951, 24.353308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173096, 38.485420, 24.159988>,  <36.360138, 38.389702, 24.043997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173096, 38.485420, 24.159988>,  <35.861362, 38.644951, 24.353308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173096, 38.485420, 24.159988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391377, 0.292516, -0.872501,
		0.489346, 0.869122, 0.071878,
		0.779336, -0.398824, -0.483296,
		36.406895, 38.365772, 24.014999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904926, 39.074642, 23.818653>,  <35.861362, 38.644951, 24.353308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904926, 39.074642, 23.818653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109886, 38.744602, 23.723448>,  <36.232861, 38.546577, 23.666325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109886, 38.744602, 23.723448>,  <35.904926, 39.074642, 23.818653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109886, 38.744602, 23.723448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328185, 0.067977, -0.942165,
		0.793563, 0.560877, -0.235955,
		0.512399, -0.825104, -0.238015,
		36.263607, 38.497070, 23.652042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232716, 39.238636, 23.260815>,  <35.904926, 39.074642, 23.818653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232716, 39.238636, 23.260815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201294, 38.839909, 23.255316>,  <36.182442, 38.600674, 23.252016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201294, 38.839909, 23.255316>,  <36.232716, 39.238636, 23.260815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201294, 38.839909, 23.255316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409216, 0.044820, -0.911336,
		0.909050, -0.065965, -0.411434,
		-0.078557, -0.996815, -0.013749,
		36.177727, 38.540863, 23.251190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546875, 39.049690, 22.651722>,  <36.232716, 39.238636, 23.260815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546875, 39.049690, 22.651722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320980, 38.731354, 22.739090>,  <36.185444, 38.540352, 22.791510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320980, 38.731354, 22.739090>,  <36.546875, 39.049690, 22.651722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320980, 38.731354, 22.739090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341986, -0.015190, -0.939582,
		0.751075, -0.605316, -0.263588,
		-0.564741, -0.795840, 0.218418,
		36.151558, 38.492603, 22.804615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538559, 38.675850, 21.999489>,  <36.546875, 39.049690, 22.651722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538559, 38.675850, 21.999489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238132, 38.489986, 22.187099>,  <36.057877, 38.378468, 22.299665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238132, 38.489986, 22.187099>,  <36.538559, 38.675850, 21.999489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238132, 38.489986, 22.187099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344478, -0.330242, -0.878792,
		0.563231, -0.821603, 0.087970,
		-0.751069, -0.464659, 0.469027,
		36.012810, 38.350590, 22.327808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514599, 37.996956, 21.760370>,  <36.538559, 38.675850, 21.999489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514599, 37.996956, 21.760370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148983, 38.062988, 21.908581>,  <35.929615, 38.102608, 21.997507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148983, 38.062988, 21.908581>,  <36.514599, 37.996956, 21.760370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148983, 38.062988, 21.908581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405208, -0.329703, -0.852703,
		-0.018600, -0.929540, 0.368252,
		-0.914035, 0.165079, 0.370524,
		35.874771, 38.112511, 22.019737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017185, 37.411213, 21.703047>,  <36.514599, 37.996956, 21.760370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017185, 37.411213, 21.703047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814552, 37.756084, 21.705225>,  <35.692974, 37.963005, 21.706532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814552, 37.756084, 21.705225>,  <36.017185, 37.411213, 21.703047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814552, 37.756084, 21.705225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438849, -0.252401, -0.862384,
		-0.742151, -0.439257, 0.506226,
		-0.506580, 0.862176, 0.005448,
		35.662579, 38.014736, 21.706860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291073, 37.310371, 21.529013>,  <36.017185, 37.411213, 21.703047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291073, 37.310371, 21.529013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326782, 37.697811, 21.436201>,  <35.348209, 37.930275, 21.380514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326782, 37.697811, 21.436201>,  <35.291073, 37.310371, 21.529013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326782, 37.697811, 21.436201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366662, -0.184638, -0.911849,
		-0.926061, 0.166478, 0.338667,
		0.089272, 0.968604, -0.232028,
		35.353565, 37.988392, 21.366592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715675, 37.475304, 21.130405>,  <35.291073, 37.310371, 21.529013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715675, 37.475304, 21.130405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955997, 37.781349, 21.037762>,  <35.100189, 37.964977, 20.982176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955997, 37.781349, 21.037762>,  <34.715675, 37.475304, 21.130405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955997, 37.781349, 21.037762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163028, -0.166371, -0.972493,
		-0.782597, 0.622036, 0.024778,
		0.600803, 0.765109, -0.231611,
		35.136238, 38.010883, 20.968279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327618, 37.943024, 20.674212>,  <34.715675, 37.475304, 21.130405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327618, 37.943024, 20.674212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711521, 38.031563, 20.605074>,  <34.941864, 38.084686, 20.563591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711521, 38.031563, 20.605074>,  <34.327618, 37.943024, 20.674212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711521, 38.031563, 20.605074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136948, -0.168450, -0.976151,
		-0.245183, 0.960537, -0.131358,
		0.959756, 0.221346, -0.172845,
		34.999447, 38.097965, 20.553221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285919, 38.387642, 20.136253>,  <34.327618, 37.943024, 20.674212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285919, 38.387642, 20.136253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669346, 38.276039, 20.113262>,  <34.899403, 38.209076, 20.099468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669346, 38.276039, 20.113262>,  <34.285919, 38.387642, 20.136253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669346, 38.276039, 20.113262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048229, 0.039911, -0.998039,
		0.280757, 0.959458, 0.024801,
		0.958566, -0.279010, -0.057479,
		34.956917, 38.192337, 20.096018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487713, 38.865452, 19.552631>,  <34.285919, 38.387642, 20.136253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487713, 38.865452, 19.552631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732540, 38.551861, 19.594126>,  <34.879436, 38.363708, 19.619022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732540, 38.551861, 19.594126>,  <34.487713, 38.865452, 19.552631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732540, 38.551861, 19.594126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053233, -0.090036, -0.994515,
		0.789014, 0.614230, -0.013374,
		0.612064, -0.783974, 0.103737,
		34.916161, 38.316669, 19.625246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038773, 39.001984, 19.072220>,  <34.487713, 38.865452, 19.552631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038773, 39.001984, 19.072220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026127, 38.609863, 19.150211>,  <35.018539, 38.374592, 19.197006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026127, 38.609863, 19.150211>,  <35.038773, 39.001984, 19.072220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026127, 38.609863, 19.150211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066254, -0.192594, -0.979039,
		0.997302, -0.043872, -0.058859,
		-0.031617, -0.980297, 0.194981,
		35.016644, 38.315773, 19.208706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412758, 38.721020, 18.512087>,  <35.038773, 39.001984, 19.072220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412758, 38.721020, 18.512087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224194, 38.401508, 18.661604>,  <35.111053, 38.209801, 18.751314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224194, 38.401508, 18.661604>,  <35.412758, 38.721020, 18.512087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224194, 38.401508, 18.661604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188371, -0.322861, -0.927511,
		0.861561, -0.507651, 0.001733,
		-0.471412, -0.798781, 0.373792,
		35.082771, 38.161873, 18.773741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648956, 38.230030, 18.102758>,  <35.412758, 38.721020, 18.512087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648956, 38.230030, 18.102758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317558, 38.088577, 18.276443>,  <35.118721, 38.003704, 18.380653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317558, 38.088577, 18.276443>,  <35.648956, 38.230030, 18.102758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317558, 38.088577, 18.276443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285629, -0.400085, -0.870832,
		0.481676, -0.845503, 0.230460,
		-0.828495, -0.353633, 0.434212,
		35.069012, 37.982487, 18.406708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646393, 37.535023, 17.811657>,  <35.648956, 38.230030, 18.102758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646393, 37.535023, 17.811657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266872, 37.600365, 17.919798>,  <35.039162, 37.639572, 17.984682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266872, 37.600365, 17.919798>,  <35.646393, 37.535023, 17.811657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266872, 37.600365, 17.919798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315873, -0.487675, -0.813878,
		-0.001108, -0.857606, 0.514306,
		-0.948801, 0.163357, 0.270354,
		34.982231, 37.649372, 18.000904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302986, 36.902351, 17.823635>,  <35.646393, 37.535023, 17.811657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302986, 36.902351, 17.823635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.042641, 37.199894, 17.762892>,  <34.886433, 37.378418, 17.726446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.042641, 37.199894, 17.762892>,  <35.302986, 36.902351, 17.823635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042641, 37.199894, 17.762892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437977, -0.531275, -0.725205,
		-0.620129, -0.405493, 0.671576,
		-0.650858, 0.743857, -0.151862,
		34.847382, 37.423050, 17.717333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667843, 36.603188, 17.778778>,  <35.302986, 36.902351, 17.823635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667843, 36.603188, 17.778778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607132, 36.955532, 17.599426>,  <34.570705, 37.166939, 17.491816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607132, 36.955532, 17.599426>,  <34.667843, 36.603188, 17.778778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607132, 36.955532, 17.599426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407974, -0.469020, -0.783312,
		-0.900289, 0.064038, 0.430555,
		-0.151777, 0.880863, -0.448379,
		34.561600, 37.219791, 17.464912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347622, 36.196182, 17.169359>,  <34.667843, 36.603188, 17.778778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347622, 36.196182, 17.169359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442047, 35.817043, 17.083706>,  <34.498703, 35.589558, 17.032314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442047, 35.817043, 17.083706>,  <34.347622, 36.196182, 17.169359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442047, 35.817043, 17.083706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054087, -0.207203, 0.976802,
		-0.970230, -0.242173, 0.002353,
		0.236067, -0.947850, -0.214133,
		34.512867, 35.532688, 17.019466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967449, 35.799667, 17.571030>,  <34.347622, 36.196182, 17.169359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967449, 35.799667, 17.571030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281120, 35.572968, 17.469940>,  <34.469322, 35.436947, 17.409286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281120, 35.572968, 17.469940>,  <33.967449, 35.799667, 17.571030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281120, 35.572968, 17.469940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258373, -0.072080, 0.963352,
		-0.564192, -0.820733, 0.089908,
		0.784175, -0.566746, -0.252722,
		34.516373, 35.402943, 17.394123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985611, 35.161930, 18.006647>,  <33.967449, 35.799667, 17.571030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985611, 35.161930, 18.006647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358669, 35.232246, 17.880619>,  <34.582504, 35.274437, 17.805002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358669, 35.232246, 17.880619>,  <33.985611, 35.161930, 18.006647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358669, 35.232246, 17.880619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326521, -0.039777, 0.944353,
		0.153476, -0.983624, -0.094498,
		0.932646, 0.175791, -0.315069,
		34.638462, 35.284985, 17.786098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366886, 34.559994, 18.191767>,  <33.985611, 35.161930, 18.006647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366886, 34.559994, 18.191767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636501, 34.852314, 18.148695>,  <34.798271, 35.027706, 18.122852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636501, 34.852314, 18.148695>,  <34.366886, 34.559994, 18.191767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636501, 34.852314, 18.148695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332961, -0.170448, 0.927408,
		0.659400, -0.660963, -0.358218,
		0.674039, 0.730805, -0.107681,
		34.838715, 35.071556, 18.116390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818562, 34.352406, 18.620226>,  <34.366886, 34.559994, 18.191767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818562, 34.352406, 18.620226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981937, 34.711391, 18.553617>,  <35.079964, 34.926785, 18.513653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981937, 34.711391, 18.553617>,  <34.818562, 34.352406, 18.620226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981937, 34.711391, 18.553617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404261, -0.014295, 0.914532,
		0.818381, -0.440852, -0.368649,
		0.408443, 0.897466, -0.166521,
		35.104469, 34.980633, 18.503662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521175, 34.250053, 18.643562>,  <34.818562, 34.352406, 18.620226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521175, 34.250053, 18.643562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447838, 34.635311, 18.722290>,  <35.403835, 34.866467, 18.769526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447838, 34.635311, 18.722290>,  <35.521175, 34.250053, 18.643562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447838, 34.635311, 18.722290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394836, -0.111206, 0.911997,
		0.900272, 0.244919, -0.359896,
		-0.183343, 0.963145, 0.196818,
		35.392834, 34.924255, 18.781336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129147, 34.553005, 18.982494>,  <35.521175, 34.250053, 18.643562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129147, 34.553005, 18.982494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.839729, 34.814308, 19.071703>,  <35.666077, 34.971088, 19.125227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.839729, 34.814308, 19.071703>,  <36.129147, 34.553005, 18.982494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839729, 34.814308, 19.071703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391730, 0.122568, 0.911880,
		0.568354, 0.747152, -0.344583,
		-0.723547, 0.653254, 0.223020,
		35.622665, 35.010284, 19.138609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486305, 35.189548, 19.168610>,  <36.129147, 34.553005, 18.982494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486305, 35.189548, 19.168610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.121101, 35.169956, 19.330606>,  <35.901981, 35.158199, 19.427805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.121101, 35.169956, 19.330606>,  <36.486305, 35.189548, 19.168610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121101, 35.169956, 19.330606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381579, 0.248572, 0.890286,
		-0.144276, 0.967374, -0.208259,
		-0.913007, -0.048980, 0.404992,
		35.847198, 35.155262, 19.452105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574677, 35.616302, 19.710335>,  <36.486305, 35.189548, 19.168610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574677, 35.616302, 19.710335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224361, 35.444595, 19.798624>,  <36.014172, 35.341572, 19.851597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224361, 35.444595, 19.798624>,  <36.574677, 35.616302, 19.710335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224361, 35.444595, 19.798624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173336, 0.147078, 0.973819,
		-0.450493, 0.891121, -0.054402,
		-0.875791, -0.429269, 0.220721,
		35.961624, 35.315815, 19.864840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238617, 36.069111, 20.255108>,  <36.574677, 35.616302, 19.710335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238617, 36.069111, 20.255108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063221, 35.711136, 20.288136>,  <35.957981, 35.496353, 20.307953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063221, 35.711136, 20.288136>,  <36.238617, 36.069111, 20.255108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063221, 35.711136, 20.288136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257196, -0.036923, 0.965654,
		-0.861147, 0.444671, 0.246363,
		-0.438494, -0.894933, 0.082571,
		35.931671, 35.442657, 20.312906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809128, 36.154217, 20.873291>,  <36.238617, 36.069111, 20.255108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809128, 36.154217, 20.873291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835613, 35.758163, 20.823900>,  <35.851505, 35.520531, 20.794266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835613, 35.758163, 20.823900>,  <35.809128, 36.154217, 20.873291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835613, 35.758163, 20.823900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140695, -0.113249, 0.983555,
		-0.987836, -0.082496, 0.131809,
		0.066212, -0.990136, -0.123478,
		35.855476, 35.461124, 20.786858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449203, 35.907448, 21.451344>,  <35.809128, 36.154217, 20.873291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449203, 35.907448, 21.451344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706001, 35.625809, 21.329964>,  <35.860081, 35.456825, 21.257135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706001, 35.625809, 21.329964>,  <35.449203, 35.907448, 21.451344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706001, 35.625809, 21.329964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131740, -0.288590, 0.948346,
		-0.755305, -0.648811, -0.092516,
		0.641996, -0.704102, -0.303448,
		35.898602, 35.414577, 21.238930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233929, 35.237389, 21.790762>,  <35.449203, 35.907448, 21.451344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233929, 35.237389, 21.790762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621002, 35.221825, 21.691099>,  <35.853245, 35.212486, 21.631302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621002, 35.221825, 21.691099>,  <35.233929, 35.237389, 21.790762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621002, 35.221825, 21.691099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223184, -0.327829, 0.917996,
		-0.117397, -0.943936, -0.308551,
		0.967681, -0.038907, -0.249157,
		35.911308, 35.210152, 21.616352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437931, 34.563339, 22.118887>,  <35.233929, 35.237389, 21.790762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437931, 34.563339, 22.118887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752537, 34.799877, 22.047670>,  <35.941299, 34.941799, 22.004940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752537, 34.799877, 22.047670>,  <35.437931, 34.563339, 22.118887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752537, 34.799877, 22.047670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302504, -0.117558, 0.945871,
		0.538409, -0.797801, -0.271346,
		0.786516, 0.591349, -0.178044,
		35.988491, 34.977283, 21.994257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038227, 34.176041, 22.421434>,  <35.437931, 34.563339, 22.118887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038227, 34.176041, 22.421434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144302, 34.560902, 22.396349>,  <36.207947, 34.791821, 22.381298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144302, 34.560902, 22.396349>,  <36.038227, 34.176041, 22.421434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144302, 34.560902, 22.396349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416616, -0.055686, 0.907375,
		0.869543, -0.266754, -0.415617,
		0.265190, 0.962154, -0.062713,
		36.223858, 34.849548, 22.377535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713242, 34.248840, 22.634201>,  <36.038227, 34.176041, 22.421434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713242, 34.248840, 22.634201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606041, 34.634007, 22.646702>,  <36.541721, 34.865105, 22.654203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606041, 34.634007, 22.646702>,  <36.713242, 34.248840, 22.634201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606041, 34.634007, 22.646702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612286, 0.145187, 0.777192,
		0.743829, 0.227424, -0.628487,
		-0.268000, 0.962912, 0.031254,
		36.525642, 34.922878, 22.656078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362778, 34.643585, 22.611147>,  <36.713242, 34.248840, 22.634201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362778, 34.643585, 22.611147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.071472, 34.848965, 22.792692>,  <36.896687, 34.972195, 22.901619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.071472, 34.848965, 22.792692>,  <37.362778, 34.643585, 22.611147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071472, 34.848965, 22.792692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638360, 0.267404, 0.721798,
		0.249243, 0.815391, -0.522509,
		-0.728268, 0.513451, 0.453864,
		36.852993, 35.002998, 22.928852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744431, 35.180958, 22.862946>,  <37.362778, 34.643585, 22.611147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744431, 35.180958, 22.862946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401890, 35.189907, 23.069309>,  <37.196365, 35.195278, 23.193127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401890, 35.189907, 23.069309>,  <37.744431, 35.180958, 22.862946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401890, 35.189907, 23.069309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508851, 0.206702, 0.835671,
		-0.087939, 0.978148, -0.188396,
		-0.856351, 0.022377, 0.515908,
		37.144985, 35.196621, 23.224081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807022, 35.775612, 23.224594>,  <37.744431, 35.180958, 22.862946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807022, 35.775612, 23.224594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.538845, 35.534946, 23.398266>,  <37.377941, 35.390545, 23.502468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.538845, 35.534946, 23.398266>,  <37.807022, 35.775612, 23.224594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538845, 35.534946, 23.398266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430674, 0.160933, 0.888043,
		-0.604179, 0.782367, 0.151226,
		-0.670439, -0.601666, 0.434178,
		37.337715, 35.354446, 23.528519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594501, 36.126961, 23.888613>,  <37.807022, 35.775612, 23.224594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594501, 36.126961, 23.888613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474590, 35.747955, 23.933083>,  <37.402645, 35.520554, 23.959764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474590, 35.747955, 23.933083>,  <37.594501, 36.126961, 23.888613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474590, 35.747955, 23.933083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281482, 0.023501, 0.959279,
		-0.911538, 0.318864, 0.259661,
		-0.299778, -0.947509, 0.111177,
		37.384659, 35.463703, 23.966436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157089, 36.154743, 24.518209>,  <37.594501, 36.126961, 23.888613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157089, 36.154743, 24.518209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249458, 35.766750, 24.487698>,  <37.304878, 35.533955, 24.469391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249458, 35.766750, 24.487698>,  <37.157089, 36.154743, 24.518209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249458, 35.766750, 24.487698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297658, -0.004212, 0.954663,
		-0.926324, -0.243156, 0.287749,
		0.230920, -0.969978, -0.076279,
		37.318733, 35.475758, 24.464813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051392, 35.982201, 25.192438>,  <37.157089, 36.154743, 24.518209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051392, 35.982201, 25.192438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254448, 35.672543, 25.041180>,  <37.376282, 35.486748, 24.950424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254448, 35.672543, 25.041180>,  <37.051392, 35.982201, 25.192438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254448, 35.672543, 25.041180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304236, -0.249559, 0.919326,
		-0.806065, -0.581732, 0.108839,
		0.507640, -0.774150, -0.378145,
		37.406738, 35.440296, 24.927736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830360, 35.389141, 25.516544>,  <37.051392, 35.982201, 25.192438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830360, 35.389141, 25.516544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188713, 35.303432, 25.360863>,  <37.403725, 35.252007, 25.267454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188713, 35.303432, 25.360863>,  <36.830360, 35.389141, 25.516544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188713, 35.303432, 25.360863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268664, -0.436434, 0.858688,
		-0.353849, -0.873851, -0.333429,
		0.895885, -0.214265, -0.389204,
		37.457478, 35.239151, 25.244101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061958, 34.639687, 25.783470>,  <36.830360, 35.389141, 25.516544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061958, 34.639687, 25.783470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380444, 34.856865, 25.676699>,  <37.571533, 34.987171, 25.612637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380444, 34.856865, 25.676699>,  <37.061958, 34.639687, 25.783470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380444, 34.856865, 25.676699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510271, -0.365592, 0.778438,
		0.325067, -0.756008, -0.568141,
		0.796213, 0.542950, -0.266927,
		37.619308, 35.019749, 25.596621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677307, 34.281387, 26.052975>,  <37.061958, 34.639687, 25.783470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677307, 34.281387, 26.052975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.847263, 34.631397, 25.960201>,  <37.949238, 34.841404, 25.904537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.847263, 34.631397, 25.960201>,  <37.677307, 34.281387, 26.052975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847263, 34.631397, 25.960201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704277, -0.158560, 0.691991,
		0.568736, -0.457367, -0.683633,
		0.424891, 0.875028, -0.231935,
		37.974731, 34.893906, 25.890621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349831, 34.189106, 26.077379>,  <37.677307, 34.281387, 26.052975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349831, 34.189106, 26.077379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320713, 34.587791, 26.091616>,  <38.303242, 34.827003, 26.100157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320713, 34.587791, 26.091616>,  <38.349831, 34.189106, 26.077379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320713, 34.587791, 26.091616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611553, 0.016419, 0.791033,
		0.787847, 0.079351, -0.610737,
		-0.072797, 0.996711, 0.035592,
		38.298874, 34.886806, 26.102293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022892, 34.498508, 26.038479>,  <38.349831, 34.189106, 26.077379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022892, 34.498508, 26.038479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761589, 34.724838, 26.239716>,  <38.604809, 34.860638, 26.360458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761589, 34.724838, 26.239716>,  <39.022892, 34.498508, 26.038479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761589, 34.724838, 26.239716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558870, -0.087936, 0.824580,
		0.510806, 0.819824, -0.258777,
		-0.653254, 0.565823, 0.503093,
		38.565613, 34.894585, 26.390644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403614, 35.079483, 26.414989>,  <39.022892, 34.498508, 26.038479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403614, 35.079483, 26.414989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.058727, 35.020718, 26.608898>,  <38.851795, 34.985458, 26.725243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.058727, 35.020718, 26.608898>,  <39.403614, 35.079483, 26.414989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058727, 35.020718, 26.608898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499815, -0.091286, 0.861308,
		-0.082289, 0.984927, 0.152140,
		-0.862214, -0.146918, 0.484770,
		38.800064, 34.976643, 26.754330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472507, 35.546589, 27.003750>,  <39.403614, 35.079483, 26.414989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472507, 35.546589, 27.003750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.183437, 35.280491, 27.078794>,  <39.009995, 35.120834, 27.123821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.183437, 35.280491, 27.078794>,  <39.472507, 35.546589, 27.003750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183437, 35.280491, 27.078794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314940, -0.075305, 0.946119,
		-0.615271, 0.742820, 0.263933,
		-0.722672, -0.665242, 0.187611,
		38.966637, 35.080917, 27.135078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209866, 35.770962, 27.663578>,  <39.472507, 35.546589, 27.003750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209866, 35.770962, 27.663578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.115837, 35.385818, 27.610432>,  <39.059422, 35.154732, 27.578545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.115837, 35.385818, 27.610432>,  <39.209866, 35.770962, 27.663578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115837, 35.385818, 27.610432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292879, -0.200509, 0.934889,
		-0.926804, 0.180847, 0.329133,
		-0.235067, -0.962855, -0.132866,
		39.045319, 35.096962, 27.570572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836590, 35.561314, 28.327110>,  <39.209866, 35.770962, 27.663578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836590, 35.561314, 28.327110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934483, 35.218342, 28.146038>,  <38.993217, 35.012558, 28.037394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934483, 35.218342, 28.146038>,  <38.836590, 35.561314, 28.327110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934483, 35.218342, 28.146038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228544, -0.402712, 0.886335,
		-0.942271, -0.320370, 0.097405,
		0.244729, -0.857430, -0.452683,
		39.007900, 34.961113, 28.010233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366127, 34.963467, 28.525299>,  <38.836590, 35.561314, 28.327110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366127, 34.963467, 28.525299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722511, 34.817966, 28.416584>,  <38.936344, 34.730667, 28.351355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722511, 34.817966, 28.416584>,  <38.366127, 34.963467, 28.525299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722511, 34.817966, 28.416584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155629, -0.317680, 0.935339,
		-0.426570, -0.875652, -0.226431,
		0.890965, -0.363748, -0.271789,
		38.989799, 34.708843, 28.335047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459465, 34.310360, 28.818962>,  <38.366127, 34.963467, 28.525299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459465, 34.310360, 28.818962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840675, 34.404869, 28.743155>,  <39.069401, 34.461575, 28.697670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840675, 34.404869, 28.743155>,  <38.459465, 34.310360, 28.818962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840675, 34.404869, 28.743155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260283, -0.318857, 0.911364,
		0.154899, -0.917882, -0.365376,
		0.953027, 0.236270, -0.189518,
		39.126583, 34.475750, 28.686298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762230, 33.820324, 29.172823>,  <38.459465, 34.310360, 28.818962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762230, 33.820324, 29.172823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.029205, 34.114071, 29.123447>,  <39.189388, 34.290318, 29.093822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.029205, 34.114071, 29.123447>,  <38.762230, 33.820324, 29.172823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029205, 34.114071, 29.123447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259432, -0.073930, 0.962928,
		0.698014, -0.674717, -0.239861,
		0.667436, 0.734364, -0.123439,
		39.229435, 34.334381, 29.086416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282806, 33.590092, 29.626686>,  <38.762230, 33.820324, 29.172823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282806, 33.590092, 29.626686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.351078, 33.980473, 29.572458>,  <39.392040, 34.214703, 29.539921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.351078, 33.980473, 29.572458>,  <39.282806, 33.590092, 29.626686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351078, 33.980473, 29.572458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419673, 0.052479, 0.906157,
		0.891483, -0.211559, -0.400625,
		0.170682, 0.975955, -0.135570,
		39.402283, 34.273258, 29.531788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906181, 33.620586, 29.949194>,  <39.282806, 33.590092, 29.626686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906181, 33.620586, 29.949194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776421, 33.997879, 29.920694>,  <39.698566, 34.224255, 29.903595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776421, 33.997879, 29.920694>,  <39.906181, 33.620586, 29.949194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776421, 33.997879, 29.920694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509181, 0.237605, 0.827211,
		0.797182, 0.232067, -0.557356,
		-0.324399, 0.943233, -0.071251,
		39.679100, 34.280849, 29.899319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472195, 33.975349, 30.114222>,  <39.906181, 33.620586, 29.949194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472195, 33.975349, 30.114222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178356, 34.239403, 30.176950>,  <40.002052, 34.397835, 30.214588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178356, 34.239403, 30.176950>,  <40.472195, 33.975349, 30.114222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178356, 34.239403, 30.176950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449935, 0.300937, 0.840830,
		0.507866, 0.688230, -0.518084,
		-0.734595, 0.660133, 0.156823,
		39.957977, 34.437443, 30.223997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.772953, 34.545769, 30.353201>,  <40.472195, 33.975349, 30.114222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.772953, 34.545769, 30.353201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.396717, 34.598133, 30.478519>,  <40.170975, 34.629551, 30.553711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.396717, 34.598133, 30.478519>,  <40.772953, 34.545769, 30.353201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.396717, 34.598133, 30.478519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335351, 0.213521, 0.917578,
		0.053228, 0.968127, -0.244738,
		-0.940588, 0.130914, 0.313297,
		40.114540, 34.637409, 30.572508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727978, 35.220230, 30.589621>,  <40.772953, 34.545769, 30.353201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.727978, 35.220230, 30.589621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407757, 35.043121, 30.751143>,  <40.215622, 34.936855, 30.848057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407757, 35.043121, 30.751143>,  <40.727978, 35.220230, 30.589621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407757, 35.043121, 30.751143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200114, 0.437636, 0.876601,
		-0.564859, 0.782575, -0.261746,
		-0.800555, -0.442776, 0.403807,
		40.167591, 34.910290, 30.872284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332371, 35.728527, 31.014729>,  <40.727978, 35.220230, 30.589621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.332371, 35.728527, 31.014729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.221275, 35.365650, 31.141130>,  <40.154617, 35.147923, 31.216972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.221275, 35.365650, 31.141130>,  <40.332371, 35.728527, 31.014729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221275, 35.365650, 31.141130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130709, 0.290201, 0.947997,
		-0.951723, 0.304601, 0.037978,
		-0.277739, -0.907194, 0.316005,
		40.137955, 35.093491, 31.235931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888882, 35.864300, 31.731367>,  <40.332371, 35.728527, 31.014729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888882, 35.864300, 31.731367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021591, 35.488510, 31.697165>,  <40.101219, 35.263035, 31.676643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021591, 35.488510, 31.697165>,  <39.888882, 35.864300, 31.731367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021591, 35.488510, 31.697165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306702, 0.021704, 0.951558,
		-0.892109, -0.341929, 0.295340,
		0.331775, -0.939475, -0.085508,
		40.121124, 35.206669, 31.671513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610641, 35.464783, 32.231743>,  <39.888882, 35.864300, 31.731367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610641, 35.464783, 32.231743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927193, 35.245583, 32.123360>,  <40.117123, 35.114063, 32.058331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927193, 35.245583, 32.123360>,  <39.610641, 35.464783, 32.231743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927193, 35.245583, 32.123360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193050, -0.196525, 0.961306,
		-0.580051, -0.813061, -0.049733,
		0.791374, -0.548005, -0.270956,
		40.164604, 35.081181, 32.042072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428883, 34.842831, 32.562305>,  <39.610641, 35.464783, 32.231743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428883, 34.842831, 32.562305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823502, 34.847248, 32.497074>,  <40.060272, 34.849899, 32.457935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823502, 34.847248, 32.497074>,  <39.428883, 34.842831, 32.562305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823502, 34.847248, 32.497074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159157, -0.292226, 0.943013,
		-0.037241, -0.956285, -0.290054,
		0.986550, 0.011046, -0.163083,
		40.119469, 34.850563, 32.448151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661129, 34.373306, 33.009377>,  <39.428883, 34.842831, 32.562305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.661129, 34.373306, 33.009377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.993786, 34.577427, 32.921776>,  <40.193382, 34.699898, 32.869217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.993786, 34.577427, 32.921776>,  <39.661129, 34.373306, 33.009377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993786, 34.577427, 32.921776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407012, -0.291856, 0.865541,
		0.377766, -0.808960, -0.450418,
		0.831645, 0.510298, -0.219003,
		40.243279, 34.730515, 32.856075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297371, 33.873459, 33.020733>,  <39.661129, 34.373306, 33.009377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297371, 33.873459, 33.020733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.415394, 34.244984, 33.110394>,  <40.486206, 34.467899, 33.164188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.415394, 34.244984, 33.110394>,  <40.297371, 33.873459, 33.020733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415394, 34.244984, 33.110394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466529, -0.344775, 0.814544,
		0.833842, -0.135765, -0.535048,
		0.295057, 0.928816, 0.224149,
		40.503910, 34.523628, 33.177639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.912670, 33.737656, 33.380913>,  <40.297371, 33.873459, 33.020733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.912670, 33.737656, 33.380913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.844975, 34.122372, 33.467003>,  <40.804359, 34.353203, 33.518658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.844975, 34.122372, 33.467003>,  <40.912670, 33.737656, 33.380913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844975, 34.122372, 33.467003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545707, -0.090403, 0.833085,
		0.820709, 0.258437, -0.509555,
		-0.169234, 0.961789, 0.215226,
		40.794205, 34.410908, 33.531570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.511452, 33.949947, 33.710171>,  <40.912670, 33.737656, 33.380913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.511452, 33.949947, 33.710171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.292477, 34.272842, 33.798428>,  <41.161091, 34.466579, 33.851383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.292477, 34.272842, 33.798428>,  <41.511452, 33.949947, 33.710171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292477, 34.272842, 33.798428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606340, 0.200893, 0.769411,
		0.576769, 0.554991, -0.599435,
		-0.547438, 0.807234, 0.220645,
		41.128246, 34.515011, 33.864620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.982010, 34.590321, 33.659279>,  <41.511452, 33.949947, 33.710171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.982010, 34.590321, 33.659279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.673569, 34.638500, 33.909367>,  <41.488503, 34.667408, 34.059418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.673569, 34.638500, 33.909367>,  <41.982010, 34.590321, 33.659279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.673569, 34.638500, 33.909367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629248, 0.294083, 0.719418,
		-0.097209, 0.948159, -0.302563,
		-0.771101, 0.120454, 0.625215,
		41.442238, 34.674637, 34.096931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.238003, 35.004066, 34.167461>,  <41.982010, 34.590321, 33.659279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.238003, 35.004066, 34.167461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.888588, 34.936951, 34.350235>,  <41.678940, 34.896683, 34.459900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.888588, 34.936951, 34.350235>,  <42.238003, 35.004066, 34.167461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.888588, 34.936951, 34.350235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407552, 0.261171, 0.875037,
		-0.266159, 0.950598, -0.159759,
		-0.873533, -0.167789, 0.456932,
		41.626530, 34.886616, 34.487316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.154305, 35.519581, 34.682442>,  <42.238003, 35.004066, 34.167461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.154305, 35.519581, 34.682442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.914753, 35.222614, 34.802555>,  <41.771023, 35.044434, 34.874622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.914753, 35.222614, 34.802555>,  <42.154305, 35.519581, 34.682442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.914753, 35.222614, 34.802555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279589, 0.157536, 0.947107,
		-0.750451, 0.651155, 0.113226,
		-0.598877, -0.742414, 0.300279,
		41.735088, 34.999889, 34.892639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.774086, 35.717800, 35.394390>,  <42.154305, 35.519581, 34.682442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.774086, 35.717800, 35.394390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.756760, 35.319435, 35.362679>,  <41.746365, 35.080418, 35.343651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.756760, 35.319435, 35.362679>,  <41.774086, 35.717800, 35.394390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.756760, 35.319435, 35.362679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335879, -0.089255, 0.937666,
		-0.940908, 0.013987, 0.338372,
		-0.043316, -0.995911, -0.079283,
		41.743763, 35.020660, 35.338894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.388912, 35.522247, 35.955582>,  <41.774086, 35.717800, 35.394390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.388912, 35.522247, 35.955582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.592979, 35.195019, 35.849388>,  <41.715420, 34.998680, 35.785671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.592979, 35.195019, 35.849388>,  <41.388912, 35.522247, 35.955582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.592979, 35.195019, 35.849388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249120, -0.154890, 0.956006,
		-0.823204, -0.553865, 0.124778,
		0.510171, -0.818073, -0.265485,
		41.746033, 34.949596, 35.769741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.343800, 34.966908, 36.470016>,  <41.388912, 35.522247, 35.955582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.343800, 34.966908, 36.470016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.664433, 34.877594, 36.248165>,  <41.856812, 34.824005, 36.115055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.664433, 34.877594, 36.248165>,  <41.343800, 34.966908, 36.470016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.664433, 34.877594, 36.248165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536814, -0.139678, 0.832058,
		-0.263256, -0.964694, 0.007900,
		0.801578, -0.223285, -0.554632,
		41.904907, 34.810608, 36.081776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.765579, 34.337955, 36.789074>,  <41.343800, 34.966908, 36.470016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.765579, 34.337955, 36.789074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.028385, 34.528778, 36.555580>,  <42.186069, 34.643272, 36.415485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.028385, 34.528778, 36.555580>,  <41.765579, 34.337955, 36.789074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.028385, 34.528778, 36.555580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716849, -0.155664, 0.679629,
		0.233356, -0.864977, -0.444252,
		0.657018, 0.477057, -0.583733,
		42.225491, 34.671894, 36.380459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186096, 33.912895, 36.515144>,  <41.765579, 34.337955, 36.789074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.186096, 33.912895, 36.515144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.320671, 34.280762, 36.596153>,  <42.401417, 34.501484, 36.644760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.320671, 34.280762, 36.596153>,  <42.186096, 33.912895, 36.515144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.320671, 34.280762, 36.596153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591004, -0.373637, 0.714919,
		0.733160, -0.120834, -0.669235,
		0.336437, 0.919671, 0.202522,
		42.421604, 34.556664, 36.656910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.897003, 33.833065, 36.537037>,  <42.186096, 33.912895, 36.515144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.897003, 33.833065, 36.537037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.816967, 34.160851, 36.751865>,  <42.768948, 34.357521, 36.880760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.816967, 34.160851, 36.751865>,  <42.897003, 33.833065, 36.537037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.816967, 34.160851, 36.751865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588178, -0.337931, 0.734744,
		0.783589, 0.462905, -0.414376,
		-0.200086, 0.819465, 0.537069,
		42.756943, 34.406689, 36.912987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.553986, 33.913570, 36.921482>,  <42.897003, 33.833065, 36.537037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.553986, 33.913570, 36.921482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.278042, 34.133408, 37.109970>,  <43.112476, 34.265308, 37.223061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.278042, 34.133408, 37.109970>,  <43.553986, 33.913570, 36.921482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.278042, 34.133408, 37.109970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488791, -0.126540, 0.863175,
		0.534023, 0.825793, -0.181342,
		-0.689857, 0.549594, 0.471216,
		43.071083, 34.298286, 37.251335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.864281, 34.464684, 37.253765>,  <43.553986, 33.913570, 36.921482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.864281, 34.464684, 37.253765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.513565, 34.438168, 37.444279>,  <43.303135, 34.422256, 37.558586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.513565, 34.438168, 37.444279>,  <43.864281, 34.464684, 37.253765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.513565, 34.438168, 37.444279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475596, 0.026874, 0.879253,
		-0.071088, 0.997438, 0.007966,
		-0.876787, -0.066293, 0.476288,
		43.250530, 34.418282, 37.587166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.977581, 34.954178, 37.703274>,  <43.864281, 34.464684, 37.253765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.977581, 34.954178, 37.703274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.716999, 34.682949, 37.839405>,  <43.560650, 34.520210, 37.921082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.716999, 34.682949, 37.839405>,  <43.977581, 34.954178, 37.703274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.716999, 34.682949, 37.839405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459089, 0.004809, 0.888377,
		-0.604022, 0.734978, 0.308163,
		-0.651456, -0.678074, 0.340325,
		43.521561, 34.479527, 37.941502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.765141, 35.362316, 38.234749>,  <43.977581, 34.954178, 37.703274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.765141, 35.362316, 38.234749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.741180, 34.964611, 38.270176>,  <43.726803, 34.725986, 38.291431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.741180, 34.964611, 38.270176>,  <43.765141, 35.362316, 38.234749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.741180, 34.964611, 38.270176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134839, 0.079856, 0.987644,
		-0.989055, 0.071102, 0.129283,
		-0.059900, -0.994267, 0.088569,
		43.723209, 34.666332, 38.296745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.697041, 35.077126, 39.015514>,  <43.765141, 35.362316, 38.234749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.697041, 35.077126, 39.015514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.725502, 34.700455, 38.883957>,  <43.742577, 34.474453, 38.805023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.725502, 34.700455, 38.883957>,  <43.697041, 35.077126, 39.015514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.725502, 34.700455, 38.883957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293041, -0.295448, 0.909306,
		-0.953449, -0.161079, 0.254929,
		0.071152, -0.941681, -0.328898,
		43.746849, 34.417950, 38.785286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.991329, 34.726517, 39.582382>,  <43.697041, 35.077126, 39.015514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.991329, 34.726517, 39.582382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.189220, 34.379925, 39.609085>,  <44.307953, 34.171970, 39.625107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.189220, 34.379925, 39.609085>,  <43.991329, 34.726517, 39.582382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.189220, 34.379925, 39.609085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547908, -0.370615, -0.749961,
		0.674570, 0.334446, -0.658105,
		0.494725, -0.866481, 0.066760,
		44.337639, 34.119980, 39.629112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.335152, 34.605759, 38.821266>,  <43.991329, 34.726517, 39.582382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.335152, 34.605759, 38.821266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.209530, 34.330696, 39.083107>,  <44.134155, 34.165657, 39.240211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.209530, 34.330696, 39.083107>,  <44.335152, 34.605759, 38.821266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.209530, 34.330696, 39.083107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651622, -0.345319, -0.675384,
		0.690478, -0.638657, -0.339644,
		-0.314053, -0.687657, 0.654598,
		44.115314, 34.124397, 39.279488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.306786, 33.913567, 38.475060>,  <44.335152, 34.605759, 38.821266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.306786, 33.913567, 38.475060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.027065, 33.939144, 38.759842>,  <43.859234, 33.954491, 38.930714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.027065, 33.939144, 38.759842>,  <44.306786, 33.913567, 38.475060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.027065, 33.939144, 38.759842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714780, -0.073875, -0.695437,
		0.008128, -0.995216, 0.097366,
		-0.699302, 0.063943, 0.711960,
		43.817276, 33.958328, 38.973431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.794533, 33.371227, 38.413952>,  <44.306786, 33.913567, 38.475060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.794533, 33.371227, 38.413952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.623207, 33.680981, 38.600235>,  <43.520412, 33.866833, 38.712006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.623207, 33.680981, 38.600235>,  <43.794533, 33.371227, 38.413952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.623207, 33.680981, 38.600235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676208, 0.067196, -0.733640,
		-0.599410, -0.629143, 0.494861,
		-0.428311, 0.774380, 0.465710,
		43.494713, 33.913296, 38.739948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.059052, 33.363007, 38.354313>,  <43.794533, 33.371227, 38.413952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.059052, 33.363007, 38.354313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.178223, 33.743660, 38.384327>,  <43.249725, 33.972054, 38.402336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.178223, 33.743660, 38.384327>,  <43.059052, 33.363007, 38.354313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.178223, 33.743660, 38.384327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552913, 0.236107, -0.799087,
		-0.778154, 0.196587, 0.596515,
		0.297932, 0.951634, 0.075032,
		43.267601, 34.029152, 38.406837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.456375, 33.858204, 38.200050>,  <43.059052, 33.363007, 38.354313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.456375, 33.858204, 38.200050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.792656, 34.071079, 38.160049>,  <42.994423, 34.198803, 38.136047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.792656, 34.071079, 38.160049>,  <42.456375, 33.858204, 38.200050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.792656, 34.071079, 38.160049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423951, 0.531978, -0.732984,
		-0.336885, 0.658616, 0.672855,
		0.840698, 0.532188, -0.100006,
		43.044865, 34.230736, 38.130047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.216957, 34.538067, 38.274921>,  <42.456375, 33.858204, 38.200050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.216957, 34.538067, 38.274921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.553928, 34.506134, 38.061779>,  <42.756111, 34.486977, 37.933891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.553928, 34.506134, 38.061779>,  <42.216957, 34.538067, 38.274921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.553928, 34.506134, 38.061779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446207, 0.450969, -0.772998,
		0.302010, 0.888962, 0.344290,
		0.842430, -0.079829, -0.532859,
		42.806656, 34.482185, 37.901920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.336842, 35.116096, 37.929710>,  <42.216957, 34.538067, 38.274921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.336842, 35.116096, 37.929710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.560810, 34.882168, 37.694946>,  <42.695190, 34.741810, 37.554089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.560810, 34.882168, 37.694946>,  <42.336842, 35.116096, 37.929710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.560810, 34.882168, 37.694946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387187, 0.441567, -0.809385,
		0.732509, 0.680439, 0.020808,
		0.559926, -0.584826, -0.586909,
		42.728786, 34.706718, 37.518875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.434429, 35.556572, 37.333790>,  <42.336842, 35.116096, 37.929710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.434429, 35.556572, 37.333790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.562168, 35.191296, 37.232521>,  <42.638809, 34.972130, 37.171761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.562168, 35.191296, 37.232521>,  <42.434429, 35.556572, 37.333790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.562168, 35.191296, 37.232521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143416, 0.217515, -0.965463,
		0.936724, 0.344625, -0.061505,
		0.319344, -0.913193, -0.253176,
		42.657970, 34.917339, 37.156567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.024643, 35.668224, 36.822090>,  <42.434429, 35.556572, 37.333790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.024643, 35.668224, 36.822090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.809101, 35.332932, 36.788643>,  <42.679775, 35.131756, 36.768574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.809101, 35.332932, 36.788643>,  <43.024643, 35.668224, 36.822090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.809101, 35.332932, 36.788643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243922, 0.250273, -0.936945,
		0.806309, -0.484483, -0.339326,
		-0.538858, -0.838236, -0.083621,
		42.647442, 35.081459, 36.763557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.874958, 35.700508, 36.028008>,  <43.024643, 35.668224, 36.822090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.874958, 35.700508, 36.028008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.833836, 35.337841, 36.191654>,  <42.809162, 35.120239, 36.289845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.833836, 35.337841, 36.191654>,  <42.874958, 35.700508, 36.028008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.833836, 35.337841, 36.191654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516966, -0.302685, -0.800705,
		0.849810, -0.293819, -0.437599,
		-0.102808, -0.906671, 0.409119,
		42.802994, 35.065838, 36.314388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.064583, 35.135300, 35.528057>,  <42.874958, 35.700508, 36.028008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.064583, 35.135300, 35.528057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.805393, 35.003113, 35.802555>,  <42.649879, 34.923801, 35.967255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.805393, 35.003113, 35.802555>,  <43.064583, 35.135300, 35.528057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.805393, 35.003113, 35.802555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652056, -0.224969, -0.724025,
		0.393649, -0.916614, -0.069709,
		-0.647969, -0.330465, 0.686242,
		42.611004, 34.903973, 36.008427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.904118, 34.443737, 35.368252>,  <43.064583, 35.135300, 35.528057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.904118, 34.443737, 35.368252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.606853, 34.566181, 35.606247>,  <42.428493, 34.639648, 35.749046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.606853, 34.566181, 35.606247>,  <42.904118, 34.443737, 35.368252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.606853, 34.566181, 35.606247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669091, -0.347551, -0.656906,
		0.005705, -0.886288, 0.463099,
		-0.743159, 0.306108, 0.594990,
		42.383907, 34.658012, 35.784744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.439678, 33.866291, 35.402359>,  <42.904118, 34.443737, 35.368252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.439678, 33.866291, 35.402359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246880, 34.208523, 35.477894>,  <42.131199, 34.413864, 35.523216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246880, 34.208523, 35.477894>,  <42.439678, 33.866291, 35.402359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.246880, 34.208523, 35.477894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646920, -0.202161, -0.735272,
		-0.590910, -0.476562, 0.650934,
		-0.481996, 0.855582, 0.188839,
		42.102280, 34.465199, 35.534546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.721130, 33.736912, 35.426949>,  <42.439678, 33.866291, 35.402359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.721130, 33.736912, 35.426949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.723991, 34.133984, 35.378712>,  <41.725708, 34.372227, 35.349770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.723991, 34.133984, 35.378712>,  <41.721130, 33.736912, 35.426949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.723991, 34.133984, 35.378712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725586, -0.077834, -0.683716,
		-0.688094, 0.092393, 0.719715,
		0.007153, 0.992676, -0.120596,
		41.726139, 34.431786, 35.342533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198303, 33.811329, 34.941402>,  <41.721130, 33.736912, 35.426949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198303, 33.811329, 34.941402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.333000, 34.187393, 34.962204>,  <41.413818, 34.413033, 34.974686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.333000, 34.187393, 34.962204>,  <41.198303, 33.811329, 34.941402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.333000, 34.187393, 34.962204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606619, 0.258854, -0.751670,
		-0.720152, 0.221570, 0.657486,
		0.336740, 0.940160, 0.052006,
		41.434021, 34.469440, 34.977806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672131, 34.306347, 35.141079>,  <41.198303, 33.811329, 34.941402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.672131, 34.306347, 35.141079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.962112, 34.475170, 34.923344>,  <41.136101, 34.576462, 34.792702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.962112, 34.475170, 34.923344>,  <40.672131, 34.306347, 35.141079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.962112, 34.475170, 34.923344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688710, 0.456384, -0.563376,
		0.010652, 0.783315, 0.621534,
		0.724959, 0.422055, -0.544338,
		41.179600, 34.601788, 34.760040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408283, 34.883675, 34.886387>,  <40.672131, 34.306347, 35.141079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.408283, 34.883675, 34.886387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716297, 34.822472, 34.638634>,  <40.901108, 34.785751, 34.489983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716297, 34.822472, 34.638634>,  <40.408283, 34.883675, 34.886387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716297, 34.822472, 34.638634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579889, 0.236948, -0.779477,
		0.266023, 0.959399, 0.093734,
		0.770039, -0.153003, -0.619379,
		40.947308, 34.776569, 34.452820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274559, 35.342632, 34.384949>,  <40.408283, 34.883675, 34.886387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274559, 35.342632, 34.384949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.540070, 35.094189, 34.218277>,  <40.699375, 34.945122, 34.118275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.540070, 35.094189, 34.218277>,  <40.274559, 35.342632, 34.384949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540070, 35.094189, 34.218277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357244, 0.226166, -0.906215,
		0.657098, 0.750381, -0.071765,
		0.663776, -0.621110, -0.416683,
		40.739201, 34.907856, 34.093273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324459, 35.610855, 33.666130>,  <40.274559, 35.342632, 34.384949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324459, 35.610855, 33.666130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549248, 35.281136, 33.638672>,  <40.684120, 35.083302, 33.622196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549248, 35.281136, 33.638672>,  <40.324459, 35.610855, 33.666130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549248, 35.281136, 33.638672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228052, -0.074637, -0.970784,
		0.795096, 0.561209, -0.229928,
		0.561974, -0.824302, -0.068642,
		40.717838, 35.033844, 33.618080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830803, 35.731205, 33.084949>,  <40.324459, 35.610855, 33.666130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.830803, 35.731205, 33.084949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761024, 35.340813, 33.137142>,  <40.719158, 35.106575, 33.168457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761024, 35.340813, 33.137142>,  <40.830803, 35.731205, 33.084949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761024, 35.340813, 33.137142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292340, -0.075207, -0.953353,
		0.940270, -0.204451, -0.272200,
		-0.174442, -0.975984, 0.130484,
		40.708691, 35.048019, 33.176289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254009, 35.407726, 32.550957>,  <40.830803, 35.731205, 33.084949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.254009, 35.407726, 32.550957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946903, 35.176277, 32.661034>,  <40.762638, 35.037407, 32.727081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946903, 35.176277, 32.661034>,  <41.254009, 35.407726, 32.550957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946903, 35.176277, 32.661034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138260, -0.269771, -0.952947,
		0.625634, -0.769690, 0.127122,
		-0.767768, -0.578620, 0.275195,
		40.716572, 35.002689, 32.743591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.388958, 34.719772, 32.295506>,  <41.254009, 35.407726, 32.550957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.388958, 34.719772, 32.295506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.994442, 34.769474, 32.338928>,  <40.757732, 34.799297, 32.364983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.994442, 34.769474, 32.338928>,  <41.388958, 34.719772, 32.295506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.994442, 34.769474, 32.338928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127752, -0.158723, -0.979023,
		-0.104418, -0.979473, 0.172421,
		-0.986294, 0.124255, 0.108556,
		40.698555, 34.806751, 32.371494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.151340, 34.297386, 31.734898>,  <41.388958, 34.719772, 32.295506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.151340, 34.297386, 31.734898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.844490, 34.528671, 31.846031>,  <40.660381, 34.667442, 31.912712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.844490, 34.528671, 31.846031>,  <41.151340, 34.297386, 31.734898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844490, 34.528671, 31.846031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396406, -0.086750, -0.913968,
		-0.504365, -0.811262, 0.295754,
		-0.767124, 0.578212, 0.277835,
		40.614353, 34.702133, 31.929382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476856, 33.918819, 31.591278>,  <41.151340, 34.297386, 31.734898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.476856, 33.918819, 31.591278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407822, 34.312645, 31.602922>,  <40.366402, 34.548939, 31.609909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407822, 34.312645, 31.602922>,  <40.476856, 33.918819, 31.591278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407822, 34.312645, 31.602922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529283, -0.067774, -0.845734,
		-0.830706, -0.161372, 0.532810,
		-0.172588, 0.984564, 0.029111,
		40.356045, 34.608013, 31.611656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581406, 33.556767, 30.861990>,  <40.476856, 33.918819, 31.591278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.581406, 33.556767, 30.861990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463554, 33.261494, 31.104734>,  <40.392845, 33.084332, 31.250381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463554, 33.261494, 31.104734>,  <40.581406, 33.556767, 30.861990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463554, 33.261494, 31.104734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362782, 0.673909, 0.643612,
		-0.884072, -0.030531, -0.466353,
		-0.294629, -0.738183, 0.606860,
		40.375164, 33.040039, 31.286793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.226582, 33.336414, 30.680143>,  <40.581406, 33.556767, 30.861990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.226582, 33.336414, 30.680143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.273808, 33.680607, 30.878387>,  <41.302143, 33.887123, 30.997334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.273808, 33.680607, 30.878387>,  <41.226582, 33.336414, 30.680143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.273808, 33.680607, 30.878387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921505, -0.280901, 0.268186,
		0.369987, 0.425043, -0.826104,
		0.118063, 0.860484, 0.495609,
		41.309227, 33.938751, 31.027071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.845695, 33.794682, 30.460491>,  <41.226582, 33.336414, 30.680143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.845695, 33.794682, 30.460491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.764030, 33.863373, 30.845995>,  <41.715031, 33.904587, 31.077297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.764030, 33.863373, 30.845995>,  <41.845695, 33.794682, 30.460491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.764030, 33.863373, 30.845995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943614, -0.227554, 0.240443,
		0.260596, 0.958504, -0.115582,
		-0.204164, 0.171723, 0.963757,
		41.702782, 33.914890, 31.135122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.332798, 34.336479, 30.912476>,  <41.845695, 33.794682, 30.460491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.332798, 34.336479, 30.912476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.158840, 34.046078, 31.125561>,  <42.054466, 33.871838, 31.253412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.158840, 34.046078, 31.125561>,  <42.332798, 34.336479, 30.912476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.158840, 34.046078, 31.125561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898283, -0.391094, 0.200332,
		0.062898, 0.565649, 0.822244,
		-0.434892, -0.726007, 0.532712,
		42.028374, 33.828274, 31.285374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.925301, 34.146080, 31.207008>,  <42.332798, 34.336479, 30.912476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.925301, 34.146080, 31.207008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.651756, 33.883167, 31.333696>,  <42.487629, 33.725418, 31.409710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.651756, 33.883167, 31.333696>,  <42.925301, 34.146080, 31.207008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.651756, 33.883167, 31.333696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729613, -0.616766, 0.295405,
		0.001178, 0.433100, 0.901345,
		-0.683859, -0.657285, 0.316721,
		42.446598, 33.685982, 31.428713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.873550, 34.122803, 31.928991>,  <42.925301, 34.146080, 31.207008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.873550, 34.122803, 31.928991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.791103, 33.763546, 31.773630>,  <42.741634, 33.547993, 31.680412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.791103, 33.763546, 31.773630>,  <42.873550, 34.122803, 31.928991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.791103, 33.763546, 31.773630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793868, -0.385544, 0.470245,
		-0.572094, -0.211417, 0.792472,
		-0.206115, -0.898142, -0.388404,
		42.729267, 33.494102, 31.657108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.155212, 34.486263, 32.513126>,  <42.873550, 34.122803, 31.928991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.155212, 34.486263, 32.513126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.451702, 34.503094, 32.781101>,  <43.629597, 34.513191, 32.941887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.451702, 34.503094, 32.781101>,  <43.155212, 34.486263, 32.513126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.451702, 34.503094, 32.781101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475428, -0.737464, -0.479703,
		0.473873, 0.674075, -0.566628,
		0.741223, 0.042072, 0.669939,
		43.674068, 34.515717, 32.982082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.877689, 34.762344, 32.277935>,  <43.155212, 34.486263, 32.513126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.877689, 34.762344, 32.277935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.884872, 34.492287, 32.572922>,  <43.889183, 34.330250, 32.749912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.884872, 34.492287, 32.572922>,  <43.877689, 34.762344, 32.277935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.884872, 34.492287, 32.572922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336952, -0.690351, -0.640218,
		0.941350, 0.259984, 0.215098,
		0.017953, -0.675147, 0.737464,
		43.890259, 34.289742, 32.794163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.552944, 34.626640, 32.317093>,  <43.877689, 34.762344, 32.277935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.552944, 34.626640, 32.317093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.281261, 34.348824, 32.411995>,  <44.118252, 34.182133, 32.468937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.281261, 34.348824, 32.411995>,  <44.552944, 34.626640, 32.317093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.281261, 34.348824, 32.411995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422637, -0.634407, -0.647229,
		0.600043, -0.339330, 0.724433,
		-0.679210, -0.694537, 0.237258,
		44.077499, 34.140461, 32.483173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.885441, 34.027561, 32.580666>,  <44.552944, 34.626640, 32.317093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.885441, 34.027561, 32.580666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.545853, 33.963600, 32.379196>,  <44.342102, 33.925224, 32.258312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.545853, 33.963600, 32.379196>,  <44.885441, 34.027561, 32.580666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.545853, 33.963600, 32.379196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510649, -0.493518, -0.704044,
		-0.135995, -0.854911, 0.500633,
		-0.848966, -0.159901, -0.503675,
		44.291164, 33.915630, 32.228092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.922909, 33.685413, 33.260963>,  <44.885441, 34.027561, 32.580666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.922909, 33.685413, 33.260963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.275543, 33.503239, 33.211369>,  <45.487125, 33.393932, 33.181610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.275543, 33.503239, 33.211369>,  <44.922909, 33.685413, 33.260963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.275543, 33.503239, 33.211369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457802, 0.761042, 0.459600,
		-0.114962, -0.461940, 0.879429,
		0.881590, -0.455441, -0.123986,
		45.540020, 33.366608, 33.174171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.291340, 33.575520, 33.839382>,  <44.922909, 33.685413, 33.260963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.291340, 33.575520, 33.839382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.521835, 33.660683, 33.523758>,  <45.660133, 33.711781, 33.334381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.521835, 33.660683, 33.523758>,  <45.291340, 33.575520, 33.839382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.521835, 33.660683, 33.523758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135568, 0.927196, 0.349183,
		0.805961, -0.308184, 0.505421,
		0.576237, 0.212909, -0.789063,
		45.694706, 33.724556, 33.287041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.463837, 34.063568, 34.530037>,  <45.291340, 33.575520, 33.839382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.463837, 34.063568, 34.530037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.372826, 34.015194, 34.916531>,  <45.318218, 33.986168, 35.148426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.372826, 34.015194, 34.916531>,  <45.463837, 34.063568, 34.530037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.372826, 34.015194, 34.916531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446757, 0.868700, 0.213935,
		-0.865239, 0.480348, -0.143626,
		-0.227531, -0.120939, 0.966232,
		45.304565, 33.978912, 35.206402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.115234, 33.926418, 34.224213>,  <45.463837, 34.063568, 34.530037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.115234, 33.926418, 34.224213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.393768, 34.202335, 34.303505>,  <46.560890, 34.367886, 34.351078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.393768, 34.202335, 34.303505>,  <46.115234, 33.926418, 34.224213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.393768, 34.202335, 34.303505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483095, 0.246219, 0.840236,
		0.530784, -0.680851, 0.504688,
		0.696339, 0.689796, 0.198227,
		46.602669, 34.409275, 34.362972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.371555, 33.746735, 34.894768>,  <46.115234, 33.926418, 34.224213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.371555, 33.746735, 34.894768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.319805, 34.128506, 34.787197>,  <46.288757, 34.357571, 34.722656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.319805, 34.128506, 34.787197>,  <46.371555, 33.746735, 34.894768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.319805, 34.128506, 34.787197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530686, 0.162455, 0.831854,
		0.837637, 0.250336, 0.485486,
		-0.129374, 0.954432, -0.268928,
		46.280994, 34.414837, 34.706520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.799065, 33.273609, 35.303875>,  <46.371555, 33.746735, 34.894768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.799065, 33.273609, 35.303875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.119278, 33.263790, 35.543388>,  <47.311405, 33.257900, 35.687096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.119278, 33.263790, 35.543388>,  <46.799065, 33.273609, 35.303875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.119278, 33.263790, 35.543388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119138, 0.985736, -0.118875,
		-0.587321, 0.166501, 0.792043,
		0.800538, -0.024544, 0.598780,
		47.359440, 33.256428, 35.723022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.707378, 33.884995, 35.727711>,  <46.799065, 33.273609, 35.303875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.707378, 33.884995, 35.727711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.086731, 33.771336, 35.671387>,  <47.314342, 33.703140, 35.637592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.086731, 33.771336, 35.671387>,  <46.707378, 33.884995, 35.727711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.086731, 33.771336, 35.671387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260827, 0.951473, -0.163303,
		0.180381, 0.118146, 0.976476,
		0.948384, -0.284148, -0.140812,
		47.371246, 33.686092, 35.629143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.082031, 34.403164, 35.981396>,  <46.707378, 33.884995, 35.727711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.082031, 34.403164, 35.981396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.319904, 34.205608, 35.727646>,  <47.462627, 34.087074, 35.575397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.319904, 34.205608, 35.727646>,  <47.082031, 34.403164, 35.981396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.319904, 34.205608, 35.727646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363098, 0.868994, -0.336168,
		0.717297, -0.030428, 0.696103,
		0.594680, -0.493886, -0.634375,
		47.498310, 34.057442, 35.537334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.894863, 34.560680, 36.003822>,  <47.082031, 34.403164, 35.981396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.894863, 34.560680, 36.003822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.691261, 34.477989, 35.669594>,  <47.569099, 34.428375, 35.469059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.691261, 34.477989, 35.669594>,  <47.894863, 34.560680, 36.003822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.691261, 34.477989, 35.669594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029297, 0.966007, -0.256851,
		0.860264, -0.155219, -0.485647,
		-0.509007, -0.206731, -0.835568,
		47.538559, 34.415970, 35.418922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.162666, 35.018913, 35.439335>,  <47.894863, 34.560680, 36.003822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.162666, 35.018913, 35.439335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.788399, 34.934383, 35.326294>,  <47.563839, 34.883663, 35.258469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.788399, 34.934383, 35.326294>,  <48.162666, 35.018913, 35.439335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.788399, 34.934383, 35.326294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027189, 0.841638, -0.539358,
		0.351827, -0.496977, -0.793241,
		-0.935670, -0.211328, -0.282599,
		47.507698, 34.870983, 35.241516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.137486, 34.993805, 34.767036>,  <48.162666, 35.018913, 35.439335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.137486, 34.993805, 34.767036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.757549, 35.074696, 34.862465>,  <47.529587, 35.123230, 34.919724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.757549, 35.074696, 34.862465>,  <48.137486, 34.993805, 34.767036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.757549, 35.074696, 34.862465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002710, 0.768114, -0.640308,
		-0.312735, -0.607541, -0.730130,
		-0.949837, 0.202225, 0.238570,
		47.472599, 35.135365, 34.934036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.655788, 32.408897, 24.010395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.348839, 32.580811, 24.200733>,  <32.164669, 32.683960, 24.314936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.348839, 32.580811, 24.200733>,  <32.655788, 32.408897, 24.010395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348839, 32.580811, 24.200733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393910, -0.269584, 0.878726,
		0.505942, 0.861749, 0.037575,
		-0.767371, 0.429783, 0.475845,
		32.118629, 32.709747, 24.343487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991493, 32.826450, 24.491096>,  <32.655788, 32.408897, 24.010395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991493, 32.826450, 24.491096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.615902, 32.802177, 24.626530>,  <32.390549, 32.787613, 24.707788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.615902, 32.802177, 24.626530>,  <32.991493, 32.826450, 24.491096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615902, 32.802177, 24.626530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343958, -0.155221, 0.926067,
		-0.003642, 0.986014, 0.166621,
		-0.938978, -0.060683, 0.338582,
		32.334209, 32.783974, 24.728104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975525, 33.363770, 24.999559>,  <32.991493, 32.826450, 24.491096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975525, 33.363770, 24.999559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.685566, 33.099159, 25.076406>,  <32.511589, 32.940395, 25.122515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.685566, 33.099159, 25.076406>,  <32.975525, 33.363770, 24.999559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685566, 33.099159, 25.076406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320908, -0.077517, 0.943933,
		-0.609540, 0.745909, 0.268479,
		-0.724900, -0.661522, 0.192118,
		32.468098, 32.900703, 25.134043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774330, 33.536724, 25.624813>,  <32.975525, 33.363770, 24.999559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774330, 33.536724, 25.624813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.606728, 33.174549, 25.597620>,  <32.506165, 32.957245, 25.581305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.606728, 33.174549, 25.597620>,  <32.774330, 33.536724, 25.624813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606728, 33.174549, 25.597620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276173, -0.198414, 0.940405,
		-0.864963, 0.375262, 0.333193,
		-0.419008, -0.905434, -0.067983,
		32.481026, 32.902920, 25.577225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302437, 33.404354, 26.190418>,  <32.774330, 33.536724, 25.624813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302437, 33.404354, 26.190418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.394760, 33.038662, 26.057209>,  <32.450153, 32.819244, 25.977283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.394760, 33.038662, 26.057209>,  <32.302437, 33.404354, 26.190418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394760, 33.038662, 26.057209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318890, -0.252286, 0.913598,
		-0.919259, -0.317063, 0.233310,
		0.230808, -0.914234, -0.333024,
		32.464001, 32.764393, 25.957302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077431, 32.981026, 26.796284>,  <32.302437, 33.404354, 26.190418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077431, 32.981026, 26.796284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.317501, 32.763546, 26.561617>,  <32.461544, 32.633057, 26.420816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.317501, 32.763546, 26.561617>,  <32.077431, 32.981026, 26.796284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317501, 32.763546, 26.561617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307426, -0.520319, 0.796717,
		-0.738430, -0.658527, -0.145135,
		0.600176, -0.543701, -0.586667,
		32.497555, 32.600437, 26.385616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021847, 32.387177, 27.065641>,  <32.077431, 32.981026, 26.796284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021847, 32.387177, 27.065641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.366837, 32.383484, 26.863235>,  <32.573830, 32.381268, 26.741791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.366837, 32.383484, 26.863235>,  <32.021847, 32.387177, 27.065641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366837, 32.383484, 26.863235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498807, -0.153610, 0.852992,
		-0.085604, -0.988088, -0.127880,
		0.862475, -0.009232, -0.506016,
		32.625580, 32.380714, 26.711432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.436737, 31.801035, 27.297209>,  <32.021847, 32.387177, 27.065641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.436737, 31.801035, 27.297209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.710503, 32.026878, 27.112690>,  <32.874763, 32.162384, 27.001978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.710503, 32.026878, 27.112690>,  <32.436737, 31.801035, 27.297209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710503, 32.026878, 27.112690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539510, 0.033383, 0.841317,
		0.490413, -0.824684, -0.281764,
		0.684415, 0.564608, -0.461297,
		32.915829, 32.196262, 26.974300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029495, 31.569843, 27.553402>,  <32.436737, 31.801035, 27.297209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029495, 31.569843, 27.553402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.128609, 31.927900, 27.405172>,  <33.188076, 32.142735, 27.316235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.128609, 31.927900, 27.405172>,  <33.029495, 31.569843, 27.553402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128609, 31.927900, 27.405172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655868, 0.126538, 0.744195,
		0.713052, -0.427444, -0.555741,
		0.247779, 0.895142, -0.370575,
		33.202942, 32.196442, 27.294001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680676, 31.529827, 27.360279>,  <33.029495, 31.569843, 27.553402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680676, 31.529827, 27.360279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.618118, 31.918102, 27.433281>,  <33.580582, 32.151066, 27.477083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.618118, 31.918102, 27.433281>,  <33.680676, 31.529827, 27.360279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618118, 31.918102, 27.433281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672163, -0.030789, 0.739762,
		0.723696, 0.238370, -0.647644,
		-0.156397, 0.970686, 0.182506,
		33.571198, 32.209309, 27.488033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360428, 31.691441, 27.523607>,  <33.680676, 31.529827, 27.360279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360428, 31.691441, 27.523607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.113453, 31.982002, 27.644348>,  <33.965267, 32.156338, 27.716793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.113453, 31.982002, 27.644348>,  <34.360428, 31.691441, 27.523607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113453, 31.982002, 27.644348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629355, 0.225969, 0.743539,
		0.471898, 0.649060, -0.596686,
		-0.617433, 0.726402, 0.301855,
		33.928223, 32.199924, 27.734905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805012, 32.342678, 27.658285>,  <34.360428, 31.691441, 27.523607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805012, 32.342678, 27.658285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.472790, 32.365791, 27.879856>,  <34.273457, 32.379662, 28.012798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.472790, 32.365791, 27.879856>,  <34.805012, 32.342678, 27.658285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472790, 32.365791, 27.879856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524008, 0.417999, 0.742087,
		-0.188660, 0.906608, -0.377451,
		-0.830556, 0.057785, 0.553929,
		34.223621, 32.383125, 28.046036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730583, 33.046997, 27.933878>,  <34.805012, 32.342678, 27.658285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730583, 33.046997, 27.933878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.532093, 32.790382, 28.167868>,  <34.412998, 32.636414, 28.308262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.532093, 32.790382, 28.167868>,  <34.730583, 33.046997, 27.933878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532093, 32.790382, 28.167868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522510, 0.317418, 0.791346,
		-0.693358, 0.698339, 0.177699,
		-0.496223, -0.641536, 0.584974,
		34.383224, 32.597923, 28.343359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844532, 33.404819, 28.528597>,  <34.730583, 33.046997, 27.933878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844532, 33.404819, 28.528597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.675671, 33.068916, 28.665180>,  <34.574356, 32.867374, 28.747129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.675671, 33.068916, 28.665180>,  <34.844532, 33.404819, 28.528597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675671, 33.068916, 28.665180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380073, 0.178003, 0.907667,
		-0.823002, 0.512951, 0.244026,
		-0.422151, -0.839760, 0.341456,
		34.549026, 32.816990, 28.767616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341969, 33.568066, 29.142698>,  <34.844532, 33.404819, 28.528597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341969, 33.568066, 29.142698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.464809, 33.187756, 29.159262>,  <34.538513, 32.959568, 29.169199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.464809, 33.187756, 29.159262>,  <34.341969, 33.568066, 29.142698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464809, 33.187756, 29.159262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320387, 0.144261, 0.936238,
		-0.896125, -0.274255, 0.348919,
		0.307104, -0.950775, 0.041408,
		34.556942, 32.902523, 29.171684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034351, 33.200218, 29.771673>,  <34.341969, 33.568066, 29.142698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034351, 33.200218, 29.771673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.355312, 32.989864, 29.658819>,  <34.547890, 32.863651, 29.591106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.355312, 32.989864, 29.658819>,  <34.034351, 33.200218, 29.771673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355312, 32.989864, 29.658819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371075, 0.069393, 0.926007,
		-0.467394, -0.847721, 0.250823,
		0.802400, -0.525884, -0.282134,
		34.596031, 32.832100, 29.574179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065975, 32.771305, 30.340879>,  <34.034351, 33.200218, 29.771673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065975, 32.771305, 30.340879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.425697, 32.782173, 30.166288>,  <34.641529, 32.788692, 30.061533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.425697, 32.782173, 30.166288>,  <34.065975, 32.771305, 30.340879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425697, 32.782173, 30.166288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426698, 0.164148, 0.889373,
		0.095810, -0.986062, 0.136026,
		0.899305, 0.027169, -0.436477,
		34.695488, 32.790325, 30.035345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556820, 32.384270, 30.768276>,  <34.065975, 32.771305, 30.340879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556820, 32.384270, 30.768276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.805473, 32.602001, 30.542967>,  <34.954666, 32.732639, 30.407782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.805473, 32.602001, 30.542967>,  <34.556820, 32.384270, 30.768276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805473, 32.602001, 30.542967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606164, 0.121168, 0.786056,
		0.496126, -0.830073, -0.254633,
		0.621631, 0.544332, -0.563275,
		34.991962, 32.765301, 30.373985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210560, 32.229019, 31.031912>,  <34.556820, 32.384270, 30.768276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210560, 32.229019, 31.031912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.298874, 32.554111, 30.816240>,  <35.351864, 32.749168, 30.686836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.298874, 32.554111, 30.816240>,  <35.210560, 32.229019, 31.031912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298874, 32.554111, 30.816240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702836, 0.250710, 0.665707,
		0.676222, -0.525933, -0.515867,
		0.220784, 0.812735, -0.539181,
		35.365108, 32.797932, 30.654486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957783, 32.266640, 30.923578>,  <35.210560, 32.229019, 31.031912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957783, 32.266640, 30.923578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.809284, 32.637650, 30.906282>,  <35.720184, 32.860256, 30.895905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.809284, 32.637650, 30.906282>,  <35.957783, 32.266640, 30.923578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809284, 32.637650, 30.906282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707782, 0.312815, 0.633397,
		0.601019, 0.204541, -0.772618,
		-0.371242, 0.927529, -0.043238,
		35.697910, 32.915909, 30.893311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565670, 32.668091, 31.169233>,  <35.957783, 32.266640, 30.923578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565670, 32.668091, 31.169233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.249065, 32.909729, 31.206270>,  <36.059101, 33.054710, 31.228493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.249065, 32.909729, 31.206270>,  <36.565670, 32.668091, 31.169233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249065, 32.909729, 31.206270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519303, 0.584918, 0.623053,
		0.322226, 0.541237, -0.776680,
		-0.791514, 0.604096, 0.092591,
		36.011612, 33.090958, 31.234047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897964, 33.297123, 31.232956>,  <36.565670, 32.668091, 31.169233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897964, 33.297123, 31.232956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.532104, 33.377159, 31.373457>,  <36.312588, 33.425182, 31.457758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.532104, 33.377159, 31.373457>,  <36.897964, 33.297123, 31.232956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532104, 33.377159, 31.373457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396187, 0.616357, 0.680543,
		-0.080324, 0.761620, -0.643026,
		-0.914650, 0.200095, 0.351252,
		36.257710, 33.437187, 31.478832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535530, 33.093777, 31.419683>,  <36.897964, 33.297123, 31.232956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535530, 33.093777, 31.419683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.882694, 32.951092, 31.281412>,  <38.090992, 32.865482, 31.198450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.882694, 32.951092, 31.281412>,  <37.535530, 33.093777, 31.419683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882694, 32.951092, 31.281412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401017, -0.092516, -0.911387,
		0.293120, 0.929623, -0.223342,
		0.867909, -0.356709, -0.345676,
		38.143066, 32.844078, 31.177710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616405, 33.386600, 30.740360>,  <37.535530, 33.093777, 31.419683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616405, 33.386600, 30.740360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.871857, 33.078896, 30.748333>,  <38.025127, 32.894272, 30.753117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.871857, 33.078896, 30.748333>,  <37.616405, 33.386600, 30.740360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871857, 33.078896, 30.748333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073451, -0.086719, -0.993521,
		0.766005, 0.633022, -0.111884,
		0.638624, -0.769261, 0.019931,
		38.063442, 32.848118, 30.754313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175373, 33.523144, 30.284487>,  <37.616405, 33.386600, 30.740360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175373, 33.523144, 30.284487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.115250, 33.129871, 30.325989>,  <38.079174, 32.893909, 30.350891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.115250, 33.129871, 30.325989>,  <38.175373, 33.523144, 30.284487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115250, 33.129871, 30.325989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106950, -0.088162, -0.990348,
		0.982837, -0.159959, -0.091900,
		-0.150313, -0.983179, 0.103757,
		38.070156, 32.834919, 30.357117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448879, 33.189125, 29.645355>,  <38.175373, 33.523144, 30.284487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448879, 33.189125, 29.645355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.282864, 32.852272, 29.783081>,  <38.183254, 32.650158, 29.865717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.282864, 32.852272, 29.783081>,  <38.448879, 33.189125, 29.645355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282864, 32.852272, 29.783081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201138, -0.284151, -0.937444,
		0.887291, -0.458331, -0.051452,
		-0.415039, -0.842135, 0.344312,
		38.158352, 32.599632, 29.886375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714287, 32.667091, 29.225189>,  <38.448879, 33.189125, 29.645355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714287, 32.667091, 29.225189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.366993, 32.548119, 29.384037>,  <38.158615, 32.476734, 29.479345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.366993, 32.548119, 29.384037>,  <38.714287, 32.667091, 29.225189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366993, 32.548119, 29.384037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349496, -0.201480, -0.915018,
		0.352168, -0.933241, 0.070980,
		-0.868234, -0.297433, 0.397119,
		38.106522, 32.458889, 29.503172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534134, 32.097153, 28.911291>,  <38.714287, 32.667091, 29.225189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534134, 32.097153, 28.911291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.193954, 32.246284, 29.059744>,  <37.989849, 32.335762, 29.148815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.193954, 32.246284, 29.059744>,  <38.534134, 32.097153, 28.911291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193954, 32.246284, 29.059744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443539, -0.128829, -0.886948,
		-0.282869, -0.918912, 0.274928,
		-0.850445, 0.372831, 0.371132,
		37.938820, 32.358131, 29.171083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094349, 31.651295, 28.602211>,  <38.534134, 32.097153, 28.911291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094349, 31.651295, 28.602211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.855759, 31.938305, 28.746084>,  <37.712605, 32.110512, 28.832407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.855759, 31.938305, 28.746084>,  <38.094349, 31.651295, 28.602211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855759, 31.938305, 28.746084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667655, -0.194836, -0.718523,
		-0.445481, -0.668726, 0.595275,
		-0.596476, 0.717527, 0.359683,
		37.676815, 32.153564, 28.853989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417603, 31.321543, 28.655407>,  <38.094349, 31.651295, 28.602211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417603, 31.321543, 28.655407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.397774, 31.719202, 28.617010>,  <37.385876, 31.957798, 28.593971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.397774, 31.719202, 28.617010>,  <37.417603, 31.321543, 28.655407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397774, 31.719202, 28.617010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679992, -0.103991, -0.725808,
		-0.731542, 0.029296, 0.681167,
		-0.049572, 0.994147, -0.095994,
		37.382900, 32.017445, 28.588211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695461, 31.414106, 28.418859>,  <37.417603, 31.321543, 28.655407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695461, 31.414106, 28.418859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.897923, 31.745461, 28.322874>,  <37.019398, 31.944273, 28.265282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.897923, 31.745461, 28.322874>,  <36.695461, 31.414106, 28.418859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897923, 31.745461, 28.322874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479844, 0.039295, -0.876474,
		-0.716629, 0.558777, 0.417386,
		0.506155, 0.828386, -0.239966,
		37.049770, 31.993977, 28.250885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223251, 31.822903, 28.061699>,  <36.695461, 31.414106, 28.418859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223251, 31.822903, 28.061699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.567776, 32.005348, 27.972158>,  <36.774490, 32.114815, 27.918434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.567776, 32.005348, 27.972158>,  <36.223251, 31.822903, 28.061699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567776, 32.005348, 27.972158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334855, 0.178231, -0.925260,
		-0.382128, 0.871890, 0.306244,
		0.861307, 0.456116, -0.223850,
		36.826168, 32.142181, 27.905003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050129, 32.550533, 27.925196>,  <36.223251, 31.822903, 28.061699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050129, 32.550533, 27.925196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.381878, 32.412937, 27.749100>,  <36.580929, 32.330379, 27.643442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.381878, 32.412937, 27.749100>,  <36.050129, 32.550533, 27.925196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381878, 32.412937, 27.749100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424049, 0.125472, -0.896905,
		0.363766, 0.930551, -0.041807,
		0.829371, -0.343992, -0.440242,
		36.630688, 32.309738, 27.617027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144444, 33.063072, 27.474897>,  <36.050129, 32.550533, 27.925196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144444, 33.063072, 27.474897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.335091, 32.735237, 27.347712>,  <36.449478, 32.538536, 27.271400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.335091, 32.735237, 27.347712>,  <36.144444, 33.063072, 27.474897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335091, 32.735237, 27.347712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437037, 0.092924, -0.894630,
		0.762779, 0.565361, -0.313903,
		0.476620, -0.819592, -0.317964,
		36.478077, 32.489361, 27.252323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448368, 33.330383, 26.881096>,  <36.144444, 33.063072, 27.474897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448368, 33.330383, 26.881096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.413280, 32.933453, 26.846226>,  <36.392227, 32.695293, 26.825304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.413280, 32.933453, 26.846226>,  <36.448368, 33.330383, 26.881096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413280, 32.933453, 26.846226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160920, 0.100477, -0.981840,
		0.983062, -0.072094, -0.168499,
		-0.087715, -0.992324, -0.087173,
		36.386967, 32.635754, 26.820074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882973, 33.062809, 26.322416>,  <36.448368, 33.330383, 26.881096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882973, 33.062809, 26.322416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.605507, 32.775589, 26.345144>,  <36.439026, 32.603256, 26.358782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.605507, 32.775589, 26.345144>,  <36.882973, 33.062809, 26.322416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605507, 32.775589, 26.345144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084146, 0.002437, -0.996450,
		0.715367, -0.695983, -0.062111,
		-0.693663, -0.718054, 0.056821,
		36.397408, 32.560173, 26.362190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020493, 32.610714, 25.707621>,  <36.882973, 33.062809, 26.322416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020493, 32.610714, 25.707621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.659218, 32.501232, 25.839890>,  <36.442451, 32.435543, 25.919250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.659218, 32.501232, 25.839890>,  <37.020493, 32.610714, 25.707621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659218, 32.501232, 25.839890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287065, -0.187597, -0.939362,
		0.319140, -0.943342, 0.090864,
		-0.903185, -0.273704, 0.330670,
		36.388264, 32.419121, 25.939091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751728, 32.039867, 25.196239>,  <37.020493, 32.610714, 25.707621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751728, 32.039867, 25.196239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.426983, 32.153461, 25.400288>,  <36.232136, 32.221619, 25.522717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.426983, 32.153461, 25.400288>,  <36.751728, 32.039867, 25.196239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426983, 32.153461, 25.400288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576156, -0.248400, -0.778679,
		-0.094419, -0.926094, 0.365287,
		-0.811868, 0.283984, 0.510122,
		36.183422, 32.238659, 25.553324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275368, 31.467926, 25.281643>,  <36.751728, 32.039867, 25.196239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275368, 31.467926, 25.281643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.086185, 31.820152, 25.293798>,  <35.972675, 32.031487, 25.301092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.086185, 31.820152, 25.293798>,  <36.275368, 31.467926, 25.281643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086185, 31.820152, 25.293798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602683, -0.298158, -0.740186,
		-0.642721, -0.368386, 0.671715,
		-0.472952, 0.880564, 0.030388,
		35.944302, 32.084320, 25.302916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561096, 31.338118, 25.288975>,  <36.275368, 31.467926, 25.281643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561096, 31.338118, 25.288975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.573631, 31.715845, 25.157959>,  <35.581150, 31.942482, 25.079350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.573631, 31.715845, 25.157959>,  <35.561096, 31.338118, 25.288975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573631, 31.715845, 25.157959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521001, -0.264227, -0.811629,
		-0.852980, 0.196078, 0.483712,
		0.031333, 0.944319, -0.327538,
		35.583031, 31.999140, 25.059698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.627853, 31.585226, 24.855776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.906311, 31.858648, 24.768011>,  <35.073383, 32.022701, 24.715353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.906311, 31.858648, 24.768011>,  <34.627853, 31.585226, 24.855776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906311, 31.858648, 24.768011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493366, 0.233498, -0.837895,
		-0.521515, 0.691543, 0.499790,
		0.696140, 0.683555, -0.219412,
		35.115154, 32.063713, 24.702188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257900, 32.245899, 24.693531>,  <34.627853, 31.585226, 24.855776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257900, 32.245899, 24.693531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.628555, 32.236671, 24.543432>,  <34.850948, 32.231136, 24.453373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.628555, 32.236671, 24.543432>,  <34.257900, 32.245899, 24.693531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628555, 32.236671, 24.543432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371783, 0.092036, -0.923746,
		0.055847, 0.995488, 0.076707,
		0.926638, -0.023070, -0.375245,
		34.906548, 32.229752, 24.430859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302532, 32.907494, 24.297642>,  <34.257900, 32.245899, 24.693531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302532, 32.907494, 24.297642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.588989, 32.671764, 24.148064>,  <34.760864, 32.530327, 24.058317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.588989, 32.671764, 24.148064>,  <34.302532, 32.907494, 24.297642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588989, 32.671764, 24.148064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356986, 0.151112, -0.921806,
		0.599753, 0.793637, -0.102164,
		0.716141, -0.589326, -0.373947,
		34.803833, 32.494965, 24.035879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621788, 33.341736, 23.796858>,  <34.302532, 32.907494, 24.297642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621788, 33.341736, 23.796858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.697418, 32.959702, 23.705599>,  <34.742798, 32.730480, 23.650843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.697418, 32.959702, 23.705599>,  <34.621788, 33.341736, 23.796858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697418, 32.959702, 23.705599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370816, 0.145691, -0.917207,
		0.909255, 0.258024, -0.326616,
		0.189077, -0.955090, -0.228150,
		34.754143, 32.673176, 23.637154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887455, 33.348122, 23.189890>,  <34.621788, 33.341736, 23.796858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887455, 33.348122, 23.189890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.746704, 32.974487, 23.214100>,  <34.662254, 32.750305, 23.228626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.746704, 32.974487, 23.214100>,  <34.887455, 33.348122, 23.189890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746704, 32.974487, 23.214100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358421, 0.074724, -0.930565,
		0.864706, -0.349138, -0.361091,
		-0.351877, -0.934088, 0.060524,
		34.641140, 32.694260, 23.232258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877003, 33.150192, 22.481119>,  <34.887455, 33.348122, 23.189890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877003, 33.150192, 22.481119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.654381, 32.868572, 22.657553>,  <34.520805, 32.699600, 22.763412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.654381, 32.868572, 22.657553>,  <34.877003, 33.150192, 22.481119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654381, 32.868572, 22.657553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540437, -0.096428, -0.835841,
		0.631009, -0.703570, -0.326828,
		-0.556557, -0.704053, 0.441082,
		34.487415, 32.657356, 22.789877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850933, 32.689262, 21.946091>,  <34.877003, 33.150192, 22.481119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850933, 32.689262, 21.946091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.550152, 32.587654, 22.189415>,  <34.369682, 32.526691, 22.335409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.550152, 32.587654, 22.189415>,  <34.850933, 32.689262, 21.946091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550152, 32.587654, 22.189415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568615, -0.216960, -0.793477,
		0.333537, -0.942551, 0.018705,
		-0.751951, -0.254018, 0.608313,
		34.324566, 32.511448, 22.371908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694565, 31.904583, 21.818481>,  <34.850933, 32.689262, 21.946091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694565, 31.904583, 21.818481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.377842, 32.093483, 21.973412>,  <34.187809, 32.206821, 22.066370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.377842, 32.093483, 21.973412>,  <34.694565, 31.904583, 21.818481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377842, 32.093483, 21.973412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568159, -0.336801, -0.750840,
		-0.224129, -0.814585, 0.534993,
		-0.791808, 0.472246, 0.387327,
		34.140301, 32.235157, 22.089609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154358, 31.491796, 21.749842>,  <34.694565, 31.904583, 21.818481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154358, 31.491796, 21.749842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.938080, 31.821529, 21.816923>,  <33.808311, 32.019367, 21.857172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.938080, 31.821529, 21.816923>,  <34.154358, 31.491796, 21.749842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938080, 31.821529, 21.816923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527533, -0.176985, -0.830894,
		-0.655251, -0.537732, 0.530557,
		-0.540699, 0.824330, 0.167702,
		33.775871, 32.068829, 21.867233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456264, 31.310699, 21.564333>,  <34.154358, 31.491796, 21.749842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456264, 31.310699, 21.564333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.480980, 31.709902, 21.559111>,  <33.495811, 31.949423, 21.555977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.480980, 31.709902, 21.559111>,  <33.456264, 31.310699, 21.564333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480980, 31.709902, 21.559111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394627, 0.012414, -0.918757,
		-0.916761, 0.061925, 0.394607,
		0.061792, 0.998004, -0.013056,
		33.499519, 32.009304, 21.555193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745502, 31.577198, 21.518118>,  <33.456264, 31.310699, 21.564333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745502, 31.577198, 21.518118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.006866, 31.845890, 21.378502>,  <33.163685, 32.007107, 21.294733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.006866, 31.845890, 21.378502>,  <32.745502, 31.577198, 21.518118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006866, 31.845890, 21.378502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504499, 0.042649, -0.862358,
		-0.564387, 0.739566, 0.366755,
		0.653413, 0.671731, -0.349040,
		33.202888, 32.047409, 21.273790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489040, 31.680174, 20.940845>,  <32.745502, 31.577198, 21.518118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489040, 31.680174, 20.940845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.787910, 31.940050, 20.884798>,  <32.967232, 32.095978, 20.851170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.787910, 31.940050, 20.884798>,  <32.489040, 31.680174, 20.940845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787910, 31.940050, 20.884798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385627, 0.252071, -0.887554,
		-0.541318, 0.717189, 0.438880,
		0.747173, 0.649692, -0.140117,
		33.012062, 32.134956, 20.842764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178432, 32.331532, 20.721760>,  <32.489040, 31.680174, 20.940845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178432, 32.331532, 20.721760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.549213, 32.327412, 20.571743>,  <32.771683, 32.324940, 20.481733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.549213, 32.327412, 20.571743>,  <32.178432, 32.331532, 20.721760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549213, 32.327412, 20.571743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374874, 0.015273, -0.926950,
		0.015273, 0.999830, 0.010297,
		0.926950, -0.010297, -0.375044,
		32.827297, 32.324322, 20.459230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381237, 33.038399, 20.345322>,  <32.178432, 32.331532, 20.721760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381237, 33.038399, 20.345322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.633408, 32.763939, 20.200121>,  <32.784710, 32.599262, 20.113001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.633408, 32.763939, 20.200121>,  <32.381237, 33.038399, 20.345322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633408, 32.763939, 20.200121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145843, 0.354610, -0.923570,
		0.762427, 0.635182, 0.123485,
		0.630424, -0.686145, -0.363001,
		32.822536, 32.558094, 20.091221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608631, 33.382004, 19.739325>,  <32.381237, 33.038399, 20.345322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608631, 33.382004, 19.739325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.727566, 33.010246, 19.651855>,  <32.798927, 32.787193, 19.599375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.727566, 33.010246, 19.651855>,  <32.608631, 33.382004, 19.739325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727566, 33.010246, 19.651855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053305, 0.212514, -0.975703,
		0.953282, 0.301772, 0.013647,
		0.297340, -0.929393, -0.218672,
		32.816769, 32.731430, 19.586254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161560, 33.467506, 19.307144>,  <32.608631, 33.382004, 19.739325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161560, 33.467506, 19.307144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.052177, 33.088512, 19.240812>,  <32.986549, 32.861118, 19.201014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.052177, 33.088512, 19.240812>,  <33.161560, 33.467506, 19.307144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052177, 33.088512, 19.240812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065356, 0.153699, -0.985954,
		0.959661, -0.280454, 0.019893,
		-0.273457, -0.947482, -0.165828,
		32.970139, 32.804268, 19.191065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575718, 33.182442, 18.725840>,  <33.161560, 33.467506, 19.307144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575718, 33.182442, 18.725840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.243233, 32.961346, 18.749710>,  <33.043743, 32.828686, 18.764032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.243233, 32.961346, 18.749710>,  <33.575718, 33.182442, 18.725840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243233, 32.961346, 18.749710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180844, 0.167320, -0.969175,
		0.525721, -0.816381, -0.239039,
		-0.831212, -0.552745, 0.059674,
		32.993870, 32.795521, 18.767612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637573, 32.758034, 18.133091>,  <33.575718, 33.182442, 18.725840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637573, 32.758034, 18.133091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.249958, 32.750477, 18.231562>,  <33.017387, 32.745941, 18.290644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.249958, 32.750477, 18.231562>,  <33.637573, 32.758034, 18.133091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249958, 32.750477, 18.231562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245624, 0.174996, -0.953439,
		-0.025068, -0.984388, -0.174219,
		-0.969041, -0.018891, 0.246176,
		32.959248, 32.744808, 18.305414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246422, 32.374088, 17.563414>,  <33.637573, 32.758034, 18.133091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246422, 32.374088, 17.563414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.957153, 32.578526, 17.749231>,  <32.783592, 32.701187, 17.860722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.957153, 32.578526, 17.749231>,  <33.246422, 32.374088, 17.563414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957153, 32.578526, 17.749231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292565, 0.382587, -0.876375,
		-0.625641, -0.769680, -0.127148,
		-0.723174, 0.511097, 0.464543,
		32.740200, 32.731853, 17.888594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686844, 32.238407, 17.250362>,  <33.246422, 32.374088, 17.563414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686844, 32.238407, 17.250362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.619442, 32.584484, 17.439276>,  <32.579002, 32.792130, 17.552624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.619442, 32.584484, 17.439276>,  <32.686844, 32.238407, 17.250362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619442, 32.584484, 17.439276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510454, 0.333292, -0.792687,
		-0.843234, -0.374647, 0.385481,
		-0.168501, 0.865192, 0.472283,
		32.568893, 32.844040, 17.580961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989098, 32.273422, 16.981165>,  <32.686844, 32.238407, 17.250362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989098, 32.273422, 16.981165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.104584, 32.631317, 17.117451>,  <32.173874, 32.846054, 17.199223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.104584, 32.631317, 17.117451>,  <31.989098, 32.273422, 16.981165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104584, 32.631317, 17.117451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440561, 0.440111, -0.782437,
		-0.850029, 0.075796, 0.521254,
		0.288715, 0.894739, 0.340715,
		32.191196, 32.899738, 17.219666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.479145, 32.676147, 16.831175>,  <31.989098, 32.273422, 16.981165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.479145, 32.676147, 16.831175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.765436, 32.950970, 16.881275>,  <31.937212, 33.115864, 16.911335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.765436, 32.950970, 16.881275>,  <31.479145, 32.676147, 16.831175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.765436, 32.950970, 16.881275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462743, 0.600875, -0.651780,
		-0.523069, 0.408540, 0.747994,
		0.715729, 0.687055, 0.125250,
		31.980154, 33.157085, 16.918850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.142502, 33.289597, 17.028017>,  <31.479145, 32.676147, 16.831175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.142502, 33.289597, 17.028017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.505188, 33.378311, 16.884529>,  <31.722799, 33.431538, 16.798437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.505188, 33.378311, 16.884529>,  <31.142502, 33.289597, 17.028017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.505188, 33.378311, 16.884529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409784, 0.664419, -0.625000,
		0.099725, 0.713694, 0.693322,
		0.906715, 0.221784, -0.358720,
		31.777203, 33.444847, 16.776913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346657, 33.998016, 17.125799>,  <31.142502, 33.289597, 17.028017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346657, 33.998016, 17.125799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.535419, 33.861519, 16.800629>,  <31.648678, 33.779621, 16.605526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.535419, 33.861519, 16.800629>,  <31.346657, 33.998016, 17.125799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535419, 33.861519, 16.800629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478229, 0.675545, -0.561191,
		0.740676, 0.653597, 0.155600,
		0.471907, -0.341248, -0.812929,
		31.676992, 33.759144, 16.556749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294399, 34.679562, 17.198174>,  <31.346657, 33.998016, 17.125799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294399, 34.679562, 17.198174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.007778, 34.958134, 17.182493>,  <30.835806, 35.125278, 17.173084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.007778, 34.958134, 17.182493>,  <31.294399, 34.679562, 17.198174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.007778, 34.958134, 17.182493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049806, 0.107139, 0.992996,
		0.695754, 0.709580, -0.111457,
		-0.716551, 0.696432, -0.039201,
		30.792812, 35.167065, 17.170732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.437950, 35.279564, 17.577963>,  <31.294399, 34.679562, 17.198174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.437950, 35.279564, 17.577963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.038919, 35.297409, 17.556593>,  <30.799501, 35.308117, 17.543772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.038919, 35.297409, 17.556593>,  <31.437950, 35.279564, 17.577963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.038919, 35.297409, 17.556593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057505, -0.095883, 0.993730,
		0.039209, 0.994392, 0.098216,
		-0.997575, 0.044611, -0.053423,
		30.739647, 35.310791, 17.540565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.279329, 35.598907, 18.268581>,  <31.437950, 35.279564, 17.577963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.279329, 35.598907, 18.268581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.945978, 35.432392, 18.123156>,  <30.745968, 35.332481, 18.035900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.945978, 35.432392, 18.123156>,  <31.279329, 35.598907, 18.268581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.945978, 35.432392, 18.123156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250894, -0.301181, 0.919969,
		-0.492475, 0.857899, 0.146553,
		-0.833379, -0.416292, -0.363565,
		30.695965, 35.307503, 18.014086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.799152, 35.758358, 18.764650>,  <31.279329, 35.598907, 18.268581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.799152, 35.758358, 18.764650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.645584, 35.441917, 18.574169>,  <30.553444, 35.252052, 18.459881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.645584, 35.441917, 18.574169>,  <30.799152, 35.758358, 18.764650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.645584, 35.441917, 18.574169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064578, -0.537467, 0.840809,
		-0.921105, 0.292051, 0.257432,
		-0.383920, -0.791098, -0.476204,
		30.530409, 35.204590, 18.431309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.235392, 35.456623, 19.118752>,  <30.799152, 35.758358, 18.764650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.235392, 35.456623, 19.118752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.330647, 35.142445, 18.890236>,  <30.387800, 34.953938, 18.753126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.330647, 35.142445, 18.890236>,  <30.235392, 35.456623, 19.118752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.330647, 35.142445, 18.890236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132889, -0.556329, 0.820267,
		-0.962097, -0.271255, -0.028107,
		0.238138, -0.785442, -0.571289,
		30.402088, 34.906811, 18.718849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.737858, 34.946754, 19.235052>,  <30.235392, 35.456623, 19.118752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.737858, 34.946754, 19.235052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.036163, 34.729053, 19.081366>,  <30.215147, 34.598434, 18.989153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.036163, 34.729053, 19.081366>,  <29.737858, 34.946754, 19.235052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.036163, 34.729053, 19.081366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083285, -0.496033, 0.864300,
		-0.660983, -0.676564, -0.324595,
		0.745764, -0.544254, -0.384217,
		30.259893, 34.565777, 18.966101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.577665, 34.276928, 19.477005>,  <29.737858, 34.946754, 19.235052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.577665, 34.276928, 19.477005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.960772, 34.268864, 19.362270>,  <30.190636, 34.264027, 19.293430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.960772, 34.268864, 19.362270>,  <29.577665, 34.276928, 19.477005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.960772, 34.268864, 19.362270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242930, -0.476976, 0.844677,
		-0.153841, -0.878685, -0.451936,
		0.957767, -0.020157, -0.286837,
		30.248102, 34.262817, 19.276218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.837982, 33.569084, 19.708635>,  <29.577665, 34.276928, 19.477005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.837982, 33.569084, 19.708635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.136608, 33.830654, 19.659601>,  <30.315784, 33.987595, 19.630180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.136608, 33.830654, 19.659601>,  <29.837982, 33.569084, 19.708635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.136608, 33.830654, 19.659601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391014, -0.282182, 0.876060,
		0.538284, -0.701968, -0.466360,
		0.746564, 0.653922, -0.122585,
		30.360577, 34.026833, 19.622826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.377363, 33.207584, 20.038132>,  <29.837982, 33.569084, 19.708635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.377363, 33.207584, 20.038132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.542089, 33.571163, 20.012152>,  <30.640926, 33.789310, 19.996565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.542089, 33.571163, 20.012152>,  <30.377363, 33.207584, 20.038132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.542089, 33.571163, 20.012152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533624, -0.182766, 0.825737,
		0.738682, -0.374712, -0.560303,
		0.411818, 0.908949, -0.064949,
		30.665634, 33.843849, 19.992666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.143299, 33.147030, 20.003729>,  <30.377363, 33.207584, 20.038132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.143299, 33.147030, 20.003729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.034084, 33.497799, 20.161945>,  <30.968555, 33.708260, 20.256876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.034084, 33.497799, 20.161945>,  <31.143299, 33.147030, 20.003729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.034084, 33.497799, 20.161945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526805, -0.207739, 0.824210,
		0.804939, 0.433414, -0.405247,
		-0.273038, 0.876925, 0.395542,
		30.952173, 33.760876, 20.280607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780123, 33.435051, 20.312021>,  <31.143299, 33.147030, 20.003729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780123, 33.435051, 20.312021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.467148, 33.623749, 20.474625>,  <31.279364, 33.736969, 20.572187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.467148, 33.623749, 20.474625>,  <31.780123, 33.435051, 20.312021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.467148, 33.623749, 20.474625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386510, -0.143941, 0.910983,
		0.488264, 0.869907, -0.069709,
		-0.782437, 0.471744, 0.406509,
		31.232416, 33.765270, 20.596577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139194, 33.933449, 20.697569>,  <31.780123, 33.435051, 20.312021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139194, 33.933449, 20.697569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.765741, 33.885460, 20.832590>,  <31.541670, 33.856667, 20.913603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.765741, 33.885460, 20.832590>,  <32.139194, 33.933449, 20.697569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.765741, 33.885460, 20.832590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353139, -0.149756, 0.923508,
		-0.060240, 0.981418, 0.182182,
		-0.933630, -0.119968, 0.337555,
		31.485653, 33.849468, 20.933857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.156921, 34.396641, 21.365242>,  <32.139194, 33.933449, 20.697569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.156921, 34.396641, 21.365242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.848272, 34.142300, 21.358442>,  <31.663082, 33.989697, 21.354362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.848272, 34.142300, 21.358442>,  <32.156921, 34.396641, 21.365242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848272, 34.142300, 21.358442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265096, -0.345768, 0.900094,
		-0.578201, 0.690030, 0.435364,
		-0.771627, -0.635848, -0.016999,
		31.616785, 33.951546, 21.353342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724010, 34.572262, 21.991280>,  <32.156921, 34.396641, 21.365242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724010, 34.572262, 21.991280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.625444, 34.199890, 21.883459>,  <31.566305, 33.976467, 21.818766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.625444, 34.199890, 21.883459>,  <31.724010, 34.572262, 21.991280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.625444, 34.199890, 21.883459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120801, -0.305462, 0.944510,
		-0.961606, 0.200180, 0.187727,
		-0.246416, -0.930925, -0.269553,
		31.551519, 33.920612, 21.802593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305977, 34.358898, 22.534081>,  <31.724010, 34.572262, 21.991280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.305977, 34.358898, 22.534081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.405632, 34.014935, 22.355871>,  <31.465425, 33.808556, 22.248945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.405632, 34.014935, 22.355871>,  <31.305977, 34.358898, 22.534081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405632, 34.014935, 22.355871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016878, -0.463813, 0.885772,
		-0.968320, -0.213161, -0.130068,
		0.249140, -0.859907, -0.445522,
		31.480373, 33.756962, 22.222216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.699390, 33.886681, 22.563921>,  <31.305977, 34.358898, 22.534081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.699390, 33.886681, 22.563921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.031218, 33.667221, 22.522343>,  <31.230314, 33.535545, 22.497396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.031218, 33.667221, 22.522343>,  <30.699390, 33.886681, 22.563921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.031218, 33.667221, 22.522343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140234, -0.384872, 0.912254,
		-0.540510, -0.742200, -0.396216,
		0.829568, -0.548646, -0.103945,
		31.280088, 33.502628, 22.491159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.547266, 33.337234, 22.887278>,  <30.699390, 33.886681, 22.563921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.547266, 33.337234, 22.887278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.943886, 33.302643, 22.848606>,  <31.181858, 33.281887, 22.825403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.943886, 33.302643, 22.848606>,  <30.547266, 33.337234, 22.887278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.943886, 33.302643, 22.848606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049296, -0.438172, 0.897539,
		-0.119978, -0.894722, -0.430207,
		0.991552, -0.086477, -0.096677,
		31.241352, 33.276699, 22.819603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838491, 32.650646, 23.147266>,  <30.547266, 33.337234, 22.887278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.838491, 32.650646, 23.147266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.148840, 32.901146, 23.177801>,  <31.335049, 33.051445, 23.196121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.148840, 32.901146, 23.177801>,  <30.838491, 32.650646, 23.147266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.148840, 32.901146, 23.177801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275423, -0.445089, 0.852079,
		0.567594, -0.640080, -0.517817,
		0.775873, 0.626254, 0.076337,
		31.381601, 33.089024, 23.200703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.262228, 32.251633, 23.491831>,  <30.838491, 32.650646, 23.147266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.262228, 32.251633, 23.491831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.432112, 32.609673, 23.546118>,  <31.534042, 32.824497, 23.578690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.432112, 32.609673, 23.546118>,  <31.262228, 32.251633, 23.491831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.432112, 32.609673, 23.546118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312410, -0.285602, 0.905998,
		0.849718, -0.342389, -0.400936,
		0.424712, 0.895099, 0.135716,
		31.559525, 32.878201, 23.586832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.997355, 32.175167, 23.623068>,  <31.262228, 32.251633, 23.491831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.997355, 32.175167, 23.623068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.906721, 32.518154, 23.807852>,  <31.852341, 32.723946, 23.918722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.906721, 32.518154, 23.807852>,  <31.997355, 32.175167, 23.623068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906721, 32.518154, 23.807852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378588, -0.359465, 0.852910,
		0.897403, 0.368147, -0.243179,
		-0.226582, 0.857469, 0.461961,
		31.838747, 32.775394, 23.946440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.107609, 31.495224, 26.744164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.903141, 31.786678, 26.926504>,  <36.780460, 31.961550, 27.035908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.903141, 31.786678, 26.926504>,  <37.107609, 31.495224, 26.744164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903141, 31.786678, 26.926504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590016, -0.088179, 0.802562,
		0.624971, 0.679203, -0.384831,
		-0.511168, 0.728635, 0.455849,
		36.749790, 32.005268, 27.063259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645607, 31.956194, 26.955908>,  <37.107609, 31.495224, 26.744164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645607, 31.956194, 26.955908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.338398, 32.058437, 27.190790>,  <37.154072, 32.119785, 27.331720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.338398, 32.058437, 27.190790>,  <37.645607, 31.956194, 26.955908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338398, 32.058437, 27.190790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613100, 0.028468, 0.789493,
		0.185086, 0.966361, -0.178578,
		-0.768018, 0.255610, 0.587207,
		37.107994, 32.135120, 27.366953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909752, 32.489349, 27.378454>,  <37.645607, 31.956194, 26.955908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909752, 32.489349, 27.378454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.565140, 32.407600, 27.564352>,  <37.358372, 32.358551, 27.675890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.565140, 32.407600, 27.564352>,  <37.909752, 32.489349, 27.378454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565140, 32.407600, 27.564352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393155, 0.310610, 0.865419,
		-0.321226, 0.928305, -0.187250,
		-0.861535, -0.204377, 0.464744,
		37.306679, 32.346287, 27.703775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795372, 33.003147, 27.900803>,  <37.909752, 32.489349, 27.378454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795372, 33.003147, 27.900803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.547798, 32.712978, 28.021255>,  <37.399254, 32.538876, 28.093527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.547798, 32.712978, 28.021255>,  <37.795372, 33.003147, 27.900803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547798, 32.712978, 28.021255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212376, 0.214545, 0.953345,
		-0.756185, 0.654012, 0.021273,
		-0.618935, -0.725423, 0.301132,
		37.362118, 32.495350, 28.111595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338524, 33.237526, 28.367668>,  <37.795372, 33.003147, 27.900803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338524, 33.237526, 28.367668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.380730, 32.846363, 28.439856>,  <37.406052, 32.611668, 28.483168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.380730, 32.846363, 28.439856>,  <37.338524, 33.237526, 28.367668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380730, 32.846363, 28.439856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199473, 0.198606, 0.959566,
		-0.974206, -0.065249, 0.216021,
		0.105514, -0.977905, 0.180467,
		37.412384, 32.552990, 28.493996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044464, 33.212925, 29.036594>,  <37.338524, 33.237526, 28.367668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044464, 33.212925, 29.036594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.223328, 32.857025, 28.999952>,  <37.330647, 32.643486, 28.977966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.223328, 32.857025, 28.999952>,  <37.044464, 33.212925, 29.036594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223328, 32.857025, 28.999952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350933, 0.080316, 0.932950,
		-0.822735, -0.449327, 0.348156,
		0.447162, -0.889750, -0.091605,
		37.357475, 32.590099, 28.972471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851395, 32.848167, 29.634336>,  <37.044464, 33.212925, 29.036594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851395, 32.848167, 29.634336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.192863, 32.711296, 29.477285>,  <37.397747, 32.629173, 29.383055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.192863, 32.711296, 29.477285>,  <36.851395, 32.848167, 29.634336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192863, 32.711296, 29.477285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399779, -0.052644, 0.915099,
		-0.333794, -0.938160, 0.091854,
		0.853673, -0.342176, -0.392629,
		37.448967, 32.608643, 29.359497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941044, 32.179367, 29.975079>,  <36.851395, 32.848167, 29.634336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941044, 32.179367, 29.975079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.297871, 32.293602, 29.834986>,  <37.511967, 32.362141, 29.750931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.297871, 32.293602, 29.834986>,  <36.941044, 32.179367, 29.975079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297871, 32.293602, 29.834986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415104, -0.211487, 0.884851,
		0.178629, -0.934727, -0.307207,
		0.892065, 0.285583, -0.350231,
		37.565491, 32.379276, 29.729916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261162, 31.773499, 30.316198>,  <36.941044, 32.179367, 29.975079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261162, 31.773499, 30.316198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.528976, 32.051723, 30.211958>,  <37.689667, 32.218658, 30.149414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.528976, 32.051723, 30.211958>,  <37.261162, 31.773499, 30.316198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528976, 32.051723, 30.211958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478723, -0.135831, 0.867395,
		0.567929, -0.705510, -0.423925,
		0.669538, 0.695562, -0.260601,
		37.729839, 32.260391, 30.133778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017250, 31.572632, 30.511900>,  <37.261162, 31.773499, 30.316198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017250, 31.572632, 30.511900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.032211, 31.969002, 30.460257>,  <38.041187, 32.206825, 30.429270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.032211, 31.969002, 30.460257>,  <38.017250, 31.572632, 30.511900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032211, 31.969002, 30.460257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416800, 0.101955, 0.903262,
		0.908228, -0.087599, -0.409204,
		0.037405, 0.990925, -0.129110,
		38.043434, 32.266277, 30.421524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696358, 31.657238, 30.818344>,  <38.017250, 31.572632, 30.511900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696358, 31.657238, 30.818344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.486870, 31.996691, 30.788570>,  <38.361176, 32.200363, 30.770706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.486870, 31.996691, 30.788570>,  <38.696358, 31.657238, 30.818344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486870, 31.996691, 30.788570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365760, 0.302915, 0.880035,
		0.769371, 0.433671, -0.469039,
		-0.523724, 0.848629, -0.074435,
		38.329754, 32.251278, 30.766239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179947, 32.154423, 30.953783>,  <38.696358, 31.657238, 30.818344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179947, 32.154423, 30.953783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.848927, 32.374115, 31.000280>,  <38.650314, 32.505928, 31.028179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.848927, 32.374115, 31.000280>,  <39.179947, 32.154423, 30.953783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848927, 32.374115, 31.000280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379435, 0.394599, 0.836852,
		0.413752, 0.736643, -0.534946,
		-0.827550, 0.549226, 0.116242,
		38.600662, 32.538883, 31.035152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428249, 32.818413, 31.102148>,  <39.179947, 32.154423, 30.953783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428249, 32.818413, 31.102148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.073437, 32.733662, 31.266233>,  <38.860550, 32.682812, 31.364685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.073437, 32.733662, 31.266233>,  <39.428249, 32.818413, 31.102148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073437, 32.733662, 31.266233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374109, 0.190837, 0.907537,
		-0.270574, 0.958482, -0.090012,
		-0.887036, -0.211882, 0.410212,
		38.807327, 32.670097, 31.389297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276936, 33.319958, 31.628263>,  <39.428249, 32.818413, 31.102148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276936, 33.319958, 31.628263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.082401, 32.978016, 31.700592>,  <38.965683, 32.772850, 31.743990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.082401, 32.978016, 31.700592>,  <39.276936, 33.319958, 31.628263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082401, 32.978016, 31.700592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283888, 0.041130, 0.957975,
		-0.826370, 0.517229, 0.222681,
		-0.486333, -0.854858, 0.180823,
		38.936501, 32.721558, 31.754839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596611, 33.972260, 31.566240>,  <39.276936, 33.319958, 31.628263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596611, 33.972260, 31.566240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.717884, 34.346516, 31.493959>,  <39.790649, 34.571072, 31.450592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.717884, 34.346516, 31.493959>,  <39.596611, 33.972260, 31.566240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717884, 34.346516, 31.493959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379467, -0.055404, -0.923545,
		-0.874120, 0.348572, 0.338248,
		0.303182, 0.935643, -0.180701,
		39.808838, 34.627209, 31.439749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080273, 34.299011, 31.252052>,  <39.596611, 33.972260, 31.566240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080273, 34.299011, 31.252052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.415306, 34.494423, 31.154249>,  <39.616325, 34.611671, 31.095568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.415306, 34.494423, 31.154249>,  <39.080273, 34.299011, 31.252052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415306, 34.494423, 31.154249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316800, 0.069721, -0.945926,
		-0.445069, 0.869755, 0.213165,
		0.837587, 0.488533, -0.244508,
		39.666580, 34.640984, 31.080896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790836, 34.716824, 30.743736>,  <39.080273, 34.299011, 31.252052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790836, 34.716824, 30.743736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.189034, 34.723995, 30.706503>,  <39.427952, 34.728298, 30.684162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.189034, 34.723995, 30.706503>,  <38.790836, 34.716824, 30.743736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.189034, 34.723995, 30.706503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094403, 0.098431, -0.990656,
		-0.008601, 0.994982, 0.099680,
		0.995497, 0.017931, -0.093083,
		39.487682, 34.729374, 30.678577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998440, 35.325665, 30.410479>,  <38.790836, 34.716824, 30.743736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998440, 35.325665, 30.410479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.264648, 35.034996, 30.342316>,  <39.424374, 34.860596, 30.301418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.264648, 35.034996, 30.342316>,  <38.998440, 35.325665, 30.410479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264648, 35.034996, 30.342316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121940, 0.119388, -0.985331,
		0.736352, 0.676536, -0.009155,
		0.665519, -0.726667, -0.170409,
		39.464306, 34.816998, 30.291193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349911, 35.545483, 29.829321>,  <38.998440, 35.325665, 30.410479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349911, 35.545483, 29.829321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.436932, 35.155487, 29.847532>,  <39.489143, 34.921490, 29.858459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.436932, 35.155487, 29.847532>,  <39.349911, 35.545483, 29.829321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436932, 35.155487, 29.847532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120412, -0.073098, -0.990029,
		0.968593, 0.209899, -0.133302,
		0.217551, -0.974987, 0.045528,
		39.502197, 34.862991, 29.861191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880085, 35.527145, 29.349949>,  <39.349911, 35.545483, 29.829321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880085, 35.527145, 29.349949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.718575, 35.163822, 29.393661>,  <39.621670, 34.945827, 29.419889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.718575, 35.163822, 29.393661>,  <39.880085, 35.527145, 29.349949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718575, 35.163822, 29.393661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026906, -0.107608, -0.993829,
		0.914462, -0.404224, 0.019010,
		-0.403775, -0.908308, 0.109279,
		39.597443, 34.891331, 29.426445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070045, 35.194519, 28.735586>,  <39.880085, 35.527145, 29.349949>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070045, 35.194519, 28.735586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.825447, 34.906704, 28.867243>,  <39.678688, 34.734013, 28.946236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.825447, 34.906704, 28.867243>,  <40.070045, 35.194519, 28.735586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825447, 34.906704, 28.867243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152277, -0.301182, -0.941329,
		0.776457, -0.625739, 0.074602,
		-0.611495, -0.719541, 0.329141,
		39.641998, 34.690842, 28.965984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297741, 34.678616, 28.336927>,  <40.070045, 35.194519, 28.735586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297741, 34.678616, 28.336927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.922207, 34.609840, 28.456276>,  <39.696888, 34.568577, 28.527885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.922207, 34.609840, 28.456276>,  <40.297741, 34.678616, 28.336927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922207, 34.609840, 28.456276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307168, 0.026433, -0.951288,
		0.155680, -0.984752, -0.077631,
		-0.938835, -0.171942, 0.298370,
		39.640556, 34.558258, 28.545788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047215, 34.109127, 27.920265>,  <40.297741, 34.678616, 28.336927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047215, 34.109127, 27.920265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.717209, 34.288857, 28.057356>,  <39.519207, 34.396694, 28.139610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.717209, 34.288857, 28.057356>,  <40.047215, 34.109127, 27.920265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717209, 34.288857, 28.057356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296007, 0.173020, -0.939385,
		-0.481389, -0.876453, -0.009740,
		-0.825012, 0.449327, 0.342726,
		39.469704, 34.423653, 28.160173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430111, 33.789253, 27.576590>,  <40.047215, 34.109127, 27.920265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430111, 33.789253, 27.576590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.301117, 34.147797, 27.698273>,  <39.223721, 34.362923, 27.771282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.301117, 34.147797, 27.698273>,  <39.430111, 33.789253, 27.576590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301117, 34.147797, 27.698273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421536, 0.151756, -0.894024,
		-0.847532, -0.416545, 0.328908,
		-0.322487, 0.896360, 0.304206,
		39.204372, 34.416706, 27.789536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789307, 33.842701, 27.531942>,  <39.430111, 33.789253, 27.576590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789307, 33.842701, 27.531942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.868389, 34.234776, 27.527248>,  <38.915840, 34.470020, 27.524433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.868389, 34.234776, 27.527248>,  <38.789307, 33.842701, 27.531942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868389, 34.234776, 27.527248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651750, 0.122502, -0.748476,
		-0.732211, 0.155628, 0.663059,
		0.197710, 0.980191, -0.011733,
		38.927704, 34.528831, 27.523729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073059, 34.166222, 27.458139>,  <38.789307, 33.842701, 27.531942>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073059, 34.166222, 27.458139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.349712, 34.440132, 27.366293>,  <38.515705, 34.604477, 27.311186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.349712, 34.440132, 27.366293>,  <38.073059, 34.166222, 27.458139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349712, 34.440132, 27.366293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564079, 0.313597, -0.763853,
		-0.451061, 0.657829, 0.603162,
		0.691635, 0.684775, -0.229616,
		38.557201, 34.645565, 27.297407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675850, 34.764942, 27.398760>,  <38.073059, 34.166222, 27.458139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675850, 34.764942, 27.398760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.016129, 34.842602, 27.203365>,  <38.220295, 34.889198, 27.086128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.016129, 34.842602, 27.203365>,  <37.675850, 34.764942, 27.398760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016129, 34.842602, 27.203365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517376, 0.473516, -0.712814,
		0.092914, 0.859121, 0.503267,
		0.850699, 0.194148, -0.488485,
		38.271339, 34.900845, 27.056820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631134, 35.433853, 27.134729>,  <37.675850, 34.764942, 27.398760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631134, 35.433853, 27.134729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.908344, 35.257557, 26.906534>,  <38.074673, 35.151779, 26.769617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.908344, 35.257557, 26.906534>,  <37.631134, 35.433853, 27.134729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908344, 35.257557, 26.906534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438051, 0.371047, -0.818801,
		0.572557, 0.817357, 0.064080,
		0.693030, -0.440740, -0.570489,
		38.116253, 35.125336, 26.735388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831635, 36.222450, 26.896774>,  <37.631134, 35.433853, 27.134729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831635, 36.222450, 26.896774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.587490, 36.521126, 27.002544>,  <37.441002, 36.700329, 27.066006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.587490, 36.521126, 27.002544>,  <37.831635, 36.222450, 26.896774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587490, 36.521126, 27.002544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069177, -0.382788, 0.921242,
		0.789097, 0.543998, 0.285293,
		-0.610361, 0.746685, 0.264425,
		37.404381, 36.745132, 27.081871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118427, 36.521553, 27.451820>,  <37.831635, 36.222450, 26.896774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118427, 36.521553, 27.451820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.732319, 36.620384, 27.485779>,  <37.500656, 36.679684, 27.506153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.732319, 36.620384, 27.485779>,  <38.118427, 36.521553, 27.451820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732319, 36.620384, 27.485779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017203, -0.264134, 0.964333,
		0.260690, 0.932301, 0.250710,
		-0.965269, 0.247079, 0.084896,
		37.442738, 36.694508, 27.511248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094551, 36.891094, 28.055910>,  <38.118427, 36.521553, 27.451820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094551, 36.891094, 28.055910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.712135, 36.787853, 28.000227>,  <37.482685, 36.725906, 27.966818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.712135, 36.787853, 28.000227>,  <38.094551, 36.891094, 28.055910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712135, 36.787853, 28.000227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101886, -0.152775, 0.982995,
		-0.274985, 0.953961, 0.119760,
		-0.956035, -0.258107, -0.139206,
		37.425323, 36.710423, 27.958466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777683, 37.123241, 28.573845>,  <38.094551, 36.891094, 28.055910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777683, 37.123241, 28.573845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.504143, 36.852177, 28.465687>,  <37.340019, 36.689537, 28.400791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.504143, 36.852177, 28.465687>,  <37.777683, 37.123241, 28.573845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504143, 36.852177, 28.465687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007941, -0.363665, 0.931496,
		-0.729575, 0.639155, 0.243313,
		-0.683854, -0.677664, -0.270396,
		37.298988, 36.648876, 28.384567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234287, 37.050838, 29.064610>,  <37.777683, 37.123241, 28.573845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234287, 37.050838, 29.064610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.176678, 36.701153, 28.879133>,  <37.142113, 36.491341, 28.767847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.176678, 36.701153, 28.879133>,  <37.234287, 37.050838, 29.064610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176678, 36.701153, 28.879133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165396, -0.440718, 0.882276,
		-0.975655, 0.203757, -0.081119,
		-0.144019, -0.874214, -0.463690,
		37.133472, 36.438889, 28.740026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511436, 36.708004, 29.274200>,  <37.234287, 37.050838, 29.064610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511436, 36.708004, 29.274200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.771103, 36.432281, 29.145548>,  <36.926903, 36.266850, 29.068357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.771103, 36.432281, 29.145548>,  <36.511436, 36.708004, 29.274200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771103, 36.432281, 29.145548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218005, -0.573703, 0.789518,
		-0.728737, -0.442411, -0.522699,
		0.649166, -0.689302, -0.321631,
		36.965855, 36.225491, 29.049059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137161, 36.076622, 29.495092>,  <36.511436, 36.708004, 29.274200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137161, 36.076622, 29.495092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.491673, 35.936718, 29.373648>,  <36.704380, 35.852776, 29.300781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.491673, 35.936718, 29.373648>,  <36.137161, 36.076622, 29.495092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491673, 35.936718, 29.373648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172454, -0.857603, 0.484538,
		-0.429850, -0.377077, -0.820391,
		0.886278, -0.349759, -0.303612,
		36.757557, 35.831791, 29.282564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069202, 35.414875, 29.366024>,  <36.137161, 36.076622, 29.495092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069202, 35.414875, 29.366024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.454319, 35.463345, 29.462648>,  <36.685387, 35.492428, 29.520624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.454319, 35.463345, 29.462648>,  <36.069202, 35.414875, 29.366024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454319, 35.463345, 29.462648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039009, -0.822170, 0.567903,
		0.267421, -0.556195, -0.786850,
		0.962790, 0.121175, 0.241563,
		36.743156, 35.499699, 29.535116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310017, 34.721085, 29.491972>,  <36.069202, 35.414875, 29.366024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310017, 34.721085, 29.491972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.589848, 34.944218, 29.670593>,  <36.757748, 35.078098, 29.777767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.589848, 34.944218, 29.670593>,  <36.310017, 34.721085, 29.491972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589848, 34.944218, 29.670593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107964, -0.700286, 0.705651,
		0.706349, -0.445448, -0.550133,
		0.699581, 0.557830, 0.446554,
		36.799721, 35.111568, 29.804560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921349, 34.275318, 29.654612>,  <36.310017, 34.721085, 29.491972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921349, 34.275318, 29.654612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.929527, 34.579422, 29.914331>,  <36.934433, 34.761883, 30.070164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.929527, 34.579422, 29.914331>,  <36.921349, 34.275318, 29.654612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929527, 34.579422, 29.914331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103816, -0.647537, 0.754929,
		0.994387, 0.051974, -0.092166,
		0.020444, 0.760259, 0.649298,
		36.935661, 34.807499, 30.109121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504448, 34.059994, 30.036230>,  <36.921349, 34.275318, 29.654612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504448, 34.059994, 30.036230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.302586, 34.347286, 30.227839>,  <37.181469, 34.519661, 30.342804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.302586, 34.347286, 30.227839>,  <37.504448, 34.059994, 30.036230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302586, 34.347286, 30.227839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059722, -0.524487, 0.849321,
		0.861252, 0.457224, 0.221791,
		-0.504657, 0.718233, 0.479022,
		37.151188, 34.562756, 30.371546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875523, 34.130569, 30.683353>,  <37.504448, 34.059994, 30.036230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875523, 34.130569, 30.683353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.490261, 34.238140, 30.682646>,  <37.259102, 34.302685, 30.682220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.490261, 34.238140, 30.682646>,  <37.875523, 34.130569, 30.683353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490261, 34.238140, 30.682646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128154, -0.453170, 0.882164,
		0.236439, 0.849890, 0.470939,
		-0.963158, 0.268931, -0.001770,
		37.201313, 34.318821, 30.682116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.573917, 38.158287, 23.554714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204159, 38.219524, 23.694460>,  <36.982304, 38.256268, 23.778307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204159, 38.219524, 23.694460>,  <37.573917, 38.158287, 23.554714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204159, 38.219524, 23.694460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361314, 0.057898, 0.930645,
		0.122244, 0.986515, -0.108834,
		-0.924396, 0.153089, 0.349364,
		36.926842, 38.265450, 23.799269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635204, 38.682453, 24.067471>,  <37.573917, 38.158287, 23.554714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635204, 38.682453, 24.067471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286240, 38.505146, 24.149845>,  <37.076859, 38.398762, 24.199270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286240, 38.505146, 24.149845>,  <37.635204, 38.682453, 24.067471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286240, 38.505146, 24.149845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280891, -0.109885, 0.953428,
		-0.399994, 0.889629, 0.220375,
		-0.872413, -0.443267, 0.205935,
		37.024517, 38.372166, 24.211626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411911, 38.997463, 24.700247>,  <37.635204, 38.682453, 24.067471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411911, 38.997463, 24.700247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189991, 38.665646, 24.674757>,  <37.056839, 38.466557, 24.659464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189991, 38.665646, 24.674757>,  <37.411911, 38.997463, 24.700247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189991, 38.665646, 24.674757> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196508, -0.205078, 0.958816,
		-0.808447, 0.519424, 0.276788,
		-0.554795, -0.829543, -0.063724,
		37.023552, 38.416782, 24.655640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058483, 38.982529, 25.285809>,  <37.411911, 38.997463, 24.700247>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058483, 38.982529, 25.285809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081589, 38.610699, 25.140173>,  <37.095451, 38.387600, 25.052792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081589, 38.610699, 25.140173>,  <37.058483, 38.982529, 25.285809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081589, 38.610699, 25.140173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333341, -0.325811, 0.884721,
		-0.941035, -0.172470, 0.291044,
		0.057763, -0.929570, -0.364091,
		37.098919, 38.331829, 25.030945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587242, 38.525879, 25.709064>,  <37.058483, 38.982529, 25.285809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587242, 38.525879, 25.709064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829624, 38.253075, 25.545269>,  <36.975052, 38.089394, 25.446993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829624, 38.253075, 25.545269>,  <36.587242, 38.525879, 25.709064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829624, 38.253075, 25.545269> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155737, -0.403089, 0.901812,
		-0.780105, -0.610230, -0.138040,
		0.605955, -0.682010, -0.409487,
		37.011410, 38.048473, 25.422422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257801, 37.859798, 25.731230>,  <36.587242, 38.525879, 25.709064>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257801, 37.859798, 25.731230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649063, 37.778873, 25.712114>,  <36.883820, 37.730316, 25.700645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649063, 37.778873, 25.712114>,  <36.257801, 37.859798, 25.731230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649063, 37.778873, 25.712114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069628, -0.535456, 0.841688,
		-0.195876, -0.819973, -0.537845,
		0.978153, -0.202315, -0.047790,
		36.942509, 37.718178, 25.697777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381859, 37.056152, 25.922642>,  <36.257801, 37.859798, 25.731230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381859, 37.056152, 25.922642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731945, 37.241898, 25.976837>,  <36.941998, 37.353344, 26.009354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731945, 37.241898, 25.976837>,  <36.381859, 37.056152, 25.922642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731945, 37.241898, 25.976837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304287, -0.746248, 0.592051,
		0.376035, -0.476947, -0.794430,
		0.875218, 0.464367, 0.135487,
		36.994511, 37.381207, 26.017483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848255, 36.491066, 25.961927>,  <36.381859, 37.056152, 25.922642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848255, 36.491066, 25.961927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027435, 36.809620, 26.124462>,  <37.134945, 37.000751, 26.221983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027435, 36.809620, 26.124462>,  <36.848255, 36.491066, 25.961927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027435, 36.809620, 26.124462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353531, -0.575225, 0.737653,
		0.821191, -0.186781, -0.539220,
		0.447952, 0.796385, 0.406337,
		37.161819, 37.048534, 26.246363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425877, 36.214066, 26.313652>,  <36.848255, 36.491066, 25.961927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425877, 36.214066, 26.313652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396435, 36.567688, 26.498270>,  <37.378769, 36.779861, 26.609041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396435, 36.567688, 26.498270>,  <37.425877, 36.214066, 26.313652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396435, 36.567688, 26.498270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082580, -0.455809, 0.886239,
		0.993862, 0.103348, -0.039455,
		-0.073608, 0.884057, 0.461546,
		37.374352, 36.832905, 26.636734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169128, 36.166080, 26.198849>,  <37.425877, 36.214066, 26.313652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169128, 36.166080, 26.198849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212090, 35.769886, 26.164446>,  <38.237865, 35.532169, 26.143805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212090, 35.769886, 26.164446>,  <38.169128, 36.166080, 26.198849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212090, 35.769886, 26.164446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593618, 0.005508, -0.804728,
		0.797547, 0.137490, -0.587379,
		0.107407, -0.990488, -0.086009,
		38.244312, 35.472740, 26.138643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288303, 36.123692, 25.513430>,  <38.169128, 36.166080, 26.198849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288303, 36.123692, 25.513430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256100, 35.733006, 25.592974>,  <38.236778, 35.498592, 25.640701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256100, 35.733006, 25.592974>,  <38.288303, 36.123692, 25.513430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256100, 35.733006, 25.592974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466816, -0.139327, -0.873311,
		0.880682, -0.163143, -0.444728,
		-0.080512, -0.976715, 0.198861,
		38.231945, 35.439991, 25.652632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678696, 35.661793, 25.068363>,  <38.288303, 36.123692, 25.513430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678696, 35.661793, 25.068363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375774, 35.451660, 25.223553>,  <38.194023, 35.325581, 25.316666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375774, 35.451660, 25.223553>,  <38.678696, 35.661793, 25.068363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375774, 35.451660, 25.223553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347369, -0.179044, -0.920477,
		0.553017, -0.831849, -0.046893,
		-0.757302, -0.525329, 0.387973,
		38.148582, 35.294060, 25.339945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651131, 35.064545, 24.710539>,  <38.678696, 35.661793, 25.068363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651131, 35.064545, 24.710539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289196, 35.119217, 24.871832>,  <38.072037, 35.152020, 24.968609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289196, 35.119217, 24.871832>,  <38.651131, 35.064545, 24.710539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289196, 35.119217, 24.871832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411876, -0.041044, -0.910315,
		-0.107876, -0.989764, 0.093435,
		-0.904832, 0.136684, 0.403233,
		38.017746, 35.160221, 24.992802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238777, 34.623356, 24.382429>,  <38.651131, 35.064545, 24.710539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238777, 34.623356, 24.382429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974884, 34.871906, 24.551497>,  <37.816547, 35.021038, 24.652937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974884, 34.871906, 24.551497>,  <38.238777, 34.623356, 24.382429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974884, 34.871906, 24.551497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623049, -0.137777, -0.769952,
		-0.420195, -0.771305, 0.478043,
		-0.659732, 0.621375, 0.422668,
		37.776966, 35.058319, 24.678297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665215, 34.264431, 24.210712>,  <38.238777, 34.623356, 24.382429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665215, 34.264431, 24.210712> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542381, 34.633659, 24.303362>,  <37.468681, 34.855194, 24.358952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542381, 34.633659, 24.303362>,  <37.665215, 34.264431, 24.210712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542381, 34.633659, 24.303362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586733, 0.007996, -0.809741,
		-0.749297, -0.384558, 0.539138,
		-0.307081, 0.923066, 0.231624,
		37.450256, 34.910580, 24.372849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877789, 34.241768, 24.113791>,  <37.665215, 34.264431, 24.210712>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877789, 34.241768, 24.113791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019203, 34.614483, 24.080833>,  <37.104053, 34.838112, 24.061058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019203, 34.614483, 24.080833>,  <36.877789, 34.241768, 24.113791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019203, 34.614483, 24.080833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455815, 0.094686, -0.885024,
		-0.816850, 0.350446, 0.458197,
		0.353538, 0.931785, -0.082394,
		37.125263, 34.894020, 24.056116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360962, 34.655830, 23.994028>,  <36.877789, 34.241768, 24.113791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360962, 34.655830, 23.994028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652531, 34.890976, 23.853691>,  <36.827473, 35.032063, 23.769489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652531, 34.890976, 23.853691>,  <36.360962, 34.655830, 23.994028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652531, 34.890976, 23.853691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543240, 0.184816, -0.818983,
		-0.416608, 0.787567, 0.454067,
		0.728923, 0.587862, -0.350842,
		36.871208, 35.067333, 23.748438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027367, 35.301521, 23.853622>,  <36.360962, 34.655830, 23.994028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027367, 35.301521, 23.853622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372746, 35.273209, 23.653841>,  <36.579971, 35.256222, 23.533972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372746, 35.273209, 23.653841>,  <36.027367, 35.301521, 23.853622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372746, 35.273209, 23.653841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484220, 0.161239, -0.859961,
		0.141398, 0.984374, 0.104949,
		0.863445, -0.070778, -0.499452,
		36.631779, 35.251976, 23.504005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043091, 35.868271, 23.411446>,  <36.027367, 35.301521, 23.853622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043091, 35.868271, 23.411446> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270226, 35.569859, 23.272310>,  <36.406506, 35.390812, 23.188829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270226, 35.569859, 23.272310>,  <36.043091, 35.868271, 23.411446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270226, 35.569859, 23.272310> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435839, 0.085985, -0.895908,
		0.698287, 0.660332, -0.276326,
		0.567837, -0.746035, -0.347841,
		36.440578, 35.346046, 23.167957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147671, 36.150005, 22.737700>,  <36.043091, 35.868271, 23.411446>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147671, 36.150005, 22.737700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268982, 35.768974, 22.727694>,  <36.341766, 35.540356, 22.721689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268982, 35.768974, 22.727694>,  <36.147671, 36.150005, 22.737700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268982, 35.768974, 22.727694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258938, -0.057116, -0.964204,
		0.917048, 0.298895, -0.263979,
		0.303273, -0.952575, -0.025017,
		36.359962, 35.483200, 22.720188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642590, 36.127701, 22.268078>,  <36.147671, 36.150005, 22.737700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642590, 36.127701, 22.268078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509411, 35.753006, 22.311298>,  <36.429504, 35.528191, 22.337231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509411, 35.753006, 22.311298>,  <36.642590, 36.127701, 22.268078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509411, 35.753006, 22.311298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028613, -0.104497, -0.994114,
		0.942512, -0.334078, 0.007989,
		-0.332946, -0.936735, 0.108049,
		36.409527, 35.471985, 22.343714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036732, 35.697598, 21.832159>,  <36.642590, 36.127701, 22.268078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036732, 35.697598, 21.832159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693092, 35.501320, 21.890345>,  <36.486908, 35.383553, 21.925257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693092, 35.501320, 21.890345>,  <37.036732, 35.697598, 21.832159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693092, 35.501320, 21.890345> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085619, -0.142421, -0.986096,
		0.504593, -0.859611, 0.080342,
		-0.859101, -0.490698, 0.145464,
		36.435360, 35.354111, 21.933983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164448, 35.029152, 21.482254>,  <37.036732, 35.697598, 21.832159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164448, 35.029152, 21.482254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774242, 35.115749, 21.497791>,  <36.540119, 35.167706, 21.507114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774242, 35.115749, 21.497791>,  <37.164448, 35.029152, 21.482254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774242, 35.115749, 21.497791> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037056, 0.012310, -0.999237,
		-0.216805, -0.976207, -0.003986,
		-0.975511, 0.216492, 0.038843,
		36.481590, 35.180698, 21.509445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.851511, 34.981827, 23.614491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.111597, 35.277859, 23.683191>,  <29.267649, 35.455479, 23.724411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.111597, 35.277859, 23.683191>,  <28.851511, 34.981827, 23.614491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.111597, 35.277859, 23.683191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201910, -0.386259, 0.900020,
		0.732430, -0.550528, -0.400582,
		0.650215, 0.740083, 0.171750,
		29.306662, 35.499882, 23.734716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.481934, 34.665787, 23.789215>,  <28.851511, 34.981827, 23.614491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.481934, 34.665787, 23.789215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.560696, 35.030796, 23.932615>,  <29.607952, 35.249802, 24.018656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.560696, 35.030796, 23.932615>,  <29.481934, 34.665787, 23.789215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.560696, 35.030796, 23.932615> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456023, -0.408940, 0.790450,
		0.867912, 0.007841, -0.496656,
		0.196904, 0.912527, 0.358500,
		29.619766, 35.304554, 24.040165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.200714, 34.653202, 23.938856>,  <29.481934, 34.665787, 23.789215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.200714, 34.653202, 23.938856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.074211, 34.987728, 24.117990>,  <29.998310, 35.188446, 24.225471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.074211, 34.987728, 24.117990>,  <30.200714, 34.653202, 23.938856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074211, 34.987728, 24.117990> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616791, -0.177407, 0.766874,
		0.720799, 0.518749, -0.459727,
		-0.316256, 0.836317, 0.447835,
		29.979334, 35.238625, 24.252340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.753660, 34.974022, 24.138544>,  <30.200714, 34.653202, 23.938856>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.753660, 34.974022, 24.138544> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.482447, 35.127983, 24.389021>,  <30.319717, 35.220360, 24.539307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.482447, 35.127983, 24.389021>,  <30.753660, 34.974022, 24.138544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.482447, 35.127983, 24.389021> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640891, -0.107554, 0.760060,
		0.359898, 0.916669, -0.173755,
		-0.678035, 0.384902, 0.626194,
		30.279036, 35.243454, 24.576880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.119341, 35.283386, 24.515738>,  <30.753660, 34.974022, 24.138544>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.119341, 35.283386, 24.515738> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.790970, 35.212860, 24.732990>,  <30.593946, 35.170544, 24.863342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.790970, 35.212860, 24.732990>,  <31.119341, 35.283386, 24.515738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.790970, 35.212860, 24.732990> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568363, -0.160401, 0.806991,
		-0.055162, 0.971177, 0.231886,
		-0.820927, -0.176311, 0.543133,
		30.544691, 35.159966, 24.895929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.311045, 35.767635, 25.012899>,  <31.119341, 35.283386, 24.515738>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.311045, 35.767635, 25.012899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.024536, 35.531563, 25.161837>,  <30.852631, 35.389919, 25.251200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.024536, 35.531563, 25.161837>,  <31.311045, 35.767635, 25.012899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.024536, 35.531563, 25.161837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489863, -0.045245, 0.870625,
		-0.496980, 0.806001, 0.321516,
		-0.716272, -0.590182, 0.372344,
		30.809654, 35.354507, 25.273540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059530, 36.048603, 25.672178>,  <31.311045, 35.767635, 25.012899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.059530, 36.048603, 25.672178> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.991287, 35.654514, 25.665977>,  <30.950342, 35.418060, 25.662256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.991287, 35.654514, 25.665977>,  <31.059530, 36.048603, 25.672178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.991287, 35.654514, 25.665977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539232, -0.106522, 0.835393,
		-0.824695, 0.134165, 0.549434,
		-0.170607, -0.985217, -0.015502,
		30.940105, 35.358948, 25.661327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.924208, 35.882347, 26.344755>,  <31.059530, 36.048603, 25.672178>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.924208, 35.882347, 26.344755> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.996986, 35.518364, 26.195694>,  <31.040653, 35.299973, 26.106258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.996986, 35.518364, 26.195694>,  <30.924208, 35.882347, 26.344755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996986, 35.518364, 26.195694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234418, -0.327911, 0.915163,
		-0.954957, -0.253867, 0.153648,
		0.181946, -0.909959, -0.372652,
		31.051571, 35.245377, 26.083899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.783197, 35.517078, 26.885904>,  <30.924208, 35.882347, 26.344755>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.783197, 35.517078, 26.885904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.978880, 35.234787, 26.680918>,  <31.096291, 35.065411, 26.557926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.978880, 35.234787, 26.680918>,  <30.783197, 35.517078, 26.885904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.978880, 35.234787, 26.680918> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173759, -0.496933, 0.850215,
		-0.854684, -0.504976, -0.120476,
		0.489207, -0.705731, -0.512464,
		31.125643, 35.023067, 26.527178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.509138, 34.879128, 27.086334>,  <30.783197, 35.517078, 26.885904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.509138, 34.879128, 27.086334> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.876043, 34.835945, 26.932983>,  <31.096186, 34.810036, 26.840973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.876043, 34.835945, 26.932983>,  <30.509138, 34.879128, 27.086334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.876043, 34.835945, 26.932983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289504, -0.480343, 0.827924,
		-0.273528, -0.870412, -0.409348,
		0.917263, -0.107952, -0.383375,
		31.151222, 34.803558, 26.817970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.797476, 34.375092, 27.479555>,  <30.509138, 34.879128, 27.086334>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.797476, 34.375092, 27.479555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.146534, 34.485462, 27.318382>,  <31.355968, 34.551685, 27.221678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.146534, 34.485462, 27.318382>,  <30.797476, 34.375092, 27.479555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146534, 34.485462, 27.318382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465861, -0.222819, 0.856344,
		0.146511, -0.934994, -0.322987,
		0.872644, 0.275930, -0.402932,
		31.408327, 34.568241, 27.197502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.287451, 33.852367, 27.591032>,  <30.797476, 34.375092, 27.479555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.287451, 33.852367, 27.591032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.485386, 34.195499, 27.535517>,  <31.604147, 34.401379, 27.502209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.485386, 34.195499, 27.535517>,  <31.287451, 33.852367, 27.591032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.485386, 34.195499, 27.535517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568739, -0.198954, 0.798094,
		0.657018, -0.473859, -0.586332,
		0.494837, 0.857831, -0.138786,
		31.633837, 34.452850, 27.493881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.023102, 33.604057, 27.581598>,  <31.287451, 33.852367, 27.591032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.023102, 33.604057, 27.581598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.990641, 33.993557, 27.666660>,  <31.971163, 34.227257, 27.717697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.990641, 33.993557, 27.666660>,  <32.023102, 33.604057, 27.581598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.990641, 33.993557, 27.666660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479232, -0.148956, 0.864956,
		0.873928, 0.172107, -0.454564,
		-0.081155, 0.973751, 0.212656,
		31.966293, 34.285683, 27.730457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690105, 33.863190, 27.701536>,  <32.023102, 33.604057, 27.581598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690105, 33.863190, 27.701536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.436085, 34.105694, 27.893021>,  <32.283672, 34.251194, 28.007912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.436085, 34.105694, 27.893021>,  <32.690105, 33.863190, 27.701536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436085, 34.105694, 27.893021> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440753, -0.224563, 0.869085,
		0.634391, 0.762904, -0.124603,
		-0.635047, 0.606258, 0.478713,
		32.245571, 34.287571, 28.036634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284370, 33.470810, 27.608246>,  <32.690105, 33.863190, 27.701536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284370, 33.470810, 27.608246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.386215, 33.084694, 27.584976>,  <33.447323, 32.853024, 27.571014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.386215, 33.084694, 27.584976>,  <33.284370, 33.470810, 27.608246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386215, 33.084694, 27.584976> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465248, -0.069537, -0.882445,
		0.847771, 0.251748, -0.466805,
		0.254614, -0.965292, -0.058174,
		33.462601, 32.795105, 27.567524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550968, 33.401188, 26.967426>,  <33.284370, 33.470810, 27.608246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550968, 33.401188, 26.967426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.470963, 33.019821, 27.057749>,  <33.422958, 32.791000, 27.111942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.470963, 33.019821, 27.057749>,  <33.550968, 33.401188, 26.967426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470963, 33.019821, 27.057749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393907, -0.132772, -0.909510,
		0.897125, -0.270859, -0.349002,
		-0.200012, -0.953419, 0.225806,
		33.410957, 32.733795, 27.125490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729160, 33.063663, 26.390278>,  <33.550968, 33.401188, 26.967426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729160, 33.063663, 26.390278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.505829, 32.793358, 26.582785>,  <33.371830, 32.631176, 26.698288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.505829, 32.793358, 26.582785>,  <33.729160, 33.063663, 26.390278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505829, 32.793358, 26.582785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519409, -0.167611, -0.837927,
		0.646906, -0.717809, -0.257416,
		-0.558325, -0.675764, 0.481265,
		33.338333, 32.590630, 26.727163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688843, 32.544838, 26.072834>,  <33.729160, 33.063663, 26.390278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688843, 32.544838, 26.072834> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.349293, 32.491375, 26.277401>,  <33.145561, 32.459297, 26.400141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.349293, 32.491375, 26.277401>,  <33.688843, 32.544838, 26.072834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349293, 32.491375, 26.277401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512618, -0.027919, -0.858163,
		0.128980, -0.990634, -0.044817,
		-0.848874, -0.133660, 0.511418,
		33.094631, 32.451279, 26.430826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362724, 31.967590, 25.673094>,  <33.688843, 32.544838, 26.072834>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362724, 31.967590, 25.673094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.096977, 32.150658, 25.909451>,  <32.937527, 32.260498, 26.051264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.096977, 32.150658, 25.909451>,  <33.362724, 31.967590, 25.673094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096977, 32.150658, 25.909451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638912, 0.062460, -0.766740,
		-0.387819, -0.886926, 0.250914,
		-0.664370, 0.457668, 0.590891,
		32.897667, 32.287956, 26.086718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693970, 31.572546, 25.592451>,  <33.362724, 31.967590, 25.673094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693970, 31.572546, 25.592451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.617901, 31.947952, 25.707705>,  <32.572262, 32.173195, 25.776857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.617901, 31.947952, 25.707705>,  <32.693970, 31.572546, 25.592451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.617901, 31.947952, 25.707705> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535461, 0.146840, -0.831697,
		-0.822871, -0.312448, 0.474615,
		-0.190170, 0.938517, 0.288134,
		32.560848, 32.229507, 25.794146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013786, 31.692440, 25.418615>,  <32.693970, 31.572546, 25.592451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013786, 31.692440, 25.418615> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.164925, 32.058292, 25.476147>,  <32.255608, 32.277805, 25.510666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.164925, 32.058292, 25.476147>,  <32.013786, 31.692440, 25.418615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164925, 32.058292, 25.476147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500528, 0.332471, -0.799334,
		-0.778913, 0.230033, 0.583420,
		0.377843, 0.914630, 0.143828,
		32.278278, 32.332680, 25.519295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364775, 32.198219, 25.359699>,  <32.013786, 31.692440, 25.418615>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364775, 32.198219, 25.359699> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.698730, 32.410603, 25.301672>,  <31.899103, 32.538033, 25.266855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.698730, 32.410603, 25.301672>,  <31.364775, 32.198219, 25.359699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.698730, 32.410603, 25.301672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418757, 0.441673, -0.793453,
		-0.357219, 0.723192, 0.591090,
		0.834887, 0.530960, -0.145068,
		31.949196, 32.569889, 25.258152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.111439, 32.707298, 25.117998>,  <31.364775, 32.198219, 25.359699>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.111439, 32.707298, 25.117998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.491179, 32.752716, 25.000801>,  <31.719023, 32.779964, 24.930483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.491179, 32.752716, 25.000801>,  <31.111439, 32.707298, 25.117998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491179, 32.752716, 25.000801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312392, 0.441517, -0.841114,
		0.033859, 0.890039, 0.454624,
		0.949350, 0.113542, -0.292991,
		31.775984, 32.786777, 24.912905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238865, 33.476307, 24.873749>,  <31.111439, 32.707298, 25.117998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238865, 33.476307, 24.873749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.506586, 33.227989, 24.710459>,  <31.667219, 33.078999, 24.612486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.506586, 33.227989, 24.710459>,  <31.238865, 33.476307, 24.873749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.506586, 33.227989, 24.710459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085163, 0.481713, -0.872181,
		0.738094, 0.618518, 0.269542,
		0.669301, -0.620797, -0.408224,
		31.707376, 33.041752, 24.587992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658602, 33.951984, 24.403791>,  <31.238865, 33.476307, 24.873749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658602, 33.951984, 24.403791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.737627, 33.578751, 24.283575>,  <31.785042, 33.354809, 24.211445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.737627, 33.578751, 24.283575>,  <31.658602, 33.951984, 24.403791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737627, 33.578751, 24.283575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016991, 0.303279, -0.952750,
		0.980143, 0.193334, 0.044062,
		0.197562, -0.933083, -0.300541,
		31.796896, 33.298824, 24.193413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951071, 34.119419, 23.790613>,  <31.658602, 33.951984, 24.403791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951071, 34.119419, 23.790613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.856709, 33.735905, 23.727278>,  <31.800091, 33.505795, 23.689278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.856709, 33.735905, 23.727278>,  <31.951071, 34.119419, 23.790613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856709, 33.735905, 23.727278> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062796, 0.147554, -0.987058,
		0.969745, -0.242797, 0.025399,
		-0.235907, -0.958790, -0.158336,
		31.785936, 33.448269, 23.679777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.402367, 33.920647, 23.229391>,  <31.951071, 34.119419, 23.790613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.402367, 33.920647, 23.229391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.090889, 33.669708, 23.225887>,  <31.904003, 33.519146, 23.223785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.090889, 33.669708, 23.225887>,  <32.402367, 33.920647, 23.229391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.090889, 33.669708, 23.225887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036540, 0.059284, -0.997572,
		0.626339, -0.776484, -0.069087,
		-0.778694, -0.627343, -0.008759,
		31.857281, 33.481506, 23.223259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563385, 33.354416, 22.776186>,  <32.402367, 33.920647, 23.229391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563385, 33.354416, 22.776186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.163952, 33.333172, 22.774649>,  <31.924292, 33.320423, 22.773726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.163952, 33.333172, 22.774649>,  <32.563385, 33.354416, 22.776186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.163952, 33.333172, 22.774649> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003425, 0.136118, -0.990687,
		0.053140, -0.989268, -0.136106,
		-0.998581, -0.053111, -0.003845,
		31.864378, 33.317238, 22.773495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091709, 32.791058, 22.695351>,  <32.563385, 33.354416, 22.776186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091709, 32.791058, 22.695351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.406628, 32.619499, 22.518164>,  <33.595577, 32.516563, 22.411852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.406628, 32.619499, 22.518164>,  <33.091709, 32.791058, 22.695351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406628, 32.619499, 22.518164> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490332, -0.000059, 0.871536,
		-0.373822, -0.903355, 0.210254,
		0.787293, -0.428894, -0.442966,
		33.642815, 32.490829, 22.385273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334881, 32.206062, 23.137978>,  <33.091709, 32.791058, 22.695351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334881, 32.206062, 23.137978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.648697, 32.280331, 22.901327>,  <33.836987, 32.324890, 22.759336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.648697, 32.280331, 22.901327>,  <33.334881, 32.206062, 23.137978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648697, 32.280331, 22.901327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614814, -0.108895, 0.781118,
		0.080604, -0.976560, -0.199585,
		0.784542, 0.185669, -0.591625,
		33.884060, 32.336033, 22.723839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784389, 31.676537, 23.260239>,  <33.334881, 32.206062, 23.137978>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784389, 31.676537, 23.260239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.003502, 31.983234, 23.126347>,  <34.134968, 32.167252, 23.046011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.003502, 31.983234, 23.126347>,  <33.784389, 31.676537, 23.260239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003502, 31.983234, 23.126347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630020, -0.114803, 0.768047,
		0.550467, -0.631605, -0.545950,
		0.547779, 0.766744, -0.334728,
		34.167835, 32.213257, 23.025928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387642, 31.443567, 23.291702>,  <33.784389, 31.676537, 23.260239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387642, 31.443567, 23.291702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.446381, 31.838924, 23.276154>,  <34.481625, 32.076138, 23.266825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.446381, 31.838924, 23.276154>,  <34.387642, 31.443567, 23.291702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446381, 31.838924, 23.276154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797574, -0.095070, 0.595682,
		0.585073, -0.118479, -0.802279,
		0.146849, 0.988395, -0.038873,
		34.490437, 32.135445, 23.264492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132454, 31.443403, 23.366341>,  <34.387642, 31.443567, 23.291702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132454, 31.443403, 23.366341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.020355, 31.820900, 23.436552>,  <34.953094, 32.047398, 23.478680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.020355, 31.820900, 23.436552>,  <35.132454, 31.443403, 23.366341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020355, 31.820900, 23.436552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698343, 0.074980, 0.711825,
		0.658619, 0.322067, -0.680069,
		-0.280247, 0.943743, 0.175530,
		34.936283, 32.104023, 23.489210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750393, 31.815357, 23.543402>,  <35.132454, 31.443403, 23.366341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750393, 31.815357, 23.543402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.449459, 32.035141, 23.688774>,  <35.268898, 32.167011, 23.775997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.449459, 32.035141, 23.688774>,  <35.750393, 31.815357, 23.543402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449459, 32.035141, 23.688774> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579411, 0.289376, 0.761935,
		0.313485, 0.783808, -0.536071,
		-0.752337, 0.549460, 0.363432,
		35.223759, 32.199978, 23.797804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051376, 32.431435, 23.893993>,  <35.750393, 31.815357, 23.543402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051376, 32.431435, 23.893993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.689610, 32.365177, 24.051268>,  <35.472549, 32.325424, 24.145632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.689610, 32.365177, 24.051268>,  <36.051376, 32.431435, 23.893993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689610, 32.365177, 24.051268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382091, 0.095590, 0.919168,
		-0.189840, 0.981542, -0.023162,
		-0.904416, -0.165645, 0.393185,
		35.418285, 32.315483, 24.169224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956367, 32.966286, 24.330433>,  <36.051376, 32.431435, 23.893993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956367, 32.966286, 24.330433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.734280, 32.657406, 24.454004>,  <35.601025, 32.472076, 24.528147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.734280, 32.657406, 24.454004>,  <35.956367, 32.966286, 24.330433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734280, 32.657406, 24.454004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370232, 0.103133, 0.923196,
		-0.744751, 0.626955, 0.228631,
		-0.555224, -0.772198, 0.308927,
		35.567711, 32.425747, 24.546682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567905, 33.246815, 24.864687>,  <35.956367, 32.966286, 24.330433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567905, 33.246815, 24.864687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.557743, 32.850143, 24.915180>,  <35.551643, 32.612141, 24.945477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.557743, 32.850143, 24.915180>,  <35.567905, 33.246815, 24.864687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557743, 32.850143, 24.915180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176920, 0.119822, 0.976904,
		-0.983897, 0.047156, 0.172402,
		-0.025409, -0.991675, 0.126235,
		35.550121, 32.552643, 24.953051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230202, 33.136459, 25.499702>,  <35.567905, 33.246815, 24.864687>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230202, 33.136459, 25.499702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.424210, 32.791641, 25.440876>,  <35.540615, 32.584751, 25.405581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.424210, 32.791641, 25.440876>,  <35.230202, 33.136459, 25.499702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424210, 32.791641, 25.440876> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511259, 0.143082, 0.847432,
		-0.709485, -0.486211, 0.510127,
		0.485021, -0.862048, -0.147066,
		35.569717, 32.533028, 25.396757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138474, 32.719276, 26.141953>,  <35.230202, 33.136459, 25.499702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138474, 32.719276, 26.141953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.471603, 32.594574, 25.958996>,  <35.671482, 32.519753, 25.849222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.471603, 32.594574, 25.958996>,  <35.138474, 32.719276, 26.141953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471603, 32.594574, 25.958996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422747, -0.175186, 0.889154,
		-0.357324, -0.933874, -0.014107,
		0.832829, -0.311752, -0.457391,
		35.721451, 32.501049, 25.821779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236095, 32.017071, 26.293707>,  <35.138474, 32.719276, 26.141953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236095, 32.017071, 26.293707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.600948, 32.155727, 26.206207>,  <35.819862, 32.238922, 26.153708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.600948, 32.155727, 26.206207>,  <35.236095, 32.017071, 26.293707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600948, 32.155727, 26.206207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287427, -0.160438, 0.944270,
		0.292224, -0.924176, -0.245975,
		0.912135, 0.346638, -0.218749,
		35.874588, 32.259720, 26.140583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676163, 31.532040, 26.511946>,  <35.236095, 32.017071, 26.293707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676163, 31.532040, 26.511946> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.908077, 31.856983, 26.486902>,  <36.047226, 32.051949, 26.471876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.908077, 31.856983, 26.486902>,  <35.676163, 31.532040, 26.511946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908077, 31.856983, 26.486902> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435220, -0.243824, 0.866679,
		0.688791, -0.529736, -0.494921,
		0.579785, 0.812360, -0.062608,
		36.082012, 32.100693, 26.468121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335747, 31.323093, 26.725290>,  <35.676163, 31.532040, 26.511946>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335747, 31.323093, 26.725290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.344307, 31.722233, 26.750082>,  <36.349442, 31.961716, 26.764957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.344307, 31.722233, 26.750082>,  <36.335747, 31.323093, 26.725290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344307, 31.722233, 26.750082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521870, -0.064026, 0.850619,
		0.852757, 0.014142, -0.522117,
		0.021400, 0.997848, 0.061979,
		36.350727, 32.021587, 26.768675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.730072, 34.429134, 20.987410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.459106, 34.710815, 21.072464>,  <36.296528, 34.879822, 21.123497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.459106, 34.710815, 21.072464>,  <36.730072, 34.429134, 20.987410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459106, 34.710815, 21.072464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219285, 0.082602, -0.972158,
		-0.702157, -0.705181, 0.098465,
		-0.677414, 0.704199, 0.212635,
		36.255882, 34.922073, 21.136255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075264, 34.218468, 20.696646>,  <36.730072, 34.429134, 20.987410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075264, 34.218468, 20.696646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.977043, 34.604256, 20.735626>,  <35.918110, 34.835728, 20.759014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.977043, 34.604256, 20.735626>,  <36.075264, 34.218468, 20.696646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977043, 34.604256, 20.735626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437891, -0.020672, -0.898790,
		-0.864843, -0.263377, 0.427410,
		-0.245556, 0.964471, 0.097453,
		35.903378, 34.893597, 20.764862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453381, 34.249233, 20.371706>,  <36.075264, 34.218468, 20.696646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453381, 34.249233, 20.371706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.576591, 34.629765, 20.367903>,  <35.650517, 34.858086, 20.365620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.576591, 34.629765, 20.367903>,  <35.453381, 34.249233, 20.371706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576591, 34.629765, 20.367903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480723, 0.147008, -0.864462,
		-0.820992, 0.270845, 0.502609,
		0.308023, 0.951331, -0.009509,
		35.668999, 34.915165, 20.365049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904980, 34.724346, 20.330999>,  <35.453381, 34.249233, 20.371706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904980, 34.724346, 20.330999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.206970, 34.931305, 20.169847>,  <35.388165, 35.055481, 20.073156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.206970, 34.931305, 20.169847>,  <34.904980, 34.724346, 20.330999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206970, 34.931305, 20.169847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525036, 0.108861, -0.844089,
		-0.392874, 0.848791, 0.353841,
		0.754975, 0.517400, -0.402878,
		35.433464, 35.086525, 20.048985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639534, 35.251381, 19.939251>,  <34.904980, 34.724346, 20.330999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639534, 35.251381, 19.939251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.013454, 35.256371, 19.797266>,  <35.237804, 35.259365, 19.712074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.013454, 35.256371, 19.797266>,  <34.639534, 35.251381, 19.939251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013454, 35.256371, 19.797266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349506, 0.210231, -0.913043,
		0.063237, 0.977572, 0.200882,
		0.934797, 0.012472, -0.354962,
		35.293892, 35.260113, 19.690777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645012, 35.867805, 19.523006>,  <34.639534, 35.251381, 19.939251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645012, 35.867805, 19.523006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.941189, 35.619495, 19.419939>,  <35.118893, 35.470509, 19.358099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.941189, 35.619495, 19.419939>,  <34.645012, 35.867805, 19.523006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941189, 35.619495, 19.419939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218627, 0.140068, -0.965703,
		0.635573, 0.771377, -0.032006,
		0.740438, -0.620773, -0.257667,
		35.163319, 35.433262, 19.342638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061703, 36.201778, 18.985020>,  <34.645012, 35.867805, 19.523006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061703, 36.201778, 18.985020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.131554, 35.810734, 18.938053>,  <35.173462, 35.576107, 18.909872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.131554, 35.810734, 18.938053>,  <35.061703, 36.201778, 18.985020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.131554, 35.810734, 18.938053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214773, 0.078561, -0.973499,
		0.960926, 0.195214, -0.196245,
		0.174624, -0.977609, -0.117418,
		35.183941, 35.517452, 18.902828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391510, 36.281803, 18.337507>,  <35.061703, 36.201778, 18.985020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391510, 36.281803, 18.337507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.318226, 35.891903, 18.388559>,  <35.274254, 35.657963, 18.419189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.318226, 35.891903, 18.388559>,  <35.391510, 36.281803, 18.337507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318226, 35.891903, 18.388559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264677, -0.076123, -0.961328,
		0.946773, -0.209910, -0.244048,
		-0.183215, -0.974753, 0.127629,
		35.263260, 35.599476, 18.426847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735142, 35.912811, 17.885918>,  <35.391510, 36.281803, 18.337507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735142, 35.912811, 17.885918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.478748, 35.613544, 17.954491>,  <35.324913, 35.433987, 17.995634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.478748, 35.613544, 17.954491>,  <35.735142, 35.912811, 17.885918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478748, 35.613544, 17.954491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224946, -0.030436, -0.973896,
		0.733852, -0.662815, -0.148787,
		-0.640984, -0.748165, 0.171433,
		35.286453, 35.389095, 18.005920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889149, 35.197411, 17.457554>,  <35.735142, 35.912811, 17.885918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889149, 35.197411, 17.457554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.500702, 35.216915, 17.550985>,  <35.267635, 35.228619, 17.607044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.500702, 35.216915, 17.550985>,  <35.889149, 35.197411, 17.457554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500702, 35.216915, 17.550985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238586, -0.183048, -0.953714,
		-0.003745, -0.981894, 0.189394,
		-0.971114, 0.048758, 0.233581,
		35.209366, 35.231544, 17.621059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581337, 34.687447, 17.058937>,  <35.889149, 35.197411, 17.457554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581337, 34.687447, 17.058937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.272934, 34.925190, 17.150398>,  <35.087891, 35.067837, 17.205275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.272934, 34.925190, 17.150398>,  <35.581337, 34.687447, 17.058937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272934, 34.925190, 17.150398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342707, -0.084625, -0.935623,
		-0.536750, -0.799732, 0.268939,
		-0.771007, 0.594363, 0.228651,
		35.041634, 35.103500, 17.218994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040436, 34.319443, 16.763851>,  <35.581337, 34.687447, 17.058937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040436, 34.319443, 16.763851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.891411, 34.682148, 16.842827>,  <34.801994, 34.899769, 16.890213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.891411, 34.682148, 16.842827>,  <35.040436, 34.319443, 16.763851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891411, 34.682148, 16.842827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490716, -0.011917, -0.871238,
		-0.787651, -0.421480, 0.449401,
		-0.372565, 0.906760, 0.197440,
		34.779640, 34.954174, 16.902060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254650, 34.278423, 16.862240>,  <35.040436, 34.319443, 16.763851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254650, 34.278423, 16.862240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.924511, 34.235161, 16.640574>,  <33.726425, 34.209202, 16.507574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.924511, 34.235161, 16.640574>,  <34.254650, 34.278423, 16.862240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924511, 34.235161, 16.640574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018202, -0.986067, 0.165348,
		-0.564328, 0.126383, 0.815819,
		-0.825350, -0.108161, -0.554165,
		33.676907, 34.202713, 16.474323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681091, 33.964886, 17.183531>,  <34.254650, 34.278423, 16.862240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681091, 33.964886, 17.183531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.671749, 33.888355, 16.791031>,  <33.666142, 33.842438, 16.555531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.671749, 33.888355, 16.791031>,  <33.681091, 33.964886, 17.183531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671749, 33.888355, 16.791031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001976, -0.981523, 0.191334,
		-0.999725, 0.002530, 0.023305,
		-0.023359, -0.191328, -0.981248,
		33.664742, 33.830956, 16.496656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971458, 34.035912, 17.051231>,  <33.681091, 33.964886, 17.183531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971458, 34.035912, 17.051231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.678211, 33.765968, 17.017517>,  <32.502262, 33.604004, 16.997288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.678211, 33.765968, 17.017517>,  <32.971458, 34.035912, 17.051231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678211, 33.765968, 17.017517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330601, -0.461934, 0.822995,
		-0.594337, 0.575490, 0.561761,
		-0.733121, -0.674855, -0.084286,
		32.458275, 33.563511, 16.992231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653435, 34.026119, 17.697783>,  <32.971458, 34.035912, 17.051231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653435, 34.026119, 17.697783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.487103, 33.684368, 17.573126>,  <32.387302, 33.479317, 17.498331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.487103, 33.684368, 17.573126>,  <32.653435, 34.026119, 17.697783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487103, 33.684368, 17.573126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064761, -0.313985, 0.947217,
		-0.907132, 0.414066, 0.075235,
		-0.415833, -0.854378, -0.311641,
		32.362354, 33.428055, 17.479633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119904, 33.909065, 18.145275>,  <32.653435, 34.026119, 17.697783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119904, 33.909065, 18.145275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.252876, 33.569286, 17.981361>,  <32.332661, 33.365417, 17.883013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.252876, 33.569286, 17.981361>,  <32.119904, 33.909065, 18.145275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252876, 33.569286, 17.981361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000395, -0.434623, 0.900613,
		-0.943126, -0.299233, -0.144819,
		0.332435, -0.849448, -0.409786,
		32.352608, 33.314453, 17.858425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.737335, 33.284470, 18.389715>,  <32.119904, 33.909065, 18.145275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.737335, 33.284470, 18.389715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.072021, 33.108791, 18.258867>,  <32.272835, 33.003384, 18.180359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.072021, 33.108791, 18.258867>,  <31.737335, 33.284470, 18.389715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072021, 33.108791, 18.258867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040449, -0.546139, 0.836718,
		-0.546139, -0.713328, -0.439199,
		-0.836718, 0.439199, 0.327121,
		32.323036, 32.977032, 18.160730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.659830, 32.645996, 18.581882>,  <31.737335, 33.284470, 18.389715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.659830, 32.645996, 18.581882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.050980, 32.665886, 18.500603>,  <32.285671, 32.677818, 18.451836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.050980, 32.665886, 18.500603>,  <31.659830, 32.645996, 18.581882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050980, 32.665886, 18.500603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203806, -0.445477, 0.871787,
		-0.047173, -0.893912, -0.445754,
		0.977874, 0.049722, -0.203199,
		32.344341, 32.680801, 18.439644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901842, 32.076946, 18.836996>,  <31.659830, 32.645996, 18.581882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.901842, 32.076946, 18.836996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.238075, 32.286484, 18.781843>,  <32.439816, 32.412205, 18.748751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.238075, 32.286484, 18.781843>,  <31.901842, 32.076946, 18.836996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238075, 32.286484, 18.781843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436539, -0.504394, 0.744997,
		0.320715, -0.686421, -0.652662,
		0.840581, 0.523844, -0.137883,
		32.490250, 32.443638, 18.740479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473259, 31.627491, 18.847137>,  <31.901842, 32.076946, 18.836996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473259, 31.627491, 18.847137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.621681, 31.976067, 18.975456>,  <32.710735, 32.185211, 19.052448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.621681, 31.976067, 18.975456>,  <32.473259, 31.627491, 18.847137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621681, 31.976067, 18.975456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370499, -0.455705, 0.809360,
		0.851496, -0.181466, -0.491960,
		0.371060, 0.871438, 0.320798,
		32.732998, 32.237499, 19.071695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040569, 31.454311, 19.219746>,  <32.473259, 31.627491, 18.847137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040569, 31.454311, 19.219746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.987392, 31.824503, 19.361629>,  <32.955486, 32.046619, 19.446760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.987392, 31.824503, 19.361629>,  <33.040569, 31.454311, 19.219746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987392, 31.824503, 19.361629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341678, -0.293153, 0.892926,
		0.930367, 0.239900, -0.277245,
		-0.132937, 0.925478, 0.354709,
		32.947510, 32.102146, 19.468042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594124, 31.620249, 19.648386>,  <33.040569, 31.454311, 19.219746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594124, 31.620249, 19.648386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.347603, 31.904316, 19.784519>,  <33.199688, 32.074757, 19.866199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.347603, 31.904316, 19.784519>,  <33.594124, 31.620249, 19.648386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347603, 31.904316, 19.784519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348965, -0.141139, 0.926446,
		0.705969, 0.689738, -0.160840,
		-0.616304, 0.710170, 0.340334,
		33.162712, 32.117367, 19.886620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045391, 32.136734, 19.992985>,  <33.594124, 31.620249, 19.648386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045391, 32.136734, 19.992985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.675556, 32.186539, 20.137001>,  <33.453655, 32.216423, 20.223412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.675556, 32.186539, 20.137001>,  <34.045391, 32.136734, 19.992985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675556, 32.186539, 20.137001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365013, 0.018941, 0.930810,
		0.109077, 0.992037, -0.062961,
		-0.924591, 0.124511, 0.360040,
		33.398178, 32.223892, 20.245012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183613, 32.429462, 20.526007>,  <34.045391, 32.136734, 19.992985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183613, 32.429462, 20.526007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.805687, 32.363598, 20.639290>,  <33.578930, 32.324078, 20.707260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.805687, 32.363598, 20.639290>,  <34.183613, 32.429462, 20.526007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.805687, 32.363598, 20.639290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228479, 0.288332, 0.929872,
		-0.234777, 0.943265, -0.234798,
		-0.944816, -0.164666, 0.283210,
		33.522243, 32.314198, 20.724253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958134, 32.983238, 20.811394>,  <34.183613, 32.429462, 20.526007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958134, 32.983238, 20.811394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.729004, 32.696743, 20.970831>,  <33.591526, 32.524845, 21.066494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.729004, 32.696743, 20.970831>,  <33.958134, 32.983238, 20.811394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729004, 32.696743, 20.970831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134556, 0.397517, 0.907675,
		-0.808558, 0.573572, -0.131333,
		-0.572824, -0.716237, 0.398594,
		33.557156, 32.481873, 21.090408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457195, 33.323898, 21.363281>,  <33.958134, 32.983238, 20.811394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457195, 33.323898, 21.363281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.477219, 32.932251, 21.442093>,  <33.489235, 32.697262, 21.489380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.477219, 32.932251, 21.442093>,  <33.457195, 33.323898, 21.363281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477219, 32.932251, 21.442093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168882, 0.202735, 0.964561,
		-0.984364, -0.015012, 0.175504,
		0.050061, -0.979118, 0.197030,
		33.492237, 32.638515, 21.501202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140606, 33.177128, 21.965675>,  <33.457195, 33.323898, 21.363281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140606, 33.177128, 21.965675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.334942, 32.828110, 21.945200>,  <33.451542, 32.618698, 21.932915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.334942, 32.828110, 21.945200>,  <33.140606, 33.177128, 21.965675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334942, 32.828110, 21.945200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265461, 0.091507, 0.959769,
		-0.832761, -0.479882, 0.276085,
		0.485839, -0.872548, -0.051186,
		33.480694, 32.566345, 21.929844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419804, 32.877342, 22.219069>,  <33.140606, 33.177128, 21.965675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419804, 32.877342, 22.219069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.069466, 33.054813, 22.295013>,  <31.859264, 33.161297, 22.340580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.069466, 33.054813, 22.295013>,  <32.419804, 32.877342, 22.219069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.069466, 33.054813, 22.295013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114748, 0.190679, -0.974923,
		-0.468758, -0.875664, -0.116093,
		-0.875841, 0.443681, 0.189863,
		31.806713, 33.187920, 22.351973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.970251, 32.711491, 21.680473>,  <32.419804, 32.877342, 22.219069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.970251, 32.711491, 21.680473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.793257, 33.026340, 21.852348>,  <31.687059, 33.215252, 21.955473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.793257, 33.026340, 21.852348>,  <31.970251, 32.711491, 21.680473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.793257, 33.026340, 21.852348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322095, 0.307680, -0.895314,
		-0.836934, -0.534567, 0.117386,
		-0.442488, 0.787129, 0.429689,
		31.660511, 33.262478, 21.981255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.245457, 32.697945, 21.442118>,  <31.970251, 32.711491, 21.680473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.245457, 32.697945, 21.442118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.337734, 33.072033, 21.549561>,  <31.393101, 33.296486, 21.614027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.337734, 33.072033, 21.549561>,  <31.245457, 32.697945, 21.442118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337734, 33.072033, 21.549561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378330, 0.340546, -0.860753,
		-0.896464, 0.096947, 0.432382,
		0.230693, 0.935216, 0.268609,
		31.406942, 33.352596, 21.630144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.577936, 33.166187, 21.574608>,  <31.245457, 32.697945, 21.442118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.577936, 33.166187, 21.574608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.889647, 33.404819, 21.497849>,  <31.076672, 33.548000, 21.451794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.889647, 33.404819, 21.497849>,  <30.577936, 33.166187, 21.574608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.889647, 33.404819, 21.497849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514852, 0.434878, -0.738788,
		-0.357295, 0.674516, 0.646040,
		0.779274, 0.596580, -0.191896,
		31.123428, 33.583794, 21.440279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.291315, 33.691704, 21.394632>,  <30.577936, 33.166187, 21.574608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.291315, 33.691704, 21.394632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.658407, 33.745651, 21.245190>,  <30.878662, 33.778019, 21.155525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.658407, 33.745651, 21.245190>,  <30.291315, 33.691704, 21.394632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.658407, 33.745651, 21.245190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382305, 0.555135, -0.738694,
		0.107772, 0.820752, 0.561027,
		0.917730, 0.134873, -0.373605,
		30.933725, 33.786114, 21.133108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.363972, 34.484039, 21.182940>,  <30.291315, 33.691704, 21.394632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.363972, 34.484039, 21.182940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.624569, 34.248371, 20.991756>,  <30.780928, 34.106972, 20.877047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.624569, 34.248371, 20.991756>,  <30.363972, 34.484039, 21.182940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.624569, 34.248371, 20.991756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148966, 0.518394, -0.842067,
		0.743887, 0.619798, 0.249964,
		0.651491, -0.589167, -0.477956,
		30.820017, 34.071621, 20.848370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.694691, 34.936535, 20.760040>,  <30.363972, 34.484039, 21.182940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.694691, 34.936535, 20.760040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.757408, 34.573494, 20.604258>,  <30.795038, 34.355671, 20.510788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.757408, 34.573494, 20.604258>,  <30.694691, 34.936535, 20.760040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.757408, 34.573494, 20.604258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286338, 0.335623, -0.897423,
		0.945212, 0.252225, -0.207258,
		0.156792, -0.907601, -0.389457,
		30.804445, 34.301212, 20.487421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.713654, 35.700893, 20.990387>,  <30.694691, 34.936535, 20.760040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.713654, 35.700893, 20.990387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.340763, 35.844273, 21.010248>,  <30.117027, 35.930302, 21.022165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.340763, 35.844273, 21.010248>,  <30.713654, 35.700893, 20.990387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.340763, 35.844273, 21.010248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124171, -0.445738, 0.886510,
		0.339899, 0.820264, 0.460038,
		-0.932229, 0.358447, 0.049653,
		30.061094, 35.951805, 21.025145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745331, 35.932560, 21.612347>,  <30.713654, 35.700893, 20.990387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745331, 35.932560, 21.612347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.358076, 35.914768, 21.513773>,  <30.125723, 35.904095, 21.454628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.358076, 35.914768, 21.513773>,  <30.745331, 35.932560, 21.612347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.358076, 35.914768, 21.513773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229693, -0.234272, 0.944647,
		-0.099752, 0.971153, 0.216591,
		-0.968138, -0.044481, -0.246436,
		30.067635, 35.901424, 21.439842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.387007, 36.534206, 21.929663>,  <30.745331, 35.932560, 21.612347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.387007, 36.534206, 21.929663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.082428, 36.282265, 21.868374>,  <29.899681, 36.131100, 21.831600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.082428, 36.282265, 21.868374>,  <30.387007, 36.534206, 21.929663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.082428, 36.282265, 21.868374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243371, 0.058695, 0.968156,
		-0.600807, 0.774489, -0.197982,
		-0.761447, -0.629858, -0.153224,
		29.853994, 36.093307, 21.822407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.815142, 36.822685, 22.313740>,  <30.387007, 36.534206, 21.929663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.815142, 36.822685, 22.313740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.721106, 36.438915, 22.251463>,  <29.664684, 36.208652, 22.214096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.721106, 36.438915, 22.251463>,  <29.815142, 36.822685, 22.313740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.721106, 36.438915, 22.251463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386694, -0.054639, 0.920588,
		-0.891740, 0.276629, -0.358157,
		-0.235092, -0.959422, -0.155694,
		29.650578, 36.151089, 22.204754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.199053, 36.772751, 22.672535>,  <29.815142, 36.822685, 22.313740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.199053, 36.772751, 22.672535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.343979, 36.401127, 22.642673>,  <29.430935, 36.178154, 22.624758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.343979, 36.401127, 22.642673>,  <29.199053, 36.772751, 22.672535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.343979, 36.401127, 22.642673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248626, -0.173529, 0.952928,
		-0.898282, -0.326702, -0.293861,
		0.362317, -0.929060, -0.074652,
		29.452675, 36.122410, 22.620277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.625427, 36.348152, 22.911352>,  <29.199053, 36.772751, 22.672535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.625427, 36.348152, 22.911352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.989290, 36.185101, 22.943254>,  <29.207607, 36.087269, 22.962395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.989290, 36.185101, 22.943254>,  <28.625427, 36.348152, 22.911352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.989290, 36.185101, 22.943254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237449, -0.352802, 0.905068,
		-0.340778, -0.842248, -0.417719,
		0.909664, -0.407614, 0.079764,
		29.262188, 36.062813, 22.967180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.464409, 35.665195, 23.394800>,  <28.625427, 36.348152, 22.911352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.464409, 35.665195, 23.394800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.858070, 35.735600, 23.386215>,  <29.094267, 35.777843, 23.381063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.858070, 35.735600, 23.386215>,  <28.464409, 35.665195, 23.394800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.858070, 35.735600, 23.386215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084044, -0.356446, 0.930528,
		0.156133, -0.917587, -0.365591,
		0.984154, 0.176012, -0.021465,
		29.153316, 35.788403, 23.379776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<34.206326, 38.335709, 16.976820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.274487, 37.981281, 17.149260>,  <34.315384, 37.768623, 17.252724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.274487, 37.981281, 17.149260>,  <34.206326, 38.335709, 16.976820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274487, 37.981281, 17.149260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021257, 0.440703, 0.897401,
		-0.985146, -0.143754, 0.093932,
		0.170401, -0.886067, 0.431101,
		34.325607, 37.715462, 17.278589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816353, 38.218742, 17.623943>,  <34.206326, 38.335709, 16.976820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816353, 38.218742, 17.623943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.141884, 37.988560, 17.656282>,  <34.337204, 37.850452, 17.675686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.141884, 37.988560, 17.656282>,  <33.816353, 38.218742, 17.623943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141884, 37.988560, 17.656282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108297, 0.286883, 0.951825,
		-0.570925, -0.765866, 0.295793,
		0.813828, -0.575454, 0.080847,
		34.386032, 37.815922, 17.680536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791069, 37.909908, 18.330391>,  <33.816353, 38.218742, 17.623943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791069, 37.909908, 18.330391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.170731, 37.839306, 18.226118>,  <34.398525, 37.796944, 18.163553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.170731, 37.839306, 18.226118>,  <33.791069, 37.909908, 18.330391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170731, 37.839306, 18.226118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288117, 0.153281, 0.945248,
		-0.126889, -0.972290, 0.196342,
		0.949151, -0.176511, -0.260684,
		34.455475, 37.786354, 18.147913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028534, 37.421318, 18.828642>,  <33.791069, 37.909908, 18.330391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028534, 37.421318, 18.828642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.350967, 37.617088, 18.695560>,  <34.544430, 37.734550, 18.615711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.350967, 37.617088, 18.695560>,  <34.028534, 37.421318, 18.828642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350967, 37.617088, 18.695560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360302, 0.040123, 0.931973,
		0.469477, -0.871124, -0.143997,
		0.806086, 0.489422, -0.332704,
		34.592793, 37.763916, 18.595749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469444, 37.056202, 19.122112>,  <34.028534, 37.421318, 18.828642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469444, 37.056202, 19.122112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.644073, 37.404892, 19.033112>,  <34.748852, 37.614105, 18.979712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.644073, 37.404892, 19.033112>,  <34.469444, 37.056202, 19.122112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644073, 37.404892, 19.033112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462605, -0.005393, 0.886548,
		0.771624, -0.489969, -0.405618,
		0.436568, 0.871723, -0.222501,
		34.775043, 37.666409, 18.966362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105919, 36.997101, 19.402821>,  <34.469444, 37.056202, 19.122112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105919, 36.997101, 19.402821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.052395, 37.387291, 19.332905>,  <35.020279, 37.621403, 19.290955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.052395, 37.387291, 19.332905>,  <35.105919, 36.997101, 19.402821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052395, 37.387291, 19.332905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272828, 0.205822, 0.939788,
		0.952712, 0.078065, -0.293677,
		-0.133810, 0.975471, -0.174791,
		35.012253, 37.679932, 19.280468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711891, 37.285873, 19.621929>,  <35.105919, 36.997101, 19.402821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711891, 37.285873, 19.621929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.444099, 37.582897, 19.629942>,  <35.283424, 37.761112, 19.634748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.444099, 37.582897, 19.629942>,  <35.711891, 37.285873, 19.621929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444099, 37.582897, 19.629942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380443, 0.319591, 0.867827,
		0.638014, 0.588612, -0.496462,
		-0.669478, 0.742561, 0.020030,
		35.243256, 37.805664, 19.635950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145779, 37.746719, 20.028070>,  <35.711891, 37.285873, 19.621929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145779, 37.746719, 20.028070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.765297, 37.866589, 20.057503>,  <35.537010, 37.938511, 20.075163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.765297, 37.866589, 20.057503>,  <36.145779, 37.746719, 20.028070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765297, 37.866589, 20.057503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181271, 0.349694, 0.919160,
		0.249713, 0.887644, -0.386951,
		-0.951201, 0.299670, 0.073581,
		35.479935, 37.956490, 20.079576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246944, 38.434071, 20.291166>,  <36.145779, 37.746719, 20.028070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246944, 38.434071, 20.291166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.869110, 38.331669, 20.373356>,  <35.642410, 38.270229, 20.422670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.869110, 38.331669, 20.373356>,  <36.246944, 38.434071, 20.291166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869110, 38.331669, 20.373356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073956, 0.443889, 0.893025,
		-0.319822, 0.858736, -0.400359,
		-0.944587, -0.256000, 0.205474,
		35.585735, 38.254868, 20.434998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888153, 39.027245, 20.717667>,  <36.246944, 38.434071, 20.291166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888153, 39.027245, 20.717667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.640255, 38.724960, 20.802341>,  <35.491516, 38.543591, 20.853146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.640255, 38.724960, 20.802341>,  <35.888153, 39.027245, 20.717667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640255, 38.724960, 20.802341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093348, 0.338802, 0.936216,
		-0.779229, 0.560457, -0.280516,
		-0.619748, -0.755712, 0.211687,
		35.454330, 38.498245, 20.865847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322079, 39.262459, 21.131290>,  <35.888153, 39.027245, 20.717667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322079, 39.262459, 21.131290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.348892, 38.871441, 21.211208>,  <35.364979, 38.636829, 21.259159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.348892, 38.871441, 21.211208>,  <35.322079, 39.262459, 21.131290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348892, 38.871441, 21.211208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051983, 0.196551, 0.979115,
		-0.996396, -0.076020, -0.037640,
		0.067034, -0.977542, 0.199795,
		35.369003, 38.578178, 21.271147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954723, 39.069637, 21.826031>,  <35.322079, 39.262459, 21.131290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954723, 39.069637, 21.826031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.180492, 38.743130, 21.776827>,  <35.315952, 38.547226, 21.747305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.180492, 38.743130, 21.776827>,  <34.954723, 39.069637, 21.826031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180492, 38.743130, 21.776827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107845, -0.074822, 0.991348,
		-0.818412, -0.572804, 0.045799,
		0.564421, -0.816270, -0.123010,
		35.349819, 38.498249, 21.739923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334846, 38.921406, 22.224991>,  <34.954723, 39.069637, 21.826031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334846, 38.921406, 22.224991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.165062, 39.240505, 22.396303>,  <34.063190, 39.431965, 22.499090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.165062, 39.240505, 22.396303>,  <34.334846, 38.921406, 22.224991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165062, 39.240505, 22.396303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624041, 0.084977, -0.776758,
		-0.656054, -0.596968, 0.461760,
		-0.424460, 0.797752, 0.428282,
		34.037724, 39.479832, 22.524788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598995, 38.790024, 22.021694>,  <34.334846, 38.921406, 22.224991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598995, 38.790024, 22.021694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.637016, 39.172981, 22.130777>,  <33.659828, 39.402756, 22.196228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.637016, 39.172981, 22.130777>,  <33.598995, 38.790024, 22.021694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637016, 39.172981, 22.130777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448293, 0.285768, -0.846977,
		-0.888818, -0.041744, 0.456354,
		0.095055, 0.957389, 0.272709,
		33.665531, 39.460197, 22.212589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965630, 39.082413, 22.051302>,  <33.598995, 38.790024, 22.021694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965630, 39.082413, 22.051302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.206436, 39.397228, 21.997412>,  <33.350918, 39.586117, 21.965076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.206436, 39.397228, 21.997412>,  <32.965630, 39.082413, 22.051302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206436, 39.397228, 21.997412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546607, 0.283207, -0.788045,
		-0.582064, 0.548057, 0.600695,
		0.602015, 0.787037, -0.134727,
		33.387039, 39.633339, 21.956993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.507179, 39.649250, 21.970282>,  <32.965630, 39.082413, 22.051302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.507179, 39.649250, 21.970282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.853924, 39.763119, 21.806566>,  <33.061970, 39.831440, 21.708338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.853924, 39.763119, 21.806566>,  <32.507179, 39.649250, 21.970282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853924, 39.763119, 21.806566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469521, 0.190082, -0.862218,
		-0.167654, 0.939590, 0.298435,
		0.866858, 0.284675, -0.409289,
		33.113979, 39.848522, 21.683779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.354538, 40.084549, 21.495970>,  <32.507179, 39.649250, 21.970282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.354538, 40.084549, 21.495970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.725609, 40.008076, 21.367682>,  <32.948250, 39.962193, 21.290709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.725609, 40.008076, 21.367682>,  <32.354538, 40.084549, 21.495970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725609, 40.008076, 21.367682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311380, 0.077891, -0.947088,
		0.206050, 0.978459, 0.012727,
		0.927678, -0.191185, -0.320722,
		33.003914, 39.950722, 21.271465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.475456, 40.611763, 21.002142>,  <32.354538, 40.084549, 21.495970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.475456, 40.611763, 21.002142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.727917, 40.308567, 20.936298>,  <32.879395, 40.126648, 20.896793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.727917, 40.308567, 20.936298>,  <32.475456, 40.611763, 21.002142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727917, 40.308567, 20.936298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223777, 0.025255, -0.974313,
		0.742680, 0.651774, -0.153682,
		0.631151, -0.757993, -0.164608,
		32.917263, 40.081169, 20.886915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728031, 40.739166, 20.313360>,  <32.475456, 40.611763, 21.002142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728031, 40.739166, 20.313360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.816639, 40.353455, 20.371452>,  <32.869804, 40.122028, 20.406307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.816639, 40.353455, 20.371452>,  <32.728031, 40.739166, 20.313360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816639, 40.353455, 20.371452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242229, -0.198676, -0.949660,
		0.944593, 0.175187, -0.277587,
		0.221517, -0.964281, 0.145232,
		32.883095, 40.064171, 20.415022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991932, 40.588017, 19.691738>,  <32.728031, 40.739166, 20.313360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991932, 40.588017, 19.691738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.882629, 40.241344, 19.858686>,  <32.817047, 40.033340, 19.958857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.882629, 40.241344, 19.858686>,  <32.991932, 40.588017, 19.691738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882629, 40.241344, 19.858686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284599, -0.341623, -0.895710,
		0.918878, -0.363539, -0.153307,
		-0.273252, -0.866679, 0.417373,
		32.800655, 39.981342, 19.983898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316132, 39.978851, 19.241520>,  <32.991932, 40.588017, 19.691738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316132, 39.978851, 19.241520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.025143, 39.814339, 19.461203>,  <32.850548, 39.715633, 19.593012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.025143, 39.814339, 19.461203>,  <33.316132, 39.978851, 19.241520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025143, 39.814339, 19.461203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332689, -0.488615, -0.806581,
		0.600079, -0.769484, 0.218629,
		-0.727477, -0.411277, 0.549207,
		32.806900, 39.690956, 19.625965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189861, 39.210804, 18.906805>,  <33.316132, 39.978851, 19.241520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189861, 39.210804, 18.906805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.863995, 39.338085, 19.100737>,  <32.668472, 39.414455, 19.217094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.863995, 39.338085, 19.100737>,  <33.189861, 39.210804, 18.906805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.863995, 39.338085, 19.100737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577320, -0.365850, -0.729969,
		-0.054907, -0.874585, 0.481754,
		-0.814670, 0.318207, 0.484828,
		32.619595, 39.433548, 19.246185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745361, 38.683578, 18.870737>,  <33.189861, 39.210804, 18.906805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745361, 38.683578, 18.870737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.529099, 39.007553, 18.961678>,  <32.399342, 39.201939, 19.016241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.529099, 39.007553, 18.961678>,  <32.745361, 38.683578, 18.870737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529099, 39.007553, 18.961678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702839, -0.286392, -0.651151,
		-0.462280, -0.511843, 0.724096,
		-0.540662, 0.809936, 0.227350,
		32.366901, 39.250534, 19.029882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072338, 38.451138, 18.730497>,  <32.745361, 38.683578, 18.870737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072338, 38.451138, 18.730497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.015167, 38.847000, 18.735308>,  <31.980865, 39.084518, 18.738194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.015167, 38.847000, 18.735308>,  <32.072338, 38.451138, 18.730497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015167, 38.847000, 18.735308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669604, -0.087744, -0.737517,
		-0.728836, -0.113463, 0.675222,
		-0.142928, 0.989660, 0.012025,
		31.972288, 39.143898, 18.738914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330748, 38.593296, 18.616663>,  <32.072338, 38.451138, 18.730497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330748, 38.593296, 18.616663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.511421, 38.943718, 18.549124>,  <31.619825, 39.153973, 18.508600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.511421, 38.943718, 18.549124>,  <31.330748, 38.593296, 18.616663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.511421, 38.943718, 18.549124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624332, 0.175175, -0.761264,
		-0.637332, 0.449266, 0.626073,
		0.451683, 0.876055, -0.168847,
		31.646927, 39.206535, 18.498470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.018763, 38.590336, 19.460585>,  <31.330748, 38.593296, 18.616663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.018763, 38.590336, 19.460585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.844316, 38.369434, 19.176382>,  <30.739649, 38.236893, 19.005861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.844316, 38.369434, 19.176382>,  <31.018763, 38.590336, 19.460585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.844316, 38.369434, 19.176382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327316, -0.638119, 0.696899,
		-0.838254, 0.536487, 0.097530,
		-0.436113, -0.552255, -0.710507,
		30.713482, 38.203758, 18.963230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.370003, 38.393826, 19.739845>,  <31.018763, 38.590336, 19.460585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.370003, 38.393826, 19.739845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.457560, 38.127285, 19.454731>,  <30.510094, 37.967361, 19.283663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.457560, 38.127285, 19.454731>,  <30.370003, 38.393826, 19.739845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.457560, 38.127285, 19.454731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320792, -0.739040, 0.592378,
		-0.921509, 0.098989, -0.375531,
		0.218894, -0.666349, -0.712787,
		30.523228, 37.927380, 19.240894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.734011, 38.132030, 19.526430>,  <30.370003, 38.393826, 19.739845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.734011, 38.132030, 19.526430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.028414, 37.876713, 19.436211>,  <30.205055, 37.723522, 19.382078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.028414, 37.876713, 19.436211>,  <29.734011, 38.132030, 19.526430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.028414, 37.876713, 19.436211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445535, -0.707556, 0.548510,
		-0.509700, -0.303217, -0.805149,
		0.736006, -0.638297, -0.225548,
		30.249216, 37.685223, 19.368546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.356699, 37.514458, 19.357317>,  <29.734011, 38.132030, 19.526430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.356699, 37.514458, 19.357317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.733938, 37.397800, 19.421211>,  <29.960281, 37.327808, 19.459547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.733938, 37.397800, 19.421211>,  <29.356699, 37.514458, 19.357317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.733938, 37.397800, 19.421211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331608, -0.789322, 0.516728,
		-0.024615, -0.540294, -0.841116,
		0.943096, -0.291640, 0.159736,
		30.016867, 37.310307, 19.469131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.271715, 36.868290, 19.353745>,  <29.356699, 37.514458, 19.357317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.271715, 36.868290, 19.353745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.633249, 36.900967, 19.521749>,  <29.850170, 36.920574, 19.622553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.633249, 36.900967, 19.521749>,  <29.271715, 36.868290, 19.353745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.633249, 36.900967, 19.521749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221171, -0.751100, 0.622039,
		0.366288, -0.655114, -0.660801,
		0.903834, 0.081695, 0.420011,
		29.904400, 36.925476, 19.647753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.458893, 36.179012, 19.595181>,  <29.271715, 36.868290, 19.353745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.458893, 36.179012, 19.595181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.717901, 36.400143, 19.804981>,  <29.873306, 36.532822, 19.930862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.717901, 36.400143, 19.804981>,  <29.458893, 36.179012, 19.595181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.717901, 36.400143, 19.804981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037297, -0.664465, 0.746388,
		0.761132, -0.502866, -0.409638,
		0.647523, 0.552822, 0.524501,
		29.912159, 36.565990, 19.962332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.936951, 35.721764, 19.835747>,  <29.458893, 36.179012, 19.595181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.936951, 35.721764, 19.835747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.921213, 36.053631, 20.058495>,  <29.911770, 36.252750, 20.192142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.921213, 36.053631, 20.058495>,  <29.936951, 35.721764, 19.835747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.921213, 36.053631, 20.058495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159222, -0.555385, 0.816208,
		0.986458, -0.056552, 0.153954,
		-0.039346, 0.829668, 0.556869,
		29.909409, 36.302532, 20.225555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.443100, 35.637444, 20.304998>,  <29.936951, 35.721764, 19.835747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.443100, 35.637444, 20.304998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.200912, 35.907814, 20.473063>,  <30.055599, 36.070034, 20.573900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.200912, 35.907814, 20.473063>,  <30.443100, 35.637444, 20.304998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.200912, 35.907814, 20.473063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013150, -0.536352, 0.843892,
		0.795759, 0.505427, 0.333634,
		-0.605471, 0.675922, 0.420160,
		30.019272, 36.110592, 20.599110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911457, 35.092049, 19.931168>,  <30.443100, 35.637444, 20.304998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911457, 35.092049, 19.931168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.839203, 34.699276, 19.953695>,  <30.795851, 34.463612, 19.967213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.839203, 34.699276, 19.953695>,  <30.911457, 35.092049, 19.931168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.839203, 34.699276, 19.953695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152455, -0.028617, -0.987896,
		0.971663, -0.187037, -0.144531,
		-0.180637, -0.981936, 0.056321,
		30.785011, 34.404694, 19.970592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413965, 34.910229, 19.466667>,  <30.911457, 35.092049, 19.931168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413965, 34.910229, 19.466667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.116423, 34.648468, 19.520983>,  <30.937897, 34.491413, 19.553572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.116423, 34.648468, 19.520983>,  <31.413965, 34.910229, 19.466667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.116423, 34.648468, 19.520983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196833, 0.020341, -0.980226,
		0.638697, -0.755875, -0.143938,
		-0.743856, -0.654400, 0.135790,
		30.893265, 34.452148, 19.561720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.540272, 34.241158, 18.969839>,  <31.413965, 34.910229, 19.466667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.540272, 34.241158, 18.969839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.152985, 34.269585, 19.065756>,  <30.920612, 34.286640, 19.123306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.152985, 34.269585, 19.065756>,  <31.540272, 34.241158, 18.969839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.152985, 34.269585, 19.065756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233756, 0.083793, -0.968678,
		-0.088934, -0.993946, -0.064518,
		-0.968219, 0.071067, 0.239793,
		30.862518, 34.290905, 19.137693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.277027, 33.929043, 18.416410>,  <31.540272, 34.241158, 18.969839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.277027, 33.929043, 18.416410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.973673, 34.134041, 18.577509>,  <30.791660, 34.257038, 18.674168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.973673, 34.134041, 18.577509>,  <31.277027, 33.929043, 18.416410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973673, 34.134041, 18.577509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319225, 0.246680, -0.915011,
		-0.568284, -0.822497, -0.023478,
		-0.758386, 0.512491, 0.402746,
		30.746157, 34.287788, 18.698332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680695, 33.867973, 17.949394>,  <31.277027, 33.929043, 18.416410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680695, 33.867973, 17.949394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.600252, 34.182838, 18.182606>,  <30.551987, 34.371758, 18.322533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.600252, 34.182838, 18.182606>,  <30.680695, 33.867973, 17.949394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.600252, 34.182838, 18.182606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362533, 0.493119, -0.790824,
		-0.910014, -0.370407, 0.186205,
		-0.201106, 0.787167, 0.583031,
		30.539921, 34.418987, 18.357515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.132193, 34.164604, 17.786364>,  <30.680695, 33.867973, 17.949394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.132193, 34.164604, 17.786364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.248976, 34.486225, 17.993542>,  <30.319046, 34.679195, 18.117847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.248976, 34.486225, 17.993542>,  <30.132193, 34.164604, 17.786364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.248976, 34.486225, 17.993542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123578, 0.568712, -0.813200,
		-0.948414, 0.173415, 0.265403,
		0.291959, 0.804048, 0.517944,
		30.336563, 34.727440, 18.148926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.623663, 34.656849, 17.718645>,  <30.132193, 34.164604, 17.786364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.623663, 34.656849, 17.718645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.951790, 34.873653, 17.791647>,  <30.148666, 35.003735, 17.835447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.951790, 34.873653, 17.791647>,  <29.623663, 34.656849, 17.718645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.951790, 34.873653, 17.791647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124020, 0.480107, -0.868399,
		-0.558302, 0.689727, 0.461059,
		0.820316, 0.542009, 0.182505,
		30.197886, 35.036255, 17.846399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.436407, 35.402710, 17.635828>,  <29.623663, 34.656849, 17.718645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.436407, 35.402710, 17.635828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.832516, 35.368980, 17.591549>,  <30.070181, 35.348743, 17.564981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.832516, 35.368980, 17.591549>,  <29.436407, 35.402710, 17.635828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.832516, 35.368980, 17.591549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064033, 0.430135, -0.900491,
		0.123548, 0.898818, 0.420550,
		0.990270, -0.084325, -0.110697,
		30.129597, 35.343681, 17.558340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.573092, 35.770420, 17.151527>,  <29.436407, 35.402710, 17.635828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.573092, 35.770420, 17.151527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.940241, 35.611687, 17.149292>,  <30.160530, 35.516445, 17.147951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.940241, 35.611687, 17.149292>,  <29.573092, 35.770420, 17.151527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.940241, 35.611687, 17.149292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117705, 0.285639, -0.951081,
		0.379021, 0.872313, 0.308890,
		0.917872, -0.396838, -0.005588,
		30.215603, 35.492634, 17.147615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.087971, 33.620499, 31.930614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.456684, 33.569561, 31.784136>,  <35.677914, 33.538998, 31.696249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.456684, 33.569561, 31.784136>,  <35.087971, 33.620499, 31.930614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.456684, 33.569561, 31.784136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387698, -0.309222, -0.868373,
		-0.002652, 0.942425, -0.334408,
		0.921783, -0.127346, -0.366196,
		35.733219, 33.531357, 31.674276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057270, 33.978374, 31.383169>,  <35.087971, 33.620499, 31.930614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057270, 33.978374, 31.383169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.348930, 33.716755, 31.302614>,  <35.523926, 33.559784, 31.254280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.348930, 33.716755, 31.302614>,  <35.057270, 33.978374, 31.383169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348930, 33.716755, 31.302614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464458, -0.256823, -0.847538,
		0.502611, 0.711519, -0.491042,
		0.729151, -0.654050, -0.201389,
		35.567677, 33.520538, 31.242197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232304, 34.086048, 30.615654>,  <35.057270, 33.978374, 31.383169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232304, 34.086048, 30.615654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.395470, 33.737026, 30.723175>,  <35.493370, 33.527615, 30.787687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.395470, 33.737026, 30.723175>,  <35.232304, 34.086048, 30.615654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395470, 33.737026, 30.723175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296658, -0.405103, -0.864804,
		0.863479, 0.273027, -0.424099,
		0.407918, -0.872553, 0.268802,
		35.517845, 33.475262, 30.803816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589115, 33.891537, 29.989706>,  <35.232304, 34.086048, 30.615654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589115, 33.891537, 29.989706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.517746, 33.551086, 30.187189>,  <35.474926, 33.346817, 30.305679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.517746, 33.551086, 30.187189>,  <35.589115, 33.891537, 29.989706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517746, 33.551086, 30.187189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267884, -0.440789, -0.856705,
		0.946786, -0.285113, -0.149356,
		-0.178423, -0.851126, 0.493710,
		35.464218, 33.295750, 30.335302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811958, 33.365627, 29.568024>,  <35.589115, 33.891537, 29.989706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811958, 33.365627, 29.568024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.563950, 33.169609, 29.813112>,  <35.415142, 33.051998, 29.960165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.563950, 33.169609, 29.813112>,  <35.811958, 33.365627, 29.568024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563950, 33.169609, 29.813112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301319, -0.572332, -0.762655,
		0.724414, -0.657489, 0.207200,
		-0.620025, -0.490045, 0.612719,
		35.377941, 33.022594, 29.996927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917427, 32.657810, 29.470806>,  <35.811958, 33.365627, 29.568024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917427, 32.657810, 29.470806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.553745, 32.679924, 29.635874>,  <35.335537, 32.693192, 29.734915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.553745, 32.679924, 29.635874>,  <35.917427, 32.657810, 29.470806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553745, 32.679924, 29.635874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374623, -0.541130, -0.752885,
		0.181687, -0.839120, 0.512706,
		-0.909201, 0.055282, 0.412670,
		35.280983, 32.696510, 29.759674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566246, 32.036472, 29.259321>,  <35.917427, 32.657810, 29.470806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566246, 32.036472, 29.259321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.254318, 32.255356, 29.380938>,  <35.067162, 32.386684, 29.453907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.254318, 32.255356, 29.380938>,  <35.566246, 32.036472, 29.259321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254318, 32.255356, 29.380938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500840, -0.254005, -0.827430,
		-0.375551, -0.797523, 0.472143,
		-0.779821, 0.547210, 0.304040,
		35.020370, 32.419518, 29.472149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926105, 31.574373, 29.181541>,  <35.566246, 32.036472, 29.259321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926105, 31.574373, 29.181541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.816730, 31.959099, 29.186399>,  <34.751106, 32.189934, 29.189314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.816730, 31.959099, 29.186399>,  <34.926105, 31.574373, 29.181541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816730, 31.959099, 29.186399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704419, -0.191631, -0.683427,
		-0.655003, -0.195425, 0.729918,
		-0.273434, 0.961814, 0.012143,
		34.734699, 32.247643, 29.190042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216949, 31.614376, 29.185886>,  <34.926105, 31.574373, 29.181541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216949, 31.614376, 29.185886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.318539, 31.979275, 29.057325>,  <34.379494, 32.198215, 28.980188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.318539, 31.979275, 29.057325>,  <34.216949, 31.614376, 29.185886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318539, 31.979275, 29.057325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622243, -0.100297, -0.776373,
		-0.740480, 0.397170, 0.542167,
		0.253974, 0.912248, -0.321404,
		34.394730, 32.252949, 28.960905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542202, 31.857927, 28.955791>,  <34.216949, 31.614376, 29.185886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542202, 31.857927, 28.955791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.806297, 32.107555, 28.788639>,  <33.964752, 32.257332, 28.688347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.806297, 32.107555, 28.788639>,  <33.542202, 31.857927, 28.955791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806297, 32.107555, 28.788639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575209, 0.062396, -0.815623,
		-0.482933, 0.778872, 0.400168,
		0.660235, 0.624072, -0.417881,
		34.004368, 32.294777, 28.663275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131664, 32.444870, 28.771996>,  <33.542202, 31.857927, 28.955791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131664, 32.444870, 28.771996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.458012, 32.416145, 28.542490>,  <33.653820, 32.398911, 28.404787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.458012, 32.416145, 28.542490>,  <33.131664, 32.444870, 28.771996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458012, 32.416145, 28.542490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561666, 0.137463, -0.815865,
		0.137463, 0.987900, 0.071815,
		0.815865, -0.071815, -0.573766,
		33.702770, 32.394600, 28.370359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098141, 33.089794, 28.264849>,  <33.131664, 32.444870, 28.771996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098141, 33.089794, 28.264849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.328838, 32.798008, 28.117744>,  <33.467258, 32.622936, 28.029482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.328838, 32.798008, 28.117744>,  <33.098141, 33.089794, 28.264849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328838, 32.798008, 28.117744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422671, 0.118779, -0.898466,
		0.699078, 0.673630, -0.239816,
		0.576749, -0.729461, -0.367760,
		33.501862, 32.579170, 28.007416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.903385, 33.870010, 28.382631>,  <33.098141, 33.089794, 28.264849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.903385, 33.870010, 28.382631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.565372, 34.070663, 28.456690>,  <32.362564, 34.191055, 28.501125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.565372, 34.070663, 28.456690>,  <32.903385, 33.870010, 28.382631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565372, 34.070663, 28.456690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090158, -0.207630, 0.974044,
		0.527058, 0.839792, 0.130228,
		-0.845033, 0.501636, 0.185147,
		32.311863, 34.221153, 28.512234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029400, 34.366711, 28.952183>,  <32.903385, 33.870010, 28.382631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029400, 34.366711, 28.952183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.629662, 34.355839, 28.942688>,  <32.389816, 34.349316, 28.936991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.629662, 34.355839, 28.942688>,  <33.029400, 34.366711, 28.952183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629662, 34.355839, 28.942688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023614, -0.004735, 0.999710,
		-0.027282, 0.999619, 0.004090,
		-0.999349, -0.027177, -0.023735,
		32.329857, 34.347687, 28.935568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794827, 34.848045, 29.433556>,  <33.029400, 34.366711, 28.952183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794827, 34.848045, 29.433556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.487572, 34.596554, 29.385105>,  <32.303219, 34.445660, 29.356035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.487572, 34.596554, 29.385105>,  <32.794827, 34.848045, 29.433556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487572, 34.596554, 29.385105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137352, -0.022967, 0.990256,
		-0.625381, 0.777288, -0.068714,
		-0.768136, -0.628726, -0.121125,
		32.257130, 34.407936, 29.348768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.338989, 35.118961, 29.836147>,  <32.794827, 34.848045, 29.433556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.338989, 35.118961, 29.836147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.277332, 34.727356, 29.782810>,  <32.240337, 34.492393, 29.750809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.277332, 34.727356, 29.782810>,  <32.338989, 35.118961, 29.836147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277332, 34.727356, 29.782810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094736, -0.119688, 0.988281,
		-0.983496, 0.164969, -0.074298,
		-0.154143, -0.979010, -0.133341,
		32.231091, 34.433655, 29.742807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945950, 34.878365, 30.456112>,  <32.338989, 35.118961, 29.836147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945950, 34.878365, 30.456112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.031929, 34.516258, 30.309528>,  <32.083515, 34.298996, 30.221579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.031929, 34.516258, 30.309528>,  <31.945950, 34.878365, 30.456112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031929, 34.516258, 30.309528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223492, -0.410866, 0.883878,
		-0.950710, -0.108087, -0.290634,
		0.214947, -0.905266, -0.366457,
		32.096413, 34.244678, 30.199591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.494789, 34.382568, 30.757883>,  <31.945950, 34.878365, 30.456112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.494789, 34.382568, 30.757883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.830866, 34.191349, 30.655476>,  <32.032513, 34.076618, 30.594030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.830866, 34.191349, 30.655476>,  <31.494789, 34.382568, 30.757883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830866, 34.191349, 30.655476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012447, -0.488984, 0.872204,
		-0.542151, -0.729629, -0.416789,
		0.840189, -0.478054, -0.256022,
		32.082924, 34.047935, 30.578669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441795, 33.671268, 30.927885>,  <31.494789, 34.382568, 30.757883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441795, 33.671268, 30.927885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.829636, 33.769028, 30.932674>,  <32.062340, 33.827682, 30.935549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.829636, 33.769028, 30.932674>,  <31.441795, 33.671268, 30.927885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.829636, 33.769028, 30.932674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080526, -0.364911, 0.927553,
		0.231065, -0.898392, -0.373499,
		0.969600, 0.244402, 0.011974,
		32.120514, 33.842346, 30.936266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.677904, 33.234528, 31.336723>,  <31.441795, 33.671268, 30.927885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.677904, 33.234528, 31.336723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.009647, 33.457470, 31.321115>,  <32.208694, 33.591236, 31.311750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.009647, 33.457470, 31.321115>,  <31.677904, 33.234528, 31.336723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009647, 33.457470, 31.321115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185845, -0.209338, 0.960020,
		0.526902, -0.803452, -0.277198,
		0.829358, 0.557352, -0.039017,
		32.258453, 33.624676, 31.309410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079327, 32.828255, 31.640745>,  <31.677904, 33.234528, 31.336723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079327, 32.828255, 31.640745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.237343, 33.192627, 31.688318>,  <32.332153, 33.411251, 31.716862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.237343, 33.192627, 31.688318>,  <32.079327, 32.828255, 31.640745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237343, 33.192627, 31.688318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191975, -0.208460, 0.959005,
		0.898381, -0.356013, -0.257226,
		0.395040, 0.910933, 0.118931,
		32.355854, 33.465908, 31.723997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694618, 32.705582, 32.053429>,  <32.079327, 32.828255, 31.640745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694618, 32.705582, 32.053429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.621185, 33.097736, 32.082096>,  <32.577126, 33.333031, 32.099297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.621185, 33.097736, 32.082096>,  <32.694618, 32.705582, 32.053429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621185, 33.097736, 32.082096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175197, -0.039109, 0.983756,
		0.967265, 0.193161, -0.164581,
		-0.183587, 0.980387, 0.071670,
		32.566109, 33.391853, 32.103596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133663, 32.900784, 32.532299>,  <32.694618, 32.705582, 32.053429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133663, 32.900784, 32.532299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.858910, 33.191437, 32.537853>,  <32.694057, 33.365829, 32.541183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.858910, 33.191437, 32.537853>,  <33.133663, 32.900784, 32.532299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.858910, 33.191437, 32.537853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188286, 0.159472, 0.969081,
		0.701953, 0.668261, -0.246353,
		-0.686885, 0.726633, 0.013882,
		32.652843, 33.409428, 32.542019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494640, 33.322445, 32.935604>,  <33.133663, 32.900784, 32.532299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494640, 33.322445, 32.935604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.126980, 33.479874, 32.941967>,  <32.906384, 33.574333, 32.945786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.126980, 33.479874, 32.941967>,  <33.494640, 33.322445, 32.935604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126980, 33.479874, 32.941967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114233, 0.227692, 0.967009,
		0.376968, 0.890649, -0.254244,
		-0.919155, 0.393575, 0.015909,
		32.851234, 33.597946, 32.946739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504353, 34.001148, 33.217186>,  <33.494640, 33.322445, 32.935604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504353, 34.001148, 33.217186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.110516, 33.941166, 33.253178>,  <32.874214, 33.905174, 33.274773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.110516, 33.941166, 33.253178>,  <33.504353, 34.001148, 33.217186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110516, 33.941166, 33.253178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025354, 0.386657, 0.921875,
		-0.173034, 0.909949, -0.376897,
		-0.984589, -0.149960, 0.089975,
		32.815140, 33.896179, 33.280170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080101, 34.653957, 33.470581>,  <33.504353, 34.001148, 33.217186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080101, 34.653957, 33.470581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.897018, 34.312408, 33.569702>,  <32.787167, 34.107479, 33.629173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.897018, 34.312408, 33.569702>,  <33.080101, 34.653957, 33.470581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897018, 34.312408, 33.569702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022386, 0.267550, 0.963284,
		-0.888820, 0.446451, -0.103345,
		-0.457709, -0.853873, 0.247798,
		32.759705, 34.056248, 33.644043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697475, 34.917366, 33.161972>,  <33.080101, 34.653957, 33.470581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.697475, 34.917366, 33.161972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.908493, 35.027603, 33.483406>,  <34.035103, 35.093746, 33.676266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.908493, 35.027603, 33.483406>,  <33.697475, 34.917366, 33.161972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908493, 35.027603, 33.483406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837630, 0.010999, 0.546128,
		0.141674, -0.961210, 0.236653,
		0.527546, 0.275599, 0.803580,
		34.066757, 35.110283, 33.724480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825378, 35.626984, 33.098377>,  <33.697475, 34.917366, 33.161972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825378, 35.626984, 33.098377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.011047, 35.978535, 33.054348>,  <34.122448, 36.189465, 33.027931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.011047, 35.978535, 33.054348>,  <33.825378, 35.626984, 33.098377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011047, 35.978535, 33.054348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382592, 0.311022, 0.869994,
		0.798855, -0.361711, 0.480619,
		0.464170, 0.878880, -0.110074,
		34.150299, 36.242199, 33.021324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994514, 35.550522, 32.377453>,  <33.825378, 35.626984, 33.098377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994514, 35.550522, 32.377453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.351822, 35.414661, 32.259666>,  <34.566208, 35.333145, 32.188995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.351822, 35.414661, 32.259666>,  <33.994514, 35.550522, 32.377453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351822, 35.414661, 32.259666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098267, 0.491678, -0.865215,
		0.438652, 0.801805, 0.405824,
		0.893268, -0.339649, -0.294467,
		34.619801, 35.312767, 32.171326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480434, 36.061989, 32.346882>,  <33.994514, 35.550522, 32.377453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480434, 36.061989, 32.346882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.618759, 35.797264, 32.080822>,  <34.701752, 35.638428, 31.921186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.618759, 35.797264, 32.080822>,  <34.480434, 36.061989, 32.346882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618759, 35.797264, 32.080822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035528, 0.717607, -0.695541,
		0.937632, 0.216893, 0.271669,
		0.345809, -0.661813, -0.665146,
		34.722504, 35.598721, 31.881279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101635, 36.360939, 31.993273>,  <34.480434, 36.061989, 32.346882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101635, 36.360939, 31.993273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.930031, 36.090473, 31.753691>,  <34.827068, 35.928192, 31.609941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.930031, 36.090473, 31.753691>,  <35.101635, 36.360939, 31.993273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930031, 36.090473, 31.753691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178184, 0.586698, -0.789959,
		0.885552, -0.445624, -0.131216,
		-0.429009, -0.676169, -0.598954,
		34.801327, 35.887623, 31.574005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400112, 36.486282, 31.389563>,  <35.101635, 36.360939, 31.993273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400112, 36.486282, 31.389563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.118324, 36.241074, 31.246494>,  <34.949253, 36.093948, 31.160654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.118324, 36.241074, 31.246494>,  <35.400112, 36.486282, 31.389563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118324, 36.241074, 31.246494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075731, 0.436144, -0.896684,
		0.705685, -0.658771, -0.260824,
		-0.704467, -0.613024, -0.357670,
		34.906982, 36.057167, 31.139193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625122, 36.204510, 30.788397>,  <35.400112, 36.486282, 31.389563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625122, 36.204510, 30.788397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.227512, 36.176525, 30.754862>,  <34.988949, 36.159737, 30.734741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.227512, 36.176525, 30.754862>,  <35.625122, 36.204510, 30.788397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227512, 36.176525, 30.754862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053859, 0.353783, -0.933776,
		0.094987, -0.932708, -0.347900,
		-0.994021, -0.069959, -0.083840,
		34.929306, 36.155537, 30.729710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452728, 35.790482, 30.098858>,  <35.625122, 36.204510, 30.788397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452728, 35.790482, 30.098858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.120872, 35.993740, 30.191376>,  <34.921761, 36.115696, 30.246887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.120872, 35.993740, 30.191376>,  <35.452728, 35.790482, 30.098858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120872, 35.993740, 30.191376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133724, 0.221361, -0.965980,
		-0.542055, -0.832340, -0.115698,
		-0.829635, 0.508143, 0.231294,
		34.871983, 36.146183, 30.260763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965557, 35.610832, 29.513502>,  <35.452728, 35.790482, 30.098858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965557, 35.610832, 29.513502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.801132, 35.927383, 29.694498>,  <34.702477, 36.117313, 29.803095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.801132, 35.927383, 29.694498>,  <34.965557, 35.610832, 29.513502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801132, 35.927383, 29.694498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189876, 0.411150, -0.891573,
		-0.891613, -0.452410, -0.018745,
		-0.411063, 0.791379, 0.452489,
		34.677814, 36.164799, 29.830244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349678, 35.745728, 29.109549>,  <34.965557, 35.610832, 29.513502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349678, 35.745728, 29.109549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.468597, 36.082993, 29.288740>,  <34.539951, 36.285351, 29.396255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.468597, 36.082993, 29.288740>,  <34.349678, 35.745728, 29.109549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468597, 36.082993, 29.288740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208845, 0.515262, -0.831197,
		-0.931662, 0.153559, 0.329279,
		0.297303, 0.843163, 0.447980,
		34.557789, 36.335941, 29.423134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838394, 36.278156, 28.830500>,  <34.349678, 35.745728, 29.109549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838394, 36.278156, 28.830500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.142620, 36.478504, 28.995747>,  <34.325157, 36.598713, 29.094894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.142620, 36.478504, 28.995747>,  <33.838394, 36.278156, 28.830500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142620, 36.478504, 28.995747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121565, 0.734898, -0.667194,
		-0.637776, 0.457226, 0.619828,
		0.760568, 0.500869, 0.413118,
		34.370789, 36.628765, 29.119682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603439, 36.989819, 28.919291>,  <33.838394, 36.278156, 28.830500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603439, 36.989819, 28.919291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.997738, 36.960907, 28.858515>,  <34.234318, 36.943562, 28.822048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.997738, 36.960907, 28.858515>,  <33.603439, 36.989819, 28.919291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997738, 36.960907, 28.858515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049338, 0.739178, -0.671700,
		0.160859, 0.669620, 0.725075,
		0.985743, -0.072275, -0.151941,
		34.293461, 36.939224, 28.812933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792824, 37.703846, 28.796293>,  <33.603439, 36.989819, 28.919291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792824, 37.703846, 28.796293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.090046, 37.487900, 28.638102>,  <34.268379, 37.358330, 28.543186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.090046, 37.487900, 28.638102>,  <33.792824, 37.703846, 28.796293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090046, 37.487900, 28.638102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135134, 0.699820, -0.701421,
		0.655441, 0.467754, 0.592962,
		0.743059, -0.539869, -0.395480,
		34.312965, 37.325939, 28.519457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393009, 38.164417, 28.729008>,  <33.792824, 37.703846, 28.796293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393009, 38.164417, 28.729008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.452126, 37.858154, 28.478590>,  <34.487595, 37.674397, 28.328339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.452126, 37.858154, 28.478590>,  <34.393009, 38.164417, 28.729008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452126, 37.858154, 28.478590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060859, 0.638837, -0.766931,
		0.987144, 0.075248, 0.141015,
		0.147796, -0.765653, -0.626045,
		34.496464, 37.628460, 28.290777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950912, 38.486668, 28.161089>,  <34.393009, 38.164417, 28.729008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950912, 38.486668, 28.161089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.828388, 38.142792, 27.997574>,  <34.754875, 37.936466, 27.899464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.828388, 38.142792, 27.997574>,  <34.950912, 38.486668, 28.161089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828388, 38.142792, 27.997574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105199, 0.457373, -0.883031,
		0.946101, -0.227478, -0.230537,
		-0.306311, -0.859688, -0.408790,
		34.736496, 37.884884, 27.874937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299366, 38.347771, 27.563002>,  <34.950912, 38.486668, 28.161089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299366, 38.347771, 27.563002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.951599, 38.158985, 27.504534>,  <34.742939, 38.045712, 27.469452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.951599, 38.158985, 27.504534>,  <35.299366, 38.347771, 27.563002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951599, 38.158985, 27.504534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180194, 0.578351, -0.795638,
		0.460051, -0.665401, -0.587872,
		-0.869416, -0.471965, -0.146170,
		34.690773, 38.017395, 27.460682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351654, 38.146290, 26.852224>,  <35.299366, 38.347771, 27.563002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351654, 38.146290, 26.852224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.960457, 38.134075, 26.934782>,  <34.725739, 38.126747, 26.984318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.960457, 38.134075, 26.934782>,  <35.351654, 38.146290, 26.852224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960457, 38.134075, 26.934782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207011, 0.265494, -0.941626,
		-0.026046, -0.963629, -0.265972,
		-0.977992, -0.030534, 0.206397,
		34.667061, 38.124916, 26.996700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966042, 37.787323, 26.307198>,  <35.351654, 38.146290, 26.852224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966042, 37.787323, 26.307198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.667511, 37.992130, 26.477293>,  <34.488392, 38.115017, 26.579351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.667511, 37.992130, 26.477293>,  <34.966042, 37.787323, 26.307198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667511, 37.992130, 26.477293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230877, 0.400074, -0.886925,
		-0.624251, -0.760116, -0.180373,
		-0.746328, 0.512020, 0.425240,
		34.443611, 38.145737, 26.604866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451088, 37.820599, 25.780165>,  <34.966042, 37.787323, 26.307198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451088, 37.820599, 25.780165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.294815, 38.083023, 26.038452>,  <34.201050, 38.240479, 26.193424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.294815, 38.083023, 26.038452>,  <34.451088, 37.820599, 25.780165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294815, 38.083023, 26.038452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289991, 0.578031, -0.762748,
		-0.873655, -0.485243, -0.035573,
		-0.390681, 0.656063, 0.645716,
		34.177612, 38.279842, 26.232166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816113, 37.910851, 25.569618>,  <34.451088, 37.820599, 25.780165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816113, 37.910851, 25.569618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.907063, 38.240173, 25.777641>,  <33.961632, 38.437767, 25.902454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.907063, 38.240173, 25.777641>,  <33.816113, 37.910851, 25.569618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907063, 38.240173, 25.777641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112516, 0.552679, -0.825764,
		-0.967285, 0.129244, 0.218301,
		0.227376, 0.823311, 0.520057,
		33.975277, 38.487167, 25.933659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291607, 38.358128, 25.375679>,  <33.816113, 37.910851, 25.569618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291607, 38.358128, 25.375679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.545284, 38.614243, 25.549042>,  <33.697491, 38.767910, 25.653059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.545284, 38.614243, 25.549042>,  <33.291607, 38.358128, 25.375679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545284, 38.614243, 25.549042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015729, 0.549753, -0.835179,
		-0.773017, 0.536479, 0.338576,
		0.634189, 0.640283, 0.433407,
		33.735542, 38.806328, 25.679064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993313, 38.964142, 25.228458>,  <33.291607, 38.358128, 25.375679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993313, 38.964142, 25.228458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.387375, 38.995155, 25.289721>,  <33.623814, 39.013763, 25.326479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.387375, 38.995155, 25.289721>,  <32.993313, 38.964142, 25.228458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387375, 38.995155, 25.289721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079568, 0.584313, -0.807618,
		-0.152110, 0.807816, 0.569470,
		0.985156, 0.077535, 0.153156,
		33.682922, 39.018417, 25.335667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116131, 39.660805, 25.041307>,  <32.993313, 38.964142, 25.228458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116131, 39.660805, 25.041307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.481594, 39.501045, 25.011076>,  <33.700871, 39.405190, 24.992937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.481594, 39.501045, 25.011076>,  <33.116131, 39.660805, 25.041307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481594, 39.501045, 25.011076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018918, 0.227512, -0.973591,
		0.406042, 0.888100, 0.215424,
		0.913658, -0.399395, -0.075578,
		33.755692, 39.381226, 24.988403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505482, 40.119747, 24.737093>,  <33.116131, 39.660805, 25.041307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505482, 40.119747, 24.737093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.713871, 39.787300, 24.659300>,  <33.838905, 39.587830, 24.612623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.713871, 39.787300, 24.659300>,  <33.505482, 40.119747, 24.737093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713871, 39.787300, 24.659300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098002, 0.168097, -0.980887,
		0.847927, 0.530077, 0.006123,
		0.520975, -0.831121, -0.194483,
		33.870163, 39.537964, 24.600954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081295, 40.244915, 24.358610>,  <33.505482, 40.119747, 24.737093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081295, 40.244915, 24.358610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.979424, 39.863422, 24.294693>,  <33.918301, 39.634525, 24.256342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.979424, 39.863422, 24.294693>,  <34.081295, 40.244915, 24.358610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979424, 39.863422, 24.294693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016212, 0.161010, -0.986820,
		0.966889, -0.253916, -0.025545,
		-0.254682, -0.953731, -0.159795,
		33.903019, 39.577305, 24.246754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586243, 40.099266, 23.941519>,  <34.081295, 40.244915, 24.358610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586243, 40.099266, 23.941519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.320206, 39.803329, 23.900944>,  <34.160583, 39.625767, 23.876598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.320206, 39.803329, 23.900944>,  <34.586243, 40.099266, 23.941519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320206, 39.803329, 23.900944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233376, -0.076891, -0.969342,
		0.709358, -0.668375, 0.223800,
		-0.665092, -0.739840, -0.101440,
		34.120678, 39.581379, 23.870512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947441, 39.515736, 23.455557>,  <34.586243, 40.099266, 23.941519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947441, 39.515736, 23.455557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.549805, 39.472866, 23.448639>,  <34.311222, 39.447144, 23.444489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.549805, 39.472866, 23.448639>,  <34.947441, 39.515736, 23.455557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549805, 39.472866, 23.448639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025127, -0.072166, -0.997076,
		0.105611, -0.991618, 0.074432,
		-0.994090, -0.107172, -0.017295,
		34.251579, 39.440716, 23.443451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846027, 39.164516, 22.720926>,  <34.947441, 39.515736, 23.455557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846027, 39.164516, 22.720926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.495350, 39.311085, 22.845592>,  <34.284943, 39.399025, 22.920393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.495350, 39.311085, 22.845592>,  <34.846027, 39.164516, 22.720926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.495350, 39.311085, 22.845592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269484, 0.162578, -0.949182,
		-0.398472, -0.916135, -0.043786,
		-0.876697, 0.366423, 0.311667,
		34.232342, 39.421013, 22.939093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742172, 38.421913, 22.592934>,  <34.846027, 39.164516, 22.720926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742172, 38.421913, 22.592934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.076649, 38.312160, 22.402985>,  <35.277332, 38.246307, 22.289015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.076649, 38.312160, 22.402985>,  <34.742172, 38.421913, 22.592934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076649, 38.312160, 22.402985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466317, -0.100060, 0.878940,
		-0.288681, -0.956401, 0.044280,
		0.836189, -0.274382, -0.474871,
		35.327507, 38.229847, 22.260523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997772, 37.898083, 22.948492>,  <34.742172, 38.421913, 22.592934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997772, 37.898083, 22.948492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.333961, 38.022320, 22.770889>,  <35.535675, 38.096863, 22.664328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.333961, 38.022320, 22.770889>,  <34.997772, 37.898083, 22.948492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333961, 38.022320, 22.770889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512650, -0.190407, 0.837218,
		0.175491, -0.931277, -0.319257,
		0.840471, 0.310592, -0.444005,
		35.586102, 38.115498, 22.637688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492851, 37.381180, 23.096537>,  <34.997772, 37.898083, 22.948492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492851, 37.381180, 23.096537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.694859, 37.713146, 23.001722>,  <35.816063, 37.912327, 22.944834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.694859, 37.713146, 23.001722>,  <35.492851, 37.381180, 23.096537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694859, 37.713146, 23.001722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560242, -0.106290, 0.821481,
		0.656568, -0.547664, -0.518635,
		0.505021, 0.829920, -0.237038,
		35.846367, 37.962124, 22.930611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217297, 37.258236, 23.234737>,  <35.492851, 37.381180, 23.096537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217297, 37.258236, 23.234737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.181614, 37.656025, 23.256905>,  <36.160202, 37.894699, 23.270205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.181614, 37.656025, 23.256905>,  <36.217297, 37.258236, 23.234737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181614, 37.656025, 23.256905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746785, 0.029967, 0.664389,
		0.659055, 0.100656, -0.745329,
		-0.089210, 0.994470, 0.055419,
		36.154850, 37.954365, 23.273531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958057, 37.532894, 23.132029>,  <36.217297, 37.258236, 23.234737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958057, 37.532894, 23.132029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.739376, 37.811184, 23.318398>,  <36.608170, 37.978157, 23.430220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.739376, 37.811184, 23.318398>,  <36.958057, 37.532894, 23.132029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739376, 37.811184, 23.318398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712662, 0.094497, 0.695114,
		0.439580, 0.712065, -0.547479,
		-0.546702, 0.695726, 0.465922,
		36.575367, 38.019901, 23.458174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
