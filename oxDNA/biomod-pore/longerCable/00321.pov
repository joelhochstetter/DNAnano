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
	<24.235971, 34.603832, 35.118492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.208132, 35.002800, 35.111446>,  <24.191427, 35.242180, 35.107220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.208132, 35.002800, 35.111446>,  <24.235971, 34.603832, 35.118492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.208132, 35.002800, 35.111446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497392, 0.050006, 0.866084,
		0.864730, 0.051516, -0.499588,
		-0.069600, 0.997419, -0.017618,
		24.187252, 35.302025, 35.106159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.007914, 34.886497, 35.281708>,  <24.235971, 34.603832, 35.118492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.007914, 34.886497, 35.281708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.692343, 35.115059, 35.372128>,  <24.503000, 35.252193, 35.426380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.692343, 35.115059, 35.372128>,  <25.007914, 34.886497, 35.281708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.692343, 35.115059, 35.372128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375803, 0.157601, 0.913200,
		0.486177, 0.805397, -0.339069,
		-0.788926, 0.571400, 0.226048,
		24.455666, 35.286480, 35.439941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.347528, 34.563919, 34.644138>,  <25.007914, 34.886497, 35.281708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.347528, 34.563919, 34.644138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.707844, 34.645821, 34.797321>,  <25.924034, 34.694962, 34.889229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.707844, 34.645821, 34.797321>,  <25.347528, 34.563919, 34.644138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.707844, 34.645821, 34.797321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331262, 0.246226, -0.910845,
		-0.280793, 0.947338, 0.153971,
		0.900789, 0.204754, 0.382955,
		25.978081, 34.707249, 34.912209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.702549, 35.076557, 34.170784>,  <25.347528, 34.563919, 34.644138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.702549, 35.076557, 34.170784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.010204, 34.914902, 34.368813>,  <26.194798, 34.817909, 34.487629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.010204, 34.914902, 34.368813>,  <25.702549, 35.076557, 34.170784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.010204, 34.914902, 34.368813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600779, 0.193071, -0.775750,
		0.217928, 0.894088, 0.391297,
		0.769138, -0.404141, 0.495074,
		26.240946, 34.793659, 34.517334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.341702, 35.468090, 33.862946>,  <25.702549, 35.076557, 34.170784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.341702, 35.468090, 33.862946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.492603, 35.154659, 34.060402>,  <26.583145, 34.966599, 34.178875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.492603, 35.154659, 34.060402>,  <26.341702, 35.468090, 33.862946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.492603, 35.154659, 34.060402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735577, -0.070324, -0.673781,
		0.562677, 0.617296, 0.549854,
		0.377255, -0.783581, 0.493639,
		26.605780, 34.919586, 34.208492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.054989, 35.488358, 34.106945>,  <26.341702, 35.468090, 33.862946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.054989, 35.488358, 34.106945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.947842, 35.116135, 34.007099>,  <26.883554, 34.892799, 33.947189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.947842, 35.116135, 34.007099>,  <27.054989, 35.488358, 34.106945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.947842, 35.116135, 34.007099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748862, -0.038086, -0.661631,
		0.606179, -0.364158, 0.707062,
		-0.267867, -0.930558, -0.249617,
		26.867481, 34.836967, 33.932213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.666191, 35.151577, 33.946278>,  <27.054989, 35.488358, 34.106945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.666191, 35.151577, 33.946278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.374233, 34.959263, 33.751919>,  <27.199059, 34.843876, 33.635303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.374233, 34.959263, 33.751919>,  <27.666191, 35.151577, 33.946278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.374233, 34.959263, 33.751919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563588, -0.021023, -0.825789,
		0.386812, -0.876587, 0.286309,
		-0.729894, -0.480785, -0.485901,
		27.155264, 34.815029, 33.606148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.912926, 34.471043, 33.637585>,  <27.666191, 35.151577, 33.946278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.912926, 34.471043, 33.637585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.613688, 34.645172, 33.437248>,  <27.434145, 34.749649, 33.317047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.613688, 34.645172, 33.437248>,  <27.912926, 34.471043, 33.637585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.613688, 34.645172, 33.437248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508049, -0.109807, -0.854300,
		-0.426893, -0.893552, -0.139020,
		-0.748096, 0.435324, -0.500845,
		27.389259, 34.775768, 33.286995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.753452, 34.073330, 33.095592>,  <27.912926, 34.471043, 33.637585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.753452, 34.073330, 33.095592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.592426, 34.424801, 32.992931>,  <27.495811, 34.635685, 32.931335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.592426, 34.424801, 32.992931>,  <27.753452, 34.073330, 33.095592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.592426, 34.424801, 32.992931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503231, -0.021773, -0.863877,
		-0.764657, -0.476921, -0.433412,
		-0.402565, 0.878676, -0.256650,
		27.471657, 34.688404, 32.915936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.381905, 34.002930, 32.533760>,  <27.753452, 34.073330, 33.095592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.381905, 34.002930, 32.533760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.481701, 34.390255, 32.538074>,  <27.541578, 34.622650, 32.540665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.481701, 34.390255, 32.538074>,  <27.381905, 34.002930, 32.533760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.481701, 34.390255, 32.538074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453818, -0.107070, -0.884639,
		-0.855456, 0.225605, -0.466152,
		0.249490, 0.968317, 0.010789,
		27.556547, 34.680752, 32.541313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.324339, 34.134243, 31.879841>,  <27.381905, 34.002930, 32.533760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.324339, 34.134243, 31.879841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.543280, 34.439110, 32.018116>,  <27.674644, 34.622032, 32.101082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.543280, 34.439110, 32.018116>,  <27.324339, 34.134243, 31.879841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.543280, 34.439110, 32.018116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532633, 0.001356, -0.846345,
		-0.645528, 0.647375, -0.405215,
		0.547353, 0.762171, 0.345689,
		27.707485, 34.667763, 32.121822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.357115, 34.777649, 31.386890>,  <27.324339, 34.134243, 31.879841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.357115, 34.777649, 31.386890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.673735, 34.763390, 31.630917>,  <27.863707, 34.754833, 31.777332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.673735, 34.763390, 31.630917>,  <27.357115, 34.777649, 31.386890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.673735, 34.763390, 31.630917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608754, -0.041542, -0.792271,
		0.053585, 0.998501, -0.011183,
		0.791548, -0.035646, 0.610067,
		27.911200, 34.752697, 31.813936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.903093, 35.383930, 31.299530>,  <27.357115, 34.777649, 31.386890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.903093, 35.383930, 31.299530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.006466, 35.017052, 31.420835>,  <28.068489, 34.796925, 31.493620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.006466, 35.017052, 31.420835>,  <27.903093, 35.383930, 31.299530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.006466, 35.017052, 31.420835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591483, -0.097971, -0.800344,
		0.763781, 0.386211, 0.517185,
		0.258433, -0.917193, 0.303266,
		28.083996, 34.741894, 31.511816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.566067, 35.284836, 31.416750>,  <27.903093, 35.383930, 31.299530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.566067, 35.284836, 31.416750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.440269, 34.912930, 31.340195>,  <28.364792, 34.689785, 31.294262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.440269, 34.912930, 31.340195>,  <28.566067, 35.284836, 31.416750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.440269, 34.912930, 31.340195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733298, -0.109924, -0.670962,
		0.602801, -0.351355, 0.716367,
		-0.314491, -0.929767, -0.191386,
		28.345922, 34.633999, 31.282780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.027615, 34.857929, 31.724131>,  <28.566067, 35.284836, 31.416750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.027615, 34.857929, 31.724131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.844643, 34.686836, 31.412285>,  <28.734859, 34.584179, 31.225178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.844643, 34.686836, 31.412285>,  <29.027615, 34.857929, 31.724131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.844643, 34.686836, 31.412285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881965, -0.106272, -0.459177,
		0.113554, -0.897636, 0.425859,
		-0.457430, -0.427734, -0.779616,
		28.707413, 34.558517, 31.178400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.777815, 35.218269, 32.317226>,  <29.027615, 34.857929, 31.724131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.777815, 35.218269, 32.317226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.447296, 35.170494, 32.097057>,  <28.248985, 35.141830, 31.964956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.447296, 35.170494, 32.097057>,  <28.777815, 35.218269, 32.317226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.447296, 35.170494, 32.097057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560418, 0.271934, 0.782294,
		0.056244, 0.954875, -0.291634,
		-0.826298, -0.119438, -0.550423,
		28.199408, 35.134663, 31.931931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.389137, 35.741558, 32.570450>,  <28.777815, 35.218269, 32.317226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.389137, 35.741558, 32.570450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.173098, 35.437408, 32.426159>,  <28.043474, 35.254917, 32.339584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.173098, 35.437408, 32.426159>,  <28.389137, 35.741558, 32.570450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.173098, 35.437408, 32.426159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662601, 0.119915, 0.739310,
		-0.518895, 0.638321, -0.568590,
		-0.540100, -0.760373, -0.360729,
		28.011068, 35.209297, 32.317940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.678926, 35.912910, 32.445869>,  <28.389137, 35.741558, 32.570450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.678926, 35.912910, 32.445869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.668966, 35.513588, 32.466911>,  <27.662991, 35.273994, 32.479538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.668966, 35.513588, 32.466911>,  <27.678926, 35.912910, 32.445869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.668966, 35.513588, 32.466911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603688, 0.056960, 0.795184,
		-0.796832, -0.011955, -0.604083,
		-0.024903, -0.998305, 0.052605,
		27.661495, 35.214096, 32.482693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.945890, 35.844120, 32.620731>,  <27.678926, 35.912910, 32.445869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.945890, 35.844120, 32.620731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.100861, 35.483570, 32.698112>,  <27.193842, 35.267239, 32.744541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.100861, 35.483570, 32.698112>,  <26.945890, 35.844120, 32.620731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.100861, 35.483570, 32.698112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685821, -0.141565, 0.713869,
		-0.616077, -0.409247, -0.673028,
		0.387426, -0.901374, 0.193455,
		27.217089, 35.213158, 32.756149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.461674, 35.472279, 32.698570>,  <26.945890, 35.844120, 32.620731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.461674, 35.472279, 32.698570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.747299, 35.273090, 32.895405>,  <26.918674, 35.153580, 33.013504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.747299, 35.273090, 32.895405>,  <26.461674, 35.472279, 32.698570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.747299, 35.273090, 32.895405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655594, -0.229056, 0.719535,
		-0.245614, -0.836382, -0.490040,
		0.714052, -0.497995, 0.492067,
		26.961517, 35.123699, 33.043030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.614971, 34.785297, 32.504635>,  <26.461674, 35.472279, 32.698570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.614971, 34.785297, 32.504635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.876749, 34.633423, 32.766182>,  <27.033815, 34.542297, 32.923111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.876749, 34.633423, 32.766182>,  <26.614971, 34.785297, 32.504635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.876749, 34.633423, 32.766182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685656, 0.066512, 0.724880,
		-0.318714, -0.922723, -0.216803,
		0.654444, -0.379682, 0.653869,
		27.073082, 34.519520, 32.962341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.203381, 34.263653, 32.933842>,  <26.614971, 34.785297, 32.504635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.203381, 34.263653, 32.933842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.513115, 34.417294, 33.134987>,  <26.698956, 34.509480, 33.255672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.513115, 34.417294, 33.134987>,  <26.203381, 34.263653, 32.933842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.513115, 34.417294, 33.134987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544877, 0.000679, 0.838516,
		0.321736, -0.923289, 0.209816,
		0.774335, 0.384104, 0.502860,
		26.745415, 34.532524, 33.285847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.326744, 33.768848, 33.406719>,  <26.203381, 34.263653, 32.933842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.326744, 33.768848, 33.406719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.485941, 34.091789, 33.580978>,  <26.581459, 34.285553, 33.685535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.485941, 34.091789, 33.580978>,  <26.326744, 33.768848, 33.406719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.485941, 34.091789, 33.580978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529651, -0.185521, 0.827679,
		0.749046, -0.560154, 0.353776,
		0.397995, 0.807347, 0.435650,
		26.605339, 34.333992, 33.711674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.733721, 33.530651, 33.956463>,  <26.326744, 33.768848, 33.406719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.733721, 33.530651, 33.956463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.603201, 33.895493, 34.055740>,  <26.524889, 34.114395, 34.115307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.603201, 33.895493, 34.055740>,  <26.733721, 33.530651, 33.956463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.603201, 33.895493, 34.055740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281890, -0.344513, 0.895460,
		0.902256, 0.222224, 0.369526,
		-0.326299, 0.912100, 0.248196,
		26.505312, 34.169125, 34.130199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.127743, 33.797955, 34.591728>,  <26.733721, 33.530651, 33.956463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.127743, 33.797955, 34.591728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.958563, 34.146622, 34.492683>,  <26.857054, 34.355820, 34.433254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.958563, 34.146622, 34.492683>,  <27.127743, 33.797955, 34.591728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.958563, 34.146622, 34.492683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378234, 0.078493, 0.922376,
		0.823439, 0.483776, 0.296494,
		-0.422951, 0.871665, -0.247615,
		26.831678, 34.408119, 34.418400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.233974, 34.188343, 35.079254>,  <27.127743, 33.797955, 34.591728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.233974, 34.188343, 35.079254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.934635, 34.382790, 34.898735>,  <26.755032, 34.499458, 34.790424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.934635, 34.382790, 34.898735>,  <27.233974, 34.188343, 35.079254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.934635, 34.382790, 34.898735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324322, 0.325337, 0.888240,
		0.578608, 0.811079, -0.085809,
		-0.748350, 0.486113, -0.451293,
		26.710131, 34.528625, 34.763348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.268669, 34.868992, 35.191380>,  <27.233974, 34.188343, 35.079254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.268669, 34.868992, 35.191380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.886770, 34.775425, 35.117905>,  <26.657631, 34.719284, 35.073818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.886770, 34.775425, 35.117905>,  <27.268669, 34.868992, 35.191380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.886770, 34.775425, 35.117905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222683, 0.152797, 0.962842,
		-0.197155, 0.960175, -0.197971,
		-0.954747, -0.233914, -0.183690,
		26.600346, 34.705250, 35.062798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.944954, 34.657837, 35.157734>,  <27.268669, 34.868992, 35.191380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.944954, 34.657837, 35.157734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.245344, 34.876701, 35.009869>,  <28.425579, 35.008018, 34.921150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.245344, 34.876701, 35.009869>,  <27.944954, 34.657837, 35.157734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.245344, 34.876701, 35.009869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617889, -0.779734, 0.101130,
		-0.232907, -0.304359, -0.923645,
		0.750978, 0.547156, -0.369665,
		28.470638, 35.040848, 34.898968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.284546, 34.082081, 34.884739>,  <27.944954, 34.657837, 35.157734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.284546, 34.082081, 34.884739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.536791, 34.392410, 34.876461>,  <28.688137, 34.578606, 34.871494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.536791, 34.392410, 34.876461>,  <28.284546, 34.082081, 34.884739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.536791, 34.392410, 34.876461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703983, -0.560587, 0.436062,
		0.326703, -0.289557, -0.899678,
		0.630613, 0.775821, -0.020698,
		28.725975, 34.625156, 34.870251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863665, 33.884892, 34.491768>,  <28.284546, 34.082081, 34.884739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.863665, 33.884892, 34.491768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.941713, 34.148468, 34.782349>,  <28.988543, 34.306614, 34.956696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.941713, 34.148468, 34.782349>,  <28.863665, 33.884892, 34.491768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.941713, 34.148468, 34.782349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643569, -0.644945, 0.412148,
		0.740099, 0.387099, -0.549916,
		0.195123, 0.658939, 0.726448,
		29.000250, 34.346149, 35.000282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.614431, 34.129295, 34.585205>,  <28.863665, 33.884892, 34.491768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.614431, 34.129295, 34.585205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.423109, 34.154804, 34.935555>,  <29.308315, 34.170109, 35.145763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.423109, 34.154804, 34.935555>,  <29.614431, 34.129295, 34.585205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.423109, 34.154804, 34.935555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709510, -0.559679, 0.428200,
		0.517515, 0.826253, 0.222453,
		-0.478304, 0.063768, 0.875876,
		29.279617, 34.173935, 35.198318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.924732, 34.492889, 35.130249>,  <29.614431, 34.129295, 34.585205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.924732, 34.492889, 35.130249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.687035, 34.202255, 35.268208>,  <29.544416, 34.027874, 35.350983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.687035, 34.202255, 35.268208>,  <29.924732, 34.492889, 35.130249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.687035, 34.202255, 35.268208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794876, -0.465146, 0.389630,
		-0.122673, 0.505681, 0.853954,
		-0.594242, -0.726585, 0.344893,
		29.508762, 33.984280, 35.371674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.221439, 34.324726, 35.697910>,  <29.924732, 34.492889, 35.130249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.221439, 34.324726, 35.697910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.981855, 34.008038, 35.649876>,  <29.838104, 33.818024, 35.621056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.981855, 34.008038, 35.649876>,  <30.221439, 34.324726, 35.697910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.981855, 34.008038, 35.649876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715496, -0.596460, 0.363732,
		-0.359600, 0.131941, 0.923731,
		-0.598960, -0.791724, -0.120084,
		29.802168, 33.770519, 35.613850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.204094, 33.931911, 36.325176>,  <30.221439, 34.324726, 35.697910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.204094, 33.931911, 36.325176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.133186, 33.677670, 36.024624>,  <30.090641, 33.525124, 35.844292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.133186, 33.677670, 36.024624>,  <30.204094, 33.931911, 36.325176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.133186, 33.677670, 36.024624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662958, -0.641385, 0.386150,
		-0.727366, -0.429683, 0.535081,
		-0.177271, -0.635608, -0.751383,
		30.080006, 33.486988, 35.799210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.011585, 33.171227, 36.582985>,  <30.204094, 33.931911, 36.325176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.011585, 33.171227, 36.582985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.161146, 33.179443, 36.212090>,  <30.250883, 33.184372, 35.989552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.161146, 33.179443, 36.212090>,  <30.011585, 33.171227, 36.582985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.161146, 33.179443, 36.212090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705084, -0.655796, 0.269792,
		-0.602538, -0.754659, -0.259689,
		0.373904, 0.020543, -0.927240,
		30.273317, 33.185608, 35.933918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.835115, 32.593266, 36.098068>,  <30.011585, 33.171227, 36.582985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.835115, 32.593266, 36.098068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.197334, 32.750656, 36.034622>,  <30.414665, 32.845093, 35.996555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.197334, 32.750656, 36.034622>,  <29.835115, 32.593266, 36.098068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.197334, 32.750656, 36.034622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422908, -0.866885, 0.263932,
		-0.033648, -0.306082, -0.951410,
		0.905548, 0.393478, -0.158614,
		30.468998, 32.868698, 35.987038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060379, 31.858875, 36.134399>,  <29.835115, 32.593266, 36.098068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060379, 31.858875, 36.134399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.210903, 32.092430, 35.846657>,  <30.301218, 32.232563, 35.674011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.210903, 32.092430, 35.846657>,  <30.060379, 31.858875, 36.134399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.210903, 32.092430, 35.846657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731043, -0.664113, -0.156624,
		-0.569181, -0.466938, -0.676758,
		0.376310, 0.583886, -0.719352,
		30.323795, 32.267597, 35.630852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.260448, 31.419125, 35.535568>,  <30.060379, 31.858875, 36.134399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.260448, 31.419125, 35.535568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.464085, 31.754972, 35.459812>,  <30.586266, 31.956482, 35.414360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.464085, 31.754972, 35.459812>,  <30.260448, 31.419125, 35.535568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.464085, 31.754972, 35.459812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745287, -0.540081, -0.390973,
		-0.430553, 0.057891, -0.900707,
		0.509088, 0.839620, -0.189388,
		30.616812, 32.006859, 35.402996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.482649, 31.320616, 34.927795>,  <30.260448, 31.419125, 35.535568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.482649, 31.320616, 34.927795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.736383, 31.600567, 35.059120>,  <30.888624, 31.768538, 35.137917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.736383, 31.600567, 35.059120>,  <30.482649, 31.320616, 34.927795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.736383, 31.600567, 35.059120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763106, -0.498968, -0.410732,
		-0.123642, 0.511081, -0.850593,
		0.634336, 0.699876, 0.328315,
		30.926683, 31.810530, 35.157616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.024412, 31.596395, 34.410233>,  <30.482649, 31.320616, 34.927795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.024412, 31.596395, 34.410233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.189428, 31.594059, 34.774601>,  <31.288439, 31.592657, 34.993221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.189428, 31.594059, 34.774601>,  <31.024412, 31.596395, 34.410233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.189428, 31.594059, 34.774601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812374, -0.450064, -0.370798,
		0.412138, 0.892977, -0.180925,
		0.412542, -0.005842, 0.910920,
		31.313190, 31.592306, 35.047878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627895, 31.971361, 34.467911>,  <31.024412, 31.596395, 34.410233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627895, 31.971361, 34.467911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678461, 31.708960, 34.765549>,  <31.708799, 31.551519, 34.944130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678461, 31.708960, 34.765549>,  <31.627895, 31.971361, 34.467911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678461, 31.708960, 34.765549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943777, -0.151447, -0.293853,
		0.305460, 0.739406, 0.599977,
		0.126412, -0.656004, 0.744095,
		31.716385, 31.512157, 34.988777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232365, 32.189686, 34.738636>,  <31.627895, 31.971361, 34.467911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232365, 32.189686, 34.738636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179230, 31.802254, 34.822731>,  <32.147350, 31.569794, 34.873188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179230, 31.802254, 34.822731>,  <32.232365, 32.189686, 34.738636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179230, 31.802254, 34.822731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969324, -0.171212, -0.176345,
		0.206800, 0.180363, 0.961615,
		-0.132834, -0.968584, 0.210237,
		32.139381, 31.511679, 34.885803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.908159, 32.659470, 35.182877>,  <32.232365, 32.189686, 34.738636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.908159, 32.659470, 35.182877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591423, 32.415192, 35.180145>,  <31.401382, 32.268627, 35.178505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591423, 32.415192, 35.180145>,  <31.908159, 32.659470, 35.182877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.591423, 32.415192, 35.180145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557693, 0.718470, 0.415668,
		-0.248938, 0.332951, -0.909491,
		-0.791838, -0.610692, -0.006830,
		31.353872, 32.231983, 35.178097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304592, 33.101746, 35.201626>,  <31.908159, 32.659470, 35.182877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304592, 33.101746, 35.201626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.091457, 32.766209, 35.246220>,  <30.963577, 32.564888, 35.272976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.091457, 32.766209, 35.246220>,  <31.304592, 33.101746, 35.201626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.091457, 32.766209, 35.246220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833502, 0.543008, 0.102065,
		-0.146154, -0.038538, -0.988511,
		-0.532836, -0.838843, 0.111484,
		30.931606, 32.514557, 35.279663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.762409, 33.173004, 34.805962>,  <31.304592, 33.101746, 35.201626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.762409, 33.173004, 34.805962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.640816, 32.896393, 35.068069>,  <30.567860, 32.730427, 35.225334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.640816, 32.896393, 35.068069>,  <30.762409, 33.173004, 34.805962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.640816, 32.896393, 35.068069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753436, 0.595450, 0.278879,
		-0.583034, -0.408931, -0.702030,
		-0.303982, -0.691531, 0.655272,
		30.549622, 32.688934, 35.264652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.081600, 33.072674, 34.768589>,  <30.762409, 33.173004, 34.805962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.081600, 33.072674, 34.768589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.132969, 32.942585, 35.143341>,  <30.163790, 32.864532, 35.368191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.132969, 32.942585, 35.143341>,  <30.081600, 33.072674, 34.768589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.132969, 32.942585, 35.143341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903838, 0.350414, 0.245533,
		-0.408148, -0.878316, -0.248951,
		0.128420, -0.325225, 0.936876,
		30.171495, 32.845016, 35.424404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.610374, 32.523506, 35.017857>,  <30.081600, 33.072674, 34.768589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.610374, 32.523506, 35.017857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.746067, 32.814953, 35.255859>,  <29.827482, 32.989822, 35.398663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.746067, 32.814953, 35.255859>,  <29.610374, 32.523506, 35.017857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.746067, 32.814953, 35.255859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864896, 0.490339, -0.107339,
		-0.369966, -0.478209, 0.796518,
		0.339234, 0.728618, 0.595010,
		29.847837, 33.033539, 35.434361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.059624, 32.702053, 35.490795>,  <29.610374, 32.523506, 35.017857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.059624, 32.702053, 35.490795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.298052, 33.022861, 35.506134>,  <29.441109, 33.215347, 35.515335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.298052, 33.022861, 35.506134>,  <29.059624, 32.702053, 35.490795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.298052, 33.022861, 35.506134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797015, 0.596789, -0.092787,
		-0.097301, 0.024746, 0.994947,
		0.596070, 0.802016, 0.038345,
		29.476873, 33.263466, 35.517639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.737080, 33.128231, 35.952049>,  <29.059624, 32.702053, 35.490795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.737080, 33.128231, 35.952049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.979437, 33.380314, 35.757839>,  <29.124851, 33.531563, 35.641315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.979437, 33.380314, 35.757839>,  <28.737080, 33.128231, 35.952049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.979437, 33.380314, 35.757839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766732, 0.625350, -0.145122,
		0.212163, 0.460194, 0.862096,
		0.605896, 0.630206, -0.485521,
		29.161205, 33.569374, 35.612183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.493408, 33.789921, 36.200745>,  <28.737080, 33.128231, 35.952049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.493408, 33.789921, 36.200745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.702690, 33.855949, 35.866318>,  <28.828260, 33.895569, 35.665661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.702690, 33.855949, 35.866318>,  <28.493408, 33.789921, 36.200745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.702690, 33.855949, 35.866318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737625, 0.579060, -0.347273,
		0.426807, 0.798398, 0.424730,
		0.523206, 0.165073, -0.836066,
		28.859652, 33.905472, 35.615498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.577791, 34.473248, 36.155525>,  <28.493408, 33.789921, 36.200745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.577791, 34.473248, 36.155525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.577816, 34.317535, 35.787079>,  <28.577831, 34.224106, 35.566010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.577816, 34.317535, 35.787079>,  <28.577791, 34.473248, 36.155525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.577816, 34.317535, 35.787079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718319, 0.640817, -0.270870,
		0.695713, 0.661674, -0.279590,
		0.000062, -0.389283, -0.921118,
		28.577835, 34.200752, 35.510742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.935621, 34.993343, 35.834259>,  <28.577791, 34.473248, 36.155525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.935621, 34.993343, 35.834259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.303093, 34.838821, 35.801266>,  <29.523575, 34.746109, 35.781471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.303093, 34.838821, 35.801266>,  <28.935621, 34.993343, 35.834259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.303093, 34.838821, 35.801266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311643, -0.837122, 0.449561,
		-0.242715, -0.387296, -0.889433,
		0.918677, -0.386301, -0.082484,
		29.578695, 34.722931, 35.776520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.592556, 35.006153, 36.219795>,  <28.935621, 34.993343, 35.834259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.592556, 35.006153, 36.219795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.832989, 35.312454, 36.128296>,  <29.977247, 35.496235, 36.073395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.832989, 35.312454, 36.128296>,  <29.592556, 35.006153, 36.219795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.832989, 35.312454, 36.128296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248488, -0.451116, -0.857175,
		-0.759576, 0.458389, -0.461436,
		0.601081, 0.765751, -0.228753,
		30.013313, 35.542179, 36.059669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.394817, 35.461552, 35.559547>,  <29.592556, 35.006153, 36.219795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.394817, 35.461552, 35.559547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.352922, 35.131866, 35.336945>,  <29.327785, 34.934055, 35.203384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.352922, 35.131866, 35.336945>,  <29.394817, 35.461552, 35.559547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.352922, 35.131866, 35.336945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498407, 0.527741, -0.687808,
		0.860593, 0.205329, -0.466068,
		-0.104736, -0.824214, -0.556508,
		29.321501, 34.884602, 35.169991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.627928, 35.579269, 34.898232>,  <29.394817, 35.461552, 35.559547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.627928, 35.579269, 34.898232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.366953, 35.276447, 34.884388>,  <29.210367, 35.094753, 34.876083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.366953, 35.276447, 34.884388>,  <29.627928, 35.579269, 34.898232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.366953, 35.276447, 34.884388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607809, 0.550003, -0.572769,
		0.452650, -0.352661, -0.818986,
		-0.652439, -0.757051, -0.034608,
		29.171221, 35.049332, 34.874004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.451679, 35.544987, 34.185474>,  <29.627928, 35.579269, 34.898232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.451679, 35.544987, 34.185474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.157213, 35.415707, 34.423332>,  <28.980534, 35.338139, 34.566048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.157213, 35.415707, 34.423332>,  <29.451679, 35.544987, 34.185474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.157213, 35.415707, 34.423332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635674, 0.631801, -0.443561,
		-0.232341, -0.704536, -0.670557,
		-0.736163, -0.323198, 0.594648,
		28.936363, 35.318748, 34.601727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.148521, 35.210072, 33.900234>,  <29.451679, 35.544987, 34.185474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.148521, 35.210072, 33.900234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.451363, 35.421005, 33.745979>,  <30.633068, 35.547565, 33.653427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.451363, 35.421005, 33.745979>,  <30.148521, 35.210072, 33.900234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.451363, 35.421005, 33.745979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626780, 0.419863, -0.656401,
		-0.184230, 0.738671, 0.648401,
		0.757104, 0.527333, -0.385633,
		30.678493, 35.579205, 33.630291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336515, 34.763973, 34.543728>,  <30.148521, 35.210072, 33.900234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336515, 34.763973, 34.543728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.301785, 34.418118, 34.345795>,  <30.280947, 34.210606, 34.227036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.301785, 34.418118, 34.345795>,  <30.336515, 34.763973, 34.543728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.301785, 34.418118, 34.345795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873154, 0.173101, -0.455674,
		0.479650, -0.471629, 0.739934,
		-0.086825, -0.864640, -0.494833,
		30.275738, 34.158726, 34.197346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.921387, 34.296272, 34.743874>,  <30.336515, 34.763973, 34.543728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.921387, 34.296272, 34.743874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.757343, 34.306808, 34.379211>,  <30.658916, 34.313129, 34.160416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.757343, 34.306808, 34.379211>,  <30.921387, 34.296272, 34.743874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.757343, 34.306808, 34.379211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877825, 0.282609, -0.386723,
		0.247454, -0.958873, -0.139027,
		-0.410109, 0.026345, -0.911656,
		30.634310, 34.314713, 34.105713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411102, 33.892220, 34.233803>,  <30.921387, 34.296272, 34.743874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411102, 33.892220, 34.233803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.215521, 34.202671, 34.074532>,  <31.098171, 34.388943, 33.978970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.215521, 34.202671, 34.074532>,  <31.411102, 33.892220, 34.233803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215521, 34.202671, 34.074532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853679, 0.331917, -0.401326,
		-0.179322, -0.536143, -0.824860,
		-0.488953, 0.776133, -0.398174,
		31.068834, 34.435513, 33.955078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721952, 33.900974, 33.600414>,  <31.411102, 33.892220, 34.233803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721952, 33.900974, 33.600414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.604425, 34.261700, 33.727161>,  <31.533909, 34.478134, 33.803211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.604425, 34.261700, 33.727161>,  <31.721952, 33.900974, 33.600414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.604425, 34.261700, 33.727161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880853, 0.384179, -0.276595,
		-0.371172, 0.197849, -0.907242,
		-0.293819, 0.901811, 0.316872,
		31.516279, 34.532242, 33.822224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680672, 34.372326, 33.013527>,  <31.721952, 33.900974, 33.600414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680672, 34.372326, 33.013527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.741884, 34.515812, 33.381855>,  <31.778612, 34.601902, 33.602852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.741884, 34.515812, 33.381855>,  <31.680672, 34.372326, 33.013527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.741884, 34.515812, 33.381855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880576, 0.373408, -0.291808,
		-0.448516, 0.855506, -0.258733,
		0.153031, 0.358715, 0.920817,
		31.787794, 34.623428, 33.658100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.752924, 35.072071, 33.025230>,  <31.680672, 34.372326, 33.013527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.752924, 35.072071, 33.025230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951794, 34.930321, 33.342022>,  <32.071114, 34.845268, 33.532097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951794, 34.930321, 33.342022>,  <31.752924, 35.072071, 33.025230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951794, 34.930321, 33.342022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826563, 0.471013, -0.308124,
		-0.263841, 0.807814, 0.527091,
		0.497173, -0.354378, 0.791982,
		32.100945, 34.824009, 33.579617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027187, 35.713245, 33.346710>,  <31.752924, 35.072071, 33.025230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027187, 35.713245, 33.346710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251194, 35.385006, 33.392311>,  <32.385597, 35.188061, 33.419670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251194, 35.385006, 33.392311>,  <32.027187, 35.713245, 33.346710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251194, 35.385006, 33.392311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744648, 0.438249, -0.503425,
		0.363149, 0.366819, 0.856485,
		0.560020, -0.820598, 0.114001,
		32.419201, 35.138828, 33.426510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786934, 35.873707, 33.471615>,  <32.027187, 35.713245, 33.346710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786934, 35.873707, 33.471615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720100, 35.524715, 33.287933>,  <32.680000, 35.315319, 33.177727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720100, 35.524715, 33.287933>,  <32.786934, 35.873707, 33.471615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720100, 35.524715, 33.287933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629023, 0.264313, -0.731073,
		0.759218, -0.411001, 0.504645,
		-0.167088, -0.872477, -0.459200,
		32.669975, 35.262974, 33.150173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356808, 35.418232, 33.532139>,  <32.786934, 35.873707, 33.471615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356808, 35.418232, 33.532139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149223, 35.327477, 33.202484>,  <33.024673, 35.273026, 33.004692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149223, 35.327477, 33.202484>,  <33.356808, 35.418232, 33.532139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149223, 35.327477, 33.202484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813341, 0.165541, -0.557739,
		0.262972, -0.959749, 0.098626,
		-0.518963, -0.226886, -0.824136,
		32.993534, 35.259411, 32.955242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983513, 35.599827, 33.272572>,  <33.356808, 35.418232, 33.532139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983513, 35.599827, 33.272572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697147, 35.689907, 33.008224>,  <33.525326, 35.743954, 32.849617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697147, 35.689907, 33.008224>,  <33.983513, 35.599827, 33.272572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697147, 35.689907, 33.008224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464818, -0.552558, -0.691826,
		-0.520970, -0.802473, 0.290907,
		-0.715916, 0.225202, -0.660871,
		33.482372, 35.757465, 32.809963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890984, 35.036076, 32.884403>,  <33.983513, 35.599827, 33.272572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890984, 35.036076, 32.884403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791016, 35.353336, 32.662251>,  <33.731037, 35.543694, 32.528957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791016, 35.353336, 32.662251>,  <33.890984, 35.036076, 32.884403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791016, 35.353336, 32.662251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445312, -0.415171, -0.793304,
		-0.859790, -0.445579, -0.249443,
		-0.249918, 0.793154, -0.555381,
		33.716042, 35.591282, 32.495636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726952, 34.778179, 32.254208>,  <33.890984, 35.036076, 32.884403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726952, 34.778179, 32.254208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786179, 35.163479, 32.164570>,  <33.821716, 35.394661, 32.110786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786179, 35.163479, 32.164570>,  <33.726952, 34.778179, 32.254208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786179, 35.163479, 32.164570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302733, -0.259860, -0.916965,
		-0.941503, 0.067936, -0.330087,
		0.148071, 0.963254, -0.224092,
		33.830601, 35.452454, 32.097343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233829, 34.935226, 31.743526>,  <33.726952, 34.778179, 32.254208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233829, 34.935226, 31.743526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539608, 35.192574, 31.727003>,  <33.723076, 35.346981, 31.717089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539608, 35.192574, 31.727003>,  <33.233829, 34.935226, 31.743526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539608, 35.192574, 31.727003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154405, -0.244920, -0.957169,
		-0.625928, 0.725323, -0.286566,
		0.764443, 0.643367, -0.041309,
		33.768940, 35.385582, 31.714611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152344, 35.340515, 31.096395>,  <33.233829, 34.935226, 31.743526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152344, 35.340515, 31.096395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534466, 35.355556, 31.213682>,  <33.763741, 35.364582, 31.284054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534466, 35.355556, 31.213682>,  <33.152344, 35.340515, 31.096395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534466, 35.355556, 31.213682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295217, -0.069757, -0.952880,
		-0.015377, 0.996855, -0.077741,
		0.955307, 0.037602, 0.293216,
		33.821056, 35.366837, 31.301647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363720, 35.867249, 30.642023>,  <33.152344, 35.340515, 31.096395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363720, 35.867249, 30.642023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675564, 35.643017, 30.753712>,  <33.862671, 35.508480, 30.820724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675564, 35.643017, 30.753712>,  <33.363720, 35.867249, 30.642023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675564, 35.643017, 30.753712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249630, -0.130744, -0.959474,
		0.574366, 0.817716, 0.038008,
		0.779608, -0.560578, 0.279221,
		33.909447, 35.474842, 30.837479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892647, 36.123959, 30.224144>,  <33.363720, 35.867249, 30.642023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892647, 36.123959, 30.224144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022472, 35.763245, 30.338295>,  <34.100368, 35.546818, 30.406786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022472, 35.763245, 30.338295>,  <33.892647, 36.123959, 30.224144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022472, 35.763245, 30.338295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302143, -0.187056, -0.934730,
		0.896306, 0.389608, 0.211756,
		0.324568, -0.901785, 0.285377,
		34.119843, 35.492710, 30.423908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546070, 36.026588, 29.893751>,  <33.892647, 36.123959, 30.224144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546070, 36.026588, 29.893751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436588, 35.654854, 29.992878>,  <34.370899, 35.431812, 30.052355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436588, 35.654854, 29.992878>,  <34.546070, 36.026588, 29.893751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436588, 35.654854, 29.992878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253841, -0.318319, -0.913366,
		0.927712, -0.187089, 0.323030,
		-0.273707, -0.929339, 0.247818,
		34.354477, 35.376053, 30.067223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078136, 35.646317, 29.579002>,  <34.546070, 36.026588, 29.893751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078136, 35.646317, 29.579002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774727, 35.391430, 29.633541>,  <34.592682, 35.238499, 29.666264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774727, 35.391430, 29.633541>,  <35.078136, 35.646317, 29.579002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774727, 35.391430, 29.633541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214524, -0.441755, -0.871110,
		0.615317, -0.631512, 0.471782,
		-0.758528, -0.637217, 0.136345,
		34.547169, 35.200264, 29.674444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283306, 35.163185, 29.135246>,  <35.078136, 35.646317, 29.579002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283306, 35.163185, 29.135246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916985, 35.022942, 29.213614>,  <34.697193, 34.938793, 29.260633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916985, 35.022942, 29.213614>,  <35.283306, 35.163185, 29.135246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916985, 35.022942, 29.213614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002447, -0.482917, -0.875663,
		0.401628, -0.802411, 0.441397,
		-0.915800, -0.350611, 0.195916,
		34.642246, 34.917759, 29.272388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171238, 34.388599, 29.049614>,  <35.283306, 35.163185, 29.135246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171238, 34.388599, 29.049614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788063, 34.492844, 29.001568>,  <34.558159, 34.555389, 28.972740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788063, 34.492844, 29.001568>,  <35.171238, 34.388599, 29.049614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788063, 34.492844, 29.001568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087104, -0.662904, -0.743620,
		-0.273424, -0.701882, 0.657724,
		-0.957942, 0.260614, -0.120117,
		34.500679, 34.571030, 28.965532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905979, 33.774017, 28.517286>,  <35.171238, 34.388599, 29.049614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905979, 33.774017, 28.517286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634121, 34.067413, 28.520929>,  <34.471004, 34.243450, 28.523115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634121, 34.067413, 28.520929>,  <34.905979, 33.774017, 28.517286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634121, 34.067413, 28.520929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052935, -0.036657, -0.997925,
		-0.731630, -0.678716, 0.063740,
		-0.679644, 0.733486, 0.009109,
		34.430229, 34.287460, 28.523663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379036, 33.523968, 28.082233>,  <34.905979, 33.774017, 28.517286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379036, 33.523968, 28.082233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358383, 33.923435, 28.081623>,  <34.345989, 34.163116, 28.081257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358383, 33.923435, 28.081623>,  <34.379036, 33.523968, 28.082233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358383, 33.923435, 28.081623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026832, -0.002917, -0.999636,
		-0.998305, -0.051574, 0.026947,
		-0.051634, 0.998665, -0.001528,
		34.342892, 34.223034, 28.081165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899704, 33.719673, 27.574623>,  <34.379036, 33.523968, 28.082233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899704, 33.719673, 27.574623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051086, 34.085663, 27.630613>,  <34.141914, 34.305256, 27.664207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051086, 34.085663, 27.630613>,  <33.899704, 33.719673, 27.574623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051086, 34.085663, 27.630613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000755, 0.151528, -0.988453,
		-0.925620, 0.373977, 0.058037,
		0.378453, 0.914976, 0.139975,
		34.164623, 34.360157, 27.672606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505444, 34.278934, 27.218800>,  <33.899704, 33.719673, 27.574623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505444, 34.278934, 27.218800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894905, 34.362076, 27.256310>,  <34.128582, 34.411961, 27.278816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894905, 34.362076, 27.256310>,  <33.505444, 34.278934, 27.218800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894905, 34.362076, 27.256310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090148, 0.026876, -0.995566,
		-0.209457, 0.977790, 0.007430,
		0.973654, 0.207858, 0.093775,
		34.187000, 34.424435, 27.284443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574509, 34.695507, 26.702719>,  <33.505444, 34.278934, 27.218800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574509, 34.695507, 26.702719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956787, 34.615215, 26.788837>,  <34.186153, 34.567039, 26.840509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956787, 34.615215, 26.788837>,  <33.574509, 34.695507, 26.702719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956787, 34.615215, 26.788837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231893, 0.062915, -0.970705,
		0.181306, 0.977624, 0.106675,
		0.955696, -0.200732, 0.215297,
		34.243496, 34.554996, 26.853426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.947609, 35.209240, 26.252865>,  <33.574509, 34.695507, 26.702719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.947609, 35.209240, 26.252865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205296, 34.918961, 26.349489>,  <34.359909, 34.744793, 26.407463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205296, 34.918961, 26.349489>,  <33.947609, 35.209240, 26.252865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205296, 34.918961, 26.349489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328260, -0.022926, -0.944309,
		0.690820, 0.687633, 0.223448,
		0.644215, -0.725696, 0.241561,
		34.398560, 34.701252, 26.421957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442123, 35.318241, 25.776798>,  <33.947609, 35.209240, 26.252865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442123, 35.318241, 25.776798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531704, 34.956177, 25.921318>,  <34.585453, 34.738937, 26.008030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531704, 34.956177, 25.921318>,  <34.442123, 35.318241, 25.776798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531704, 34.956177, 25.921318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313892, -0.283970, -0.905998,
		0.922668, 0.316310, 0.220526,
		0.223954, -0.905157, 0.361297,
		34.598888, 34.684631, 26.029707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067547, 35.058880, 25.679850>,  <34.442123, 35.318241, 25.776798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067547, 35.058880, 25.679850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870682, 34.711891, 25.708902>,  <34.752563, 34.503700, 25.726334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870682, 34.711891, 25.708902>,  <35.067547, 35.058880, 25.679850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870682, 34.711891, 25.708902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311133, -0.253220, -0.916011,
		0.813002, -0.428227, 0.394524,
		-0.492162, -0.867468, 0.072633,
		34.723034, 34.451653, 25.730692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512112, 34.552795, 25.370104>,  <35.067547, 35.058880, 25.679850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512112, 34.552795, 25.370104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160095, 34.362946, 25.376602>,  <34.948887, 34.249035, 25.380501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160095, 34.362946, 25.376602>,  <35.512112, 34.552795, 25.370104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160095, 34.362946, 25.376602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083496, -0.188312, -0.978553,
		0.467507, -0.859807, 0.205351,
		-0.880037, -0.474626, 0.016247,
		34.896084, 34.220558, 25.381475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576363, 33.869831, 25.101458>,  <35.512112, 34.552795, 25.370104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576363, 33.869831, 25.101458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189827, 33.959824, 25.051542>,  <34.957905, 34.013817, 25.021593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189827, 33.959824, 25.051542>,  <35.576363, 33.869831, 25.101458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189827, 33.959824, 25.051542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078247, -0.205061, -0.975616,
		-0.245087, -0.952540, 0.180554,
		-0.966338, 0.224983, -0.124791,
		34.899925, 34.027317, 25.014105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329388, 33.294830, 24.776388>,  <35.576363, 33.869831, 25.101458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329388, 33.294830, 24.776388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047256, 33.569889, 24.707500>,  <34.877979, 33.734924, 24.666168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047256, 33.569889, 24.707500>,  <35.329388, 33.294830, 24.776388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047256, 33.569889, 24.707500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085486, -0.158665, -0.983625,
		-0.703710, -0.708498, 0.053126,
		-0.705325, 0.687645, -0.172221,
		34.835659, 33.776184, 24.655834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030224, 33.048946, 24.239407>,  <35.329388, 33.294830, 24.776388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030224, 33.048946, 24.239407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920277, 33.433266, 24.224915>,  <34.854309, 33.663857, 24.216219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920277, 33.433266, 24.224915>,  <35.030224, 33.048946, 24.239407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920277, 33.433266, 24.224915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041857, -0.025688, -0.998793,
		-0.960571, -0.276051, -0.033155,
		-0.274866, 0.960800, -0.036230,
		34.837818, 33.721504, 24.214045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533295, 33.065773, 23.658720>,  <35.030224, 33.048946, 24.239407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533295, 33.065773, 23.658720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629616, 33.448421, 23.724314>,  <34.687408, 33.678009, 23.763670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629616, 33.448421, 23.724314>,  <34.533295, 33.065773, 23.658720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629616, 33.448421, 23.724314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100255, 0.192567, -0.976149,
		-0.965381, 0.218623, 0.142277,
		0.240807, 0.956620, 0.163983,
		34.701859, 33.735409, 23.773508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077343, 33.474419, 23.379477>,  <34.533295, 33.065773, 23.658720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077343, 33.474419, 23.379477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381569, 33.734058, 23.385374>,  <34.564102, 33.889843, 23.388912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381569, 33.734058, 23.385374>,  <34.077343, 33.474419, 23.379477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381569, 33.734058, 23.385374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150318, 0.198131, -0.968581,
		-0.631624, 0.734451, 0.248262,
		0.760563, 0.649097, 0.014744,
		34.609737, 33.928787, 23.389797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914074, 34.062176, 23.005262>,  <34.077343, 33.474419, 23.379477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914074, 34.062176, 23.005262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312943, 34.087185, 22.988577>,  <34.552265, 34.102192, 22.978565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312943, 34.087185, 22.988577>,  <33.914074, 34.062176, 23.005262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312943, 34.087185, 22.988577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063992, 0.415141, -0.907504,
		-0.039424, 0.907606, 0.417968,
		0.997171, 0.062524, -0.041713,
		34.612095, 34.105942, 22.976063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958389, 34.448254, 22.455496>,  <33.914074, 34.062176, 23.005262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958389, 34.448254, 22.455496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342808, 34.384121, 22.545549>,  <34.573460, 34.345642, 22.599583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342808, 34.384121, 22.545549>,  <33.958389, 34.448254, 22.455496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342808, 34.384121, 22.545549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265524, 0.309389, -0.913113,
		0.076748, 0.937321, 0.339909,
		0.961045, -0.160334, 0.225136,
		34.631123, 34.336021, 22.613091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282906, 35.074429, 22.179064>,  <33.958389, 34.448254, 22.455496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282906, 35.074429, 22.179064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547642, 34.775326, 22.200294>,  <34.706486, 34.595863, 22.213034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547642, 34.775326, 22.200294>,  <34.282906, 35.074429, 22.179064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547642, 34.775326, 22.200294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233802, 0.138628, -0.962351,
		0.712250, 0.649335, 0.266578,
		0.661843, -0.747761, 0.053078,
		34.746193, 34.550999, 22.216217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855614, 35.244518, 21.701307>,  <34.282906, 35.074429, 22.179064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855614, 35.244518, 21.701307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911999, 34.852169, 21.754993>,  <34.945831, 34.616760, 21.787205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911999, 34.852169, 21.754993>,  <34.855614, 35.244518, 21.701307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911999, 34.852169, 21.754993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278150, -0.090869, -0.956229,
		0.950137, 0.172127, 0.260021,
		0.140965, -0.980875, 0.134215,
		34.954288, 34.557907, 21.795258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586521, 34.970196, 21.528320>,  <34.855614, 35.244518, 21.701307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586521, 34.970196, 21.528320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.322884, 34.680119, 21.448631>,  <35.164703, 34.506073, 21.400818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.322884, 34.680119, 21.448631>,  <35.586521, 34.970196, 21.528320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322884, 34.680119, 21.448631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299611, -0.010218, -0.954007,
		0.689805, -0.688468, 0.224010,
		-0.659092, -0.725195, -0.199224,
		35.125156, 34.462559, 21.388865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976788, 34.612713, 21.074017>,  <35.586521, 34.970196, 21.528320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976788, 34.612713, 21.074017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.593582, 34.504665, 21.035538>,  <35.363659, 34.439838, 21.012449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.593582, 34.504665, 21.035538>,  <35.976788, 34.612713, 21.074017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593582, 34.504665, 21.035538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113186, -0.047994, -0.992414,
		0.263452, -0.961630, 0.076553,
		-0.958009, -0.270118, -0.096199,
		35.306179, 34.423630, 21.006678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896358, 33.952541, 20.722828>,  <35.976788, 34.612713, 21.074017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896358, 33.952541, 20.722828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562794, 34.167713, 20.673492>,  <35.362656, 34.296818, 20.643890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562794, 34.167713, 20.673492>,  <35.896358, 33.952541, 20.722828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562794, 34.167713, 20.673492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193991, 0.076484, -0.978017,
		-0.516675, -0.839510, -0.168135,
		-0.833915, 0.537934, -0.123340,
		35.312618, 34.329094, 20.636490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454876, 33.712563, 20.077654>,  <35.896358, 33.952541, 20.722828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454876, 33.712563, 20.077654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370827, 34.100006, 20.130774>,  <35.320396, 34.332474, 20.162645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370827, 34.100006, 20.130774>,  <35.454876, 33.712563, 20.077654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370827, 34.100006, 20.130774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226443, 0.180356, -0.957181,
		-0.951090, -0.171053, -0.257232,
		-0.210122, 0.968614, 0.132801,
		35.307789, 34.390591, 20.170614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455696, 33.870792, 19.373749>,  <35.454876, 33.712563, 20.077654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455696, 33.870792, 19.373749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378139, 34.229095, 19.533756>,  <35.331604, 34.444077, 19.629761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378139, 34.229095, 19.533756>,  <35.455696, 33.870792, 19.373749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378139, 34.229095, 19.533756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096124, 0.423144, -0.900949,
		-0.976302, -0.136234, -0.168149,
		-0.193891, 0.895762, 0.400021,
		35.319973, 34.497826, 19.653763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033390, 34.173286, 18.918846>,  <35.455696, 33.870792, 19.373749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033390, 34.173286, 18.918846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188133, 34.482101, 19.120560>,  <35.280979, 34.667389, 19.241587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188133, 34.482101, 19.120560>,  <35.033390, 34.173286, 18.918846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188133, 34.482101, 19.120560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092855, 0.576695, -0.811666,
		-0.917454, 0.267171, 0.294784,
		0.386854, 0.772038, 0.504283,
		35.304188, 34.713715, 19.271845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602631, 34.736389, 18.649921>,  <35.033390, 34.173286, 18.918846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602631, 34.736389, 18.649921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933334, 34.899265, 18.805187>,  <35.131756, 34.996990, 18.898346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933334, 34.899265, 18.805187>,  <34.602631, 34.736389, 18.649921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933334, 34.899265, 18.805187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136113, 0.524705, -0.840332,
		-0.545847, 0.747583, 0.378378,
		0.826755, 0.407191, 0.388164,
		35.181362, 35.021423, 18.921637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462257, 35.442131, 18.473095>,  <34.602631, 34.736389, 18.649921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462257, 35.442131, 18.473095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.853973, 35.416378, 18.549881>,  <35.089001, 35.400925, 18.595953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.853973, 35.416378, 18.549881>,  <34.462257, 35.442131, 18.473095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853973, 35.416378, 18.549881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183634, 0.681789, -0.708126,
		-0.085288, 0.728710, 0.679491,
		0.979288, -0.064384, 0.191964,
		35.147758, 35.397064, 18.607470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663776, 36.096279, 18.634186>,  <34.462257, 35.442131, 18.473095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663776, 36.096279, 18.634186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984726, 35.891399, 18.511646>,  <35.177296, 35.768471, 18.438122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984726, 35.891399, 18.511646>,  <34.663776, 36.096279, 18.634186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984726, 35.891399, 18.511646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254499, 0.757925, -0.600650,
		0.539846, 0.403977, 0.738491,
		0.802369, -0.512204, -0.306350,
		35.225437, 35.737740, 18.419741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171108, 36.630630, 18.569603>,  <34.663776, 36.096279, 18.634186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171108, 36.630630, 18.569603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284634, 36.327259, 18.334917>,  <35.352749, 36.145237, 18.194105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284634, 36.327259, 18.334917>,  <35.171108, 36.630630, 18.569603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284634, 36.327259, 18.334917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285249, 0.650954, -0.703486,
		0.915469, 0.032299, 0.401091,
		0.283814, -0.758430, -0.586714,
		35.369778, 36.099731, 18.158903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878696, 36.797256, 18.361544>,  <35.171108, 36.630630, 18.569603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878696, 36.797256, 18.361544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742081, 36.536621, 18.090611>,  <35.660110, 36.380241, 17.928051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742081, 36.536621, 18.090611>,  <35.878696, 36.797256, 18.361544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742081, 36.536621, 18.090611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386416, 0.559592, -0.733171,
		0.856756, -0.512143, 0.060659,
		-0.341543, -0.651588, -0.677334,
		35.639618, 36.341145, 17.887411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325470, 36.913124, 17.800909>,  <35.878696, 36.797256, 18.361544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325470, 36.913124, 17.800909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996040, 36.744213, 17.649435>,  <35.798382, 36.642868, 17.558550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996040, 36.744213, 17.649435>,  <36.325470, 36.913124, 17.800909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996040, 36.744213, 17.649435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063317, 0.595017, -0.801216,
		0.563656, -0.683842, -0.463307,
		-0.823580, -0.422274, -0.378683,
		35.748966, 36.617531, 17.535830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388916, 36.872551, 17.143368>,  <36.325470, 36.913124, 17.800909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388916, 36.872551, 17.143368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.997234, 36.795238, 17.118729>,  <35.762226, 36.748852, 17.103945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.997234, 36.795238, 17.118729>,  <36.388916, 36.872551, 17.143368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997234, 36.795238, 17.118729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040374, 0.483246, -0.874553,
		0.198802, -0.853882, -0.481001,
		-0.979208, -0.193283, -0.061596,
		35.703472, 36.737255, 17.100250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266453, 36.632835, 16.368717>,  <36.388916, 36.872551, 17.143368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266453, 36.632835, 16.368717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923874, 36.748413, 16.539837>,  <35.718327, 36.817760, 16.642508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923874, 36.748413, 16.539837>,  <36.266453, 36.632835, 16.368717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923874, 36.748413, 16.539837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205298, 0.569706, -0.795794,
		-0.473657, -0.769381, -0.428604,
		-0.856447, 0.288942, 0.427798,
		35.666939, 36.835094, 16.668177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934227, 36.677437, 15.802111>,  <36.266453, 36.632835, 16.368717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934227, 36.677437, 15.802111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715530, 36.887405, 16.063042>,  <35.584312, 37.013386, 16.219601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715530, 36.887405, 16.063042>,  <35.934227, 36.677437, 15.802111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715530, 36.887405, 16.063042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200921, 0.674069, -0.710818,
		-0.812840, -0.519697, -0.263070,
		-0.546737, 0.524925, 0.652328,
		35.551510, 37.044884, 16.258739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479916, 36.923248, 15.370016>,  <35.934227, 36.677437, 15.802111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479916, 36.923248, 15.370016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484589, 37.154564, 15.696316>,  <35.487392, 37.293354, 15.892096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484589, 37.154564, 15.696316>,  <35.479916, 36.923248, 15.370016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484589, 37.154564, 15.696316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119255, 0.810789, -0.573062,
		-0.992795, -0.090587, 0.078435,
		0.011682, 0.578286, 0.815750,
		35.488094, 37.328049, 15.941041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921696, 37.474728, 15.361285>,  <35.479916, 36.923248, 15.370016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921696, 37.474728, 15.361285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231430, 37.594894, 15.584048>,  <35.417271, 37.666996, 15.717707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231430, 37.594894, 15.584048>,  <34.921696, 37.474728, 15.361285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231430, 37.594894, 15.584048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082391, 0.824750, -0.559463,
		-0.627384, 0.479098, 0.613885,
		0.774339, 0.300420, 0.556908,
		35.463734, 37.685020, 15.751121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650558, 38.107586, 15.433447>,  <34.921696, 37.474728, 15.361285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650558, 38.107586, 15.433447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037113, 38.097095, 15.535741>,  <35.269047, 38.090801, 15.597117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037113, 38.097095, 15.535741>,  <34.650558, 38.107586, 15.433447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037113, 38.097095, 15.535741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122699, 0.921217, -0.369194,
		-0.225904, 0.388164, 0.893474,
		0.966392, -0.026226, 0.255734,
		35.327030, 38.089230, 15.612461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867470, 38.684101, 15.934723>,  <34.650558, 38.107586, 15.433447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867470, 38.684101, 15.934723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175880, 38.555325, 15.714951>,  <35.360928, 38.478058, 15.583087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175880, 38.555325, 15.714951>,  <34.867470, 38.684101, 15.934723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175880, 38.555325, 15.714951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157509, 0.932398, -0.325307,
		0.617018, 0.164280, 0.769611,
		0.771025, -0.321941, -0.549431,
		35.407188, 38.458744, 15.550121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510445, 39.134129, 16.029892>,  <34.867470, 38.684101, 15.934723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510445, 39.134129, 16.029892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.495327, 38.964340, 15.668032>,  <35.486256, 38.862469, 15.450915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.495327, 38.964340, 15.668032>,  <35.510445, 39.134129, 16.029892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495327, 38.964340, 15.668032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134207, 0.894942, -0.425521,
		0.990232, -0.137493, 0.023143,
		-0.037795, -0.424470, -0.904653,
		35.483990, 38.836998, 15.396636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947868, 39.558708, 15.766420>,  <35.510445, 39.134129, 16.029892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947868, 39.558708, 15.766420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735882, 39.372162, 15.483113>,  <35.608692, 39.260235, 15.313129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735882, 39.372162, 15.483113>,  <35.947868, 39.558708, 15.766420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735882, 39.372162, 15.483113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037270, 0.847202, -0.529962,
		0.847202, -0.254462, -0.466366,
		0.529962, 0.466366, 0.708268,
		35.576893, 39.232250, 15.270633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172989, 40.344227, 15.982759>,  <35.947868, 39.558708, 15.766420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172989, 40.344227, 15.982759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887123, 40.165371, 16.197912>,  <35.715603, 40.058060, 16.327003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887123, 40.165371, 16.197912>,  <36.172989, 40.344227, 15.982759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887123, 40.165371, 16.197912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405609, -0.361573, -0.839492,
		0.569851, -0.818129, 0.077042,
		-0.714668, -0.447136, 0.537883,
		35.672722, 40.031231, 16.359278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759163, 40.687378, 16.532557>,  <36.172989, 40.344227, 15.982759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759163, 40.687378, 16.532557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723614, 40.880268, 16.881166>,  <35.702282, 40.996002, 17.090332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723614, 40.880268, 16.881166>,  <35.759163, 40.687378, 16.532557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723614, 40.880268, 16.881166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994227, 0.009861, -0.106844,
		-0.060117, -0.875990, 0.478567,
		-0.088875, 0.482228, 0.871526,
		35.696953, 41.024937, 17.142624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152203, 40.342690, 16.964565>,  <35.759163, 40.687378, 16.532557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152203, 40.342690, 16.964565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145546, 40.737190, 17.030336>,  <35.141552, 40.973888, 17.069799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145546, 40.737190, 17.030336>,  <35.152203, 40.342690, 16.964565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145546, 40.737190, 17.030336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847180, 0.073436, -0.526206,
		-0.531045, -0.148056, 0.834309,
		-0.016639, 0.986248, 0.164428,
		35.140553, 41.033066, 17.079664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658596, 40.123173, 16.476044>,  <35.152203, 40.342690, 16.964565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658596, 40.123173, 16.476044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.423630, 39.939991, 16.209143>,  <34.282650, 39.830082, 16.049002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.423630, 39.939991, 16.209143>,  <34.658596, 40.123173, 16.476044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423630, 39.939991, 16.209143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407489, 0.544980, -0.732769,
		0.699215, -0.702334, -0.133514,
		-0.587410, -0.457957, -0.667251,
		34.247406, 39.802605, 16.008968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552814, 39.542259, 16.804626>,  <34.658596, 40.123173, 16.476044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552814, 39.542259, 16.804626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701008, 39.170723, 16.804605>,  <34.789925, 38.947803, 16.804594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701008, 39.170723, 16.804605>,  <34.552814, 39.542259, 16.804626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701008, 39.170723, 16.804605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076368, -0.030516, 0.996613,
		-0.925693, -0.369227, -0.082239,
		0.370486, -0.928838, -0.000051,
		34.812153, 38.892071, 16.804590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067314, 39.036888, 17.106466>,  <34.552814, 39.542259, 16.804626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067314, 39.036888, 17.106466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425045, 38.864578, 17.154804>,  <34.639683, 38.761192, 17.183807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425045, 38.864578, 17.154804>,  <34.067314, 39.036888, 17.106466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425045, 38.864578, 17.154804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209007, -0.163440, 0.964159,
		-0.395584, -0.887536, -0.236205,
		0.894332, -0.430775, 0.120847,
		34.693344, 38.735344, 17.191059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025967, 38.449863, 17.617554>,  <34.067314, 39.036888, 17.106466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025967, 38.449863, 17.617554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417522, 38.531620, 17.617716>,  <34.652454, 38.580673, 17.617813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417522, 38.531620, 17.617716>,  <34.025967, 38.449863, 17.617554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417522, 38.531620, 17.617716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060233, -0.290380, 0.955014,
		0.195312, -0.934829, -0.296561,
		0.978890, 0.204388, 0.000407,
		34.711189, 38.592937, 17.617838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347263, 37.821835, 17.832815>,  <34.025967, 38.449863, 17.617554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347263, 37.821835, 17.832815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560726, 38.152199, 17.905560>,  <34.688805, 38.350418, 17.949205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560726, 38.152199, 17.905560>,  <34.347263, 37.821835, 17.832815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560726, 38.152199, 17.905560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138407, -0.297437, 0.944656,
		0.834296, -0.478955, -0.273043,
		0.533660, 0.825914, 0.181860,
		34.720825, 38.399975, 17.960117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832767, 37.574680, 18.322643>,  <34.347263, 37.821835, 17.832815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832767, 37.574680, 18.322643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859367, 37.971218, 18.367916>,  <34.875328, 38.209141, 18.395081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859367, 37.971218, 18.367916>,  <34.832767, 37.574680, 18.322643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859367, 37.971218, 18.367916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154586, -0.122301, 0.980380,
		0.985739, -0.047699, -0.161381,
		0.066501, 0.991346, 0.113183,
		34.879318, 38.268623, 18.401871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408310, 37.629200, 18.699942>,  <34.832767, 37.574680, 18.322643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408310, 37.629200, 18.699942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202206, 37.969318, 18.742855>,  <35.078545, 38.173389, 18.768602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202206, 37.969318, 18.742855>,  <35.408310, 37.629200, 18.699942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202206, 37.969318, 18.742855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202403, -0.000909, 0.979302,
		0.832790, 0.526310, -0.171634,
		-0.515261, 0.850292, 0.107284,
		35.047626, 38.224407, 18.775040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859447, 38.027641, 19.185884>,  <35.408310, 37.629200, 18.699942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859447, 38.027641, 19.185884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491291, 38.184040, 19.185358>,  <35.270397, 38.277878, 19.185041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491291, 38.184040, 19.185358>,  <35.859447, 38.027641, 19.185884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491291, 38.184040, 19.185358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046797, -0.106816, 0.993177,
		0.388189, 0.914172, 0.116610,
		-0.920391, 0.390998, -0.001315,
		35.215176, 38.301338, 19.184963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849663, 38.665447, 19.459457>,  <35.859447, 38.027641, 19.185884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849663, 38.665447, 19.459457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472702, 38.540504, 19.507324>,  <35.246525, 38.465538, 19.536043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472702, 38.540504, 19.507324>,  <35.849663, 38.665447, 19.459457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472702, 38.540504, 19.507324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032380, 0.270883, 0.962068,
		-0.332922, 0.910525, -0.245165,
		-0.942398, -0.312355, 0.119666,
		35.189983, 38.446796, 19.543224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570694, 39.157669, 20.005554>,  <35.849663, 38.665447, 19.459457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570694, 39.157669, 20.005554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304226, 38.859901, 19.987425>,  <35.144344, 38.681240, 19.976547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304226, 38.859901, 19.987425>,  <35.570694, 39.157669, 20.005554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304226, 38.859901, 19.987425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337138, 0.246379, 0.908645,
		-0.665243, 0.620597, -0.415103,
		-0.666175, -0.744417, -0.045325,
		35.104374, 38.636578, 19.973827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944351, 39.349785, 20.257586>,  <35.570694, 39.157669, 20.005554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944351, 39.349785, 20.257586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902214, 38.954563, 20.302572>,  <34.876934, 38.717430, 20.329565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902214, 38.954563, 20.302572>,  <34.944351, 39.349785, 20.257586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902214, 38.954563, 20.302572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168421, 0.129190, 0.977212,
		-0.980070, 0.083998, -0.180019,
		-0.105341, -0.988056, 0.112469,
		34.870613, 38.658146, 20.336313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329491, 39.263863, 20.765957>,  <34.944351, 39.349785, 20.257586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329491, 39.263863, 20.765957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542496, 38.925297, 20.765213>,  <34.670300, 38.722157, 20.764767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542496, 38.925297, 20.765213>,  <34.329491, 39.263863, 20.765957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542496, 38.925297, 20.765213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173766, -0.111470, 0.978458,
		-0.828393, -0.520719, -0.206438,
		0.532514, -0.846419, -0.001858,
		34.702251, 38.671371, 20.764656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908218, 38.781841, 21.168255>,  <34.329491, 39.263863, 20.765957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908218, 38.781841, 21.168255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286175, 38.652317, 21.187536>,  <34.512947, 38.574600, 21.199106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286175, 38.652317, 21.187536>,  <33.908218, 38.781841, 21.168255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286175, 38.652317, 21.187536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137615, -0.259250, 0.955956,
		-0.297062, -0.909906, -0.289525,
		0.944889, -0.323821, 0.048203,
		34.569641, 38.555172, 21.201998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858246, 38.312160, 21.622871>,  <33.908218, 38.781841, 21.168255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858246, 38.312160, 21.622871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254143, 38.367668, 21.609333>,  <34.491680, 38.400974, 21.601210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254143, 38.367668, 21.609333>,  <33.858246, 38.312160, 21.622871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254143, 38.367668, 21.609333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082150, -0.359170, 0.929650,
		0.116852, -0.922897, -0.366887,
		0.989746, 0.138771, -0.033846,
		34.551067, 38.409298, 21.599178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191677, 37.664219, 21.747190>,  <33.858246, 38.312160, 21.622871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191677, 37.664219, 21.747190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453083, 37.957584, 21.822050>,  <34.609924, 38.133606, 21.866966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453083, 37.957584, 21.822050>,  <34.191677, 37.664219, 21.747190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453083, 37.957584, 21.822050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004356, -0.243605, 0.969865,
		0.756905, -0.634632, -0.156004,
		0.653510, 0.733416, 0.187150,
		34.649136, 38.177608, 21.878195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695976, 37.321510, 22.155056>,  <34.191677, 37.664219, 21.747190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695976, 37.321510, 22.155056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766525, 37.710239, 22.217606>,  <34.808853, 37.943478, 22.255135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766525, 37.710239, 22.217606>,  <34.695976, 37.321510, 22.155056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766525, 37.710239, 22.217606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117707, -0.136900, 0.983567,
		0.977260, -0.191881, 0.090245,
		0.176373, 0.971823, 0.156373,
		34.819439, 38.001785, 22.264517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074329, 37.411922, 22.833376>,  <34.695976, 37.321510, 22.155056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074329, 37.411922, 22.833376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.925766, 37.778717, 22.775145>,  <34.836628, 37.998795, 22.740206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.925766, 37.778717, 22.775145>,  <35.074329, 37.411922, 22.833376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925766, 37.778717, 22.775145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256732, 0.049253, 0.965227,
		0.892268, 0.395872, 0.217125,
		-0.371413, 0.916984, -0.145580,
		34.814342, 38.053814, 22.731470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413322, 37.993023, 23.185719>,  <35.074329, 37.411922, 22.833376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413322, 37.993023, 23.185719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030132, 38.093231, 23.129829>,  <34.800217, 38.153358, 23.096296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030132, 38.093231, 23.129829>,  <35.413322, 37.993023, 23.185719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030132, 38.093231, 23.129829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163763, -0.077730, 0.983433,
		0.235511, 0.964985, 0.115490,
		-0.957975, 0.250523, -0.139723,
		34.742741, 38.168388, 23.087914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338501, 38.333103, 23.754347>,  <35.413322, 37.993023, 23.185719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338501, 38.333103, 23.754347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970730, 38.276909, 23.607426>,  <34.750065, 38.243191, 23.519274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970730, 38.276909, 23.607426>,  <35.338501, 38.333103, 23.754347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970730, 38.276909, 23.607426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352809, -0.117887, 0.928240,
		-0.173704, 0.983040, 0.058825,
		-0.919431, -0.140485, -0.367302,
		34.694901, 38.234764, 23.497234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954903, 38.831989, 24.009022>,  <35.338501, 38.333103, 23.754347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954903, 38.831989, 24.009022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677563, 38.555794, 23.926561>,  <34.511158, 38.390076, 23.877085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677563, 38.555794, 23.926561>,  <34.954903, 38.831989, 24.009022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677563, 38.555794, 23.926561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352468, 0.075442, 0.932778,
		-0.628516, 0.719402, -0.295682,
		-0.693349, -0.690484, -0.206150,
		34.469559, 38.348648, 23.864716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353226, 39.071003, 24.372171>,  <34.954903, 38.831989, 24.009022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353226, 39.071003, 24.372171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237419, 38.697010, 24.290199>,  <34.167934, 38.472614, 24.241016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237419, 38.697010, 24.290199>,  <34.353226, 39.071003, 24.372171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237419, 38.697010, 24.290199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536118, -0.018965, 0.843930,
		-0.792943, 0.354197, -0.495768,
		-0.289515, -0.934979, -0.204929,
		34.150566, 38.416515, 24.228720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589764, 38.943928, 24.417046>,  <34.353226, 39.071003, 24.372171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589764, 38.943928, 24.417046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755306, 38.585663, 24.482170>,  <33.854633, 38.370705, 24.521244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755306, 38.585663, 24.482170>,  <33.589764, 38.943928, 24.417046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755306, 38.585663, 24.482170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376673, -0.005664, 0.926329,
		-0.828756, -0.444698, -0.339716,
		0.413860, -0.895663, 0.162812,
		33.879463, 38.316963, 24.531013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047207, 38.542057, 24.706982>,  <33.589764, 38.943928, 24.417046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047207, 38.542057, 24.706982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378559, 38.342686, 24.809242>,  <33.577370, 38.223064, 24.870598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378559, 38.342686, 24.809242>,  <33.047207, 38.542057, 24.706982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378559, 38.342686, 24.809242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435684, -0.286429, 0.853310,
		-0.352090, -0.818246, -0.454430,
		0.828380, -0.498429, 0.255648,
		33.627075, 38.193157, 24.885937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814011, 37.993900, 25.028044>,  <33.047207, 38.542057, 24.706982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814011, 37.993900, 25.028044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200104, 37.963737, 25.128151>,  <33.431759, 37.945641, 25.188215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200104, 37.963737, 25.128151>,  <32.814011, 37.993900, 25.028044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200104, 37.963737, 25.128151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257634, -0.436015, 0.862274,
		0.044096, -0.896775, -0.440285,
		0.965236, -0.075410, 0.250266,
		33.489674, 37.941116, 25.203232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043522, 37.234554, 25.405710>,  <32.814011, 37.993900, 25.028044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043522, 37.234554, 25.405710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293465, 37.521626, 25.528671>,  <33.443428, 37.693867, 25.602448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293465, 37.521626, 25.528671>,  <33.043522, 37.234554, 25.405710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293465, 37.521626, 25.528671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069888, -0.340735, 0.937558,
		0.777608, -0.607320, -0.162752,
		0.624853, 0.717678, 0.307403,
		33.480919, 37.736927, 25.620892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274174, 36.951153, 26.031755>,  <33.043522, 37.234554, 25.405710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274174, 36.951153, 26.031755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420506, 37.320461, 26.078636>,  <33.508305, 37.542046, 26.106766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420506, 37.320461, 26.078636>,  <33.274174, 36.951153, 26.031755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420506, 37.320461, 26.078636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025253, -0.116039, 0.992923,
		0.930338, -0.366204, -0.019135,
		0.365833, 0.923271, 0.117204,
		33.530254, 37.597443, 26.113798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741924, 36.899837, 26.594296>,  <33.274174, 36.951153, 26.031755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741924, 36.899837, 26.594296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665150, 37.291035, 26.561584>,  <33.619083, 37.525753, 26.541958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665150, 37.291035, 26.561584>,  <33.741924, 36.899837, 26.594296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665150, 37.291035, 26.561584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079929, 0.067474, 0.994514,
		0.978146, 0.197425, 0.065219,
		-0.191941, 0.977993, -0.081779,
		33.607567, 37.584435, 26.537050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111019, 37.042049, 27.228834>,  <33.741924, 36.899837, 26.594296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111019, 37.042049, 27.228834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874737, 37.351212, 27.136154>,  <33.732967, 37.536709, 27.080545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874737, 37.351212, 27.136154>,  <34.111019, 37.042049, 27.228834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874737, 37.351212, 27.136154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174558, 0.157944, 0.971897,
		0.787780, 0.614549, 0.041619,
		-0.590705, 0.772905, -0.231700,
		33.697525, 37.583084, 27.066645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460510, 37.688793, 27.507772>,  <34.111019, 37.042049, 27.228834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460510, 37.688793, 27.507772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067703, 37.747913, 27.460796>,  <33.832020, 37.783386, 27.432611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067703, 37.747913, 27.460796>,  <34.460510, 37.688793, 27.507772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067703, 37.747913, 27.460796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072554, 0.278816, 0.957600,
		0.174282, 0.948902, -0.263079,
		-0.982019, 0.147805, -0.117440,
		33.773098, 37.792255, 27.425564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366722, 38.231678, 27.875698>,  <34.460510, 37.688793, 27.507772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366722, 38.231678, 27.875698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.997135, 38.085831, 27.829491>,  <33.775383, 37.998322, 27.801767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.997135, 38.085831, 27.829491>,  <34.366722, 38.231678, 27.875698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997135, 38.085831, 27.829491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202280, 0.209502, 0.956657,
		-0.324614, 0.907283, -0.267327,
		-0.923963, -0.364619, -0.115517,
		33.719948, 37.976444, 27.794836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854984, 38.695263, 28.147108>,  <34.366722, 38.231678, 27.875698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854984, 38.695263, 28.147108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664494, 38.343704, 28.136166>,  <33.550198, 38.132771, 28.129601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664494, 38.343704, 28.136166>,  <33.854984, 38.695263, 28.147108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664494, 38.343704, 28.136166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292324, 0.128902, 0.947592,
		-0.829307, 0.459270, -0.318309,
		-0.476231, -0.878894, -0.027356,
		33.521626, 38.080036, 28.127958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195049, 38.784588, 28.466152>,  <33.854984, 38.695263, 28.147108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195049, 38.784588, 28.466152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270908, 38.393669, 28.503937>,  <33.316425, 38.159119, 28.526608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270908, 38.393669, 28.503937>,  <33.195049, 38.784588, 28.466152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270908, 38.393669, 28.503937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255974, 0.043666, 0.965697,
		-0.947898, -0.207322, -0.241882,
		0.189648, -0.977298, 0.094460,
		33.327805, 38.100479, 28.532274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691948, 38.475929, 28.973480>,  <33.195049, 38.784588, 28.466152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691948, 38.475929, 28.973480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982681, 38.202286, 28.949154>,  <33.157124, 38.038097, 28.934559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982681, 38.202286, 28.949154>,  <32.691948, 38.475929, 28.973480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982681, 38.202286, 28.949154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125216, -0.219057, 0.967644,
		-0.675300, -0.695703, -0.244881,
		0.726836, -0.684113, -0.060816,
		33.200733, 37.997051, 28.930908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376308, 37.924854, 29.309416>,  <32.691948, 38.475929, 28.973480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376308, 37.924854, 29.309416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773331, 37.877457, 29.320654>,  <33.011543, 37.849018, 29.327396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773331, 37.877457, 29.320654>,  <32.376308, 37.924854, 29.309416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773331, 37.877457, 29.320654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038835, -0.089309, 0.995247,
		-0.115423, -0.988930, -0.093246,
		0.992557, -0.118495, 0.028097,
		33.071098, 37.841908, 29.329082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516308, 37.481590, 29.793365>,  <32.376308, 37.924854, 29.309416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516308, 37.481590, 29.793365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884769, 37.634792, 29.765703>,  <33.105846, 37.726711, 29.749105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884769, 37.634792, 29.765703>,  <32.516308, 37.481590, 29.793365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884769, 37.634792, 29.765703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149335, -0.183729, 0.971567,
		0.359407, -0.905291, -0.226438,
		0.921155, 0.383003, -0.069158,
		33.161118, 37.749695, 29.744955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984375, 36.976269, 29.964668>,  <32.516308, 37.481590, 29.793365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984375, 36.976269, 29.964668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179520, 37.319485, 30.028879>,  <33.296604, 37.525414, 30.067406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179520, 37.319485, 30.028879>,  <32.984375, 36.976269, 29.964668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179520, 37.319485, 30.028879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182017, -0.279844, 0.942633,
		0.853735, -0.430654, -0.292702,
		0.487859, 0.858035, 0.160526,
		33.325878, 37.576897, 30.077036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678780, 36.881992, 30.210135>,  <32.984375, 36.976269, 29.964668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678780, 36.881992, 30.210135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626308, 37.262775, 30.320820>,  <33.594826, 37.491245, 30.387230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626308, 37.262775, 30.320820>,  <33.678780, 36.881992, 30.210135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626308, 37.262775, 30.320820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124934, -0.261024, 0.957214,
		0.983455, 0.160138, -0.084691,
		-0.131180, 0.951957, 0.276711,
		33.586956, 37.548363, 30.403833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078957, 36.958206, 30.765154>,  <33.678780, 36.881992, 30.210135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078957, 36.958206, 30.765154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.864895, 37.295170, 30.790291>,  <33.736458, 37.497349, 30.805374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.864895, 37.295170, 30.790291>,  <34.078957, 36.958206, 30.765154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864895, 37.295170, 30.790291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118186, 0.001003, 0.992991,
		0.836445, 0.538832, -0.100099,
		-0.535156, 0.842413, 0.062844,
		33.704350, 37.547894, 30.809143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449097, 37.428246, 31.163120>,  <34.078957, 36.958206, 30.765154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449097, 37.428246, 31.163120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064941, 37.535469, 31.193584>,  <33.834450, 37.599804, 31.211863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064941, 37.535469, 31.193584>,  <34.449097, 37.428246, 31.163120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064941, 37.535469, 31.193584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108858, 0.109288, 0.988031,
		0.256531, 0.957183, -0.134139,
		-0.960386, 0.268063, 0.076162,
		33.776825, 37.615887, 31.216433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021259, 37.650879, 31.600742>,  <34.449097, 37.428246, 31.163120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021259, 37.650879, 31.600742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341930, 37.831535, 31.757372>,  <35.534332, 37.939930, 31.851351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341930, 37.831535, 31.757372>,  <35.021259, 37.650879, 31.600742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341930, 37.831535, 31.757372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408708, 0.063874, -0.910427,
		-0.436200, 0.889909, -0.133385,
		0.801678, 0.451644, 0.391575,
		35.582432, 37.967030, 31.874844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239754, 38.273151, 31.231045>,  <35.021259, 37.650879, 31.600742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239754, 38.273151, 31.231045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587803, 38.171753, 31.400101>,  <35.796631, 38.110916, 31.501535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587803, 38.171753, 31.400101>,  <35.239754, 38.273151, 31.231045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587803, 38.171753, 31.400101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479285, 0.235553, -0.845459,
		0.114764, 0.938219, 0.326456,
		0.870123, -0.253494, 0.422642,
		35.848839, 38.095703, 31.526894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764366, 38.823460, 31.121853>,  <35.239754, 38.273151, 31.231045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764366, 38.823460, 31.121853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.960258, 38.483860, 31.201214>,  <36.077793, 38.280102, 31.248831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.960258, 38.483860, 31.201214>,  <35.764366, 38.823460, 31.121853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960258, 38.483860, 31.201214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383110, 0.005133, -0.923688,
		0.783193, 0.528367, 0.327775,
		0.489729, -0.849000, 0.198403,
		36.107178, 38.229160, 31.260735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318352, 38.919998, 30.912462>,  <35.764366, 38.823460, 31.121853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318352, 38.919998, 30.912462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355495, 38.524738, 30.961334>,  <36.377781, 38.287582, 30.990658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355495, 38.524738, 30.961334>,  <36.318352, 38.919998, 30.912462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355495, 38.524738, 30.961334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556264, -0.050287, -0.829483,
		0.825801, 0.144994, 0.545004,
		0.092864, -0.988154, 0.122182,
		36.383354, 38.228291, 30.997990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981140, 38.800785, 30.849813>,  <36.318352, 38.919998, 30.912462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981140, 38.800785, 30.849813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790623, 38.457378, 30.773829>,  <36.676311, 38.251335, 30.728237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790623, 38.457378, 30.773829>,  <36.981140, 38.800785, 30.849813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790623, 38.457378, 30.773829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464395, -0.062165, -0.883444,
		0.746644, -0.509000, 0.428301,
		-0.476298, -0.858519, -0.189962,
		36.647732, 38.199821, 30.716841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463482, 38.423084, 30.599573>,  <36.981140, 38.800785, 30.849813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463482, 38.423084, 30.599573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.121696, 38.278961, 30.449865>,  <36.916626, 38.192490, 30.360041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.121696, 38.278961, 30.449865>,  <37.463482, 38.423084, 30.599573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121696, 38.278961, 30.449865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374942, 0.070984, -0.924327,
		0.359607, -0.930130, 0.074441,
		-0.854459, -0.360306, -0.374271,
		36.865360, 38.170868, 30.337584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648422, 37.912376, 30.116796>,  <37.463482, 38.423084, 30.599573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648422, 37.912376, 30.116796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.266666, 37.976307, 30.015924>,  <37.037613, 38.014668, 29.955402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.266666, 37.976307, 30.015924>,  <37.648422, 37.912376, 30.116796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266666, 37.976307, 30.015924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265629, 0.068931, -0.961608,
		-0.136312, -0.984735, -0.108242,
		-0.954390, 0.159831, -0.252178,
		36.980350, 38.024254, 29.940271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589214, 37.482658, 29.573429>,  <37.648422, 37.912376, 30.116796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589214, 37.482658, 29.573429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296570, 37.755150, 29.563023>,  <37.120983, 37.918644, 29.556780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296570, 37.755150, 29.563023>,  <37.589214, 37.482658, 29.573429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296570, 37.755150, 29.563023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221418, 0.201357, -0.954164,
		-0.644765, -0.703836, -0.298150,
		-0.731610, 0.681228, -0.026014,
		37.077087, 37.959518, 29.555218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293388, 37.395088, 28.919403>,  <37.589214, 37.482658, 29.573429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293388, 37.395088, 28.919403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171341, 37.762093, 29.021439>,  <37.098114, 37.982296, 29.082661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171341, 37.762093, 29.021439>,  <37.293388, 37.395088, 28.919403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171341, 37.762093, 29.021439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154722, 0.312065, -0.937378,
		-0.939662, -0.246542, -0.237176,
		-0.305118, 0.917514, 0.255090,
		37.079807, 38.037346, 29.097965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837467, 37.719898, 28.471601>,  <37.293388, 37.395088, 28.919403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837467, 37.719898, 28.471601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018505, 38.033810, 28.640970>,  <37.127129, 38.222157, 28.742592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018505, 38.033810, 28.640970>,  <36.837467, 37.719898, 28.471601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018505, 38.033810, 28.640970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150794, 0.400643, -0.903740,
		-0.878876, 0.472873, 0.062987,
		0.452590, 0.784778, 0.423422,
		37.154282, 38.269241, 28.767996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529617, 38.283264, 28.111673>,  <36.837467, 37.719898, 28.471601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529617, 38.283264, 28.111673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847908, 38.421810, 28.310411>,  <37.038883, 38.504936, 28.429655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847908, 38.421810, 28.310411>,  <36.529617, 38.283264, 28.111673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847908, 38.421810, 28.310411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236646, 0.577327, -0.781468,
		-0.557517, 0.739408, 0.377426,
		0.795722, 0.346366, 0.496847,
		37.086624, 38.525719, 28.459465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519112, 38.954857, 28.050741>,  <36.529617, 38.283264, 28.111673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519112, 38.954857, 28.050741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.905605, 38.877075, 28.118362>,  <37.137501, 38.830406, 28.158936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.905605, 38.877075, 28.118362>,  <36.519112, 38.954857, 28.050741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.905605, 38.877075, 28.118362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255215, 0.631912, -0.731815,
		0.035479, 0.750249, 0.660203,
		0.966233, -0.194457, 0.169055,
		37.195477, 38.818737, 28.169079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869717, 39.613281, 28.116650>,  <36.519112, 38.954857, 28.050741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869717, 39.613281, 28.116650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150459, 39.344654, 28.021662>,  <37.318905, 39.183479, 27.964668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150459, 39.344654, 28.021662>,  <36.869717, 39.613281, 28.116650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150459, 39.344654, 28.021662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353984, 0.618134, -0.701858,
		0.618134, 0.408544, 0.671567,
		0.701858, -0.671567, -0.237472,
		37.361015, 39.143185, 27.950420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241886, 39.988544, 27.690989>,  <36.869717, 39.613281, 28.116650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241886, 39.988544, 27.690989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.385925, 39.628555, 27.592705>,  <37.472347, 39.412560, 27.533733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.385925, 39.628555, 27.592705>,  <37.241886, 39.988544, 27.690989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385925, 39.628555, 27.592705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319316, 0.366371, -0.873962,
		0.876567, 0.236250, 0.419305,
		0.360095, -0.899977, -0.245710,
		37.493954, 39.358562, 27.518991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917690, 40.093819, 27.287977>,  <37.241886, 39.988544, 27.690989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917690, 40.093819, 27.287977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810287, 39.723171, 27.182692>,  <37.745846, 39.500782, 27.119520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810287, 39.723171, 27.182692>,  <37.917690, 40.093819, 27.287977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810287, 39.723171, 27.182692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151185, 0.229324, -0.961537,
		0.951340, -0.297972, 0.078517,
		-0.268505, -0.926619, -0.263214,
		37.729736, 39.445187, 27.103727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476974, 39.757805, 26.864119>,  <37.917690, 40.093819, 27.287977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476974, 39.757805, 26.864119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.137306, 39.562870, 26.782721>,  <37.933506, 39.445911, 26.733883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.137306, 39.562870, 26.782721>,  <38.476974, 39.757805, 26.864119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137306, 39.562870, 26.782721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176112, 0.101952, -0.979076,
		0.497884, -0.867243, -0.000750,
		-0.849173, -0.487334, -0.203493,
		37.882553, 39.416672, 26.721672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591259, 39.243469, 26.395105>,  <38.476974, 39.757805, 26.864119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591259, 39.243469, 26.395105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199337, 39.309978, 26.350687>,  <37.964184, 39.349884, 26.324036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199337, 39.309978, 26.350687>,  <38.591259, 39.243469, 26.395105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199337, 39.309978, 26.350687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144853, 0.207447, -0.967462,
		-0.137830, -0.964011, -0.227344,
		-0.979807, 0.166277, -0.111048,
		37.905396, 39.359859, 26.317373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519917, 38.926353, 25.739386>,  <38.591259, 39.243469, 26.395105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519917, 38.926353, 25.739386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.195023, 39.155621, 25.782743>,  <38.000088, 39.293182, 25.808758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.195023, 39.155621, 25.782743>,  <38.519917, 38.926353, 25.739386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195023, 39.155621, 25.782743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057305, 0.106523, -0.992657,
		-0.580507, -0.812484, -0.053676,
		-0.812236, 0.573169, 0.108397,
		37.951351, 39.327572, 25.815262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052017, 38.557281, 25.467436>,  <38.519917, 38.926353, 25.739386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052017, 38.557281, 25.467436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900745, 38.927521, 25.461042>,  <37.809982, 39.149662, 25.457207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900745, 38.927521, 25.461042>,  <38.052017, 38.557281, 25.467436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900745, 38.927521, 25.461042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288885, -0.134400, -0.947883,
		-0.879505, -0.353848, 0.318217,
		-0.378175, 0.925596, -0.015984,
		37.787292, 39.205200, 25.456247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617744, 38.405491, 24.899960>,  <38.052017, 38.557281, 25.467436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617744, 38.405491, 24.899960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.627651, 38.804264, 24.929665>,  <37.633595, 39.043526, 24.947489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.627651, 38.804264, 24.929665>,  <37.617744, 38.405491, 24.899960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627651, 38.804264, 24.929665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252032, 0.078114, -0.964561,
		-0.967402, 0.005170, 0.253193,
		0.024765, 0.996931, 0.074265,
		37.635082, 39.103344, 24.951944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967983, 38.640121, 24.823521>,  <37.617744, 38.405491, 24.899960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967983, 38.640121, 24.823521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217628, 38.930473, 24.707870>,  <37.367416, 39.104683, 24.638481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217628, 38.930473, 24.707870>,  <36.967983, 38.640121, 24.823521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217628, 38.930473, 24.707870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386260, -0.035028, -0.921725,
		-0.679185, 0.686934, 0.258515,
		0.624109, 0.725875, -0.289126,
		37.404861, 39.148235, 24.621132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559063, 39.063095, 24.467766>,  <36.967983, 38.640121, 24.823521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559063, 39.063095, 24.467766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936390, 39.136440, 24.357115>,  <37.162788, 39.180447, 24.290724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936390, 39.136440, 24.357115>,  <36.559063, 39.063095, 24.467766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936390, 39.136440, 24.357115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277387, -0.022008, -0.960506,
		-0.182214, 0.982798, 0.030104,
		0.943321, 0.183368, -0.276626,
		37.219387, 39.191452, 24.274126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536617, 39.662094, 23.932838>,  <36.559063, 39.063095, 24.467766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536617, 39.662094, 23.932838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872028, 39.449631, 23.884254>,  <37.073273, 39.322155, 23.855104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872028, 39.449631, 23.884254>,  <36.536617, 39.662094, 23.932838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872028, 39.449631, 23.884254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090611, 0.083871, -0.992348,
		0.537278, 0.843113, 0.022200,
		0.838524, -0.531155, -0.121458,
		37.123585, 39.290283, 23.847816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812790, 40.024673, 23.377052>,  <36.536617, 39.662094, 23.932838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812790, 40.024673, 23.377052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.993210, 39.668144, 23.395374>,  <37.101460, 39.454227, 23.406368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.993210, 39.668144, 23.395374>,  <36.812790, 40.024673, 23.377052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993210, 39.668144, 23.395374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171267, -0.136807, -0.975680,
		0.875914, 0.432233, -0.214361,
		0.451047, -0.891324, 0.045804,
		37.128525, 39.400745, 23.409115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481995, 40.035007, 22.974028>,  <36.812790, 40.024673, 23.377052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481995, 40.035007, 22.974028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371429, 39.651638, 23.002346>,  <37.305088, 39.421616, 23.019337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371429, 39.651638, 23.002346>,  <37.481995, 40.035007, 22.974028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371429, 39.651638, 23.002346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220551, -0.134963, -0.965993,
		0.935388, -0.251403, 0.248688,
		-0.276417, -0.958427, 0.070796,
		37.288506, 39.364109, 23.023584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895527, 39.724640, 22.507698>,  <37.481995, 40.035007, 22.974028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895527, 39.724640, 22.507698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.630955, 39.428635, 22.556511>,  <37.472214, 39.251030, 22.585798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.630955, 39.428635, 22.556511>,  <37.895527, 39.724640, 22.507698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.630955, 39.428635, 22.556511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128986, -0.272517, -0.953466,
		0.738835, -0.614908, 0.275702,
		-0.661427, -0.740015, 0.122030,
		37.432526, 39.206631, 22.593121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186073, 39.021923, 22.335634>,  <37.895527, 39.724640, 22.507698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186073, 39.021923, 22.335634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790318, 39.007153, 22.279432>,  <37.552864, 38.998291, 22.245712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790318, 39.007153, 22.279432>,  <38.186073, 39.021923, 22.335634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790318, 39.007153, 22.279432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145242, -0.230516, -0.962168,
		0.003145, -0.972368, 0.233434,
		-0.989391, -0.036930, -0.140503,
		37.493500, 38.996075, 22.237282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121143, 38.423595, 22.074455>,  <38.186073, 39.021923, 22.335634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121143, 38.423595, 22.074455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800137, 38.637348, 21.968317>,  <37.607533, 38.765598, 21.904634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800137, 38.637348, 21.968317>,  <38.121143, 38.423595, 22.074455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800137, 38.637348, 21.968317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140266, -0.263291, -0.954465,
		-0.579908, -0.803192, 0.136340,
		-0.802516, 0.534378, -0.265345,
		37.559383, 38.797661, 21.888714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770390, 37.965126, 21.647560>,  <38.121143, 38.423595, 22.074455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770390, 37.965126, 21.647560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628632, 38.329811, 21.564434>,  <37.543579, 38.548622, 21.514559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628632, 38.329811, 21.564434>,  <37.770390, 37.965126, 21.647560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628632, 38.329811, 21.564434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058917, -0.243570, -0.968092,
		-0.933239, -0.330841, 0.140034,
		-0.354392, 0.911712, -0.207817,
		37.522312, 38.603325, 21.502089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286118, 37.801495, 21.214237>,  <37.770390, 37.965126, 21.647560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286118, 37.801495, 21.214237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300987, 38.197453, 21.159498>,  <37.309910, 38.435028, 21.126656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300987, 38.197453, 21.159498>,  <37.286118, 37.801495, 21.214237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300987, 38.197453, 21.159498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389788, -0.111728, -0.914101,
		-0.920154, 0.087326, 0.381695,
		0.037179, 0.989894, -0.136846,
		37.312141, 38.494419, 21.118444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738621, 37.992027, 20.730442>,  <37.286118, 37.801495, 21.214237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738621, 37.992027, 20.730442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962189, 38.319851, 20.679968>,  <37.096329, 38.516544, 20.649683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962189, 38.319851, 20.679968>,  <36.738621, 37.992027, 20.730442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962189, 38.319851, 20.679968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192099, -0.020060, -0.981170,
		-0.806661, 0.572639, 0.146225,
		0.558924, 0.819562, -0.126185,
		37.129868, 38.565720, 20.642113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340820, 38.643681, 20.436741>,  <36.738621, 37.992027, 20.730442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340820, 38.643681, 20.436741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730618, 38.652298, 20.347397>,  <36.964497, 38.657467, 20.293791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730618, 38.652298, 20.347397>,  <36.340820, 38.643681, 20.436741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730618, 38.652298, 20.347397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224397, 0.094557, -0.969899,
		0.000227, 0.995286, 0.096980,
		0.974498, 0.021541, -0.223361,
		37.022968, 38.658760, 20.280388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349880, 39.091415, 19.928909>,  <36.340820, 38.643681, 20.436741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349880, 39.091415, 19.928909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723885, 38.954098, 19.893368>,  <36.948288, 38.871708, 19.872044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723885, 38.954098, 19.893368>,  <36.349880, 39.091415, 19.928909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723885, 38.954098, 19.893368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004925, 0.263113, -0.964753,
		0.354573, 0.901621, 0.247705,
		0.935016, -0.343295, -0.088852,
		37.004391, 38.851109, 19.866713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677639, 39.589203, 19.566343>,  <36.349880, 39.091415, 19.928909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677639, 39.589203, 19.566343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894936, 39.256096, 19.523645>,  <37.025314, 39.056232, 19.498028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894936, 39.256096, 19.523645>,  <36.677639, 39.589203, 19.566343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894936, 39.256096, 19.523645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099839, 0.190313, -0.976634,
		0.833620, 0.519889, 0.186528,
		0.543240, -0.832764, -0.106743,
		37.057907, 39.006268, 19.491623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223484, 39.834492, 19.217400>,  <36.677639, 39.589203, 19.566343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223484, 39.834492, 19.217400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256161, 39.439053, 19.166800>,  <37.275768, 39.201790, 19.136440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256161, 39.439053, 19.166800>,  <37.223484, 39.834492, 19.217400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256161, 39.439053, 19.166800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170761, 0.138932, -0.975468,
		0.981920, 0.058090, 0.180164,
		0.081695, -0.988597, -0.126501,
		37.280670, 39.142475, 19.128849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927456, 39.605801, 18.922819>,  <37.223484, 39.834492, 19.217400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927456, 39.605801, 18.922819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.666344, 39.316784, 18.831768>,  <37.509678, 39.143375, 18.777138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.666344, 39.316784, 18.831768>,  <37.927456, 39.605801, 18.922819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666344, 39.316784, 18.831768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167192, 0.155661, -0.973559,
		0.738871, -0.673574, 0.019192,
		-0.652776, -0.722543, -0.227630,
		37.470512, 39.100021, 18.763479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304020, 39.121944, 18.498291>,  <37.927456, 39.605801, 18.922819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304020, 39.121944, 18.498291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.915878, 39.059418, 18.424551>,  <37.682995, 39.021900, 18.380306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.915878, 39.059418, 18.424551>,  <38.304020, 39.121944, 18.498291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915878, 39.059418, 18.424551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191395, -0.031151, -0.981019,
		0.147611, -0.987215, 0.060146,
		-0.970350, -0.156321, -0.184350,
		37.624775, 39.012524, 18.369246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377579, 38.770061, 17.820467>,  <38.304020, 39.121944, 18.498291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377579, 38.770061, 17.820467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.984177, 38.829231, 17.862120>,  <37.748135, 38.864735, 17.887112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.984177, 38.829231, 17.862120>,  <38.377579, 38.770061, 17.820467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984177, 38.829231, 17.862120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075092, 0.189853, -0.978937,
		-0.164583, -0.970604, -0.175612,
		-0.983501, 0.147929, 0.104131,
		37.689125, 38.873611, 17.893358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073940, 38.281757, 17.413031>,  <38.377579, 38.770061, 17.820467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073940, 38.281757, 17.413031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830872, 38.595810, 17.460884>,  <37.685032, 38.784241, 17.489595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830872, 38.595810, 17.460884>,  <38.073940, 38.281757, 17.413031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830872, 38.595810, 17.460884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006519, 0.155560, -0.987805,
		-0.794163, -0.599479, -0.099647,
		-0.607669, 0.785127, 0.119632,
		37.648571, 38.831348, 17.496775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737961, 38.216389, 17.059000>,  <38.073940, 38.281757, 17.413031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737961, 38.216389, 17.059000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.096912, 38.045448, 17.015024>,  <39.312283, 37.942883, 16.988640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.096912, 38.045448, 17.015024>,  <38.737961, 38.216389, 17.059000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096912, 38.045448, 17.015024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069003, -0.110174, 0.991514,
		-0.435840, -0.897346, -0.069379,
		0.897375, -0.427354, -0.109938,
		39.366123, 37.917244, 16.982042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766796, 37.532757, 17.455290>,  <38.737961, 38.216389, 17.059000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766796, 37.532757, 17.455290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.149147, 37.625557, 17.383204>,  <39.378555, 37.681236, 17.339951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.149147, 37.625557, 17.383204>,  <38.766796, 37.532757, 17.455290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149147, 37.625557, 17.383204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233823, -0.229457, 0.944815,
		0.177846, -0.945264, -0.273580,
		0.955875, 0.232001, -0.180217,
		39.435909, 37.695156, 17.329138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197098, 36.986782, 17.732271>,  <38.766796, 37.532757, 17.455290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197098, 36.986782, 17.732271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401279, 37.330742, 17.732620>,  <39.523788, 37.537117, 17.732830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401279, 37.330742, 17.732620>,  <39.197098, 36.986782, 17.732271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401279, 37.330742, 17.732620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107072, -0.064565, 0.992153,
		0.853213, -0.506356, -0.125029,
		0.510455, 0.859904, 0.000871,
		39.554417, 37.588715, 17.732882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493725, 36.921082, 18.366495>,  <39.197098, 36.986782, 17.732271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493725, 36.921082, 18.366495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575390, 37.298401, 18.261803>,  <39.624390, 37.524792, 18.198986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575390, 37.298401, 18.261803>,  <39.493725, 36.921082, 18.366495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575390, 37.298401, 18.261803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229051, 0.213912, 0.949620,
		0.951763, -0.253828, -0.172391,
		0.204164, 0.943299, -0.261733,
		39.636639, 37.581390, 18.183283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277603, 36.955616, 18.551743>,  <39.493725, 36.921082, 18.366495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277603, 36.955616, 18.551743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.093430, 37.310390, 18.537031>,  <39.982925, 37.523254, 18.528204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.093430, 37.310390, 18.537031>,  <40.277603, 36.955616, 18.551743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.093430, 37.310390, 18.537031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171075, 0.129311, 0.976735,
		0.871054, 0.443430, -0.211271,
		-0.460433, 0.886932, -0.036777,
		39.955299, 37.576469, 18.525997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675941, 37.473427, 18.774338>,  <40.277603, 36.955616, 18.551743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675941, 37.473427, 18.774338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.309772, 37.624367, 18.830347>,  <40.090069, 37.714931, 18.863953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.309772, 37.624367, 18.830347>,  <40.675941, 37.473427, 18.774338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309772, 37.624367, 18.830347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223881, 0.188277, 0.956258,
		0.334477, 0.906731, -0.256834,
		-0.915425, 0.377347, 0.140025,
		40.035145, 37.737572, 18.872355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731514, 38.136600, 19.219421>,  <40.675941, 37.473427, 18.774338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.731514, 38.136600, 19.219421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.353222, 38.015190, 19.265841>,  <40.126247, 37.942345, 19.293692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.353222, 38.015190, 19.265841>,  <40.731514, 38.136600, 19.219421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353222, 38.015190, 19.265841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104123, 0.055234, 0.993029,
		-0.307817, 0.951222, -0.020633,
		-0.945731, -0.303523, 0.116046,
		40.069504, 37.924133, 19.300653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535435, 38.582771, 19.726419>,  <40.731514, 38.136600, 19.219421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.535435, 38.582771, 19.726419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269390, 38.284145, 19.733019>,  <40.109764, 38.104969, 19.736979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269390, 38.284145, 19.733019>,  <40.535435, 38.582771, 19.726419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269390, 38.284145, 19.733019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076463, 0.090066, 0.992996,
		-0.742818, 0.659193, -0.116989,
		-0.665113, -0.746560, 0.016498,
		40.069855, 38.060177, 19.737968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092068, 38.732174, 20.298454>,  <40.535435, 38.582771, 19.726419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.092068, 38.732174, 20.298454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.983120, 38.352806, 20.233568>,  <39.917751, 38.125187, 20.194637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.983120, 38.352806, 20.233568>,  <40.092068, 38.732174, 20.298454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983120, 38.352806, 20.233568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140164, -0.127683, 0.981861,
		-0.951930, 0.290163, -0.098158,
		-0.272367, -0.948421, -0.162216,
		39.901409, 38.068279, 20.184904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349342, 38.590954, 20.632816>,  <40.092068, 38.732174, 20.298454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349342, 38.590954, 20.632816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.579655, 38.266933, 20.588463>,  <39.717842, 38.072521, 20.561850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.579655, 38.266933, 20.588463>,  <39.349342, 38.590954, 20.632816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579655, 38.266933, 20.588463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175823, -0.255124, 0.950788,
		-0.798477, -0.527947, -0.289321,
		0.575779, -0.810051, -0.110886,
		39.752388, 38.023918, 20.555197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972027, 38.177109, 21.051104>,  <39.349342, 38.590954, 20.632816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972027, 38.177109, 21.051104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321980, 37.992764, 20.991520>,  <39.531952, 37.882156, 20.955770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321980, 37.992764, 20.991520>,  <38.972027, 38.177109, 21.051104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321980, 37.992764, 20.991520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049570, -0.391130, 0.919000,
		-0.481801, -0.796628, -0.365036,
		0.874878, -0.460870, -0.148958,
		39.584442, 37.854504, 20.946833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921284, 37.522316, 21.297020>,  <38.972027, 38.177109, 21.051104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921284, 37.522316, 21.297020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316437, 37.581059, 21.317081>,  <39.553528, 37.616302, 21.329119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316437, 37.581059, 21.317081>,  <38.921284, 37.522316, 21.297020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316437, 37.581059, 21.317081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014474, -0.408975, 0.912431,
		0.154504, -0.900652, -0.406146,
		0.987886, 0.146853, 0.050152,
		39.612804, 37.625114, 21.332127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165527, 36.944092, 21.647856>,  <38.921284, 37.522316, 21.297020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165527, 36.944092, 21.647856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.465137, 37.206493, 21.684986>,  <39.644905, 37.363934, 21.707264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.465137, 37.206493, 21.684986>,  <39.165527, 36.944092, 21.647856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465137, 37.206493, 21.684986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077295, -0.225674, 0.971132,
		0.658012, -0.720232, -0.219742,
		0.749030, 0.656001, 0.092827,
		39.689846, 37.403294, 21.712833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623489, 36.604179, 22.041521>,  <39.165527, 36.944092, 21.647856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623489, 36.604179, 22.041521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731560, 36.988056, 22.072481>,  <39.796402, 37.218384, 22.091057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731560, 36.988056, 22.072481>,  <39.623489, 36.604179, 22.041521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731560, 36.988056, 22.072481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066402, -0.098771, 0.992892,
		0.960519, -0.263113, -0.090411,
		0.270173, 0.959696, 0.077401,
		39.812611, 37.275967, 22.095701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186504, 36.621647, 22.431690>,  <39.623489, 36.604179, 22.041521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186504, 36.621647, 22.431690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002106, 36.973213, 22.480665>,  <39.891464, 37.184151, 22.510050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002106, 36.973213, 22.480665>,  <40.186504, 36.621647, 22.431690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002106, 36.973213, 22.480665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038031, -0.157414, 0.986800,
		0.886585, 0.450257, 0.105994,
		-0.460999, 0.878914, 0.122437,
		39.863808, 37.236889, 22.517397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448982, 36.915707, 23.123159>,  <40.186504, 36.621647, 22.431690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.448982, 36.915707, 23.123159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.142220, 37.165394, 23.063538>,  <39.958164, 37.315205, 23.027763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.142220, 37.165394, 23.063538>,  <40.448982, 36.915707, 23.123159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142220, 37.165394, 23.063538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179836, 0.013929, 0.983598,
		0.616052, 0.781129, 0.101574,
		-0.766903, 0.624214, -0.149056,
		39.912148, 37.352657, 23.018822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523151, 37.484989, 23.589201>,  <40.448982, 36.915707, 23.123159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523151, 37.484989, 23.589201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140381, 37.449581, 23.478598>,  <39.910717, 37.428337, 23.412235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140381, 37.449581, 23.478598>,  <40.523151, 37.484989, 23.589201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140381, 37.449581, 23.478598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290096, 0.252958, 0.922961,
		-0.011757, 0.963419, -0.267741,
		-0.956925, -0.088522, -0.276510,
		39.853302, 37.423023, 23.395645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207588, 37.939140, 23.949732>,  <40.523151, 37.484989, 23.589201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207588, 37.939140, 23.949732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900253, 37.702412, 23.852238>,  <39.715855, 37.560375, 23.793741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900253, 37.702412, 23.852238>,  <40.207588, 37.939140, 23.949732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900253, 37.702412, 23.852238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363038, 0.089343, 0.927481,
		-0.527131, 0.801099, -0.283501,
		-0.768333, -0.591826, -0.243734,
		39.669754, 37.524864, 23.779118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788506, 38.152744, 24.480423>,  <40.207588, 37.939140, 23.949732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788506, 38.152744, 24.480423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623177, 37.805973, 24.368996>,  <39.523979, 37.597912, 24.302139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623177, 37.805973, 24.368996>,  <39.788506, 38.152744, 24.480423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623177, 37.805973, 24.368996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322230, -0.146876, 0.935198,
		-0.851664, 0.476303, -0.218642,
		-0.413324, -0.866927, -0.278568,
		39.499180, 37.545895, 24.285425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089333, 38.198895, 24.625483>,  <39.788506, 38.152744, 24.480423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089333, 38.198895, 24.625483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139984, 37.802197, 24.617485>,  <39.170376, 37.564178, 24.612686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139984, 37.802197, 24.617485>,  <39.089333, 38.198895, 24.625483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139984, 37.802197, 24.617485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343618, -0.062761, 0.937010,
		-0.930534, -0.111780, -0.348730,
		0.126626, -0.991749, -0.019992,
		39.177971, 37.504673, 24.611488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556015, 37.997730, 25.089558>,  <39.089333, 38.198895, 24.625483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556015, 37.997730, 25.089558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.824203, 37.706505, 25.032442>,  <38.985119, 37.531769, 24.998173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.824203, 37.706505, 25.032442>,  <38.556015, 37.997730, 25.089558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824203, 37.706505, 25.032442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021429, -0.211381, 0.977169,
		-0.741624, -0.652106, -0.157328,
		0.670474, -0.728063, -0.142791,
		39.025345, 37.488087, 24.989605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238270, 37.429142, 25.436737>,  <38.556015, 37.997730, 25.089558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238270, 37.429142, 25.436737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.627098, 37.340202, 25.406681>,  <38.860394, 37.286839, 25.388647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.627098, 37.340202, 25.406681>,  <38.238270, 37.429142, 25.436737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627098, 37.340202, 25.406681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019971, -0.240620, 0.970414,
		-0.233805, -0.944819, -0.229461,
		0.972078, -0.222305, -0.075127,
		38.918716, 37.273499, 25.384140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335220, 36.844700, 25.747936>,  <38.238270, 37.429142, 25.436737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335220, 36.844700, 25.747936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.693523, 37.021530, 25.766655>,  <38.908504, 37.127628, 25.777887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.693523, 37.021530, 25.766655>,  <38.335220, 36.844700, 25.747936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693523, 37.021530, 25.766655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153554, -0.406483, 0.900662,
		0.417184, -0.799588, -0.431992,
		0.895756, 0.442075, 0.046799,
		38.962250, 37.154152, 25.780695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810143, 36.433651, 26.201290>,  <38.335220, 36.844700, 25.747936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810143, 36.433651, 26.201290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994282, 36.788658, 26.209137>,  <39.104767, 37.001663, 26.213844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994282, 36.788658, 26.209137>,  <38.810143, 36.433651, 26.201290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994282, 36.788658, 26.209137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229871, -0.140517, 0.963023,
		0.857460, -0.438818, -0.268703,
		0.460349, 0.887521, 0.019616,
		39.132385, 37.054916, 26.215021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302029, 36.316940, 26.711956>,  <38.810143, 36.433651, 26.201290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302029, 36.316940, 26.711956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.290630, 36.714714, 26.671377>,  <39.283791, 36.953377, 26.647030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.290630, 36.714714, 26.671377>,  <39.302029, 36.316940, 26.711956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290630, 36.714714, 26.671377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326506, 0.105184, 0.939324,
		0.944765, -0.006355, -0.327686,
		-0.028498, 0.994433, -0.101449,
		39.282082, 37.013042, 26.640942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817810, 36.512447, 27.120760>,  <39.302029, 36.316940, 26.711956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.817810, 36.512447, 27.120760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604149, 36.849979, 27.100250>,  <39.475952, 37.052498, 27.087944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604149, 36.849979, 27.100250>,  <39.817810, 36.512447, 27.120760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604149, 36.849979, 27.100250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240877, 0.210052, 0.947553,
		0.810348, 0.493784, -0.315459,
		-0.534149, 0.843834, -0.051274,
		39.443905, 37.103130, 27.084867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264309, 37.106743, 27.149548>,  <39.817810, 36.512447, 27.120760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264309, 37.106743, 27.149548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.899872, 37.157406, 27.306452>,  <39.681210, 37.187805, 27.400595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.899872, 37.157406, 27.306452>,  <40.264309, 37.106743, 27.149548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899872, 37.157406, 27.306452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409193, 0.392685, 0.823626,
		-0.049712, 0.910909, -0.409602,
		-0.911093, 0.126662, 0.392259,
		39.626545, 37.195404, 27.424129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332695, 37.819809, 27.440622>,  <40.264309, 37.106743, 27.149548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.332695, 37.819809, 27.440622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004692, 37.679119, 27.621235>,  <39.807892, 37.594707, 27.729603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004692, 37.679119, 27.621235>,  <40.332695, 37.819809, 27.440622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004692, 37.679119, 27.621235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322513, 0.367786, 0.872192,
		-0.472836, 0.860828, -0.188152,
		-0.820007, -0.351722, 0.451531,
		39.758690, 37.573601, 27.756695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226521, 38.301849, 27.856710>,  <40.332695, 37.819809, 27.440622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226521, 38.301849, 27.856710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996006, 38.009304, 28.002588>,  <39.857697, 37.833778, 28.090115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996006, 38.009304, 28.002588>,  <40.226521, 38.301849, 27.856710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996006, 38.009304, 28.002588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317072, 0.211205, 0.924585,
		-0.753233, 0.648460, 0.110181,
		-0.576286, -0.731363, 0.364695,
		39.823120, 37.789894, 28.111998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966663, 38.563469, 28.523308>,  <40.226521, 38.301849, 27.856710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966663, 38.563469, 28.523308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.912876, 38.168949, 28.561512>,  <39.880604, 37.932236, 28.584435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.912876, 38.168949, 28.561512>,  <39.966663, 38.563469, 28.523308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.912876, 38.168949, 28.561512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187132, 0.069376, 0.979882,
		-0.973087, 0.149638, 0.175240,
		-0.134470, -0.986304, 0.095511,
		39.872536, 37.873058, 28.590166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476460, 38.522156, 29.079775>,  <39.966663, 38.563469, 28.523308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476460, 38.522156, 29.079775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.671806, 38.173710, 29.059162>,  <39.789013, 37.964642, 29.046795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.671806, 38.173710, 29.059162>,  <39.476460, 38.522156, 29.079775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.671806, 38.173710, 29.059162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093454, -0.006504, 0.995602,
		-0.867620, -0.491034, 0.078233,
		0.488366, -0.871116, -0.051532,
		39.818317, 37.912376, 29.043703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070480, 38.059349, 29.546984>,  <39.476460, 38.522156, 29.079775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070480, 38.059349, 29.546984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453651, 37.947670, 29.520380>,  <39.683556, 37.880665, 29.504417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453651, 37.947670, 29.520380>,  <39.070480, 38.059349, 29.546984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453651, 37.947670, 29.520380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053285, -0.054696, 0.997080,
		-0.282018, -0.958675, -0.037518,
		0.957928, -0.279195, -0.066508,
		39.741032, 37.863911, 29.500427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047672, 37.703312, 30.080721>,  <39.070480, 38.059349, 29.546984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047672, 37.703312, 30.080721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.439442, 37.736420, 30.007095>,  <39.674503, 37.756287, 29.962921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.439442, 37.736420, 30.007095>,  <39.047672, 37.703312, 30.080721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439442, 37.736420, 30.007095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195951, -0.171715, 0.965462,
		0.048308, -0.981663, -0.184401,
		0.979423, 0.082773, -0.184063,
		39.733269, 37.761253, 29.951876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303387, 37.178825, 30.386122>,  <39.047672, 37.703312, 30.080721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303387, 37.178825, 30.386122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589779, 37.452385, 30.330030>,  <39.761612, 37.616520, 30.296375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589779, 37.452385, 30.330030>,  <39.303387, 37.178825, 30.386122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589779, 37.452385, 30.330030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349705, -0.177491, 0.919893,
		0.604222, -0.707660, -0.366241,
		0.715976, 0.683896, -0.140229,
		39.804573, 37.657555, 30.287962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887814, 36.915211, 30.721365>,  <39.303387, 37.178825, 30.386122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887814, 36.915211, 30.721365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952065, 37.306244, 30.666916>,  <39.990616, 37.540863, 30.634247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952065, 37.306244, 30.666916>,  <39.887814, 36.915211, 30.721365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952065, 37.306244, 30.666916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351275, 0.072261, 0.933480,
		0.922391, -0.197758, -0.331793,
		0.160627, 0.977584, -0.136121,
		40.000252, 37.599518, 30.626080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441727, 36.955620, 31.103016>,  <39.887814, 36.915211, 30.721365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441727, 36.955620, 31.103016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333855, 37.338406, 31.060150>,  <40.269131, 37.568077, 31.034431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333855, 37.338406, 31.060150>,  <40.441727, 36.955620, 31.103016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333855, 37.338406, 31.060150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412598, 0.215387, 0.885083,
		0.870078, 0.194472, -0.452929,
		-0.269679, 0.956969, -0.107165,
		40.252953, 37.625496, 31.028000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.020332, 37.371166, 31.362925>,  <40.441727, 36.955620, 31.103016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.020332, 37.371166, 31.362925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703518, 37.615334, 31.366106>,  <40.513428, 37.761833, 31.368015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703518, 37.615334, 31.366106>,  <41.020332, 37.371166, 31.362925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703518, 37.615334, 31.366106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268516, 0.336645, 0.902535,
		0.548248, 0.716977, -0.430544,
		-0.792037, 0.610421, 0.007955,
		40.465908, 37.798458, 31.368492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293678, 37.992641, 31.719791>,  <41.020332, 37.371166, 31.362925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293678, 37.992641, 31.719791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900410, 38.065468, 31.725796>,  <40.664448, 38.109165, 31.729399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900410, 38.065468, 31.725796>,  <41.293678, 37.992641, 31.719791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900410, 38.065468, 31.725796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110979, 0.529996, 0.840707,
		0.145108, 0.828225, -0.541282,
		-0.983172, 0.182065, 0.015009,
		40.605457, 38.120087, 31.730299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.280338, 38.633129, 32.024876>,  <41.293678, 37.992641, 31.719791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.280338, 38.633129, 32.024876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.911633, 38.486801, 32.076283>,  <40.690407, 38.399006, 32.107128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.911633, 38.486801, 32.076283>,  <41.280338, 38.633129, 32.024876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911633, 38.486801, 32.076283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065792, 0.474220, 0.877944,
		-0.382117, 0.800806, -0.461189,
		-0.921769, -0.365820, 0.128521,
		40.635101, 38.377056, 32.114838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818748, 39.172195, 32.259155>,  <41.280338, 38.633129, 32.024876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.818748, 39.172195, 32.259155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.672619, 38.821800, 32.385128>,  <40.584942, 38.611561, 32.460712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.672619, 38.821800, 32.385128>,  <40.818748, 39.172195, 32.259155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.672619, 38.821800, 32.385128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024034, 0.347076, 0.937529,
		-0.930571, 0.334931, -0.147847,
		-0.365322, -0.875991, 0.314929,
		40.563023, 38.559002, 32.479607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084942, 39.265697, 32.671295>,  <40.818748, 39.172195, 32.259155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084942, 39.265697, 32.671295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302345, 38.950970, 32.788261>,  <40.432789, 38.762135, 32.858440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302345, 38.950970, 32.788261>,  <40.084942, 39.265697, 32.671295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302345, 38.950970, 32.788261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084724, 0.295160, 0.951684,
		-0.835114, -0.542027, 0.093760,
		0.543513, -0.786821, 0.292415,
		40.465401, 38.714924, 32.875984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775196, 38.957436, 33.255215>,  <40.084942, 39.265697, 32.671295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775196, 38.957436, 33.255215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.158039, 38.842281, 33.268303>,  <40.387745, 38.773190, 33.276154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.158039, 38.842281, 33.268303>,  <39.775196, 38.957436, 33.255215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158039, 38.842281, 33.268303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059012, 0.304247, 0.950764,
		-0.283666, -0.908051, 0.308185,
		0.957106, -0.287885, 0.032719,
		40.445171, 38.755917, 33.278118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837761, 38.423332, 33.822548>,  <39.775196, 38.957436, 33.255215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837761, 38.423332, 33.822548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.197323, 38.589611, 33.767178>,  <40.413059, 38.689377, 33.733955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.197323, 38.589611, 33.767178>,  <39.837761, 38.423332, 33.822548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.197323, 38.589611, 33.767178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043948, 0.228806, 0.972479,
		0.435932, -0.880251, 0.187406,
		0.898906, 0.415699, -0.138429,
		40.466995, 38.714321, 33.725651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185310, 37.969776, 34.231430>,  <39.837761, 38.423332, 33.822548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185310, 37.969776, 34.231430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399651, 38.300339, 34.162243>,  <40.528255, 38.498676, 34.120731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399651, 38.300339, 34.162243>,  <40.185310, 37.969776, 34.231430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399651, 38.300339, 34.162243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330947, -0.017113, 0.943494,
		0.776751, -0.562812, -0.282668,
		0.535847, 0.826408, -0.172968,
		40.560406, 38.548260, 34.110352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592278, 37.937313, 34.900845>,  <40.185310, 37.969776, 34.231430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592278, 37.937313, 34.900845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.679821, 38.288639, 34.730824>,  <40.732346, 38.499435, 34.628811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.679821, 38.288639, 34.730824>,  <40.592278, 37.937313, 34.900845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.679821, 38.288639, 34.730824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182984, 0.390940, 0.902044,
		0.958446, -0.275197, -0.075157,
		0.218858, 0.878312, -0.425051,
		40.745480, 38.552132, 34.603310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.342674, 38.104965, 35.004379>,  <40.592278, 37.937313, 34.900845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.342674, 38.104965, 35.004379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.145123, 38.449299, 34.955303>,  <41.026592, 38.655899, 34.925858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.145123, 38.449299, 34.955303>,  <41.342674, 38.104965, 35.004379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145123, 38.449299, 34.955303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220394, 0.260416, 0.940005,
		0.841137, 0.437208, -0.318336,
		-0.493878, 0.860833, -0.122687,
		40.996960, 38.707550, 34.918495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.770660, 38.704903, 35.112972>,  <41.342674, 38.104965, 35.004379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.770660, 38.704903, 35.112972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.392719, 38.807644, 35.194244>,  <41.165955, 38.869289, 35.243008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.392719, 38.807644, 35.194244>,  <41.770660, 38.704903, 35.112972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.392719, 38.807644, 35.194244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287947, 0.355983, 0.889023,
		0.156024, 0.898499, -0.410313,
		-0.944851, 0.256858, 0.203178,
		41.109264, 38.884701, 35.255199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.770470, 39.283634, 35.577393>,  <41.770660, 38.704903, 35.112972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.770470, 39.283634, 35.577393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.388428, 39.174892, 35.624489>,  <41.159203, 39.109646, 35.652748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.388428, 39.174892, 35.624489>,  <41.770470, 39.283634, 35.577393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.388428, 39.174892, 35.624489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037922, 0.281984, 0.958669,
		-0.293823, 0.920097, -0.259016,
		-0.955107, -0.271857, 0.117745,
		41.101894, 39.093334, 35.659813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.375282, 39.908218, 35.907375>,  <41.770470, 39.283634, 35.577393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.375282, 39.908218, 35.907375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.184677, 39.560818, 35.961994>,  <41.070312, 39.352379, 35.994766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.184677, 39.560818, 35.961994>,  <41.375282, 39.908218, 35.907375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.184677, 39.560818, 35.961994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161833, 0.239311, 0.957361,
		-0.864143, 0.434099, -0.254587,
		-0.476515, -0.868497, 0.136548,
		41.041721, 39.300270, 36.002960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865566, 40.118694, 36.262787>,  <41.375282, 39.908218, 35.907375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865566, 40.118694, 36.262787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.810783, 39.727436, 36.325363>,  <40.777916, 39.492680, 36.362907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.810783, 39.727436, 36.325363>,  <40.865566, 40.118694, 36.262787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.810783, 39.727436, 36.325363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272554, 0.189042, 0.943386,
		-0.952343, 0.086561, -0.292488,
		-0.136953, -0.978146, 0.156440,
		40.769699, 39.433990, 36.372295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182125, 39.915379, 36.558865>,  <40.865566, 40.118694, 36.262787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.182125, 39.915379, 36.558865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462250, 39.655560, 36.677296>,  <40.630325, 39.499668, 36.748352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462250, 39.655560, 36.677296>,  <40.182125, 39.915379, 36.558865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462250, 39.655560, 36.677296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157342, 0.264107, 0.951573,
		-0.696283, -0.712981, 0.082756,
		0.700310, -0.649543, 0.296075,
		40.672344, 39.460697, 36.766117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864235, 39.456825, 37.012249>,  <40.182125, 39.915379, 36.558865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864235, 39.456825, 37.012249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.257694, 39.478226, 37.081028>,  <40.493771, 39.491066, 37.122295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.257694, 39.478226, 37.081028>,  <39.864235, 39.456825, 37.012249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.257694, 39.478226, 37.081028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179081, 0.391050, 0.902779,
		-0.018939, -0.918813, 0.394238,
		0.983652, 0.053503, 0.171948,
		40.552792, 39.494278, 37.132614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907635, 39.263088, 37.704922>,  <39.864235, 39.456825, 37.012249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907635, 39.263088, 37.704922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.247307, 39.461884, 37.633480>,  <40.451111, 39.581161, 37.590614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.247307, 39.461884, 37.633480>,  <39.907635, 39.263088, 37.704922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247307, 39.461884, 37.633480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038558, 0.395646, 0.917593,
		0.526698, -0.772313, 0.355137,
		0.849178, 0.496987, -0.178607,
		40.502060, 39.610981, 37.579899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416862, 39.189796, 38.280025>,  <39.907635, 39.263088, 37.704922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.416862, 39.189796, 38.280025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.461426, 39.531807, 38.077435>,  <40.488163, 39.737015, 37.955879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.461426, 39.531807, 38.077435>,  <40.416862, 39.189796, 38.280025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461426, 39.531807, 38.077435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114483, 0.517297, 0.848114,
		0.987158, -0.036505, 0.155518,
		0.111410, 0.855027, -0.506475,
		40.494850, 39.788315, 37.925491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636898, 39.540367, 38.849186>,  <40.416862, 39.189796, 38.280025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636898, 39.540367, 38.849186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.518532, 39.808617, 38.577095>,  <40.447514, 39.969566, 38.413841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.518532, 39.808617, 38.577095>,  <40.636898, 39.540367, 38.849186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.518532, 39.808617, 38.577095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169996, 0.663776, 0.728356,
		0.939966, 0.331166, -0.082417,
		-0.295913, 0.670620, -0.680224,
		40.429756, 40.009804, 38.373028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.902508, 40.069122, 39.108536>,  <40.636898, 39.540367, 38.849186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.902508, 40.069122, 39.108536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.612923, 40.177998, 38.854988>,  <40.439171, 40.243324, 38.702858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.612923, 40.177998, 38.854988>,  <40.902508, 40.069122, 39.108536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.612923, 40.177998, 38.854988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385305, 0.602629, 0.698841,
		0.572209, 0.750166, -0.331402,
		-0.723959, 0.272192, -0.633873,
		40.395737, 40.259655, 38.664825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.958862, 40.793087, 39.164501>,  <40.902508, 40.069122, 39.108536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.958862, 40.793087, 39.164501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.588524, 40.711765, 39.037086>,  <40.366322, 40.662971, 38.960636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.588524, 40.711765, 39.037086>,  <40.958862, 40.793087, 39.164501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.588524, 40.711765, 39.037086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371153, 0.647694, 0.665386,
		0.071040, 0.734275, -0.675125,
		-0.925850, -0.203306, -0.318540,
		40.310768, 40.650772, 38.941525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591545, 41.482147, 39.085144>,  <40.958862, 40.793087, 39.164501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591545, 41.482147, 39.085144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.292656, 41.219189, 39.124107>,  <40.113323, 41.061413, 39.147484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.292656, 41.219189, 39.124107>,  <40.591545, 41.482147, 39.085144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.292656, 41.219189, 39.124107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473927, 0.629865, 0.615356,
		-0.465888, 0.413643, -0.782207,
		-0.747223, -0.657396, 0.097410,
		40.068489, 41.021969, 39.153332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008972, 41.893688, 38.969955>,  <40.591545, 41.482147, 39.085144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008972, 41.893688, 38.969955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.906139, 41.563763, 39.171387>,  <39.844440, 41.365807, 39.292248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.906139, 41.563763, 39.171387>,  <40.008972, 41.893688, 38.969955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906139, 41.563763, 39.171387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584765, 0.547638, 0.598450,
		-0.769389, -0.140627, -0.623109,
		-0.257080, -0.824813, 0.503580,
		39.829014, 41.316319, 39.322460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186241, 41.793362, 39.042187>,  <40.008972, 41.893688, 38.969955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186241, 41.793362, 39.042187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.379868, 41.601124, 39.334682>,  <39.496044, 41.485783, 39.510181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.379868, 41.601124, 39.334682>,  <39.186241, 41.793362, 39.042187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379868, 41.601124, 39.334682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502459, 0.531502, 0.681939,
		-0.716391, -0.697520, 0.015802,
		0.484065, -0.480595, 0.731238,
		39.525085, 41.456944, 39.554054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649925, 41.655445, 39.624336>,  <39.186241, 41.793362, 39.042187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649925, 41.655445, 39.624336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020130, 41.650753, 39.775753>,  <39.242252, 41.647938, 39.866604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020130, 41.650753, 39.775753>,  <38.649925, 41.655445, 39.624336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020130, 41.650753, 39.775753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334367, 0.444065, 0.831267,
		-0.177844, -0.895918, 0.407066,
		0.925511, -0.011727, 0.378539,
		39.297783, 41.647236, 39.889317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108334, 41.341446, 39.964504>,  <38.649925, 41.655445, 39.624336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108334, 41.341446, 39.964504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445793, 41.141289, 39.886673>,  <38.648270, 41.021194, 39.839973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445793, 41.141289, 39.886673>,  <38.108334, 41.341446, 39.964504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445793, 41.141289, 39.886673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530586, 0.721686, 0.444576,
		-0.082040, -0.478306, 0.874353,
		0.843651, -0.500393, -0.194576,
		38.698887, 40.991173, 39.828300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264721, 41.093872, 40.586857>,  <38.108334, 41.341446, 39.964504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264721, 41.093872, 40.586857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592285, 41.112206, 40.358021>,  <38.788822, 41.123207, 40.220718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592285, 41.112206, 40.358021>,  <38.264721, 41.093872, 40.586857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592285, 41.112206, 40.358021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460598, 0.542211, 0.702749,
		0.342405, -0.838991, 0.422910,
		0.818907, 0.045834, -0.572093,
		38.837955, 41.125957, 40.186394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877327, 40.934563, 41.024731>,  <38.264721, 41.093872, 40.586857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877327, 40.934563, 41.024731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946907, 41.196541, 40.730579>,  <38.988655, 41.353729, 40.554089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946907, 41.196541, 40.730579>,  <38.877327, 40.934563, 41.024731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946907, 41.196541, 40.730579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679073, 0.461031, 0.571236,
		0.713163, -0.598743, -0.364562,
		0.173949, 0.654948, -0.735380,
		38.999092, 41.393024, 40.509964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571903, 40.871147, 40.839466>,  <38.877327, 40.934563, 41.024731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571903, 40.871147, 40.839466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.468964, 41.253227, 40.781013>,  <39.407200, 41.482475, 40.745941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.468964, 41.253227, 40.781013>,  <39.571903, 40.871147, 40.839466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468964, 41.253227, 40.781013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680720, 0.286542, 0.674176,
		0.685850, 0.074024, -0.723969,
		-0.257353, 0.955204, -0.146136,
		39.391758, 41.539787, 40.737171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864620, 40.488754, 40.238255>,  <39.571903, 40.871147, 40.839466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864620, 40.488754, 40.238255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644539, 40.760990, 40.044727>,  <39.512489, 40.924332, 39.928612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644539, 40.760990, 40.044727>,  <39.864620, 40.488754, 40.238255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644539, 40.760990, 40.044727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295148, -0.383492, -0.875112,
		-0.781132, -0.624284, 0.010123,
		-0.550201, 0.680590, -0.483814,
		39.479477, 40.965168, 39.899582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340260, 40.180412, 39.839348>,  <39.864620, 40.488754, 40.238255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340260, 40.180412, 39.839348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487808, 40.521061, 39.690388>,  <39.576336, 40.725449, 39.601009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487808, 40.521061, 39.690388>,  <39.340260, 40.180412, 39.839348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487808, 40.521061, 39.690388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324298, -0.493397, -0.807088,
		-0.871072, 0.176942, -0.458177,
		0.368870, 0.851617, -0.372402,
		39.598469, 40.776546, 39.578667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146137, 40.083618, 39.248978>,  <39.340260, 40.180412, 39.839348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146137, 40.083618, 39.248978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417404, 40.372883, 39.196613>,  <39.580162, 40.546440, 39.165195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417404, 40.372883, 39.196613>,  <39.146137, 40.083618, 39.248978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417404, 40.372883, 39.196613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402334, -0.514396, -0.757314,
		-0.614998, 0.460912, -0.639795,
		0.678163, 0.723158, -0.130912,
		39.620853, 40.589828, 39.157341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072891, 40.444561, 38.567360>,  <39.146137, 40.083618, 39.248978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072891, 40.444561, 38.567360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457424, 40.505920, 38.658844>,  <39.688145, 40.542736, 38.713734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457424, 40.505920, 38.658844>,  <39.072891, 40.444561, 38.567360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457424, 40.505920, 38.658844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275242, -0.507831, -0.816303,
		-0.009075, 0.847689, -0.530416,
		0.961332, 0.153401, 0.228711,
		39.745823, 40.551941, 38.727459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409130, 40.780499, 37.994595>,  <39.072891, 40.444561, 38.567360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409130, 40.780499, 37.994595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726093, 40.638710, 38.193169>,  <39.916271, 40.553635, 38.312313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726093, 40.638710, 38.193169>,  <39.409130, 40.780499, 37.994595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726093, 40.638710, 38.193169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436870, -0.238194, -0.867415,
		0.425722, 0.904219, -0.033887,
		0.792405, -0.354473, 0.496431,
		39.963814, 40.532368, 38.342098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940937, 40.894814, 37.539143>,  <39.409130, 40.780499, 37.994595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940937, 40.894814, 37.539143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082802, 40.627472, 37.800682>,  <40.167919, 40.467068, 37.957607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082802, 40.627472, 37.800682>,  <39.940937, 40.894814, 37.539143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082802, 40.627472, 37.800682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485308, -0.466143, -0.739721,
		0.799182, 0.579668, 0.159035,
		0.354659, -0.668353, 0.653851,
		40.189201, 40.426968, 37.996838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.684879, 40.882854, 37.441036>,  <39.940937, 40.894814, 37.539143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.684879, 40.882854, 37.441036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532524, 40.540619, 37.581261>,  <40.441113, 40.335278, 37.665394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532524, 40.540619, 37.581261>,  <40.684879, 40.882854, 37.441036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532524, 40.540619, 37.581261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540836, -0.513671, -0.666062,
		0.749947, -0.064100, 0.658385,
		-0.380887, -0.855589, 0.350559,
		40.418259, 40.283943, 37.686428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953064, 40.280792, 37.578121>,  <40.684879, 40.882854, 37.441036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.953064, 40.280792, 37.578121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.017223, 39.953014, 37.798222>,  <41.055721, 39.756348, 37.930283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.017223, 39.953014, 37.798222>,  <40.953064, 40.280792, 37.578121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.017223, 39.953014, 37.798222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326578, -0.482015, -0.813024,
		0.931460, 0.310111, 0.190297,
		0.160402, -0.819446, 0.550253,
		41.065346, 39.707180, 37.963299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.506397, 39.942757, 37.377033>,  <40.953064, 40.280792, 37.578121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.506397, 39.942757, 37.377033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.235420, 39.696857, 37.538601>,  <41.072834, 39.549316, 37.635544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.235420, 39.696857, 37.538601>,  <41.506397, 39.942757, 37.377033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.235420, 39.696857, 37.538601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030207, -0.525411, -0.850312,
		0.734954, -0.588240, 0.337367,
		-0.677444, -0.614749, 0.403922,
		41.032188, 39.512432, 37.659779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.832371, 39.173855, 37.305916>,  <41.506397, 39.942757, 37.377033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.832371, 39.173855, 37.305916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434341, 39.213490, 37.307098>,  <41.195522, 39.237270, 37.307808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434341, 39.213490, 37.307098>,  <41.832371, 39.173855, 37.305916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434341, 39.213490, 37.307098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044154, -0.416314, -0.908148,
		-0.088750, -0.903806, 0.418638,
		-0.995075, 0.099083, 0.002958,
		41.135818, 39.243214, 37.307987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.480034, 38.569656, 37.126987>,  <41.832371, 39.173855, 37.305916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.480034, 38.569656, 37.126987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.236286, 38.864449, 37.010010>,  <41.090038, 39.041325, 36.939823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.236286, 38.864449, 37.010010>,  <41.480034, 38.569656, 37.126987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.236286, 38.864449, 37.010010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004443, -0.365658, -0.930739,
		-0.792875, -0.568461, 0.219546,
		-0.609368, 0.736984, -0.292447,
		41.053474, 39.085545, 36.922276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974865, 38.199909, 36.603886>,  <41.480034, 38.569656, 37.126987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.974865, 38.199909, 36.603886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946194, 38.596684, 36.562069>,  <40.928989, 38.834747, 36.536980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946194, 38.596684, 36.562069>,  <40.974865, 38.199909, 36.603886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946194, 38.596684, 36.562069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158761, -0.114821, -0.980617,
		-0.984712, -0.053692, 0.165711,
		-0.071678, 0.991934, -0.104542,
		40.924690, 38.894264, 36.530708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330952, 38.284607, 36.174774>,  <40.974865, 38.199909, 36.603886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.330952, 38.284607, 36.174774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.538197, 38.626415, 36.160053>,  <40.662544, 38.831501, 36.151218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.538197, 38.626415, 36.160053>,  <40.330952, 38.284607, 36.174774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538197, 38.626415, 36.160053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272886, 0.124368, -0.953974,
		-0.810614, 0.504308, 0.297623,
		0.518111, 0.854521, -0.036804,
		40.693630, 38.882771, 36.149014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847206, 38.765369, 35.847572>,  <40.330952, 38.284607, 36.174774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.847206, 38.765369, 35.847572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227898, 38.856792, 35.765617>,  <40.456310, 38.911644, 35.716446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227898, 38.856792, 35.765617>,  <39.847206, 38.765369, 35.847572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227898, 38.856792, 35.765617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241465, 0.145379, -0.959458,
		-0.189503, 0.962615, 0.193549,
		0.951726, 0.228555, -0.204888,
		40.513416, 38.925358, 35.704151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868629, 39.339092, 35.307961>,  <39.847206, 38.765369, 35.847572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868629, 39.339092, 35.307961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239670, 39.189884, 35.299854>,  <40.462296, 39.100357, 35.294991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239670, 39.189884, 35.299854>,  <39.868629, 39.339092, 35.307961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239670, 39.189884, 35.299854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028040, 0.123618, -0.991934,
		0.372520, 0.919550, 0.125127,
		0.927600, -0.373024, -0.020266,
		40.517948, 39.077976, 35.293774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232899, 39.717880, 34.691746>,  <39.868629, 39.339092, 35.307961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232899, 39.717880, 34.691746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488857, 39.417953, 34.759056>,  <40.642433, 39.237999, 34.799442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488857, 39.417953, 34.759056>,  <40.232899, 39.717880, 34.691746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.488857, 39.417953, 34.759056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155141, -0.088416, -0.983928,
		0.752641, 0.655715, 0.059750,
		0.639893, -0.749814, 0.168274,
		40.680824, 39.193008, 34.809540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890648, 39.851482, 34.293182>,  <40.232899, 39.717880, 34.691746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.890648, 39.851482, 34.293182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866833, 39.457787, 34.359798>,  <40.852543, 39.221569, 34.399769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866833, 39.457787, 34.359798>,  <40.890648, 39.851482, 34.293182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866833, 39.457787, 34.359798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239449, -0.176048, -0.954815,
		0.969081, -0.016974, 0.246157,
		-0.059542, -0.984235, 0.166540,
		40.848969, 39.162518, 34.409760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.462925, 39.497410, 34.038078>,  <40.890648, 39.851482, 34.293182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.462925, 39.497410, 34.038078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.178429, 39.216255, 34.041763>,  <41.007732, 39.047562, 34.043976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.178429, 39.216255, 34.041763>,  <41.462925, 39.497410, 34.038078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.178429, 39.216255, 34.041763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324845, -0.340274, -0.882434,
		0.623391, -0.624626, 0.470346,
		-0.711238, -0.702891, 0.009217,
		40.965057, 39.005386, 34.044529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.662891, 39.101604, 33.519115>,  <41.462925, 39.497410, 34.038078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.662891, 39.101604, 33.519115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.288860, 38.977634, 33.587914>,  <41.064442, 38.903252, 33.629192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.288860, 38.977634, 33.587914>,  <41.662891, 39.101604, 33.519115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.288860, 38.977634, 33.587914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042666, -0.383285, -0.922644,
		0.351876, -0.870079, 0.345176,
		-0.935074, -0.309929, 0.171992,
		41.008339, 38.884655, 33.639511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.662514, 38.336891, 33.361649>,  <41.662891, 39.101604, 33.519115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.662514, 38.336891, 33.361649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281403, 38.458351, 33.360256>,  <41.052738, 38.531227, 33.359421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281403, 38.458351, 33.360256>,  <41.662514, 38.336891, 33.361649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.281403, 38.458351, 33.360256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186096, -0.592894, -0.783483,
		-0.239971, -0.745836, 0.621404,
		-0.952776, 0.303654, -0.003480,
		40.995571, 38.549446, 33.359211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242500, 37.745693, 33.196095>,  <41.662514, 38.336891, 33.361649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.242500, 37.745693, 33.196095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.015202, 38.060303, 33.099369>,  <40.878822, 38.249069, 33.041332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.015202, 38.060303, 33.099369>,  <41.242500, 37.745693, 33.196095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015202, 38.060303, 33.099369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450174, -0.543153, -0.708751,
		-0.688792, -0.293888, 0.662718,
		-0.568250, 0.786521, -0.241818,
		40.844727, 38.296261, 33.026825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.986229, 37.681736, 32.949467>,  <41.242500, 37.745693, 33.196095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.986229, 37.681736, 32.949467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.197845, 37.821411, 32.640099>,  <42.324814, 37.905216, 32.454475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.197845, 37.821411, 32.640099>,  <41.986229, 37.681736, 32.949467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.197845, 37.821411, 32.640099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568410, -0.530929, -0.628509,
		-0.630099, 0.772130, -0.082405,
		0.529042, 0.349183, -0.773425,
		42.356560, 37.926167, 32.408070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.387100, 38.212460, 32.852886>,  <41.986229, 37.681736, 32.949467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.387100, 38.212460, 32.852886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.523018, 38.500729, 33.094604>,  <42.604568, 38.673691, 33.239635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.523018, 38.500729, 33.094604>,  <42.387100, 38.212460, 32.852886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.523018, 38.500729, 33.094604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924645, -0.373465, -0.074534,
		0.171970, 0.584088, -0.793264,
		0.339791, 0.720670, 0.604299,
		42.624954, 38.716930, 33.275894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.814541, 38.747372, 32.553661>,  <42.387100, 38.212460, 32.852886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.814541, 38.747372, 32.553661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.929634, 38.622265, 32.915741>,  <42.998692, 38.547199, 33.132988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.929634, 38.622265, 32.915741>,  <42.814541, 38.747372, 32.553661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.929634, 38.622265, 32.915741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734347, -0.534670, -0.418166,
		0.614772, 0.785050, 0.075840,
		0.287732, -0.312769, 0.905199,
		43.015953, 38.528435, 33.187302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.626888, 38.601276, 32.527386>,  <42.814541, 38.747372, 32.553661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.626888, 38.601276, 32.527386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.464100, 38.436306, 32.853397>,  <43.366428, 38.337322, 33.049004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.464100, 38.436306, 32.853397>,  <43.626888, 38.601276, 32.527386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.464100, 38.436306, 32.853397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693298, -0.720417, -0.018366,
		0.594737, 0.557585, 0.579126,
		-0.406971, -0.412430, 0.815031,
		43.342007, 38.312576, 33.097908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.732544, 37.933960, 32.105892>,  <43.626888, 38.601276, 32.527386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.732544, 37.933960, 32.105892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.843021, 37.614502, 31.892017>,  <43.909306, 37.422829, 31.763693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.843021, 37.614502, 31.892017>,  <43.732544, 37.933960, 32.105892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.843021, 37.614502, 31.892017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746502, -0.528665, 0.404039,
		-0.605354, 0.287555, -0.742199,
		0.276191, -0.798640, -0.534689,
		43.925880, 37.374908, 31.731611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.132225, 37.508224, 31.691597>,  <43.732544, 37.933960, 32.105892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.132225, 37.508224, 31.691597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.449501, 37.297367, 31.813560>,  <43.639866, 37.170853, 31.886740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.449501, 37.297367, 31.813560>,  <43.132225, 37.508224, 31.691597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.449501, 37.297367, 31.813560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608250, -0.661405, 0.438834,
		-0.029658, -0.533541, -0.845254,
		0.793191, -0.527141, 0.304910,
		43.687458, 37.139225, 31.905033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.848370, 36.794174, 31.765297>,  <43.132225, 37.508224, 31.691597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.848370, 36.794174, 31.765297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.191864, 36.802387, 31.970102>,  <43.397961, 36.807316, 32.092987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.191864, 36.802387, 31.970102>,  <42.848370, 36.794174, 31.765297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.191864, 36.802387, 31.970102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357564, -0.691712, 0.627441,
		0.367051, -0.721882, -0.586652,
		0.858732, 0.020537, 0.512013,
		43.449482, 36.808548, 32.123707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.255688, 36.066193, 31.817736>,  <42.848370, 36.794174, 31.765297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.255688, 36.066193, 31.817736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.158249, 36.213951, 32.176445>,  <43.099785, 36.302608, 32.391670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.158249, 36.213951, 32.176445>,  <43.255688, 36.066193, 31.817736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.158249, 36.213951, 32.176445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762714, -0.498192, 0.412398,
		0.599105, 0.784442, -0.160386,
		-0.243599, 0.369398, 0.896774,
		43.085171, 36.324772, 32.445477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.940594, 35.989700, 32.207512>,  <43.255688, 36.066193, 31.817736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.940594, 35.989700, 32.207512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.632809, 35.987770, 32.462982>,  <43.448139, 35.986614, 32.616264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.632809, 35.987770, 32.462982>,  <43.940594, 35.989700, 32.207512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.632809, 35.987770, 32.462982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448956, -0.715326, 0.535489,
		0.454279, 0.698775, 0.552580,
		-0.769461, -0.004823, 0.638676,
		43.401970, 35.986324, 32.654587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.178207, 36.021431, 32.860428>,  <43.940594, 35.989700, 32.207512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.178207, 36.021431, 32.860428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.824345, 35.835178, 32.869984>,  <43.612026, 35.723427, 32.875717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.824345, 35.835178, 32.869984>,  <44.178207, 36.021431, 32.860428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.824345, 35.835178, 32.869984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440407, -0.817716, 0.370652,
		-0.153056, 0.338419, 0.928465,
		-0.884656, -0.465632, 0.023886,
		43.558949, 35.695488, 32.877148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.868847, 35.845409, 33.556320>,  <44.178207, 36.021431, 32.860428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.868847, 35.845409, 33.556320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.783272, 35.586697, 33.263500>,  <43.731926, 35.431469, 33.087807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.783272, 35.586697, 33.263500>,  <43.868847, 35.845409, 33.556320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.783272, 35.586697, 33.263500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494073, -0.718124, 0.490092,
		-0.842688, -0.256838, 0.473192,
		-0.213937, -0.646786, -0.732051,
		43.719090, 35.392662, 33.043884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.626526, 35.173061, 33.730000>,  <43.868847, 35.845409, 33.556320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.626526, 35.173061, 33.730000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.789925, 35.091419, 33.374142>,  <43.887962, 35.042435, 33.160625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.789925, 35.091419, 33.374142>,  <43.626526, 35.173061, 33.730000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.789925, 35.091419, 33.374142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512144, -0.755540, 0.408495,
		-0.755540, -0.622496, -0.204104,
		-0.408495, 0.204104, 0.889648,
		43.912472, 35.030190, 33.107246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.230824, 35.291126, 33.907825>,  <43.626526, 35.173061, 33.730000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.230824, 35.291126, 33.907825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.053650, 35.345978, 34.262226>,  <43.947346, 35.378891, 34.474869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.053650, 35.345978, 34.262226>,  <44.230824, 35.291126, 33.907825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.053650, 35.345978, 34.262226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869988, -0.173043, 0.461711,
		0.216632, 0.975321, -0.042656,
		-0.442935, 0.137132, 0.886004,
		43.920769, 35.387115, 34.528027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.561329, 35.720787, 34.363480>,  <44.230824, 35.291126, 33.907825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.561329, 35.720787, 34.363480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.421768, 35.467705, 34.640015>,  <44.338032, 35.315857, 34.805935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.421768, 35.467705, 34.640015>,  <44.561329, 35.720787, 34.363480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.421768, 35.467705, 34.640015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925779, -0.118076, 0.359153,
		-0.145608, 0.765337, 0.626943,
		-0.348900, -0.632707, 0.691340,
		44.317097, 35.277893, 34.847416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.685402, 35.886864, 35.119282>,  <44.561329, 35.720787, 34.363480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.685402, 35.886864, 35.119282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.673252, 35.489857, 35.071968>,  <44.665962, 35.251652, 35.043579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.673252, 35.489857, 35.071968>,  <44.685402, 35.886864, 35.119282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.673252, 35.489857, 35.071968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944993, -0.067077, 0.320139,
		-0.325677, -0.102055, 0.939957,
		-0.030377, -0.992515, -0.118287,
		44.664139, 35.192101, 35.036484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.923618, 35.476562, 35.814442>,  <44.685402, 35.886864, 35.119282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.923618, 35.476562, 35.814442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.993908, 35.314091, 35.455746>,  <45.036079, 35.216606, 35.240528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.993908, 35.314091, 35.455746>,  <44.923618, 35.476562, 35.814442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.993908, 35.314091, 35.455746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969296, -0.087775, 0.229696,
		-0.172010, -0.909566, 0.378289,
		0.175719, -0.406184, -0.896737,
		45.046623, 35.192234, 35.186726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.164822, 34.766552, 35.917973>,  <44.923618, 35.476562, 35.814442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.164822, 34.766552, 35.917973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.288651, 34.911030, 35.566132>,  <45.362949, 34.997719, 35.355026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.288651, 34.911030, 35.566132>,  <45.164822, 34.766552, 35.917973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.288651, 34.911030, 35.566132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945019, -0.219371, 0.242516,
		-0.105363, -0.906318, -0.409251,
		0.309575, 0.361198, -0.879602,
		45.381523, 35.019390, 35.302250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.386864, 34.271748, 35.450069>,  <45.164822, 34.766552, 35.917973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.386864, 34.271748, 35.450069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.569817, 34.627357, 35.441807>,  <45.679588, 34.840725, 35.436848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.569817, 34.627357, 35.441807>,  <45.386864, 34.271748, 35.450069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.569817, 34.627357, 35.441807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825098, -0.415603, 0.382737,
		0.331679, -0.192103, -0.923626,
		0.457386, 0.889028, -0.020657,
		45.707031, 34.894066, 35.435608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.953011, 34.294518, 35.035542>,  <45.386864, 34.271748, 35.450069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.953011, 34.294518, 35.035542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.962276, 34.516048, 35.368465>,  <45.967834, 34.648968, 35.568222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.962276, 34.516048, 35.368465>,  <45.953011, 34.294518, 35.035542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.962276, 34.516048, 35.368465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688686, -0.612331, 0.388281,
		0.724689, 0.564207, -0.395595,
		0.023164, 0.553824, 0.832312,
		45.969227, 34.682194, 35.618160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.675022, 34.563286, 35.155579>,  <45.953011, 34.294518, 35.035542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.675022, 34.563286, 35.155579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.473537, 34.510464, 35.497066>,  <46.352646, 34.478771, 35.701958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.473537, 34.510464, 35.497066>,  <46.675022, 34.563286, 35.155579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.473537, 34.510464, 35.497066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730990, -0.591791, 0.339761,
		0.460354, 0.795201, 0.394626,
		-0.503714, -0.132058, 0.853717,
		46.322422, 34.470848, 35.753181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.360325, 35.007526, 35.202824>,  <46.675022, 34.563286, 35.155579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.360325, 35.007526, 35.202824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.529800, 35.003033, 34.840530>,  <47.631485, 35.000336, 34.623154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.529800, 35.003033, 34.840530>,  <47.360325, 35.007526, 35.202824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.529800, 35.003033, 34.840530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671344, -0.667388, 0.322321,
		-0.608098, -0.744626, -0.275225,
		0.423690, -0.011232, -0.905737,
		47.656906, 34.999664, 34.568810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.384277, 33.976723, 24.421345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.009346, 33.965565, 24.282408>,  <37.784389, 33.958870, 24.199045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.009346, 33.965565, 24.282408>,  <38.384277, 33.976723, 24.421345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009346, 33.965565, 24.282408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347082, -0.013784, 0.937734,
		-0.030944, 0.999516, 0.003239,
		-0.937324, -0.027893, -0.347340,
		37.728149, 33.957195, 24.178205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056179, 34.569389, 24.749323>,  <38.384277, 33.976723, 24.421345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056179, 34.569389, 24.749323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.764881, 34.317692, 24.640718>,  <37.590103, 34.166676, 24.575556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.764881, 34.317692, 24.640718>,  <38.056179, 34.569389, 24.749323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764881, 34.317692, 24.640718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294518, -0.070374, 0.953051,
		-0.618806, 0.774018, -0.134073,
		-0.728243, -0.629241, -0.271509,
		37.546410, 34.128918, 24.559265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467606, 34.857475, 25.030968>,  <38.056179, 34.569389, 24.749323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467606, 34.857475, 25.030968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.363613, 34.476109, 24.969765>,  <37.301220, 34.247288, 24.933043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.363613, 34.476109, 24.969765>,  <37.467606, 34.857475, 25.030968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363613, 34.476109, 24.969765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381705, -0.044080, 0.923232,
		-0.886968, 0.298424, -0.352463,
		-0.259978, -0.953415, -0.153007,
		37.285622, 34.190083, 24.923862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720161, 34.727173, 25.166080>,  <37.467606, 34.857475, 25.030968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720161, 34.727173, 25.166080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.912018, 34.378960, 25.210115>,  <37.027130, 34.170033, 25.236536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.912018, 34.378960, 25.210115>,  <36.720161, 34.727173, 25.166080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912018, 34.378960, 25.210115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445716, -0.133645, 0.885142,
		-0.755832, -0.473618, -0.452111,
		0.479641, -0.870531, 0.110086,
		37.055912, 34.117802, 25.243141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208031, 34.341599, 25.435036>,  <36.720161, 34.727173, 25.166080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208031, 34.341599, 25.435036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.550724, 34.155167, 25.523382>,  <36.756340, 34.043308, 25.576389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.550724, 34.155167, 25.523382>,  <36.208031, 34.341599, 25.435036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550724, 34.155167, 25.523382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316006, -0.135910, 0.938972,
		-0.407620, -0.874240, -0.263723,
		0.856730, -0.466082, 0.220865,
		36.807743, 34.015343, 25.589642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057224, 33.797283, 25.796059>,  <36.208031, 34.341599, 25.435036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057224, 33.797283, 25.796059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.444138, 33.817089, 25.895594>,  <36.676285, 33.828972, 25.955315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.444138, 33.817089, 25.895594>,  <36.057224, 33.797283, 25.796059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444138, 33.817089, 25.895594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241352, -0.122853, 0.962630,
		0.078234, -0.991189, -0.106883,
		0.967279, 0.049514, 0.248836,
		36.734322, 33.831944, 25.970245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130154, 33.333912, 26.281698>,  <36.057224, 33.797283, 25.796059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130154, 33.333912, 26.281698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.475441, 33.526993, 26.340834>,  <36.682613, 33.642841, 26.376316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.475441, 33.526993, 26.340834>,  <36.130154, 33.333912, 26.281698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475441, 33.526993, 26.340834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155823, -0.023788, 0.987498,
		0.480186, -0.875461, 0.054682,
		0.863215, 0.482703, 0.147839,
		36.734406, 33.671803, 26.385185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393600, 33.033562, 26.866398>,  <36.130154, 33.333912, 26.281698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393600, 33.033562, 26.866398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.578590, 33.388126, 26.858572>,  <36.689587, 33.600864, 26.853876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.578590, 33.388126, 26.858572>,  <36.393600, 33.033562, 26.866398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578590, 33.388126, 26.858572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177224, 0.114038, 0.977541,
		0.868739, -0.448623, 0.209834,
		0.462476, 0.886416, -0.019562,
		36.717335, 33.654053, 26.852703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904861, 33.049671, 27.457855>,  <36.393600, 33.033562, 26.866398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904861, 33.049671, 27.457855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.835072, 33.431427, 27.360941>,  <36.793198, 33.660480, 27.302792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.835072, 33.431427, 27.360941>,  <36.904861, 33.049671, 27.457855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835072, 33.431427, 27.360941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031659, 0.251372, 0.967373,
		0.984152, 0.161114, -0.074073,
		-0.174477, 0.954387, -0.242288,
		36.782730, 33.717743, 27.288254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372700, 33.434418, 27.870295>,  <36.904861, 33.049671, 27.457855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372700, 33.434418, 27.870295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.074043, 33.688469, 27.791172>,  <36.894848, 33.840900, 27.743698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.074043, 33.688469, 27.791172>,  <37.372700, 33.434418, 27.870295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074043, 33.688469, 27.791172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086095, 0.387117, 0.918002,
		0.659627, 0.668392, -0.343721,
		-0.746646, 0.635132, -0.197808,
		36.850048, 33.879009, 27.731831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576389, 34.062866, 28.081078>,  <37.372700, 33.434418, 27.870295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576389, 34.062866, 28.081078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.190548, 34.167145, 28.065191>,  <36.959042, 34.229713, 28.055658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.190548, 34.167145, 28.065191>,  <37.576389, 34.062866, 28.081078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190548, 34.167145, 28.065191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122930, 0.577783, 0.806880,
		0.233300, 0.773436, -0.589379,
		-0.964603, 0.260698, -0.039718,
		36.901169, 34.245354, 28.053276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671112, 34.656738, 28.360029>,  <37.576389, 34.062866, 28.081078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671112, 34.656738, 28.360029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.280006, 34.585575, 28.404434>,  <37.045341, 34.542877, 28.431078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.280006, 34.585575, 28.404434>,  <37.671112, 34.656738, 28.360029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280006, 34.585575, 28.404434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036123, 0.378573, 0.924866,
		-0.206571, 0.908311, -0.363729,
		-0.977764, -0.177912, 0.111013,
		36.986675, 34.532200, 28.437738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332882, 35.378826, 28.643202>,  <37.671112, 34.656738, 28.360029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332882, 35.378826, 28.643202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.075924, 35.076111, 28.691530>,  <36.921749, 34.894482, 28.720528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.075924, 35.076111, 28.691530>,  <37.332882, 35.378826, 28.643202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075924, 35.076111, 28.691530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190934, 0.310730, 0.931124,
		-0.742204, 0.575084, -0.344109,
		-0.642400, -0.756786, 0.120822,
		36.883205, 34.849075, 28.727777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624352, 35.638363, 28.706291>,  <37.332882, 35.378826, 28.643202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624352, 35.638363, 28.706291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.683193, 35.284512, 28.883287>,  <36.718498, 35.072201, 28.989485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.683193, 35.284512, 28.883287>,  <36.624352, 35.638363, 28.706291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683193, 35.284512, 28.883287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268714, 0.394793, 0.878596,
		-0.951921, -0.248146, -0.179637,
		0.147101, -0.884626, 0.442492,
		36.727322, 35.019123, 29.016035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985374, 35.410950, 29.119932>,  <36.624352, 35.638363, 28.706291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985374, 35.410950, 29.119932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.260792, 35.174961, 29.288614>,  <36.426044, 35.033367, 29.389824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.260792, 35.174961, 29.288614>,  <35.985374, 35.410950, 29.119932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260792, 35.174961, 29.288614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283613, 0.316122, 0.905335,
		-0.667435, -0.742965, 0.050340,
		0.688545, -0.589975, 0.421705,
		36.467354, 34.997971, 29.415125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714924, 35.172630, 29.705305>,  <35.985374, 35.410950, 29.119932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714924, 35.172630, 29.705305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.099728, 35.116798, 29.799158>,  <36.330612, 35.083302, 29.855471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.099728, 35.116798, 29.799158>,  <35.714924, 35.172630, 29.705305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099728, 35.116798, 29.799158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174612, 0.346099, 0.921806,
		-0.209870, -0.927757, 0.308580,
		0.962011, -0.139578, 0.234633,
		36.388332, 35.074924, 29.869549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692501, 34.909008, 30.360523>,  <35.714924, 35.172630, 29.705305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692501, 34.909008, 30.360523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.087341, 34.958965, 30.320440>,  <36.324245, 34.988937, 30.296391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.087341, 34.958965, 30.320440>,  <35.692501, 34.909008, 30.360523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087341, 34.958965, 30.320440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050764, 0.349440, 0.935583,
		0.151860, -0.928598, 0.338592,
		0.987097, 0.124889, -0.100205,
		36.383469, 34.996433, 30.290379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973743, 34.616314, 30.952913>,  <35.692501, 34.909008, 30.360523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973743, 34.616314, 30.952913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.233860, 34.886326, 30.813513>,  <36.389931, 35.048332, 30.729874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.233860, 34.886326, 30.813513>,  <35.973743, 34.616314, 30.952913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233860, 34.886326, 30.813513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186493, 0.302856, 0.934611,
		0.736436, -0.672765, 0.071057,
		0.650294, 0.675030, -0.348500,
		36.428947, 35.088837, 30.708963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561047, 34.654537, 31.441799>,  <35.973743, 34.616314, 30.952913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561047, 34.654537, 31.441799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.573574, 34.994900, 31.232048>,  <36.581093, 35.199120, 31.106197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.573574, 34.994900, 31.232048>,  <36.561047, 34.654537, 31.441799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573574, 34.994900, 31.232048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300479, 0.492351, 0.816886,
		0.953274, -0.183150, -0.240259,
		0.031321, 0.850909, -0.524378,
		36.582970, 35.250172, 31.074734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213650, 35.079895, 31.704014>,  <36.561047, 34.654537, 31.441799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213650, 35.079895, 31.704014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.932392, 35.318291, 31.548897>,  <36.763638, 35.461327, 31.455826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.932392, 35.318291, 31.548897>,  <37.213650, 35.079895, 31.704014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932392, 35.318291, 31.548897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007747, 0.551774, 0.833958,
		0.711001, 0.583392, -0.392596,
		-0.703149, 0.595986, -0.387792,
		36.721447, 35.497086, 31.432560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418663, 35.750141, 31.701593>,  <37.213650, 35.079895, 31.704014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418663, 35.750141, 31.701593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.019592, 35.777344, 31.703339>,  <36.780151, 35.793667, 31.704386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.019592, 35.777344, 31.703339>,  <37.418663, 35.750141, 31.701593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019592, 35.777344, 31.703339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043870, 0.591910, 0.804809,
		0.052153, 0.803130, -0.593518,
		-0.997675, 0.068010, 0.004364,
		36.720291, 35.797749, 31.704647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924160, 35.775070, 32.216183>,  <37.418663, 35.750141, 31.701593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924160, 35.775070, 32.216183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.232750, 35.953598, 32.397568>,  <38.417904, 36.060715, 32.506397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.232750, 35.953598, 32.397568>,  <37.924160, 35.775070, 32.216183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232750, 35.953598, 32.397568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627595, -0.416571, -0.657718,
		-0.104650, 0.792004, -0.601479,
		0.771475, 0.446315, 0.453463,
		38.464191, 36.087494, 32.533607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185116, 36.197327, 31.725924>,  <37.924160, 35.775070, 32.216183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185116, 36.197327, 31.725924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.469780, 36.145733, 32.002155>,  <38.640579, 36.114777, 32.167896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.469780, 36.145733, 32.002155>,  <38.185116, 36.197327, 31.725924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469780, 36.145733, 32.002155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655196, -0.232832, -0.718685,
		0.253490, 0.963925, -0.081186,
		0.711661, -0.128986, 0.690580,
		38.683277, 36.107037, 32.209328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732601, 36.526127, 31.440847>,  <38.185116, 36.197327, 31.725924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732601, 36.526127, 31.440847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.879837, 36.259487, 31.700125>,  <38.968178, 36.099503, 31.855690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.879837, 36.259487, 31.700125>,  <38.732601, 36.526127, 31.440847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879837, 36.259487, 31.700125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648078, -0.315947, -0.692944,
		0.666713, 0.675143, 0.315715,
		0.368087, -0.666603, 0.648191,
		38.990265, 36.059505, 31.894583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412491, 36.521233, 31.157230>,  <38.732601, 36.526127, 31.440847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412491, 36.521233, 31.157230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.362244, 36.208992, 31.402140>,  <39.332096, 36.021648, 31.549086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.362244, 36.208992, 31.402140>,  <39.412491, 36.521233, 31.157230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362244, 36.208992, 31.402140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389511, -0.606411, -0.693215,
		0.912416, 0.151410, 0.380227,
		-0.125614, -0.780603, 0.612275,
		39.324558, 35.974812, 31.585823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055660, 36.146076, 31.103947>,  <39.412491, 36.521233, 31.157230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055660, 36.146076, 31.103947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.833153, 35.859470, 31.272312>,  <39.699650, 35.687508, 31.373331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.833153, 35.859470, 31.272312>,  <40.055660, 36.146076, 31.103947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.833153, 35.859470, 31.272312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220472, -0.615613, -0.756579,
		0.801222, -0.328061, 0.500418,
		-0.556269, -0.716517, 0.420915,
		39.666271, 35.644516, 31.398586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397125, 35.580784, 31.056873>,  <40.055660, 36.146076, 31.103947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.397125, 35.580784, 31.056873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.030712, 35.432434, 31.117983>,  <39.810863, 35.343422, 31.154648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.030712, 35.432434, 31.117983>,  <40.397125, 35.580784, 31.056873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030712, 35.432434, 31.117983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119451, -0.615825, -0.778775,
		0.382912, -0.695132, 0.608416,
		-0.916029, -0.370878, 0.152773,
		39.755905, 35.321171, 31.163815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407063, 34.866703, 31.217272>,  <40.397125, 35.580784, 31.056873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407063, 34.866703, 31.217272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.058170, 34.976364, 31.055254>,  <39.848835, 35.042160, 30.958044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.058170, 34.976364, 31.055254>,  <40.407063, 34.866703, 31.217272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058170, 34.976364, 31.055254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135835, -0.659777, -0.739082,
		-0.469860, -0.699667, 0.538236,
		-0.872227, 0.274153, -0.405042,
		39.796501, 35.058609, 30.933741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212597, 34.251110, 30.843018>,  <40.407063, 34.866703, 31.217272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212597, 34.251110, 30.843018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.998188, 34.554150, 30.694038>,  <39.869541, 34.735973, 30.604650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.998188, 34.554150, 30.694038>,  <40.212597, 34.251110, 30.843018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.998188, 34.554150, 30.694038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000915, -0.441706, -0.897159,
		-0.844202, -0.480558, 0.237458,
		-0.536023, 0.757601, -0.372450,
		39.837379, 34.781429, 30.582304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737556, 33.925091, 30.437027>,  <40.212597, 34.251110, 30.843018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737556, 33.925091, 30.437027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.784027, 34.300755, 30.307734>,  <39.811909, 34.526154, 30.230158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.784027, 34.300755, 30.307734>,  <39.737556, 33.925091, 30.437027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784027, 34.300755, 30.307734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040008, -0.329597, -0.943274,
		-0.992422, 0.096657, -0.075867,
		0.116179, 0.939161, -0.323232,
		39.818882, 34.582504, 30.210764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252396, 33.947750, 29.944588>,  <39.737556, 33.925091, 30.437027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252396, 33.947750, 29.944588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.488316, 34.262409, 29.871569>,  <39.629868, 34.451202, 29.827757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.488316, 34.262409, 29.871569>,  <39.252396, 33.947750, 29.944588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488316, 34.262409, 29.871569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012629, -0.217038, -0.976082,
		-0.807450, 0.578000, -0.118074,
		0.589802, 0.786645, -0.182547,
		39.665257, 34.498402, 29.816805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911449, 34.334080, 29.286427>,  <39.252396, 33.947750, 29.944588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911449, 34.334080, 29.286427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.291943, 34.456089, 29.304873>,  <39.520237, 34.529293, 29.315941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.291943, 34.456089, 29.304873>,  <38.911449, 34.334080, 29.286427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291943, 34.456089, 29.304873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049116, -0.002172, -0.998791,
		-0.304553, 0.952343, -0.017047,
		0.951228, 0.305022, 0.046114,
		39.577312, 34.547596, 29.318707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976391, 34.702770, 28.741699>,  <38.911449, 34.334080, 29.286427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976391, 34.702770, 28.741699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.369541, 34.674351, 28.809702>,  <39.605431, 34.657299, 28.850504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.369541, 34.674351, 28.809702>,  <38.976391, 34.702770, 28.741699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369541, 34.674351, 28.809702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181027, 0.200446, -0.962835,
		0.034330, 0.977125, 0.209875,
		0.982879, -0.071047, 0.170005,
		39.664406, 34.653038, 28.860703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338791, 35.307034, 28.366306>,  <38.976391, 34.702770, 28.741699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.338791, 35.307034, 28.366306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.617313, 35.027428, 28.431471>,  <39.784428, 34.859665, 28.470570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.617313, 35.027428, 28.431471>,  <39.338791, 35.307034, 28.366306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617313, 35.027428, 28.431471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261661, 0.035862, -0.964494,
		0.668350, 0.714210, 0.207875,
		0.696306, -0.699012, 0.162912,
		39.826206, 34.817722, 28.480345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822128, 35.594276, 27.958647>,  <39.338791, 35.307034, 28.366306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.822128, 35.594276, 27.958647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.908562, 35.212120, 28.039186>,  <39.960423, 34.982826, 28.087509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.908562, 35.212120, 28.039186>,  <39.822128, 35.594276, 27.958647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.908562, 35.212120, 28.039186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267094, -0.140513, -0.953371,
		0.939132, 0.259787, 0.224816,
		0.216084, -0.955388, 0.201347,
		39.973389, 34.925503, 28.099590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407444, 35.506588, 27.710697>,  <39.822128, 35.594276, 27.958647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407444, 35.506588, 27.710697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.234238, 35.146034, 27.710295>,  <40.130314, 34.929703, 27.710052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.234238, 35.146034, 27.710295>,  <40.407444, 35.506588, 27.710697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.234238, 35.146034, 27.710295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191190, -0.090754, -0.977348,
		0.880876, -0.423402, 0.211634,
		-0.433017, -0.901385, -0.001007,
		40.104332, 34.875618, 27.709993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719212, 35.218376, 27.265835>,  <40.407444, 35.506588, 27.710697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.719212, 35.218376, 27.265835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.393776, 34.986782, 27.287191>,  <40.198513, 34.847828, 27.300005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.393776, 34.986782, 27.287191>,  <40.719212, 35.218376, 27.265835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.393776, 34.986782, 27.287191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041239, -0.149052, -0.987969,
		0.579974, -0.801601, 0.145144,
		-0.813591, -0.578981, 0.053389,
		40.149700, 34.813087, 27.303207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.891087, 34.595345, 26.970097>,  <40.719212, 35.218376, 27.265835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.891087, 34.595345, 26.970097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.491089, 34.595757, 26.971628>,  <40.251091, 34.596004, 26.972548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.491089, 34.595757, 26.971628>,  <40.891087, 34.595345, 26.970097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491089, 34.595757, 26.971628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003963, -0.303895, -0.952697,
		0.000185, -0.952705, 0.303897,
		-0.999992, 0.001028, 0.003832,
		40.191090, 34.596066, 26.972778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731541, 34.009987, 26.619501>,  <40.891087, 34.595345, 26.970097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.731541, 34.009987, 26.619501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.392151, 34.216930, 26.574911>,  <40.188515, 34.341095, 26.548157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.392151, 34.216930, 26.574911>,  <40.731541, 34.009987, 26.619501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392151, 34.216930, 26.574911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020020, -0.179112, -0.983625,
		-0.528854, -0.836815, 0.141615,
		-0.848476, 0.517359, -0.111477,
		40.137608, 34.372139, 26.541468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263245, 33.515079, 26.217394>,  <40.731541, 34.009987, 26.619501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263245, 33.515079, 26.217394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.117271, 33.884598, 26.171064>,  <40.029686, 34.106308, 26.143267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.117271, 33.884598, 26.171064>,  <40.263245, 33.515079, 26.217394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117271, 33.884598, 26.171064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110293, -0.166423, -0.979867,
		-0.924477, -0.344814, 0.162623,
		-0.364935, 0.923800, -0.115824,
		40.007790, 34.161739, 26.136316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.497204, 33.496605, 25.685783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.637669, 33.871132, 25.685780>,  <39.721947, 34.095848, 25.685778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.637669, 33.871132, 25.685780>,  <39.497204, 33.496605, 25.685783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637669, 33.871132, 25.685780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146299, 0.054856, -0.987718,
		-0.924815, 0.346849, 0.156246,
		0.351160, 0.936316, -0.000012,
		39.743015, 34.152027, 25.685776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001957, 33.838581, 25.364258>,  <39.497204, 33.496605, 25.685783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001957, 33.838581, 25.364258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.323879, 34.074291, 25.335827>,  <39.517033, 34.215717, 25.318768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.323879, 34.074291, 25.335827>,  <39.001957, 33.838581, 25.364258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323879, 34.074291, 25.335827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171867, 0.116739, -0.978179,
		-0.568115, 0.799457, 0.195228,
		0.804803, 0.589271, -0.071079,
		39.565319, 34.251072, 25.314503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752235, 34.408260, 25.021542>,  <39.001957, 33.838581, 25.364258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752235, 34.408260, 25.021542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.149635, 34.411434, 24.976126>,  <39.388077, 34.413338, 24.948875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.149635, 34.411434, 24.976126>,  <38.752235, 34.408260, 25.021542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149635, 34.411434, 24.976126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113819, 0.067179, -0.991228,
		-0.000238, 0.997709, 0.067645,
		0.993501, 0.007935, -0.113542,
		39.447685, 34.413815, 24.942062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886074, 34.828735, 24.529182>,  <38.752235, 34.408260, 25.021542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886074, 34.828735, 24.529182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.244511, 34.651192, 24.530260>,  <39.459572, 34.544666, 24.530907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.244511, 34.651192, 24.530260>,  <38.886074, 34.828735, 24.529182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244511, 34.651192, 24.530260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043053, 0.080876, -0.995794,
		0.441778, 0.892438, 0.091582,
		0.896091, -0.443863, 0.002693,
		39.513336, 34.518032, 24.531069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258400, 35.269863, 24.112349>,  <38.886074, 34.828735, 24.529182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258400, 35.269863, 24.112349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.409016, 34.899410, 24.121290>,  <39.499386, 34.677139, 24.126656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.409016, 34.899410, 24.121290>,  <39.258400, 35.269863, 24.112349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409016, 34.899410, 24.121290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070056, 0.004405, -0.997533,
		0.923746, 0.377181, 0.066540,
		0.376544, -0.926129, 0.022355,
		39.521980, 34.621571, 24.127996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831730, 35.330933, 23.645222>,  <39.258400, 35.269863, 24.112349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831730, 35.330933, 23.645222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.750778, 34.941284, 23.685499>,  <39.702209, 34.707497, 23.709665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.750778, 34.941284, 23.685499>,  <39.831730, 35.330933, 23.645222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750778, 34.941284, 23.685499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239640, -0.148954, -0.959367,
		0.949535, -0.170022, 0.263582,
		-0.202376, -0.974118, 0.100693,
		39.690067, 34.649048, 23.715708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427395, 34.979004, 23.236246>,  <39.831730, 35.330933, 23.645222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427395, 34.979004, 23.236246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.140625, 34.703335, 23.278313>,  <39.968563, 34.537933, 23.303553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.140625, 34.703335, 23.278313>,  <40.427395, 34.979004, 23.236246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140625, 34.703335, 23.278313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177171, -0.326010, -0.928616,
		0.674267, -0.647111, 0.355825,
		-0.716920, -0.689177, 0.105168,
		39.925549, 34.496582, 23.309864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748013, 34.317448, 22.912624>,  <40.427395, 34.979004, 23.236246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.748013, 34.317448, 22.912624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.358482, 34.227310, 22.924480>,  <40.124763, 34.173225, 22.931595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.358482, 34.227310, 22.924480>,  <40.748013, 34.317448, 22.912624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.358482, 34.227310, 22.924480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041589, -0.304876, -0.951484,
		0.223450, -0.925348, 0.306268,
		-0.973828, -0.225347, 0.029640,
		40.066334, 34.159706, 22.933372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610279, 33.550488, 22.681585>,  <40.748013, 34.317448, 22.912624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610279, 33.550488, 22.681585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.328369, 33.819756, 22.592012>,  <40.159225, 33.981316, 22.538269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.328369, 33.819756, 22.592012>,  <40.610279, 33.550488, 22.681585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328369, 33.819756, 22.592012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094474, -0.223780, -0.970050,
		-0.703117, -0.704818, 0.094117,
		-0.704770, 0.673167, -0.223930,
		40.116940, 34.021706, 22.524834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225517, 33.213657, 22.132080>,  <40.610279, 33.550488, 22.681585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225517, 33.213657, 22.132080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.159252, 33.606804, 22.099754>,  <40.119492, 33.842693, 22.080359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.159252, 33.606804, 22.099754>,  <40.225517, 33.213657, 22.132080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159252, 33.606804, 22.099754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014609, -0.079493, -0.996728,
		-0.986074, -0.166301, -0.001190,
		-0.165663, 0.982866, -0.080816,
		40.109554, 33.901665, 22.075510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.034668, 33.291573, 21.378803>,  <40.225517, 33.213657, 22.132080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.034668, 33.291573, 21.378803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.045609, 33.678085, 21.481215>,  <40.052174, 33.909992, 21.542662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.045609, 33.678085, 21.481215>,  <40.034668, 33.291573, 21.378803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045609, 33.678085, 21.481215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037401, 0.254957, -0.966229,
		-0.998926, 0.036004, -0.029166,
		0.027352, 0.966282, 0.256030,
		40.053814, 33.967972, 21.558023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533745, 33.556046, 21.014326>,  <40.034668, 33.291573, 21.378803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533745, 33.556046, 21.014326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.803555, 33.833961, 21.114155>,  <39.965439, 34.000710, 21.174051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.803555, 33.833961, 21.114155>,  <39.533745, 33.556046, 21.014326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803555, 33.833961, 21.114155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018155, 0.322342, -0.946449,
		-0.738029, 0.642934, 0.204814,
		0.674525, 0.694788, 0.249570,
		40.005913, 34.042397, 21.189026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333317, 34.212837, 20.713469>,  <39.533745, 33.556046, 21.014326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333317, 34.212837, 20.713469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.722931, 34.277458, 20.776918>,  <39.956699, 34.316231, 20.814989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.722931, 34.277458, 20.776918>,  <39.333317, 34.212837, 20.713469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722931, 34.277458, 20.776918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098399, 0.328931, -0.939214,
		-0.203910, 0.930433, 0.304492,
		0.974032, 0.161553, 0.158626,
		40.015141, 34.325924, 20.824507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537277, 34.923901, 20.356182>,  <39.333317, 34.212837, 20.713469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537277, 34.923901, 20.356182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.889194, 34.746338, 20.424200>,  <40.100346, 34.639801, 20.465012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.889194, 34.746338, 20.424200>,  <39.537277, 34.923901, 20.356182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889194, 34.746338, 20.424200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312503, 0.270547, -0.910575,
		0.358205, 0.854255, 0.376746,
		0.879791, -0.443907, 0.170046,
		40.153133, 34.613167, 20.475214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085732, 35.433414, 20.215750>,  <39.537277, 34.923901, 20.356182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085732, 35.433414, 20.215750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.243336, 35.068844, 20.168322>,  <40.337898, 34.850101, 20.139864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.243336, 35.068844, 20.168322>,  <40.085732, 35.433414, 20.215750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.243336, 35.068844, 20.168322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101662, 0.171433, -0.979936,
		0.913466, 0.374051, 0.160203,
		0.394010, -0.911426, -0.118572,
		40.361538, 34.795418, 20.132750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705013, 35.471359, 19.769978>,  <40.085732, 35.433414, 20.215750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705013, 35.471359, 19.769978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.547131, 35.105709, 19.732924>,  <40.452400, 34.886318, 19.710691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.547131, 35.105709, 19.732924>,  <40.705013, 35.471359, 19.769978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.547131, 35.105709, 19.732924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106503, 0.054622, -0.992811,
		0.912612, -0.401739, 0.075797,
		-0.394710, -0.914124, -0.092635,
		40.428719, 34.831470, 19.705133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.130424, 35.094757, 19.287849>,  <40.705013, 35.471359, 19.769978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.130424, 35.094757, 19.287849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.791649, 34.882504, 19.274418>,  <40.588383, 34.755150, 19.266359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.791649, 34.882504, 19.274418>,  <41.130424, 35.094757, 19.287849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.791649, 34.882504, 19.274418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059600, -0.031988, -0.997710,
		0.528344, -0.846998, 0.058718,
		-0.846936, -0.530633, -0.033581,
		40.537567, 34.723312, 19.264343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066139, 34.993275, 18.707653>,  <41.130424, 35.094757, 19.287849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.066139, 34.993275, 18.707653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.695602, 34.864681, 18.786175>,  <40.473278, 34.787525, 18.833288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.695602, 34.864681, 18.786175>,  <41.066139, 34.993275, 18.707653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695602, 34.864681, 18.786175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252328, 0.142680, -0.957065,
		0.279672, -0.936104, -0.213290,
		-0.926344, -0.321483, 0.196302,
		40.417698, 34.768238, 18.845066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.968437, 34.590485, 18.074883>,  <41.066139, 34.993275, 18.707653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.968437, 34.590485, 18.074883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.609127, 34.671570, 18.230839>,  <40.393543, 34.720222, 18.324413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.609127, 34.671570, 18.230839>,  <40.968437, 34.590485, 18.074883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.609127, 34.671570, 18.230839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349428, 0.208523, -0.913465,
		-0.266475, -0.956778, -0.116476,
		-0.898271, 0.202716, 0.389891,
		40.339645, 34.732384, 18.347807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484333, 34.288708, 17.585676>,  <40.968437, 34.590485, 18.074883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.484333, 34.288708, 17.585676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.281136, 34.569187, 17.785784>,  <40.159218, 34.737473, 17.905848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.281136, 34.569187, 17.785784>,  <40.484333, 34.288708, 17.585676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281136, 34.569187, 17.785784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313967, 0.390096, -0.865592,
		-0.802101, -0.596783, 0.021986,
		-0.507994, 0.701195, 0.500267,
		40.128738, 34.779545, 17.935863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870567, 34.166794, 17.352850>,  <40.484333, 34.288708, 17.585676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.870567, 34.166794, 17.352850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.871368, 34.544743, 17.483826>,  <39.871849, 34.771511, 17.562410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.871368, 34.544743, 17.483826>,  <39.870567, 34.166794, 17.352850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871368, 34.544743, 17.483826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276501, 0.315198, -0.907853,
		-0.961012, -0.088718, 0.261889,
		0.002004, 0.944870, 0.327440,
		39.871971, 34.828205, 17.582058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258053, 34.398315, 17.115646>,  <39.870567, 34.166794, 17.352850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258053, 34.398315, 17.115646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.482216, 34.721817, 17.187037>,  <39.616714, 34.915920, 17.229870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.482216, 34.721817, 17.187037>,  <39.258053, 34.398315, 17.115646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482216, 34.721817, 17.187037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340407, 0.421374, -0.840575,
		-0.755026, 0.410313, 0.511449,
		0.560410, 0.808757, 0.178475,
		39.650337, 34.964443, 17.240580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406132, 34.010254, 16.435865>,  <39.258053, 34.398315, 17.115646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406132, 34.010254, 16.435865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.449711, 33.615891, 16.385086>,  <39.475857, 33.379272, 16.354618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.449711, 33.615891, 16.385086>,  <39.406132, 34.010254, 16.435865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449711, 33.615891, 16.385086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976320, -0.130141, 0.172807,
		-0.186893, 0.105117, -0.976740,
		0.108949, -0.985907, -0.126950,
		39.482395, 33.320118, 16.347002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920742, 33.787113, 15.850466>,  <39.406132, 34.010254, 16.435865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920742, 33.787113, 15.850466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.027214, 33.489761, 16.095915>,  <39.091099, 33.311352, 16.243185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.027214, 33.489761, 16.095915>,  <38.920742, 33.787113, 15.850466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027214, 33.489761, 16.095915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963531, -0.223347, 0.147388,
		0.027486, -0.630478, -0.775720,
		0.266180, -0.743380, 0.613624,
		39.107067, 33.266747, 16.280003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231995, 33.575317, 16.153753>,  <38.920742, 33.787113, 15.850466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231995, 33.575317, 16.153753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.837517, 33.557831, 16.217638>,  <37.600830, 33.547337, 16.255968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.837517, 33.557831, 16.217638>,  <38.231995, 33.575317, 16.153753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837517, 33.557831, 16.217638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127246, 0.417088, 0.899914,
		-0.105957, 0.907814, -0.405767,
		-0.986196, -0.043720, 0.159710,
		37.541656, 33.544716, 16.265551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976299, 34.266644, 16.408186>,  <38.231995, 33.575317, 16.153753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976299, 34.266644, 16.408186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.678787, 34.020996, 16.513750>,  <37.500278, 33.873608, 16.577089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.678787, 34.020996, 16.513750>,  <37.976299, 34.266644, 16.408186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678787, 34.020996, 16.513750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029637, 0.364138, 0.930874,
		-0.667765, 0.700189, -0.252638,
		-0.743782, -0.614117, 0.263910,
		37.455654, 33.836761, 16.592922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424973, 34.625278, 16.785597>,  <37.976299, 34.266644, 16.408186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424973, 34.625278, 16.785597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.384205, 34.243454, 16.897621>,  <37.359745, 34.014359, 16.964836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.384205, 34.243454, 16.897621>,  <37.424973, 34.625278, 16.785597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384205, 34.243454, 16.897621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186475, 0.294869, 0.937166,
		-0.977159, 0.043291, -0.208054,
		-0.101920, -0.954557, 0.280061,
		37.353630, 33.957088, 16.981640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831676, 34.704033, 17.279161>,  <37.424973, 34.625278, 16.785597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831676, 34.704033, 17.279161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.999584, 34.347042, 17.345222>,  <37.100330, 34.132847, 17.384859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.999584, 34.347042, 17.345222>,  <36.831676, 34.704033, 17.279161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999584, 34.347042, 17.345222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119427, 0.126066, 0.984807,
		-0.899740, -0.433115, -0.053668,
		0.419769, -0.892479, 0.165153,
		37.125515, 34.079300, 17.394768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461285, 34.341282, 17.843740>,  <36.831676, 34.704033, 17.279161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461285, 34.341282, 17.843740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.807842, 34.142506, 17.863358>,  <37.015778, 34.023239, 17.875128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.807842, 34.142506, 17.863358>,  <36.461285, 34.341282, 17.843740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807842, 34.142506, 17.863358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133301, 0.324807, 0.936339,
		-0.481237, -0.804703, 0.347655,
		0.866396, -0.496944, 0.049041,
		37.067760, 33.993423, 17.878071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425304, 33.964638, 18.477299>,  <36.461285, 34.341282, 17.843740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425304, 33.964638, 18.477299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.810734, 34.000042, 18.376348>,  <37.041992, 34.021286, 18.315779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.810734, 34.000042, 18.376348>,  <36.425304, 33.964638, 18.477299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810734, 34.000042, 18.376348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223393, 0.252471, 0.941464,
		0.147047, -0.963548, 0.223502,
		0.963573, 0.088511, -0.252375,
		37.099804, 34.026596, 18.300636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828083, 33.538792, 18.907658>,  <36.425304, 33.964638, 18.477299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828083, 33.538792, 18.907658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.116581, 33.790970, 18.792873>,  <37.289680, 33.942276, 18.724003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.116581, 33.790970, 18.792873>,  <36.828083, 33.538792, 18.907658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116581, 33.790970, 18.792873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290266, 0.101070, 0.951594,
		0.628930, -0.769626, -0.110101,
		0.721244, 0.630445, -0.286962,
		37.332954, 33.980103, 18.706785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350552, 33.447350, 19.343229>,  <36.828083, 33.538792, 18.907658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350552, 33.447350, 19.343229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.438332, 33.806061, 19.189539>,  <37.491001, 34.021286, 19.097324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.438332, 33.806061, 19.189539>,  <37.350552, 33.447350, 19.343229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438332, 33.806061, 19.189539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386718, 0.281612, 0.878148,
		0.895707, -0.341297, -0.285000,
		0.219450, 0.896778, -0.384227,
		37.504166, 34.075096, 19.074270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068409, 33.565083, 19.447731>,  <37.350552, 33.447350, 19.343229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068409, 33.565083, 19.447731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.918648, 33.931648, 19.391155>,  <37.828793, 34.151588, 19.357210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.918648, 33.931648, 19.391155>,  <38.068409, 33.565083, 19.447731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918648, 33.931648, 19.391155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398703, 0.296813, 0.867720,
		0.837172, 0.268486, -0.476506,
		-0.374404, 0.916416, -0.141438,
		37.806328, 34.206573, 19.348724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584476, 33.980251, 19.786629>,  <38.068409, 33.565083, 19.447731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584476, 33.980251, 19.786629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.239777, 34.181999, 19.764717>,  <38.032959, 34.303047, 19.751570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.239777, 34.181999, 19.764717>,  <38.584476, 33.980251, 19.786629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239777, 34.181999, 19.764717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138622, 0.337950, 0.930900,
		0.488031, 0.794607, -0.361144,
		-0.861748, 0.504370, -0.054780,
		37.981251, 34.333309, 19.748283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731472, 34.707924, 20.025753>,  <38.584476, 33.980251, 19.786629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731472, 34.707924, 20.025753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.343521, 34.625462, 20.077662>,  <38.110752, 34.575985, 20.108807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.343521, 34.625462, 20.077662>,  <38.731472, 34.707924, 20.025753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343521, 34.625462, 20.077662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105639, 0.124074, 0.986634,
		-0.219503, 0.970621, -0.098558,
		-0.969876, -0.206157, 0.129770,
		38.052559, 34.563614, 20.116592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573254, 35.053009, 20.576170>,  <38.731472, 34.707924, 20.025753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573254, 35.053009, 20.576170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.247509, 34.823605, 20.540642>,  <38.052063, 34.685963, 20.519325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.247509, 34.823605, 20.540642>,  <38.573254, 35.053009, 20.576170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247509, 34.823605, 20.540642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059582, -0.069613, 0.995793,
		-0.577286, 0.816231, 0.022520,
		-0.814365, -0.573516, -0.088819,
		38.003201, 34.651550, 20.513996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145267, 35.299721, 21.122801>,  <38.573254, 35.053009, 20.576170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145267, 35.299721, 21.122801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.988953, 34.945690, 21.021664>,  <37.895164, 34.733273, 20.960981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.988953, 34.945690, 21.021664>,  <38.145267, 35.299721, 21.122801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988953, 34.945690, 21.021664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170844, -0.200170, 0.964751,
		-0.904489, 0.420205, -0.072988,
		-0.390783, -0.885076, -0.252841,
		37.871719, 34.680168, 20.945812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535343, 35.319260, 21.416058>,  <38.145267, 35.299721, 21.122801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535343, 35.319260, 21.416058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.639843, 34.935787, 21.371010>,  <37.702541, 34.705704, 21.343981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.639843, 34.935787, 21.371010>,  <37.535343, 35.319260, 21.416058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639843, 34.935787, 21.371010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275893, -0.185963, 0.943027,
		-0.925003, -0.215296, -0.313076,
		0.261251, -0.958679, -0.112618,
		37.718220, 34.648182, 21.337225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994118, 34.833015, 21.787996>,  <37.535343, 35.319260, 21.416058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994118, 34.833015, 21.787996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.313416, 34.595772, 21.745996>,  <37.504993, 34.453426, 21.720797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.313416, 34.595772, 21.745996>,  <36.994118, 34.833015, 21.787996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313416, 34.595772, 21.745996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166306, -0.384575, 0.907989,
		-0.578916, -0.707338, -0.405623,
		0.798248, -0.593107, -0.105002,
		37.552891, 34.417839, 21.714497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843933, 34.187107, 21.980423>,  <36.994118, 34.833015, 21.787996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843933, 34.187107, 21.980423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.237251, 34.210823, 22.049265>,  <37.473240, 34.225052, 22.090570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.237251, 34.210823, 22.049265>,  <36.843933, 34.187107, 21.980423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237251, 34.210823, 22.049265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131685, -0.421064, 0.897421,
		0.125680, -0.905091, -0.406220,
		0.983292, 0.059295, 0.172106,
		37.532238, 34.228611, 22.100897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961201, 33.582176, 22.353655>,  <36.843933, 34.187107, 21.980423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961201, 33.582176, 22.353655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.279312, 33.806370, 22.446083>,  <37.470181, 33.940884, 22.501539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.279312, 33.806370, 22.446083>,  <36.961201, 33.582176, 22.353655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279312, 33.806370, 22.446083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020470, -0.356108, 0.934220,
		0.605900, -0.747694, -0.271732,
		0.795277, 0.560482, 0.231071,
		37.517895, 33.974514, 22.515404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480339, 33.176418, 22.671021>,  <36.961201, 33.582176, 22.353655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480339, 33.176418, 22.671021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.599674, 33.534550, 22.803316>,  <37.671276, 33.749428, 22.882692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.599674, 33.534550, 22.803316>,  <37.480339, 33.176418, 22.671021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599674, 33.534550, 22.803316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042032, -0.358506, 0.932581,
		0.953535, -0.264321, -0.144588,
		0.298337, 0.895325, 0.330738,
		37.689175, 33.803146, 22.902538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983654, 33.123608, 23.272577>,  <37.480339, 33.176418, 22.671021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983654, 33.123608, 23.272577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.822998, 33.488354, 23.306486>,  <37.726604, 33.707203, 23.326832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.822998, 33.488354, 23.306486>,  <37.983654, 33.123608, 23.272577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822998, 33.488354, 23.306486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063575, -0.120107, 0.990723,
		0.913588, 0.392524, 0.106212,
		-0.401640, 0.911866, 0.084773,
		37.702507, 33.761913, 23.331919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341877, 33.425369, 23.756685>,  <37.983654, 33.123608, 23.272577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341877, 33.425369, 23.756685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.007732, 33.644287, 23.736160>,  <37.807247, 33.775639, 23.723846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.007732, 33.644287, 23.736160>,  <38.341877, 33.425369, 23.756685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007732, 33.644287, 23.736160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003798, 0.087596, 0.996149,
		0.549686, 0.832341, -0.071096,
		-0.835363, 0.547299, -0.051312,
		37.757122, 33.808475, 23.720766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.665379, 33.906277, 28.662626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.400791, 34.202335, 28.614225>,  <40.242039, 34.379971, 28.585184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.400791, 34.202335, 28.614225>,  <40.665379, 33.906277, 28.662626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.400791, 34.202335, 28.614225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058596, 0.211856, 0.975543,
		0.747677, 0.638204, -0.183506,
		-0.661472, 0.740143, -0.121004,
		40.202351, 34.424377, 28.577925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928005, 34.527481, 29.003071>,  <40.665379, 33.906277, 28.662626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.928005, 34.527481, 29.003071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.531528, 34.565998, 28.966703>,  <40.293644, 34.589108, 28.944883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.531528, 34.565998, 28.966703>,  <40.928005, 34.527481, 29.003071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531528, 34.565998, 28.966703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081473, 0.097888, 0.991857,
		0.104404, 0.990528, -0.089181,
		-0.991192, 0.096288, -0.090921,
		40.234169, 34.594883, 28.939426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773518, 35.046665, 29.368727>,  <40.928005, 34.527481, 29.003071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773518, 35.046665, 29.368727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.411285, 34.877468, 29.356016>,  <40.193947, 34.775951, 29.348391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.411285, 34.877468, 29.356016>,  <40.773518, 35.046665, 29.368727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411285, 34.877468, 29.356016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244426, 0.459128, 0.854083,
		-0.346678, 0.781205, -0.519166,
		-0.905577, -0.422989, -0.031777,
		40.139610, 34.750572, 29.346483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342648, 35.657360, 29.596870>,  <40.773518, 35.046665, 29.368727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.342648, 35.657360, 29.596870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.133564, 35.319351, 29.641989>,  <40.008114, 35.116547, 29.669060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.133564, 35.319351, 29.641989>,  <40.342648, 35.657360, 29.596870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133564, 35.319351, 29.641989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263228, 0.285819, 0.921422,
		-0.810858, 0.451941, -0.371832,
		-0.522705, -0.845018, 0.112795,
		39.976753, 35.065845, 29.675827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665325, 35.840733, 29.817547>,  <40.342648, 35.657360, 29.596870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665325, 35.840733, 29.817547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.710178, 35.460327, 29.932783>,  <39.737091, 35.232082, 30.001925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.710178, 35.460327, 29.932783>,  <39.665325, 35.840733, 29.817547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710178, 35.460327, 29.932783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424097, 0.216385, 0.879386,
		-0.898647, -0.220790, -0.379058,
		0.112137, -0.951015, 0.288090,
		39.743820, 35.175022, 30.019211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006565, 35.689644, 30.128927>,  <39.665325, 35.840733, 29.817547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006565, 35.689644, 30.128927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.256840, 35.412945, 30.273148>,  <39.407005, 35.246925, 30.359680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.256840, 35.412945, 30.273148>,  <39.006565, 35.689644, 30.128927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256840, 35.412945, 30.273148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413507, 0.097804, 0.905233,
		-0.661459, -0.715482, -0.224849,
		0.625687, -0.691752, 0.360550,
		39.444546, 35.205418, 30.381313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625538, 35.245228, 30.442646>,  <39.006565, 35.689644, 30.128927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625538, 35.245228, 30.442646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.995514, 35.239525, 30.594585>,  <39.217499, 35.236103, 30.685749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.995514, 35.239525, 30.594585>,  <38.625538, 35.245228, 30.442646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995514, 35.239525, 30.594585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368675, 0.209685, 0.905599,
		-0.092561, -0.977665, 0.188690,
		0.924938, -0.014258, 0.379849,
		39.272995, 35.235249, 30.708540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588020, 34.883160, 31.076876>,  <38.625538, 35.245228, 30.442646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588020, 34.883160, 31.076876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.960850, 35.013187, 31.140829>,  <39.184547, 35.091202, 31.179201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.960850, 35.013187, 31.140829>,  <38.588020, 34.883160, 31.076876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960850, 35.013187, 31.140829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291369, 0.410462, 0.864075,
		0.215253, -0.851971, 0.477296,
		0.932079, 0.325064, 0.159885,
		39.240475, 35.110706, 31.188795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963871, 34.597801, 31.712111>,  <38.588020, 34.883160, 31.076876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963871, 34.597801, 31.712111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.130291, 34.953167, 31.634512>,  <39.230141, 35.166386, 31.587954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.130291, 34.953167, 31.634512>,  <38.963871, 34.597801, 31.712111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130291, 34.953167, 31.634512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174405, 0.287331, 0.941819,
		0.892462, -0.358006, 0.274486,
		0.416046, 0.888410, -0.193994,
		39.255104, 35.219688, 31.576313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971104, 35.004601, 32.336884>,  <38.963871, 34.597801, 31.712111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971104, 35.004601, 32.336884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.115883, 35.298813, 32.107807>,  <39.202751, 35.475342, 31.970360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.115883, 35.298813, 32.107807>,  <38.971104, 35.004601, 32.336884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115883, 35.298813, 32.107807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063877, 0.593336, 0.802416,
		0.930006, -0.327017, 0.167774,
		0.361950, 0.735535, -0.572696,
		39.224468, 35.519474, 31.935999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564068, 35.231598, 32.805435>,  <38.971104, 35.004601, 32.336884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564068, 35.231598, 32.805435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.411514, 35.493160, 32.544067>,  <39.319981, 35.650097, 32.387245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.411514, 35.493160, 32.544067>,  <39.564068, 35.231598, 32.805435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411514, 35.493160, 32.544067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243398, 0.610871, 0.753389,
		0.891797, 0.446373, -0.073819,
		-0.381386, 0.653902, -0.653419,
		39.297100, 35.689331, 32.348042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589661, 35.979454, 33.140949>,  <39.564068, 35.231598, 32.805435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589661, 35.979454, 33.140949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.312889, 36.015686, 32.854443>,  <39.146828, 36.037426, 32.682541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.312889, 36.015686, 32.854443>,  <39.589661, 35.979454, 33.140949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312889, 36.015686, 32.854443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472399, 0.693441, 0.544039,
		0.545964, 0.714797, -0.437021,
		-0.691927, 0.090578, -0.716263,
		39.105312, 36.042858, 32.639565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500946, 36.686222, 33.039970>,  <39.589661, 35.979454, 33.140949>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500946, 36.686222, 33.039970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.175404, 36.496349, 32.905914>,  <38.980080, 36.382427, 32.825481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.175404, 36.496349, 32.905914>,  <39.500946, 36.686222, 33.039970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175404, 36.496349, 32.905914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579515, 0.620927, 0.527837,
		-0.042455, 0.623802, -0.780428,
		-0.813855, -0.474679, -0.335141,
		38.931248, 36.353947, 32.805370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883797, 36.994659, 33.505043>,  <39.500946, 36.686222, 33.039970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883797, 36.994659, 33.505043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.153198, 36.899719, 33.785061>,  <40.314838, 36.842754, 33.953072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.153198, 36.899719, 33.785061>,  <39.883797, 36.994659, 33.505043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.153198, 36.899719, 33.785061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585981, -0.748721, 0.309907,
		0.450580, -0.618935, -0.643349,
		0.673501, -0.237353, 0.700043,
		40.355247, 36.828514, 33.995075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897049, 37.503483, 32.980957>,  <39.883797, 36.994659, 33.505043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897049, 37.503483, 32.980957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.082150, 37.824829, 32.831043>,  <40.193211, 38.017635, 32.741096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.082150, 37.824829, 32.831043>,  <39.897049, 37.503483, 32.980957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082150, 37.824829, 32.831043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173225, -0.332676, -0.926995,
		-0.869396, 0.493895, -0.014785,
		0.462756, 0.803364, -0.374783,
		40.220978, 38.065838, 32.718609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571835, 37.756069, 32.425087>,  <39.897049, 37.503483, 32.980957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571835, 37.756069, 32.425087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.912964, 37.945526, 32.337124>,  <40.117641, 38.059200, 32.284348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.912964, 37.945526, 32.337124>,  <39.571835, 37.756069, 32.425087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.912964, 37.945526, 32.337124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098028, -0.268419, -0.958302,
		-0.512923, 0.838815, -0.182482,
		0.852819, 0.473647, -0.219906,
		40.168808, 38.087620, 32.271152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290554, 38.150799, 31.891386>,  <39.571835, 37.756069, 32.425087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290554, 38.150799, 31.891386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.685497, 38.143677, 31.828384>,  <39.922462, 38.139404, 31.790585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.685497, 38.143677, 31.828384>,  <39.290554, 38.150799, 31.891386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685497, 38.143677, 31.828384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156368, -0.272076, -0.949486,
		-0.025947, 0.962111, -0.271421,
		0.987358, -0.017805, -0.157503,
		39.981705, 38.138336, 31.781134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406113, 38.528687, 31.413151>,  <39.290554, 38.150799, 31.891386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406113, 38.528687, 31.413151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.742363, 38.314312, 31.381863>,  <39.944115, 38.185688, 31.363091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.742363, 38.314312, 31.381863>,  <39.406113, 38.528687, 31.413151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742363, 38.314312, 31.381863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136409, -0.069732, -0.988195,
		0.524153, 0.841375, -0.131725,
		0.840628, -0.535934, -0.078221,
		39.994553, 38.153530, 31.358397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802654, 38.796925, 30.927444>,  <39.406113, 38.528687, 31.413151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.802654, 38.796925, 30.927444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.951908, 38.426384, 30.947977>,  <40.041462, 38.204060, 30.960297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.951908, 38.426384, 30.947977>,  <39.802654, 38.796925, 30.927444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951908, 38.426384, 30.947977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029609, -0.067190, -0.997301,
		0.927304, 0.370609, -0.052499,
		0.373136, -0.926356, 0.051332,
		40.063850, 38.148476, 30.963377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342274, 38.851387, 30.473097>,  <39.802654, 38.796925, 30.927444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.342274, 38.851387, 30.473097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.224014, 38.473591, 30.530401>,  <40.153057, 38.246914, 30.564783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.224014, 38.473591, 30.530401>,  <40.342274, 38.851387, 30.473097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.224014, 38.473591, 30.530401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100534, -0.118370, -0.987867,
		0.949991, -0.306467, -0.059957,
		-0.295651, -0.944493, 0.143260,
		40.135319, 38.190243, 30.573380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799126, 38.516560, 29.998468>,  <40.342274, 38.851387, 30.473097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799126, 38.516560, 29.998468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.506474, 38.254368, 30.073376>,  <40.330883, 38.097054, 30.118320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.506474, 38.254368, 30.073376>,  <40.799126, 38.516560, 29.998468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506474, 38.254368, 30.073376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049752, -0.325315, -0.944296,
		0.679884, -0.681558, 0.270621,
		-0.731630, -0.655475, 0.187268,
		40.286983, 38.057724, 30.129557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015213, 37.824112, 29.641058>,  <40.799126, 38.516560, 29.998468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015213, 37.824112, 29.641058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.639885, 37.727242, 29.739780>,  <40.414688, 37.669121, 29.799013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.639885, 37.727242, 29.739780>,  <41.015213, 37.824112, 29.641058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639885, 37.727242, 29.739780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180773, -0.264886, -0.947184,
		0.294758, -0.933374, 0.204768,
		-0.938317, -0.242174, 0.246806,
		40.358391, 37.654591, 29.813822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.834080, 37.107861, 29.461859>,  <41.015213, 37.824112, 29.641058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.834080, 37.107861, 29.461859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.496700, 37.322346, 29.474943>,  <40.294273, 37.451035, 29.482794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.496700, 37.322346, 29.474943>,  <40.834080, 37.107861, 29.461859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.496700, 37.322346, 29.474943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208044, -0.269897, -0.940145,
		-0.495287, -0.799771, 0.339200,
		-0.843450, 0.536210, 0.032712,
		40.243664, 37.483208, 29.484756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293903, 36.709290, 29.089195>,  <40.834080, 37.107861, 29.461859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293903, 36.709290, 29.089195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.150482, 37.082611, 29.081362>,  <40.064430, 37.306606, 29.076662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.150482, 37.082611, 29.081362>,  <40.293903, 36.709290, 29.089195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150482, 37.082611, 29.081362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373449, -0.162630, -0.913283,
		-0.855557, -0.320144, 0.406853,
		-0.358549, 0.933305, -0.019582,
		40.042919, 37.362602, 29.075487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730934, 36.642338, 28.762516>,  <40.293903, 36.709290, 29.089195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.730934, 36.642338, 28.762516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.751534, 37.041111, 28.738956>,  <39.763893, 37.280376, 28.724821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.751534, 37.041111, 28.738956>,  <39.730934, 36.642338, 28.762516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751534, 37.041111, 28.738956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507447, -0.024678, -0.861330,
		-0.860143, 0.074243, 0.504620,
		0.051494, 0.996935, -0.058901,
		39.766983, 37.340191, 28.721287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087658, 36.817257, 28.572884>,  <39.730934, 36.642338, 28.762516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087658, 36.817257, 28.572884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.326511, 37.104500, 28.429914>,  <39.469826, 37.276844, 28.344133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.326511, 37.104500, 28.429914>,  <39.087658, 36.817257, 28.572884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326511, 37.104500, 28.429914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537913, 0.027943, -0.842537,
		-0.595042, 0.695373, 0.402964,
		0.597138, 0.718105, -0.357423,
		39.505653, 37.319931, 28.322687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626987, 37.339085, 28.396626>,  <39.087658, 36.817257, 28.572884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626987, 37.339085, 28.396626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.970543, 37.383659, 28.196671>,  <39.176678, 37.410404, 28.076696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.970543, 37.383659, 28.196671>,  <38.626987, 37.339085, 28.396626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970543, 37.383659, 28.196671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486024, -0.130473, -0.864151,
		-0.161517, 0.985170, -0.057903,
		0.858891, 0.111433, -0.499890,
		39.228210, 37.417088, 28.046703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393696, 37.606750, 27.806105>,  <38.626987, 37.339085, 28.396626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393696, 37.606750, 27.806105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.757828, 37.475250, 27.705528>,  <38.976307, 37.396351, 27.645184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.757828, 37.475250, 27.705528>,  <38.393696, 37.606750, 27.806105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757828, 37.475250, 27.705528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342981, -0.259181, -0.902878,
		0.231657, 0.908155, -0.348697,
		0.910329, -0.328754, -0.251439,
		39.030926, 37.376625, 27.630096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327621, 38.306107, 27.774740>,  <38.393696, 37.606750, 27.806105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327621, 38.306107, 27.774740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.021915, 38.561161, 27.813341>,  <37.838490, 38.714195, 27.836502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.021915, 38.561161, 27.813341>,  <38.327621, 38.306107, 27.774740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021915, 38.561161, 27.813341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267989, -0.450128, 0.851802,
		0.586580, 0.625143, 0.514898,
		-0.764268, 0.637637, 0.096504,
		37.792633, 38.752453, 27.842293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448772, 38.627712, 28.461344>,  <38.327621, 38.306107, 27.774740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448772, 38.627712, 28.461344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.061142, 38.655083, 28.366514>,  <37.828564, 38.671505, 28.309616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.061142, 38.655083, 28.366514>,  <38.448772, 38.627712, 28.461344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061142, 38.655083, 28.366514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246349, -0.213555, 0.945361,
		0.014058, 0.974532, 0.223808,
		-0.969079, 0.068424, -0.237073,
		37.770420, 38.675610, 28.295393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159401, 39.028324, 29.019382>,  <38.448772, 38.627712, 28.461344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159401, 39.028324, 29.019382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.829117, 38.871063, 28.857573>,  <37.630947, 38.776707, 28.760487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.829117, 38.871063, 28.857573>,  <38.159401, 39.028324, 29.019382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829117, 38.871063, 28.857573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401778, -0.093475, 0.910954,
		-0.395953, 0.914711, -0.080776,
		-0.825709, -0.393149, -0.404523,
		37.581406, 38.753120, 28.736216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439865, 39.428753, 29.243027>,  <38.159401, 39.028324, 29.019382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439865, 39.428753, 29.243027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.352295, 39.060127, 29.114779>,  <37.299755, 38.838951, 29.037828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.352295, 39.060127, 29.114779>,  <37.439865, 39.428753, 29.243027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352295, 39.060127, 29.114779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406108, -0.212724, 0.888721,
		-0.887215, 0.324767, -0.327683,
		-0.218921, -0.921561, -0.320622,
		37.286617, 38.783657, 29.018593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770283, 39.291412, 29.426533>,  <37.439865, 39.428753, 29.243027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770283, 39.291412, 29.426533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.834557, 38.911125, 29.320463>,  <36.873123, 38.682953, 29.256821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.834557, 38.911125, 29.320463>,  <36.770283, 39.291412, 29.426533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834557, 38.911125, 29.320463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528484, -0.309782, 0.790405,
		-0.833597, 0.013132, -0.552217,
		0.160687, -0.950717, -0.265174,
		36.882763, 38.625912, 29.240911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134281, 38.825794, 29.251743>,  <36.770283, 39.291412, 29.426533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134281, 38.825794, 29.251743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.406235, 38.549229, 29.349485>,  <36.569408, 38.383289, 29.408131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.406235, 38.549229, 29.349485>,  <36.134281, 38.825794, 29.251743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406235, 38.549229, 29.349485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612477, -0.352147, 0.707718,
		-0.403276, -0.630827, -0.662892,
		0.679883, -0.691412, 0.244354,
		36.610199, 38.341805, 29.422792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710106, 38.386108, 29.741163>,  <36.134281, 38.825794, 29.251743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710106, 38.386108, 29.741163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.089603, 38.262291, 29.766687>,  <36.317303, 38.188000, 29.782001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.089603, 38.262291, 29.766687>,  <35.710106, 38.386108, 29.741163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089603, 38.262291, 29.766687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198815, -0.427575, 0.881846,
		-0.245689, -0.849329, -0.467200,
		0.948741, -0.309547, 0.063809,
		36.374226, 38.169426, 29.785830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734428, 37.638058, 30.019398>,  <35.710106, 38.386108, 29.741163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734428, 37.638058, 30.019398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.085789, 37.805000, 30.112537>,  <36.296604, 37.905167, 30.168421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.085789, 37.805000, 30.112537>,  <35.734428, 37.638058, 30.019398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085789, 37.805000, 30.112537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104729, -0.307273, 0.945841,
		0.466303, -0.855216, -0.226200,
		0.878404, 0.417359, 0.232848,
		36.349312, 37.930206, 30.182392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946251, 37.133797, 30.419395>,  <35.734428, 37.638058, 30.019398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946251, 37.133797, 30.419395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.169689, 37.452808, 30.510538>,  <36.303753, 37.644215, 30.565224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.169689, 37.452808, 30.510538>,  <35.946251, 37.133797, 30.419395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169689, 37.452808, 30.510538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278333, -0.078549, 0.957267,
		0.781348, -0.598143, 0.178102,
		0.558593, 0.797531, 0.227857,
		36.337269, 37.692066, 30.578896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207218, 36.963867, 31.003773>,  <35.946251, 37.133797, 30.419395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207218, 36.963867, 31.003773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.295692, 37.353867, 30.995159>,  <36.348778, 37.587864, 30.989990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.295692, 37.353867, 30.995159>,  <36.207218, 36.963867, 31.003773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295692, 37.353867, 30.995159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145602, 0.054850, 0.987821,
		0.964301, -0.215357, 0.154093,
		0.221186, 0.974994, -0.021535,
		36.362049, 37.646366, 30.988699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632847, 37.104820, 31.622787>,  <36.207218, 36.963867, 31.003773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632847, 37.104820, 31.622787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.515759, 37.469810, 31.508455>,  <36.445507, 37.688805, 31.439856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.515759, 37.469810, 31.508455>,  <36.632847, 37.104820, 31.622787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515759, 37.469810, 31.508455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257354, 0.212711, 0.942615,
		0.920914, 0.349483, 0.172565,
		-0.292722, 0.912478, -0.285829,
		36.427940, 37.743553, 31.422707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923576, 37.662018, 32.099812>,  <36.632847, 37.104820, 31.622787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923576, 37.662018, 32.099812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.586082, 37.781647, 31.921524>,  <36.383587, 37.853424, 31.814552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.586082, 37.781647, 31.921524>,  <36.923576, 37.662018, 32.099812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586082, 37.781647, 31.921524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411449, 0.172906, 0.894882,
		0.344703, 0.938434, -0.022833,
		-0.843736, 0.299074, -0.445718,
		36.332962, 37.871368, 31.787809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.381516, 39.513966, 23.796713> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029736, 39.400299, 23.949459>,  <37.818668, 39.332100, 24.041107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029736, 39.400299, 23.949459>,  <38.381516, 39.513966, 23.796713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029736, 39.400299, 23.949459> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230663, 0.447327, 0.864114,
		-0.416374, 0.848024, -0.327853,
		-0.879447, -0.284171, 0.381863,
		37.765900, 39.315048, 24.064018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179558, 40.096817, 24.309097>,  <38.381516, 39.513966, 23.796713>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179558, 40.096817, 24.309097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928566, 39.799427, 24.401623>,  <37.777969, 39.620991, 24.457138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928566, 39.799427, 24.401623>,  <38.179558, 40.096817, 24.309097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928566, 39.799427, 24.401623> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033244, 0.322388, 0.946024,
		-0.777921, 0.585923, -0.227008,
		-0.627482, -0.743478, 0.231314,
		37.740322, 39.576382, 24.471018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677677, 40.351959, 24.794094>,  <38.179558, 40.096817, 24.309097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677677, 40.351959, 24.794094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696823, 39.960293, 24.873034>,  <37.708313, 39.725292, 24.920397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696823, 39.960293, 24.873034>,  <37.677677, 40.351959, 24.794094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696823, 39.960293, 24.873034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040313, 0.195520, 0.979871,
		-0.998040, -0.054859, -0.030114,
		0.047867, -0.979164, 0.197348,
		37.711182, 39.666542, 24.932238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331291, 40.459854, 25.501160>,  <37.677677, 40.351959, 24.794094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331291, 40.459854, 25.501160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479465, 40.089958, 25.466202>,  <37.568371, 39.868023, 25.445227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479465, 40.089958, 25.466202>,  <37.331291, 40.459854, 25.501160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479465, 40.089958, 25.466202> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031527, -0.081515, 0.996174,
		-0.928322, -0.371776, -0.001042,
		0.370438, -0.924737, -0.087393,
		37.590595, 39.812538, 25.439983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896477, 40.061115, 25.992022>,  <37.331291, 40.459854, 25.501160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896477, 40.061115, 25.992022> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206612, 39.816238, 25.929953>,  <37.392693, 39.669312, 25.892712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206612, 39.816238, 25.929953>,  <36.896477, 40.061115, 25.992022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206612, 39.816238, 25.929953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011320, -0.259131, 0.965776,
		-0.631450, -0.747042, -0.207843,
		0.775334, -0.612192, -0.155172,
		37.439213, 39.632580, 25.883402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631847, 39.421791, 26.216248>,  <36.896477, 40.061115, 25.992022>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631847, 39.421791, 26.216248> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029919, 39.391445, 26.241119>,  <37.268761, 39.373238, 26.256042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029919, 39.391445, 26.241119>,  <36.631847, 39.421791, 26.216248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029919, 39.391445, 26.241119> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086270, -0.375243, 0.922903,
		-0.046687, -0.923816, -0.379979,
		0.995177, -0.075868, 0.062179,
		37.328472, 39.368687, 26.259773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767464, 38.777119, 26.527508>,  <36.631847, 39.421791, 26.216248>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767464, 38.777119, 26.527508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102497, 38.988945, 26.581182>,  <37.303516, 39.116043, 26.613386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102497, 38.988945, 26.581182>,  <36.767464, 38.777119, 26.527508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102497, 38.988945, 26.581182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168865, -0.484565, 0.858301,
		0.519551, -0.696242, -0.495291,
		0.837586, 0.529569, 0.134185,
		37.353771, 39.147816, 26.621439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283611, 38.300449, 26.752514>,  <36.767464, 38.777119, 26.527508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283611, 38.300449, 26.752514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399895, 38.663532, 26.873549>,  <37.469666, 38.881382, 26.946169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399895, 38.663532, 26.873549>,  <37.283611, 38.300449, 26.752514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399895, 38.663532, 26.873549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248618, -0.377044, 0.892203,
		0.923946, -0.184146, -0.335283,
		0.290712, 0.907705, 0.302586,
		37.487110, 38.935844, 26.964325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005703, 38.261627, 27.094992>,  <37.283611, 38.300449, 26.752514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005703, 38.261627, 27.094992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824448, 38.587921, 27.238792>,  <37.715694, 38.783699, 27.325073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824448, 38.587921, 27.238792>,  <38.005703, 38.261627, 27.094992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824448, 38.587921, 27.238792> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054561, -0.377148, 0.924544,
		0.889768, 0.438563, 0.126393,
		-0.453140, 0.815734, 0.359503,
		37.688507, 38.832642, 27.346643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717125, 38.180500, 27.194214>,  <38.005703, 38.261627, 27.094992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717125, 38.180500, 27.194214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949574, 37.859131, 27.142357>,  <39.089043, 37.666309, 27.111242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949574, 37.859131, 27.142357>,  <38.717125, 38.180500, 27.194214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949574, 37.859131, 27.142357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141225, 0.057326, -0.988316,
		0.801471, 0.592638, -0.080151,
		0.581119, -0.803426, -0.129641,
		39.123909, 37.618103, 27.103464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040970, 38.282719, 26.541384>,  <38.717125, 38.180500, 27.194214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040970, 38.282719, 26.541384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123554, 37.894882, 26.593935>,  <39.173103, 37.662178, 26.625465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123554, 37.894882, 26.593935>,  <39.040970, 38.282719, 26.541384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123554, 37.894882, 26.593935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038318, -0.142181, -0.989099,
		0.977704, 0.199178, -0.066507,
		0.206462, -0.969594, 0.131379,
		39.185493, 37.604004, 26.633348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783905, 38.142689, 26.263842>,  <39.040970, 38.282719, 26.541384>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783905, 38.142689, 26.263842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543728, 37.824394, 26.232153>,  <39.399620, 37.633419, 26.213140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543728, 37.824394, 26.232153>,  <39.783905, 38.142689, 26.263842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543728, 37.824394, 26.232153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054892, 0.057822, -0.996817,
		0.797780, -0.602882, 0.008960,
		-0.600445, -0.795732, -0.079222,
		39.363594, 37.585674, 26.208385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124607, 37.748322, 25.683826>,  <39.783905, 38.142689, 26.263842>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124607, 37.748322, 25.683826> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762993, 37.583237, 25.728348>,  <39.546024, 37.484184, 25.755060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762993, 37.583237, 25.728348>,  <40.124607, 37.748322, 25.683826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762993, 37.583237, 25.728348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106734, -0.034190, -0.993700,
		0.413918, -0.910219, -0.013142,
		-0.904035, -0.412712, 0.111303,
		39.491783, 37.459423, 25.761740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170727, 37.100719, 25.387270>,  <40.124607, 37.748322, 25.683826>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.170727, 37.100719, 25.387270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774494, 37.155243, 25.392574>,  <39.536755, 37.187958, 25.395756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774494, 37.155243, 25.392574>,  <40.170727, 37.100719, 25.387270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774494, 37.155243, 25.392574> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027821, -0.105479, -0.994032,
		-0.134109, -0.985034, 0.108277,
		-0.990576, 0.136321, 0.013259,
		39.477322, 37.196136, 25.396553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910213, 36.500256, 24.971252>,  <40.170727, 37.100719, 25.387270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910213, 36.500256, 24.971252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645771, 36.800041, 24.957161>,  <39.487106, 36.979912, 24.948706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645771, 36.800041, 24.957161>,  <39.910213, 36.500256, 24.971252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645771, 36.800041, 24.957161> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055509, 0.002032, -0.998456,
		-0.748235, -0.662043, -0.042945,
		-0.661108, 0.749463, -0.035229,
		39.447437, 37.024879, 24.946592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352543, 36.256050, 24.577858>,  <39.910213, 36.500256, 24.971252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352543, 36.256050, 24.577858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277470, 36.648762, 24.566004>,  <39.232426, 36.884388, 24.558891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277470, 36.648762, 24.566004>,  <39.352543, 36.256050, 24.577858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277470, 36.648762, 24.566004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246162, 0.017809, -0.969065,
		-0.950883, -0.189174, -0.245020,
		-0.187686, 0.981782, -0.029633,
		39.221165, 36.943295, 24.557114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885246, 36.448402, 23.968145>,  <39.352543, 36.256050, 24.577858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885246, 36.448402, 23.968145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084538, 36.782207, 24.062262>,  <39.204113, 36.982491, 24.118732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084538, 36.782207, 24.062262>,  <38.885246, 36.448402, 23.968145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084538, 36.782207, 24.062262> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166036, 0.174522, -0.970554,
		-0.851000, 0.522625, -0.051607,
		0.498229, 0.834509, 0.235293,
		39.234005, 37.032558, 24.132849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664585, 36.830971, 23.443922>,  <38.885246, 36.448402, 23.968145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664585, 36.830971, 23.443922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990349, 37.029232, 23.564636>,  <39.185806, 37.148190, 23.637064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990349, 37.029232, 23.564636>,  <38.664585, 36.830971, 23.443922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990349, 37.029232, 23.564636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207129, 0.237507, -0.949046,
		-0.542070, 0.835417, 0.090764,
		0.814406, 0.495650, 0.301784,
		39.234673, 37.177925, 23.655172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574657, 37.433044, 23.093197>,  <38.664585, 36.830971, 23.443922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574657, 37.433044, 23.093197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962368, 37.412868, 23.189499>,  <39.194992, 37.400764, 23.247280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962368, 37.412868, 23.189499>,  <38.574657, 37.433044, 23.093197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962368, 37.412868, 23.189499> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238395, 0.433841, -0.868879,
		-0.060625, 0.899577, 0.432535,
		0.969274, -0.050438, 0.240756,
		39.253151, 37.397736, 23.261726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844734, 38.010948, 22.771273>,  <38.574657, 37.433044, 23.093197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844734, 38.010948, 22.771273> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157860, 37.767796, 22.824469>,  <39.345734, 37.621906, 22.856386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157860, 37.767796, 22.824469>,  <38.844734, 38.010948, 22.771273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157860, 37.767796, 22.824469> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388052, 0.309829, -0.867998,
		0.486432, 0.731089, 0.478427,
		0.782815, -0.607877, 0.132990,
		39.392704, 37.585434, 22.864365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359932, 38.395470, 22.556541>,  <38.844734, 38.010948, 22.771273>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359932, 38.395470, 22.556541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512703, 38.025818, 22.552113>,  <39.604366, 37.804028, 22.549456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512703, 38.025818, 22.552113>,  <39.359932, 38.395470, 22.556541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512703, 38.025818, 22.552113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423790, 0.185767, -0.886506,
		0.821301, 0.333887, 0.462585,
		0.381926, -0.924127, -0.011073,
		39.627281, 37.748581, 22.548790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090828, 38.531853, 22.344467>,  <39.359932, 38.395470, 22.556541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090828, 38.531853, 22.344467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029320, 38.144341, 22.266672>,  <39.992416, 37.911835, 22.219995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029320, 38.144341, 22.266672>,  <40.090828, 38.531853, 22.344467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029320, 38.144341, 22.266672> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225757, 0.157176, -0.961421,
		0.961972, -0.191741, 0.194540,
		-0.153767, -0.968778, -0.194485,
		39.983189, 37.853706, 22.208326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640118, 38.247181, 21.882689>,  <40.090828, 38.531853, 22.344467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640118, 38.247181, 21.882689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331631, 37.997894, 21.830790>,  <40.146538, 37.848324, 21.799650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331631, 37.997894, 21.830790>,  <40.640118, 38.247181, 21.882689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331631, 37.997894, 21.830790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165066, 0.001067, -0.986282,
		0.614801, -0.782052, 0.102048,
		-0.771215, -0.623212, -0.129746,
		40.100266, 37.810932, 21.791866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.971737, 33.260731, 21.754370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.960396, 33.659584, 21.782442>,  <34.953590, 33.898895, 21.799286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.960396, 33.659584, 21.782442>,  <34.971737, 33.260731, 21.754370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960396, 33.659584, 21.782442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063597, -0.071868, 0.995385,
		0.997573, 0.023756, 0.065452,
		-0.028350, 0.997131, 0.070183,
		34.951889, 33.958725, 21.803497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543987, 33.440166, 22.145885>,  <34.971737, 33.260731, 21.754370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543987, 33.440166, 22.145885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.286579, 33.745338, 22.170609>,  <35.132133, 33.928440, 22.185442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.286579, 33.745338, 22.170609>,  <35.543987, 33.440166, 22.145885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286579, 33.745338, 22.170609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043907, -0.043825, 0.998074,
		0.764166, 0.644998, -0.005295,
		-0.643524, 0.762926, 0.061810,
		35.093521, 33.974216, 22.189152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780399, 33.796192, 22.655109>,  <35.543987, 33.440166, 22.145885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780399, 33.796192, 22.655109> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.428444, 33.983528, 22.622969>,  <35.217270, 34.095932, 22.603683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.428444, 33.983528, 22.622969>,  <35.780399, 33.796192, 22.655109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428444, 33.983528, 22.622969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006026, 0.180083, 0.983633,
		0.475149, 0.864999, -0.161274,
		-0.879885, 0.468344, -0.080354,
		35.164478, 34.124031, 22.598862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865467, 34.354431, 23.056038>,  <35.780399, 33.796192, 22.655109>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865467, 34.354431, 23.056038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.476227, 34.265747, 23.030966>,  <35.242683, 34.212536, 23.015923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.476227, 34.265747, 23.030966>,  <35.865467, 34.354431, 23.056038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476227, 34.265747, 23.030966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106088, 0.189669, 0.976100,
		-0.204519, 0.956489, -0.208087,
		-0.973097, -0.221707, -0.062681,
		35.184299, 34.199234, 23.012161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629368, 34.746494, 23.549461>,  <35.865467, 34.354431, 23.056038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629368, 34.746494, 23.549461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.325993, 34.492229, 23.491901>,  <35.143967, 34.339668, 23.457365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.325993, 34.492229, 23.491901>,  <35.629368, 34.746494, 23.549461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325993, 34.492229, 23.491901> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296053, 0.139317, 0.944957,
		-0.580630, 0.759288, -0.293854,
		-0.758434, -0.635667, -0.143898,
		35.098461, 34.301529, 23.448732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118557, 34.964165, 23.978521>,  <35.629368, 34.746494, 23.549461>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118557, 34.964165, 23.978521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.962784, 34.606831, 23.888813>,  <34.869320, 34.392429, 23.834988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.962784, 34.606831, 23.888813>,  <35.118557, 34.964165, 23.978521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962784, 34.606831, 23.888813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410842, -0.049450, 0.910365,
		-0.824351, 0.446662, -0.347762,
		-0.389429, -0.893335, -0.224271,
		34.845955, 34.338829, 23.821531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382645, 34.951714, 24.089844>,  <35.118557, 34.964165, 23.978521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382645, 34.951714, 24.089844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.524685, 34.580040, 24.130882>,  <34.609909, 34.357037, 24.155506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.524685, 34.580040, 24.130882>,  <34.382645, 34.951714, 24.089844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524685, 34.580040, 24.130882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250822, 0.011024, 0.967970,
		-0.900550, -0.369461, -0.229145,
		0.355101, -0.929181, 0.102597,
		34.631214, 34.301285, 24.161661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869041, 34.524025, 24.391094>,  <34.382645, 34.951714, 24.089844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869041, 34.524025, 24.391094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.181240, 34.291161, 24.482233>,  <34.368561, 34.151443, 24.536917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.181240, 34.291161, 24.482233>,  <33.869041, 34.524025, 24.391094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181240, 34.291161, 24.482233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243595, 0.052455, 0.968457,
		-0.575747, -0.811382, -0.100870,
		0.780498, -0.582157, 0.227849,
		34.415390, 34.116512, 24.550589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619381, 34.207798, 24.969730>,  <33.869041, 34.524025, 24.391094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619381, 34.207798, 24.969730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.009087, 34.118237, 24.980089>,  <34.242912, 34.064499, 24.986305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.009087, 34.118237, 24.980089>,  <33.619381, 34.207798, 24.969730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009087, 34.118237, 24.980089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070579, -0.193935, 0.978472,
		-0.214070, -0.955119, -0.204748,
		0.974265, -0.223912, 0.025896,
		34.301369, 34.051067, 24.987858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788776, 33.501499, 25.368176>,  <33.619381, 34.207798, 24.969730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788776, 33.501499, 25.368176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.119583, 33.725853, 25.383358>,  <34.318069, 33.860466, 25.392467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.119583, 33.725853, 25.383358>,  <33.788776, 33.501499, 25.368176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119583, 33.725853, 25.383358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078467, 0.048316, 0.995745,
		0.556668, -0.826481, 0.083969,
		0.827021, 0.560888, 0.037956,
		34.367691, 33.894119, 25.394745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152779, 33.307667, 25.920282>,  <33.788776, 33.501499, 25.368176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152779, 33.307667, 25.920282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.331551, 33.661591, 25.867580>,  <34.438812, 33.873947, 25.835960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.331551, 33.661591, 25.867580>,  <34.152779, 33.307667, 25.920282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331551, 33.661591, 25.867580> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024824, 0.159491, 0.986887,
		0.894225, -0.437798, 0.093245,
		0.446929, 0.884814, -0.131753,
		34.465630, 33.927036, 25.828054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798546, 33.458027, 26.329187>,  <34.152779, 33.307667, 25.920282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798546, 33.458027, 26.329187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.707684, 33.838051, 26.243601>,  <34.653168, 34.066067, 26.192249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.707684, 33.838051, 26.243601>,  <34.798546, 33.458027, 26.329187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707684, 33.838051, 26.243601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121487, 0.245637, 0.961719,
		0.966252, 0.192464, -0.171218,
		-0.227154, 0.950063, -0.213965,
		34.639538, 34.123070, 26.179411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295391, 33.802608, 26.749922>,  <34.798546, 33.458027, 26.329187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295391, 33.802608, 26.749922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.017086, 34.078491, 26.669697>,  <34.850105, 34.244019, 26.621561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.017086, 34.078491, 26.669697>,  <35.295391, 33.802608, 26.749922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017086, 34.078491, 26.669697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058792, 0.332977, 0.941100,
		0.715863, 0.642989, -0.272221,
		-0.695761, 0.689704, -0.200564,
		34.808357, 34.285400, 26.609528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535530, 34.374146, 27.093519>,  <35.295391, 33.802608, 26.749922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535530, 34.374146, 27.093519> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.144180, 34.422523, 27.026396>,  <34.909370, 34.451550, 26.986122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.144180, 34.422523, 27.026396>,  <35.535530, 34.374146, 27.093519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144180, 34.422523, 27.026396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145133, 0.176679, 0.973510,
		0.147390, 0.976810, -0.155304,
		-0.978373, 0.120946, -0.167808,
		34.850670, 34.458809, 26.976053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049484, 34.833881, 27.400143>,  <35.535530, 34.374146, 27.093519>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049484, 34.833881, 27.400143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.307667, 34.543652, 27.495581>,  <36.462578, 34.369514, 27.552843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.307667, 34.543652, 27.495581>,  <36.049484, 34.833881, 27.400143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307667, 34.543652, 27.495581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129792, -0.203642, -0.970404,
		0.752689, 0.657321, -0.037268,
		0.645456, -0.725575, 0.238594,
		36.501305, 34.325977, 27.567160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562286, 34.956062, 27.013819>,  <36.049484, 34.833881, 27.400143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562286, 34.956062, 27.013819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.648445, 34.578491, 27.113899>,  <36.700138, 34.351948, 27.173946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.648445, 34.578491, 27.113899>,  <36.562286, 34.956062, 27.013819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648445, 34.578491, 27.113899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367139, -0.159139, -0.916452,
		0.904884, 0.289256, 0.312276,
		0.215394, -0.943931, 0.250199,
		36.713062, 34.295311, 27.188959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185196, 34.853668, 26.728373>,  <36.562286, 34.956062, 27.013819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185196, 34.853668, 26.728373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.028492, 34.488010, 26.770044>,  <36.934467, 34.268616, 26.795048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.028492, 34.488010, 26.770044>,  <37.185196, 34.853668, 26.728373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028492, 34.488010, 26.770044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309996, -0.237757, -0.920529,
		0.866270, -0.328334, 0.376527,
		-0.391764, -0.914149, 0.104180,
		36.910961, 34.213764, 26.801298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765369, 34.396717, 26.636683>,  <37.185196, 34.853668, 26.728373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765369, 34.396717, 26.636683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.439526, 34.176712, 26.563044>,  <37.244019, 34.044708, 26.518860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.439526, 34.176712, 26.563044>,  <37.765369, 34.396717, 26.636683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439526, 34.176712, 26.563044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422586, -0.345418, -0.837919,
		0.397278, -0.760374, 0.513811,
		-0.814611, -0.550016, -0.184096,
		37.195141, 34.011707, 26.507814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037350, 33.994579, 26.126001>,  <37.765369, 34.396717, 26.636683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037350, 33.994579, 26.126001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.645565, 33.920483, 26.094162>,  <37.410492, 33.876026, 26.075058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.645565, 33.920483, 26.094162>,  <38.037350, 33.994579, 26.126001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645565, 33.920483, 26.094162> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116986, -0.200617, -0.972660,
		0.164209, -0.961997, 0.218168,
		-0.979464, -0.185242, -0.079597,
		37.351727, 33.864910, 26.070284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916630, 33.331787, 25.730360>,  <38.037350, 33.994579, 26.126001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916630, 33.331787, 25.730360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.567844, 33.522621, 25.686398>,  <37.358574, 33.637123, 25.660021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.567844, 33.522621, 25.686398>,  <37.916630, 33.331787, 25.730360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567844, 33.522621, 25.686398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028343, -0.174918, -0.984175,
		-0.488758, -0.861275, 0.138999,
		-0.871959, 0.477083, -0.109904,
		37.306255, 33.665745, 25.653427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621979, 32.989578, 25.284231>,  <37.916630, 33.331787, 25.730360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621979, 32.989578, 25.284231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.416168, 33.332275, 25.270035>,  <37.292683, 33.537891, 25.261517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.416168, 33.332275, 25.270035>,  <37.621979, 32.989578, 25.284231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416168, 33.332275, 25.270035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032317, -0.021986, -0.999236,
		-0.856865, -0.515280, -0.016375,
		-0.514527, 0.856739, -0.035492,
		37.261810, 33.589298, 25.259388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067947, 32.929100, 24.766945>,  <37.621979, 32.989578, 25.284231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067947, 32.929100, 24.766945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.122574, 33.323505, 24.805168>,  <37.155350, 33.560146, 24.828102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.122574, 33.323505, 24.805168>,  <37.067947, 32.929100, 24.766945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122574, 33.323505, 24.805168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149832, 0.074790, -0.985879,
		-0.979234, 0.148959, -0.137522,
		0.136570, 0.986011, 0.095556,
		37.163544, 33.619308, 24.833836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556385, 33.335632, 24.349020>,  <37.067947, 32.929100, 24.766945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556385, 33.335632, 24.349020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.875969, 33.572571, 24.390579>,  <37.067719, 33.714733, 24.415514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.875969, 33.572571, 24.390579>,  <36.556385, 33.335632, 24.349020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875969, 33.572571, 24.390579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028391, 0.135416, -0.990382,
		-0.600716, 0.794223, 0.091375,
		0.798958, 0.592344, 0.103896,
		37.115658, 33.750275, 24.421747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521423, 33.929863, 24.008972>,  <36.556385, 33.335632, 24.349020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521423, 33.929863, 24.008972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.919041, 33.892929, 24.032148>,  <37.157612, 33.870770, 24.046055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.919041, 33.892929, 24.032148>,  <36.521423, 33.929863, 24.008972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919041, 33.892929, 24.032148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083748, 0.306641, -0.948134,
		0.069777, 0.947336, 0.312547,
		0.994041, -0.092333, 0.057941,
		37.217255, 33.865231, 24.049530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727703, 34.551079, 23.631802>,  <36.521423, 33.929863, 24.008972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727703, 34.551079, 23.631802> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.053616, 34.323933, 23.678535>,  <37.249165, 34.187645, 23.706575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.053616, 34.323933, 23.678535>,  <36.727703, 34.551079, 23.631802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053616, 34.323933, 23.678535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339946, 0.304710, -0.889713,
		0.469641, 0.764642, 0.441318,
		0.814785, -0.567869, 0.116833,
		37.298050, 34.153572, 23.713585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228374, 34.966469, 23.458868>,  <36.727703, 34.551079, 23.631802>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228374, 34.966469, 23.458868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.397644, 34.604763, 23.436117>,  <37.499207, 34.387741, 23.422466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.397644, 34.604763, 23.436117>,  <37.228374, 34.966469, 23.458868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397644, 34.604763, 23.436117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359486, 0.225189, -0.905571,
		0.831681, 0.362769, 0.420364,
		0.423175, -0.904261, -0.056875,
		37.524597, 34.333485, 23.419054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971771, 35.030449, 23.169540>,  <37.228374, 34.966469, 23.458868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971771, 35.030449, 23.169540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.880634, 34.649887, 23.086666>,  <37.825951, 34.421551, 23.036942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.880634, 34.649887, 23.086666>,  <37.971771, 35.030449, 23.169540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880634, 34.649887, 23.086666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273929, 0.141558, -0.951275,
		0.934372, -0.273495, 0.228363,
		-0.227842, -0.951400, -0.207186,
		37.812283, 34.364468, 23.024511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561054, 34.800648, 22.729425>,  <37.971771, 35.030449, 23.169540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561054, 34.800648, 22.729425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.242470, 34.566757, 22.667786>,  <38.051319, 34.426422, 22.630802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.242470, 34.566757, 22.667786>,  <38.561054, 34.800648, 22.729425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242470, 34.566757, 22.667786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161071, 0.040486, -0.986112,
		0.582842, -0.810221, 0.061937,
		-0.796461, -0.584724, -0.154101,
		38.003532, 34.391338, 22.621555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739029, 34.185432, 23.125315>,  <38.561054, 34.800648, 22.729425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739029, 34.185432, 23.125315> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.128872, 34.130413, 23.054638>,  <39.362778, 34.097401, 23.012232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.128872, 34.130413, 23.054638>,  <38.739029, 34.185432, 23.125315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128872, 34.130413, 23.054638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208359, 0.268039, 0.940607,
		-0.082023, -0.953538, 0.289893,
		0.974607, -0.137553, -0.176692,
		39.421253, 34.089146, 23.001631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993488, 33.619305, 23.513838>,  <38.739029, 34.185432, 23.125315>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993488, 33.619305, 23.513838> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.285019, 33.881310, 23.434061>,  <39.459938, 34.038513, 23.386196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.285019, 33.881310, 23.434061>,  <38.993488, 33.619305, 23.513838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285019, 33.881310, 23.434061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097695, 0.188820, 0.977140,
		0.677698, -0.731646, 0.073625,
		0.728822, 0.655013, -0.199441,
		39.503666, 34.077812, 23.374229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569946, 33.371407, 23.960896>,  <38.993488, 33.619305, 23.513838>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569946, 33.371407, 23.960896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.606796, 33.764114, 23.894402>,  <39.628906, 33.999741, 23.854506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.606796, 33.764114, 23.894402>,  <39.569946, 33.371407, 23.960896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606796, 33.764114, 23.894402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199270, 0.145391, 0.969099,
		0.975605, -0.122400, -0.182245,
		0.092121, 0.981774, -0.166235,
		39.634434, 34.058647, 23.844530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116737, 33.513203, 24.284187>,  <39.569946, 33.371407, 23.960896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116737, 33.513203, 24.284187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.914410, 33.855042, 24.237185>,  <39.793015, 34.060146, 24.208982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.914410, 33.855042, 24.237185>,  <40.116737, 33.513203, 24.284187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914410, 33.855042, 24.237185> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342772, 0.324115, 0.881735,
		0.791616, 0.405719, -0.456876,
		-0.505818, 0.854600, -0.117505,
		39.762665, 34.111420, 24.201933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605293, 33.903450, 24.505400>,  <40.116737, 33.513203, 24.284187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605293, 33.903450, 24.505400> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.267574, 34.116604, 24.528030>,  <40.064945, 34.244495, 24.541609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.267574, 34.116604, 24.528030>,  <40.605293, 33.903450, 24.505400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267574, 34.116604, 24.528030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222673, 0.252838, 0.941536,
		0.487425, 0.807532, -0.332128,
		-0.844295, 0.532884, 0.056576,
		40.014286, 34.276470, 24.545004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757195, 34.464760, 24.859072>,  <40.605293, 33.903450, 24.505400>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.757195, 34.464760, 24.859072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.358189, 34.483219, 24.880394>,  <40.118786, 34.494297, 24.893188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.358189, 34.483219, 24.880394>,  <40.757195, 34.464760, 24.859072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.358189, 34.483219, 24.880394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061931, 0.212092, 0.975285,
		0.033704, 0.976159, -0.214422,
		-0.997511, 0.046150, 0.053307,
		40.058937, 34.497063, 24.896385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595280, 35.080826, 25.239031>,  <40.757195, 34.464760, 24.859072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595280, 35.080826, 25.239031> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.292252, 34.820438, 25.258284>,  <40.110435, 34.664204, 25.269836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.292252, 34.820438, 25.258284>,  <40.595280, 35.080826, 25.239031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.292252, 34.820438, 25.258284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045166, 0.125840, 0.991022,
		-0.651184, 0.748599, -0.124735,
		-0.757574, -0.650972, 0.048134,
		40.064980, 34.625145, 25.272724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165707, 35.361244, 25.612949>,  <40.595280, 35.080826, 25.239031>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165707, 35.361244, 25.612949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.039604, 34.984215, 25.657089>,  <39.963943, 34.757999, 25.683573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.039604, 34.984215, 25.657089>,  <40.165707, 35.361244, 25.612949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039604, 34.984215, 25.657089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153721, 0.165463, 0.974162,
		-0.936475, 0.290145, -0.197056,
		-0.315254, -0.942570, 0.110351,
		39.945026, 34.701443, 25.690195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560146, 35.390850, 26.025375>,  <40.165707, 35.361244, 25.612949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560146, 35.390850, 26.025375> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.713409, 35.023258, 26.062632>,  <39.805367, 34.802704, 26.084986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.713409, 35.023258, 26.062632>,  <39.560146, 35.390850, 26.025375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713409, 35.023258, 26.062632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293092, -0.025335, 0.955748,
		-0.875949, -0.393501, -0.279052,
		0.383158, -0.918975, 0.093139,
		39.828358, 34.747566, 26.090574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066647, 35.098873, 26.409288>,  <39.560146, 35.390850, 26.025375>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066647, 35.098873, 26.409288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.394447, 34.873035, 26.448587>,  <39.591125, 34.737534, 26.472166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.394447, 34.873035, 26.448587>,  <39.066647, 35.098873, 26.409288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394447, 34.873035, 26.448587> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175626, -0.084239, 0.980846,
		-0.545505, -0.821057, -0.168192,
		0.819499, -0.564595, 0.098246,
		39.640297, 34.703655, 26.478062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854614, 34.567863, 26.865444>,  <39.066647, 35.098873, 26.409288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854614, 34.567863, 26.865444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.253147, 34.588844, 26.892513>,  <39.492268, 34.601433, 26.908754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.253147, 34.588844, 26.892513>,  <38.854614, 34.567863, 26.865444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253147, 34.588844, 26.892513> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061379, -0.113510, 0.991639,
		0.059701, -0.992151, -0.109873,
		0.996327, 0.052458, 0.067674,
		39.552044, 34.604580, 26.912815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100594, 33.999584, 27.296505>,  <38.854614, 34.567863, 26.865444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100594, 33.999584, 27.296505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.408535, 34.254631, 27.307592>,  <39.593300, 34.407661, 27.314245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.408535, 34.254631, 27.307592>,  <39.100594, 33.999584, 27.296505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408535, 34.254631, 27.307592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041977, -0.093925, 0.994694,
		0.636840, -0.764604, -0.099073,
		0.769852, 0.637620, 0.027719,
		39.639492, 34.445915, 27.315908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670025, 33.691158, 27.681400>,  <39.100594, 33.999584, 27.296505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670025, 33.691158, 27.681400> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.822823, 34.060764, 27.688074>,  <39.914501, 34.282528, 27.692080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.822823, 34.060764, 27.688074>,  <39.670025, 33.691158, 27.681400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.822823, 34.060764, 27.688074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161539, -0.084538, 0.983239,
		0.909936, -0.372899, -0.181558,
		0.381997, 0.924013, 0.016686,
		39.937424, 34.337967, 27.693081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159103, 33.635490, 28.174519>,  <39.670025, 33.691158, 27.681400>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.159103, 33.635490, 28.174519> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.066853, 34.024529, 28.162720>,  <40.011501, 34.257950, 28.155640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.066853, 34.024529, 28.162720>,  <40.159103, 33.635490, 28.174519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066853, 34.024529, 28.162720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116556, 0.057710, 0.991506,
		0.966036, 0.225231, -0.126671,
		-0.230628, 0.972595, -0.029498,
		39.997665, 34.316307, 28.153870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.852619, 37.933086, 21.286444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.459934, 37.857269, 21.293484>,  <40.224323, 37.811779, 21.297707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.459934, 37.857269, 21.293484>,  <40.852619, 37.933086, 21.286444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.459934, 37.857269, 21.293484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038052, 0.104818, -0.993763,
		0.186520, -0.976261, -0.110114,
		-0.981714, -0.189547, 0.017598,
		40.165421, 37.800407, 21.298763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771626, 37.381634, 20.911592>,  <40.852619, 37.933086, 21.286444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771626, 37.381634, 20.911592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.399082, 37.527210, 20.916130>,  <40.175556, 37.614555, 20.918852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.399082, 37.527210, 20.916130>,  <40.771626, 37.381634, 20.911592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399082, 37.527210, 20.916130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087626, -0.193788, -0.977122,
		-0.353415, -0.911040, 0.212376,
		-0.931354, 0.363939, 0.011344,
		40.119675, 37.636391, 20.919533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386143, 36.894764, 20.376411>,  <40.771626, 37.381634, 20.911592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386143, 36.894764, 20.376411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.195156, 37.242828, 20.425148>,  <40.080563, 37.451668, 20.454390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.195156, 37.242828, 20.425148>,  <40.386143, 36.894764, 20.376411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195156, 37.242828, 20.425148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197569, 0.028793, -0.979866,
		-0.856149, -0.491927, 0.158169,
		-0.477468, 0.870160, 0.121841,
		40.051914, 37.503876, 20.461700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802719, 36.814175, 20.046129>,  <40.386143, 36.894764, 20.376411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.802719, 36.814175, 20.046129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.843719, 37.211288, 20.070993>,  <39.868320, 37.449558, 20.085911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.843719, 37.211288, 20.070993>,  <39.802719, 36.814175, 20.046129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843719, 37.211288, 20.070993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205236, 0.082251, -0.975250,
		-0.973330, 0.087210, 0.212187,
		0.102505, 0.992789, 0.062159,
		39.874470, 37.509125, 20.089642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162125, 37.126190, 19.798943>,  <39.802719, 36.814175, 20.046129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162125, 37.126190, 19.798943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.464924, 37.385525, 19.766397>,  <39.646603, 37.541126, 19.746870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.464924, 37.385525, 19.766397>,  <39.162125, 37.126190, 19.798943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464924, 37.385525, 19.766397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171131, 0.076544, -0.982271,
		-0.630610, 0.757500, 0.168893,
		0.756998, 0.648332, -0.081362,
		39.692024, 37.580025, 19.741989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815201, 37.682632, 19.406260>,  <39.162125, 37.126190, 19.798943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815201, 37.682632, 19.406260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.208611, 37.747952, 19.375259>,  <39.444656, 37.787144, 19.356659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.208611, 37.747952, 19.375259>,  <38.815201, 37.682632, 19.406260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208611, 37.747952, 19.375259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107306, 0.182453, -0.977341,
		-0.145458, 0.969559, 0.196971,
		0.983528, 0.163298, -0.077501,
		39.503670, 37.796940, 19.352009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856697, 38.288326, 19.023079>,  <38.815201, 37.682632, 19.406260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856697, 38.288326, 19.023079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.209793, 38.103600, 18.988453>,  <39.421650, 37.992764, 18.967678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.209793, 38.103600, 18.988453>,  <38.856697, 38.288326, 19.023079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209793, 38.103600, 18.988453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004701, 0.175542, -0.984461,
		0.469833, 0.869433, 0.152788,
		0.882743, -0.461813, -0.086563,
		39.474617, 37.965057, 18.962484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361031, 38.755070, 18.566710>,  <38.856697, 38.288326, 19.023079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361031, 38.755070, 18.566710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.520298, 38.389488, 18.535349>,  <39.615856, 38.170139, 18.516533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.520298, 38.389488, 18.535349>,  <39.361031, 38.755070, 18.566710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520298, 38.389488, 18.535349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165476, 0.155630, -0.973857,
		0.902265, 0.374783, 0.213204,
		0.398165, -0.913957, -0.078402,
		39.639748, 38.115299, 18.511827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816280, 38.871815, 17.980453>,  <39.361031, 38.755070, 18.566710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816280, 38.871815, 17.980453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.760067, 38.480358, 18.040480>,  <39.726341, 38.245483, 18.076494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.760067, 38.480358, 18.040480>,  <39.816280, 38.871815, 17.980453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760067, 38.480358, 18.040480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128899, -0.168362, -0.977261,
		0.981650, -0.117993, 0.149805,
		-0.140531, -0.978638, 0.150063,
		39.717907, 38.186768, 18.085499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319309, 38.614162, 17.477657>,  <39.816280, 38.871815, 17.980453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319309, 38.614162, 17.477657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.080437, 38.310307, 17.580667>,  <39.937115, 38.127991, 17.642473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.080437, 38.310307, 17.580667>,  <40.319309, 38.614162, 17.477657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.080437, 38.310307, 17.580667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032739, -0.297711, -0.954094,
		0.801441, -0.578194, 0.152916,
		-0.597177, -0.759644, 0.257528,
		39.901283, 38.082413, 17.657927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654274, 38.083057, 17.136024>,  <40.319309, 38.614162, 17.477657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.654274, 38.083057, 17.136024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.274952, 37.975845, 17.203991>,  <40.047359, 37.911518, 17.244770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.274952, 37.975845, 17.203991>,  <40.654274, 38.083057, 17.136024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274952, 37.975845, 17.203991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082843, -0.307773, -0.947846,
		0.306348, -0.912926, 0.269659,
		-0.948308, -0.268032, 0.169915,
		39.990459, 37.895435, 17.254965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548824, 37.366558, 16.977377>,  <40.654274, 38.083057, 17.136024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548824, 37.366558, 16.977377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.193817, 37.547882, 16.944323>,  <39.980812, 37.656677, 16.924490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.193817, 37.547882, 16.944323>,  <40.548824, 37.366558, 16.977377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193817, 37.547882, 16.944323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109558, -0.381797, -0.917730,
		-0.447567, -0.805444, 0.388514,
		-0.887514, 0.453310, -0.082637,
		39.927563, 37.683876, 16.919531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136963, 36.876385, 16.841234>,  <40.548824, 37.366558, 16.977377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136963, 36.876385, 16.841234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.025482, 37.223938, 16.677591>,  <39.958595, 37.432468, 16.579405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.025482, 37.223938, 16.677591>,  <40.136963, 36.876385, 16.841234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025482, 37.223938, 16.677591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109349, -0.451926, -0.885328,
		-0.954133, -0.202006, 0.220964,
		-0.278701, 0.868882, -0.409108,
		39.941872, 37.484604, 16.554859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250832, 36.117466, 16.760178>,  <40.136963, 36.876385, 16.841234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250832, 36.117466, 16.760178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.997353, 35.814102, 16.821154>,  <39.845264, 35.632084, 16.857738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.997353, 35.814102, 16.821154>,  <40.250832, 36.117466, 16.760178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997353, 35.814102, 16.821154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292341, -0.052340, 0.954881,
		-0.716214, 0.649670, 0.254883,
		-0.633698, -0.758412, 0.152438,
		39.807243, 35.586578, 16.866884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128967, 36.182304, 17.456963>,  <40.250832, 36.117466, 16.760178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128967, 36.182304, 17.456963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.986275, 35.812134, 17.405851>,  <39.900661, 35.590031, 17.375185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.986275, 35.812134, 17.405851>,  <40.128967, 36.182304, 17.456963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.986275, 35.812134, 17.405851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188157, -0.205146, 0.960475,
		-0.915064, 0.318585, 0.247307,
		-0.356727, -0.925429, -0.127778,
		39.879257, 35.534504, 17.367517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671124, 36.104073, 17.996937>,  <40.128967, 36.182304, 17.456963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671124, 36.104073, 17.996937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.788818, 35.741764, 17.874949>,  <39.859436, 35.524380, 17.801756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.788818, 35.741764, 17.874949>,  <39.671124, 36.104073, 17.996937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788818, 35.741764, 17.874949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048297, -0.304599, 0.951255,
		-0.954510, -0.294627, -0.045879,
		0.294240, -0.905767, -0.304973,
		39.877090, 35.470036, 17.783457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522633, 35.704884, 18.629675>,  <39.671124, 36.104073, 17.996937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522633, 35.704884, 18.629675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.709553, 35.431904, 18.404858>,  <39.821705, 35.268116, 18.269968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.709553, 35.431904, 18.404858>,  <39.522633, 35.704884, 18.629675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709553, 35.431904, 18.404858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130493, -0.575517, 0.807311,
		-0.874417, -0.450596, -0.179882,
		0.467297, -0.682454, -0.562042,
		39.849743, 35.227169, 18.236246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119820, 35.097275, 18.719450>,  <39.522633, 35.704884, 18.629675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119820, 35.097275, 18.719450> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.487854, 34.972939, 18.624100>,  <39.708675, 34.898338, 18.566889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.487854, 34.972939, 18.624100>,  <39.119820, 35.097275, 18.719450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487854, 34.972939, 18.624100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081146, -0.444094, 0.892298,
		-0.383222, -0.840333, -0.383381,
		0.920085, -0.310838, -0.238377,
		39.763878, 34.879688, 18.552588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175060, 34.491199, 19.036432>,  <39.119820, 35.097275, 18.719450>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175060, 34.491199, 19.036432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.562954, 34.571018, 18.980165>,  <39.795692, 34.618912, 18.946405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.562954, 34.571018, 18.980165>,  <39.175060, 34.491199, 19.036432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562954, 34.571018, 18.980165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200060, -0.319236, 0.926318,
		0.139941, -0.926428, -0.349497,
		0.969738, 0.199550, -0.140667,
		39.853874, 34.630882, 18.937965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484943, 33.998425, 19.436258>,  <39.175060, 34.491199, 19.036432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484943, 33.998425, 19.436258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.800079, 34.231503, 19.356485>,  <39.989159, 34.371349, 19.308622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.800079, 34.231503, 19.356485>,  <39.484943, 33.998425, 19.436258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800079, 34.231503, 19.356485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382174, -0.208605, 0.900237,
		0.482964, -0.785459, -0.387039,
		0.787838, 0.582699, -0.199433,
		40.036430, 34.406311, 19.296656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099438, 33.563251, 19.443144>,  <39.484943, 33.998425, 19.436258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099438, 33.563251, 19.443144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.174084, 33.947525, 19.525366>,  <40.218872, 34.178089, 19.574699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.174084, 33.947525, 19.525366>,  <40.099438, 33.563251, 19.443144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174084, 33.947525, 19.525366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332929, -0.258693, 0.906772,
		0.924301, -0.100780, -0.368117,
		0.186614, 0.960688, 0.205557,
		40.230068, 34.235733, 19.587032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.688553, 33.564739, 19.987120>,  <40.099438, 33.563251, 19.443144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.688553, 33.564739, 19.987120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.588142, 33.948666, 20.037294>,  <40.527897, 34.179024, 20.067400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.588142, 33.948666, 20.037294>,  <40.688553, 33.564739, 19.987120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.588142, 33.948666, 20.037294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353841, -0.029630, 0.934836,
		0.900990, 0.279052, -0.332185,
		-0.251025, 0.959819, 0.125436,
		40.512836, 34.236610, 20.074924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.246571, 33.951061, 20.365269>,  <40.688553, 33.564739, 19.987120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.246571, 33.951061, 20.365269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.896461, 34.136955, 20.418816>,  <40.686398, 34.248493, 20.450945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.896461, 34.136955, 20.418816>,  <41.246571, 33.951061, 20.365269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.896461, 34.136955, 20.418816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171677, 0.039786, 0.984350,
		0.452140, 0.884554, -0.114608,
		-0.875270, 0.464739, 0.133869,
		40.633881, 34.276379, 20.458977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293064, 34.522511, 20.945385>,  <41.246571, 33.951061, 20.365269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293064, 34.522511, 20.945385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.902306, 34.438496, 20.929623>,  <40.667850, 34.388088, 20.920166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.902306, 34.438496, 20.929623>,  <41.293064, 34.522511, 20.945385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.902306, 34.438496, 20.929623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051971, 0.054649, 0.997152,
		-0.207282, 0.976166, -0.064302,
		-0.976900, -0.210034, -0.039405,
		40.609234, 34.375484, 20.917801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.050835, 34.815006, 21.519142>,  <41.293064, 34.522511, 20.945385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.050835, 34.815006, 21.519142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.722630, 34.606354, 21.425627>,  <40.525707, 34.481163, 21.369516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.722630, 34.606354, 21.425627>,  <41.050835, 34.815006, 21.519142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722630, 34.606354, 21.425627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264299, -0.016456, 0.964300,
		-0.506858, 0.853012, -0.124365,
		-0.820513, -0.521632, -0.233791,
		40.476475, 34.449863, 21.355490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512207, 35.158302, 21.822002>,  <41.050835, 34.815006, 21.519142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512207, 35.158302, 21.822002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.369522, 34.790066, 21.758430>,  <40.283913, 34.569122, 21.720287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.369522, 34.790066, 21.758430>,  <40.512207, 35.158302, 21.822002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369522, 34.790066, 21.758430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349573, -0.026230, 0.936542,
		-0.866346, 0.389634, -0.312459,
		-0.356713, -0.920596, -0.158930,
		40.262508, 34.513885, 21.710751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788609, 35.249699, 21.986996>,  <40.512207, 35.158302, 21.822002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788609, 35.249699, 21.986996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.886852, 34.863125, 22.017138>,  <39.945797, 34.631180, 22.035223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.886852, 34.863125, 22.017138>,  <39.788609, 35.249699, 21.986996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886852, 34.863125, 22.017138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441335, -0.042271, 0.896346,
		-0.863075, -0.253409, -0.436904,
		0.245610, -0.966435, 0.075355,
		39.960537, 34.573193, 22.039743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250145, 34.934597, 22.309511>,  <39.788609, 35.249699, 21.986996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250145, 34.934597, 22.309511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.537731, 34.664387, 22.374928>,  <39.710285, 34.502258, 22.414177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.537731, 34.664387, 22.374928>,  <39.250145, 34.934597, 22.309511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537731, 34.664387, 22.374928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173872, 0.053004, 0.983341,
		-0.672944, -0.735425, -0.079348,
		0.718968, -0.675529, 0.163538,
		39.753422, 34.461727, 22.423988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823448, 34.305729, 22.214670>,  <39.250145, 34.934597, 22.309511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823448, 34.305729, 22.214670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.427948, 34.266949, 22.169117>,  <38.190647, 34.243679, 22.141785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.427948, 34.266949, 22.169117>,  <38.823448, 34.305729, 22.214670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427948, 34.266949, 22.169117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118157, -0.039547, -0.992207,
		0.091695, -0.994503, 0.050559,
		-0.988752, -0.096954, -0.113882,
		38.131321, 34.237862, 22.134953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656845, 33.748943, 21.694246>,  <38.823448, 34.305729, 22.214670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656845, 33.748943, 21.694246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.332062, 33.982422, 21.696384>,  <38.137192, 34.122509, 21.697668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.332062, 33.982422, 21.696384>,  <38.656845, 33.748943, 21.694246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332062, 33.982422, 21.696384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036937, -0.042237, -0.998425,
		-0.582547, -0.810875, 0.055855,
		-0.811957, 0.583693, 0.005346,
		38.088474, 34.157528, 21.697989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159908, 33.384632, 21.218998>,  <38.656845, 33.748943, 21.694246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159908, 33.384632, 21.218998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.025326, 33.760307, 21.246479>,  <37.944576, 33.985714, 21.262968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.025326, 33.760307, 21.246479>,  <38.159908, 33.384632, 21.218998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025326, 33.760307, 21.246479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197294, 0.001036, -0.980344,
		-0.920799, -0.343400, 0.184948,
		-0.336459, 0.939189, 0.068704,
		37.924389, 34.042065, 21.267090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504997, 33.479206, 20.875492>,  <38.159908, 33.384632, 21.218998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504997, 33.479206, 20.875492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.635269, 33.857361, 20.880859>,  <37.713432, 34.084251, 20.884079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.635269, 33.857361, 20.880859>,  <37.504997, 33.479206, 20.875492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635269, 33.857361, 20.880859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288990, 0.113048, -0.950634,
		-0.900231, 0.305728, 0.310024,
		0.325683, 0.945384, 0.013417,
		37.732975, 34.140976, 20.884884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011158, 33.819225, 20.401577>,  <37.504997, 33.479206, 20.875492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011158, 33.819225, 20.401577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.282063, 34.106514, 20.465418>,  <37.444603, 34.278889, 20.503723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.282063, 34.106514, 20.465418>,  <37.011158, 33.819225, 20.401577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282063, 34.106514, 20.465418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103531, 0.307800, -0.945802,
		-0.728425, 0.624028, 0.282818,
		0.677258, 0.718225, 0.159603,
		37.485241, 34.321983, 20.513298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721451, 34.428074, 20.174107>,  <37.011158, 33.819225, 20.401577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721451, 34.428074, 20.174107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.119766, 34.458759, 20.154049>,  <37.358757, 34.477169, 20.142014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.119766, 34.458759, 20.154049>,  <36.721451, 34.428074, 20.174107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119766, 34.458759, 20.154049> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063043, 0.176205, -0.982333,
		-0.066523, 0.981360, 0.180300,
		0.995791, 0.076714, -0.050146,
		37.418503, 34.481773, 20.139006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871830, 34.993557, 19.640829>,  <36.721451, 34.428074, 20.174107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871830, 34.993557, 19.640829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.216171, 34.791107, 19.661894>,  <37.422775, 34.669640, 19.674532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.216171, 34.791107, 19.661894>,  <36.871830, 34.993557, 19.640829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216171, 34.791107, 19.661894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010336, -0.120859, -0.992616,
		0.508749, 0.853952, -0.109273,
		0.860853, -0.506122, 0.052661,
		37.474426, 34.639271, 19.677692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272976, 35.448685, 19.414385>,  <36.871830, 34.993557, 19.640829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272976, 35.448685, 19.414385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.921616, 35.327610, 19.266443>,  <35.710800, 35.254967, 19.177677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.921616, 35.327610, 19.266443>,  <36.272976, 35.448685, 19.414385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921616, 35.327610, 19.266443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262123, -0.341981, 0.902408,
		-0.399630, 0.889624, 0.221055,
		-0.878401, -0.302686, -0.369856,
		35.658096, 35.236805, 19.155487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774239, 35.773201, 19.902477>,  <36.272976, 35.448685, 19.414385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774239, 35.773201, 19.902477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.622742, 35.469906, 19.690203>,  <35.531841, 35.287930, 19.562838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.622742, 35.469906, 19.690203>,  <35.774239, 35.773201, 19.902477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622742, 35.469906, 19.690203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370371, -0.401310, 0.837721,
		-0.848160, 0.513834, -0.128834,
		-0.378747, -0.758238, -0.530684,
		35.509117, 35.242435, 19.530998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179630, 35.685623, 20.204586>,  <35.774239, 35.773201, 19.902477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179630, 35.685623, 20.204586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.222061, 35.331638, 20.023220>,  <35.247520, 35.119247, 19.914400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.222061, 35.331638, 20.023220>,  <35.179630, 35.685623, 20.204586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222061, 35.331638, 20.023220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424537, -0.452646, 0.784143,
		-0.899175, 0.109310, -0.423717,
		0.106079, -0.884965, -0.453414,
		35.253883, 35.066151, 19.887196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615696, 35.448311, 20.387411>,  <35.179630, 35.685623, 20.204586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615696, 35.448311, 20.387411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.835762, 35.124168, 20.306765>,  <34.967800, 34.929684, 20.258377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.835762, 35.124168, 20.306765>,  <34.615696, 35.448311, 20.387411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835762, 35.124168, 20.306765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356192, -0.446100, 0.821050,
		-0.755282, -0.379896, -0.534068,
		0.550161, -0.810355, -0.201615,
		35.000809, 34.881062, 20.246281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135605, 34.827984, 20.449804>,  <34.615696, 35.448311, 20.387411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.135605, 34.827984, 20.449804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.506382, 34.688984, 20.506405>,  <34.728848, 34.605583, 20.540365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.506382, 34.688984, 20.506405>,  <34.135605, 34.827984, 20.449804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506382, 34.688984, 20.506405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285114, -0.407199, 0.867697,
		-0.243906, -0.844649, -0.476527,
		0.926941, -0.347501, 0.141503,
		34.784466, 34.584732, 20.548855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035652, 34.177464, 20.705069>,  <34.135605, 34.827984, 20.449804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035652, 34.177464, 20.705069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.419811, 34.244713, 20.793947>,  <34.650307, 34.285061, 20.847275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.419811, 34.244713, 20.793947>,  <34.035652, 34.177464, 20.705069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419811, 34.244713, 20.793947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167215, -0.290123, 0.942268,
		0.222881, -0.942106, -0.250521,
		0.960398, 0.168123, 0.222197,
		34.707932, 34.295151, 20.860605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286114, 33.578945, 21.136276>,  <34.035652, 34.177464, 20.705069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286114, 33.578945, 21.136276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.561859, 33.853714, 21.228298>,  <34.727306, 34.018574, 21.283512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.561859, 33.853714, 21.228298>,  <34.286114, 33.578945, 21.136276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561859, 33.853714, 21.228298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156794, -0.168562, 0.973141,
		0.707248, -0.706915, -0.008495,
		0.689360, 0.686919, 0.230055,
		34.768665, 34.059792, 21.297314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.959530, 40.006981, 17.693047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.110126, 39.643074, 17.623102>,  <37.200485, 39.424728, 17.581137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.110126, 39.643074, 17.623102>,  <36.959530, 40.006981, 17.693047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110126, 39.643074, 17.623102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056850, -0.211079, 0.975814,
		-0.924673, -0.357447, -0.131190,
		0.376493, -0.909768, -0.174859,
		37.223076, 39.370144, 17.570644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521225, 39.465267, 18.029072>,  <36.959530, 40.006981, 17.693047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521225, 39.465267, 18.029072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.874546, 39.281189, 17.993324>,  <37.086540, 39.170742, 17.971876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.874546, 39.281189, 17.993324>,  <36.521225, 39.465267, 18.029072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874546, 39.281189, 17.993324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034651, -0.254205, 0.966529,
		-0.467514, -0.850645, -0.240487,
		0.883306, -0.460199, -0.089369,
		37.139538, 39.143131, 17.966515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311417, 38.702450, 18.124702>,  <36.521225, 39.465267, 18.029072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311417, 38.702450, 18.124702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.695438, 38.791798, 18.192110>,  <36.925854, 38.845406, 18.232555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.695438, 38.791798, 18.192110>,  <36.311417, 38.702450, 18.124702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695438, 38.791798, 18.192110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024903, -0.531671, 0.846585,
		0.278697, -0.816965, -0.504872,
		0.960056, 0.223368, 0.168520,
		36.983456, 38.858807, 18.242666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611778, 38.115406, 18.505917>,  <36.311417, 38.702450, 18.124702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611778, 38.115406, 18.505917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.864147, 38.419067, 18.569954>,  <37.015568, 38.601265, 18.608376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.864147, 38.419067, 18.569954>,  <36.611778, 38.115406, 18.505917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864147, 38.419067, 18.569954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007351, -0.200486, 0.979669,
		0.775813, -0.619270, -0.120910,
		0.630920, 0.759151, 0.160092,
		37.053425, 38.646812, 18.617981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317810, 37.881233, 18.828936>,  <36.611778, 38.115406, 18.505917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317810, 37.881233, 18.828936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.279617, 38.270416, 18.913061>,  <37.256702, 38.503925, 18.963535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.279617, 38.270416, 18.913061>,  <37.317810, 37.881233, 18.828936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279617, 38.270416, 18.913061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277072, -0.176952, 0.944415,
		0.956093, 0.148444, -0.252685,
		-0.095480, 0.972961, 0.210312,
		37.250973, 38.562305, 18.976154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919685, 38.046883, 19.335934>,  <37.317810, 37.881233, 18.828936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919685, 38.046883, 19.335934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.662449, 38.350288, 19.378059>,  <37.508106, 38.532333, 19.403336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.662449, 38.350288, 19.378059>,  <37.919685, 38.046883, 19.335934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662449, 38.350288, 19.378059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216646, 0.048297, 0.975055,
		0.734508, 0.649862, -0.195389,
		-0.643088, 0.758516, 0.105316,
		37.469524, 38.577843, 19.409655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254139, 38.497818, 19.770891>,  <37.919685, 38.046883, 19.335934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254139, 38.497818, 19.770891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.873692, 38.619678, 19.791128>,  <37.645424, 38.692795, 19.803270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.873692, 38.619678, 19.791128>,  <38.254139, 38.497818, 19.770891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873692, 38.619678, 19.791128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120865, 0.216453, 0.968782,
		0.284194, 0.927541, -0.242695,
		-0.951118, 0.304656, 0.050592,
		37.588356, 38.711075, 19.806305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250412, 39.043911, 20.049288>,  <38.254139, 38.497818, 19.770891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250412, 39.043911, 20.049288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.875652, 38.936508, 20.138838>,  <37.650795, 38.872066, 20.192568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.875652, 38.936508, 20.138838>,  <38.250412, 39.043911, 20.049288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875652, 38.936508, 20.138838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213919, 0.066181, 0.974607,
		-0.276507, 0.961001, -0.004566,
		-0.936900, -0.268509, 0.223876,
		37.594582, 38.855957, 20.206001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974819, 39.532024, 20.530561>,  <38.250412, 39.043911, 20.049288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974819, 39.532024, 20.530561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.733398, 39.214664, 20.562180>,  <37.588547, 39.024250, 20.581150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.733398, 39.214664, 20.562180>,  <37.974819, 39.532024, 20.530561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733398, 39.214664, 20.562180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005438, 0.103233, 0.994642,
		-0.797308, 0.599885, -0.066621,
		-0.603548, -0.793398, 0.079046,
		37.552334, 38.976646, 20.585894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422009, 39.771061, 20.948624>,  <37.974819, 39.532024, 20.530561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422009, 39.771061, 20.948624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.368172, 39.376621, 20.987608>,  <37.335869, 39.139957, 21.010998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.368172, 39.376621, 20.987608>,  <37.422009, 39.771061, 20.948624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368172, 39.376621, 20.987608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128105, 0.114844, 0.985089,
		-0.982586, 0.120097, -0.141780,
		-0.134589, -0.986097, 0.097459,
		37.327793, 39.080791, 21.016846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804771, 39.742912, 21.350449>,  <37.422009, 39.771061, 20.948624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804771, 39.742912, 21.350449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.999588, 39.394596, 21.377306>,  <37.116478, 39.185604, 21.393421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.999588, 39.394596, 21.377306>,  <36.804771, 39.742912, 21.350449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999588, 39.394596, 21.377306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187395, -0.029105, 0.981853,
		-0.853036, -0.490788, -0.177358,
		0.487044, -0.870793, 0.067143,
		37.145702, 39.133358, 21.397449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367203, 39.251217, 21.649090>,  <36.804771, 39.742912, 21.350449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367203, 39.251217, 21.649090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.739326, 39.122753, 21.719940>,  <36.962601, 39.045673, 21.762451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.739326, 39.122753, 21.719940>,  <36.367203, 39.251217, 21.649090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739326, 39.122753, 21.719940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250519, -0.203702, 0.946439,
		-0.267877, -0.924858, -0.269963,
		0.930313, -0.321159, 0.177127,
		37.018421, 39.026405, 21.773079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819679, 38.735641, 21.501444>,  <36.367203, 39.251217, 21.649090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819679, 38.735641, 21.501444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.435875, 38.626324, 21.528744>,  <35.205593, 38.560734, 21.545124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.435875, 38.626324, 21.528744>,  <35.819679, 38.735641, 21.501444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435875, 38.626324, 21.528744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078684, 0.027380, -0.996523,
		0.270476, -0.961541, -0.047775,
		-0.959506, -0.273295, 0.068252,
		35.148022, 38.544334, 21.549219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778809, 38.059124, 21.180565>,  <35.819679, 38.735641, 21.501444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778809, 38.059124, 21.180565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.401192, 38.190742, 21.189629>,  <35.174622, 38.269714, 21.195066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.401192, 38.190742, 21.189629>,  <35.778809, 38.059124, 21.180565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401192, 38.190742, 21.189629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043620, -0.056455, -0.997452,
		-0.326927, -0.942625, 0.067649,
		-0.944043, 0.329045, 0.022661,
		35.117977, 38.289455, 21.196426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383121, 37.580128, 20.848553>,  <35.778809, 38.059124, 21.180565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383121, 37.580128, 20.848553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.206547, 37.937176, 20.811964>,  <35.100601, 38.151405, 20.790010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.206547, 37.937176, 20.811964>,  <35.383121, 37.580128, 20.848553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206547, 37.937176, 20.811964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188485, -0.191913, -0.963142,
		-0.877271, -0.407929, 0.252963,
		-0.441440, 0.892616, -0.091471,
		35.074116, 38.204960, 20.784523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989834, 37.374126, 20.297215>,  <35.383121, 37.580128, 20.848553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989834, 37.374126, 20.297215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.967636, 37.770771, 20.343922>,  <34.954319, 38.008759, 20.371946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.967636, 37.770771, 20.343922>,  <34.989834, 37.374126, 20.297215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967636, 37.770771, 20.343922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246966, 0.099682, -0.963883,
		-0.967434, -0.082325, 0.239362,
		-0.055492, 0.991608, 0.116768,
		34.950989, 38.068253, 20.378952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315022, 37.545277, 19.955172>,  <34.989834, 37.374126, 20.297215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315022, 37.545277, 19.955172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.539825, 37.876110, 19.958494>,  <34.674709, 38.074612, 19.960487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.539825, 37.876110, 19.958494>,  <34.315022, 37.545277, 19.955172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539825, 37.876110, 19.958494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237481, 0.170976, -0.956227,
		-0.792303, 0.535439, 0.292508,
		0.562013, 0.827087, 0.008308,
		34.708431, 38.124237, 19.960987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925560, 38.064472, 19.535870>,  <34.315022, 37.545277, 19.955172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925560, 38.064472, 19.535870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.311268, 38.170383, 19.532225>,  <34.542690, 38.233929, 19.530037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.311268, 38.170383, 19.532225>,  <33.925560, 38.064472, 19.535870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311268, 38.170383, 19.532225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100573, 0.334008, -0.937189,
		-0.245103, 0.904617, 0.348702,
		0.964267, 0.264778, -0.009113,
		34.600548, 38.249817, 19.529491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011341, 38.758102, 19.128519>,  <33.925560, 38.064472, 19.535870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011341, 38.758102, 19.128519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.379402, 38.605862, 19.165314>,  <34.600239, 38.514519, 19.187389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.379402, 38.605862, 19.165314>,  <34.011341, 38.758102, 19.128519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379402, 38.605862, 19.165314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187432, 0.221877, -0.956891,
		0.343782, 0.897728, 0.275497,
		0.920154, -0.380599, 0.091986,
		34.655449, 38.491680, 19.192909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438892, 39.303932, 18.870485>,  <34.011341, 38.758102, 19.128519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438892, 39.303932, 18.870485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.614319, 38.946640, 18.830879>,  <34.719574, 38.732265, 18.807116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.614319, 38.946640, 18.830879>,  <34.438892, 39.303932, 18.870485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614319, 38.946640, 18.830879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118972, 0.166913, -0.978768,
		0.890791, 0.417470, 0.179471,
		0.438562, -0.893229, -0.099017,
		34.745888, 38.678673, 18.801174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945187, 39.521271, 18.548090>,  <34.438892, 39.303932, 18.870485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945187, 39.521271, 18.548090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.943745, 39.125004, 18.493576>,  <34.942879, 38.887245, 18.460867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.943745, 39.125004, 18.493576>,  <34.945187, 39.521271, 18.548090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943745, 39.125004, 18.493576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310408, 0.128445, -0.941886,
		0.950597, -0.045702, 0.307046,
		-0.003608, -0.990663, -0.136286,
		34.942661, 38.827805, 18.452690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611774, 39.268726, 18.236235>,  <34.945187, 39.521271, 18.548090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611774, 39.268726, 18.236235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.326088, 39.002949, 18.148222>,  <35.154678, 38.843483, 18.095415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.326088, 39.002949, 18.148222>,  <35.611774, 39.268726, 18.236235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326088, 39.002949, 18.148222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308437, -0.016584, -0.951100,
		0.628306, -0.747152, 0.216784,
		-0.714212, -0.664447, -0.220029,
		35.111824, 38.803616, 18.082212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830288, 39.032982, 17.613266>,  <35.611774, 39.268726, 18.236235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830288, 39.032982, 17.613266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.497559, 38.812958, 17.642914>,  <35.297920, 38.680943, 17.660702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.497559, 38.812958, 17.642914>,  <35.830288, 39.032982, 17.613266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497559, 38.812958, 17.642914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069108, -0.029856, -0.997162,
		0.550714, -0.834590, -0.013179,
		-0.831828, -0.550062, 0.074119,
		35.248009, 38.647938, 17.665150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901291, 38.267738, 17.330275>,  <35.830288, 39.032982, 17.613266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901291, 38.267738, 17.330275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.529297, 38.411404, 17.298950>,  <35.306103, 38.497604, 17.280155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.529297, 38.411404, 17.298950>,  <35.901291, 38.267738, 17.330275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529297, 38.411404, 17.298950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014536, -0.176936, -0.984115,
		-0.367315, -0.916349, 0.159327,
		-0.929983, 0.359164, -0.078311,
		35.250301, 38.519154, 17.275457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595081, 37.883064, 16.798729>,  <35.901291, 38.267738, 17.330275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595081, 37.883064, 16.798729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.324368, 38.177433, 16.806477>,  <35.161938, 38.354053, 16.811125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.324368, 38.177433, 16.806477>,  <35.595081, 37.883064, 16.798729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324368, 38.177433, 16.806477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144604, -0.107095, -0.983677,
		-0.721837, -0.668540, 0.178898,
		-0.676787, 0.735924, 0.019369,
		35.121330, 38.398209, 16.812286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885216, 37.810417, 17.025133>,  <35.595081, 37.883064, 16.798729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885216, 37.810417, 17.025133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.062984, 37.555752, 16.773056>,  <35.169647, 37.402950, 16.621809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.062984, 37.555752, 16.773056>,  <34.885216, 37.810417, 17.025133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062984, 37.555752, 16.773056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134230, -0.742871, 0.655839,
		-0.885703, -0.206880, -0.415609,
		0.444424, -0.636666, -0.630194,
		35.196312, 37.364754, 16.583998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445179, 37.159130, 17.140675>,  <34.885216, 37.810417, 17.025133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445179, 37.159130, 17.140675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.811787, 37.073967, 17.005228>,  <35.031750, 37.022869, 16.923960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.811787, 37.073967, 17.005228>,  <34.445179, 37.159130, 17.140675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811787, 37.073967, 17.005228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052201, -0.775660, 0.628989,
		-0.396567, -0.594158, -0.699794,
		0.916521, -0.212906, -0.338617,
		35.086742, 37.010094, 16.903643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451183, 36.475559, 17.111086>,  <34.445179, 37.159130, 17.140675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451183, 36.475559, 17.111086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.838665, 36.574684, 17.116837>,  <35.071152, 36.634159, 17.120287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.838665, 36.574684, 17.116837>,  <34.451183, 36.475559, 17.111086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838665, 36.574684, 17.116837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185515, -0.761222, 0.621390,
		0.164936, -0.599273, -0.783370,
		0.968700, 0.247817, 0.014379,
		35.129276, 36.649029, 17.121151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792782, 35.845463, 16.998356>,  <34.451183, 36.475559, 17.111086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792782, 35.845463, 16.998356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.088432, 36.061371, 17.159523>,  <35.265823, 36.190918, 17.256224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.088432, 36.061371, 17.159523>,  <34.792782, 35.845463, 16.998356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088432, 36.061371, 17.159523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197452, -0.745531, 0.636551,
		0.643979, -0.390934, -0.657619,
		0.739124, 0.539773, 0.402915,
		35.310169, 36.223301, 17.280397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429501, 35.491051, 16.965582>,  <34.792782, 35.845463, 16.998356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429501, 35.491051, 16.965582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.451622, 35.757271, 17.263302>,  <35.464893, 35.917004, 17.441935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.451622, 35.757271, 17.263302>,  <35.429501, 35.491051, 16.965582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451622, 35.757271, 17.263302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267038, -0.728145, 0.631265,
		0.962098, 0.163844, -0.217997,
		0.055305, 0.665552, 0.744300,
		35.468212, 35.956936, 17.486591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928013, 35.164696, 17.411457>,  <35.429501, 35.491051, 16.965582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928013, 35.164696, 17.411457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.779057, 35.446800, 17.652765>,  <35.689682, 35.616062, 17.797550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.779057, 35.446800, 17.652765>,  <35.928013, 35.164696, 17.411457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779057, 35.446800, 17.652765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101048, -0.615345, 0.781754,
		0.922558, 0.352079, 0.157885,
		-0.372393, 0.705259, 0.603268,
		35.667339, 35.658379, 17.833746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324650, 35.169807, 18.079155>,  <35.928013, 35.164696, 17.411457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324650, 35.169807, 18.079155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.973000, 35.335487, 18.173449>,  <35.762009, 35.434895, 18.230024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.973000, 35.335487, 18.173449>,  <36.324650, 35.169807, 18.079155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973000, 35.335487, 18.173449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012438, -0.474525, 0.880154,
		0.476426, 0.776699, 0.412016,
		-0.879127, 0.414203, 0.235736,
		35.709263, 35.459747, 18.244169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479889, 35.204224, 18.730993>,  <36.324650, 35.169807, 18.079155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479889, 35.204224, 18.730993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.084877, 35.253532, 18.691807>,  <35.847870, 35.283115, 18.668295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.084877, 35.253532, 18.691807>,  <36.479889, 35.204224, 18.730993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084877, 35.253532, 18.691807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134151, -0.332926, 0.933362,
		0.082439, 0.934861, 0.345310,
		-0.987526, 0.123269, -0.097966,
		35.788620, 35.290512, 18.662416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211834, 35.274643, 19.008688>,  <36.479889, 35.204224, 18.730993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211834, 35.274643, 19.008688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.407280, 34.944767, 19.122635>,  <37.524548, 34.746841, 19.191004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.407280, 34.944767, 19.122635>,  <37.211834, 35.274643, 19.008688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407280, 34.944767, 19.122635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133332, -0.252085, -0.958476,
		0.862254, 0.506303, -0.013215,
		0.488611, -0.824688, 0.284868,
		37.553864, 34.697361, 19.208096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776550, 35.257504, 18.552139>,  <37.211834, 35.274643, 19.008688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776550, 35.257504, 18.552139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.707584, 34.894867, 18.706215>,  <37.666206, 34.677284, 18.798660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.707584, 34.894867, 18.706215>,  <37.776550, 35.257504, 18.552139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707584, 34.894867, 18.706215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173861, -0.412915, -0.894021,
		0.969560, -0.087169, 0.228812,
		-0.172410, -0.906589, 0.385191,
		37.655861, 34.622890, 18.821772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126492, 34.869125, 18.192360>,  <37.776550, 35.257504, 18.552139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126492, 34.869125, 18.192360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.893269, 34.591866, 18.361870>,  <37.753334, 34.425510, 18.463575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.893269, 34.591866, 18.361870>,  <38.126492, 34.869125, 18.192360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893269, 34.591866, 18.361870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064898, -0.559683, -0.826162,
		0.809837, -0.454195, 0.371310,
		-0.583054, -0.693154, 0.423776,
		37.718353, 34.383919, 18.489002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421062, 34.158260, 18.034094>,  <38.126492, 34.869125, 18.192360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421062, 34.158260, 18.034094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.028030, 34.135151, 18.104742>,  <37.792210, 34.121284, 18.147131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.028030, 34.135151, 18.104742>,  <38.421062, 34.158260, 18.034094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028030, 34.135151, 18.104742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120070, -0.528025, -0.840698,
		0.141826, -0.847262, 0.511891,
		-0.982582, -0.057771, 0.176618,
		37.733257, 34.117821, 18.157728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200459, 33.435497, 17.900118>,  <38.421062, 34.158260, 18.034094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200459, 33.435497, 17.900118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.841408, 33.611477, 17.889425>,  <37.625977, 33.717064, 17.883009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.841408, 33.611477, 17.889425>,  <38.200459, 33.435497, 17.900118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841408, 33.611477, 17.889425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253449, -0.564829, -0.785323,
		-0.360601, -0.698150, 0.618509,
		-0.897625, 0.439949, -0.026733,
		37.572121, 33.743462, 17.881405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727448, 32.916698, 17.615231>,  <38.200459, 33.435497, 17.900118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727448, 32.916698, 17.615231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.544685, 33.269474, 17.568872>,  <37.435028, 33.481140, 17.541058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.544685, 33.269474, 17.568872>,  <37.727448, 32.916698, 17.615231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544685, 33.269474, 17.568872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315436, -0.282467, -0.905932,
		-0.831709, -0.377365, 0.407254,
		-0.456902, 0.881935, -0.115896,
		37.407616, 33.534054, 17.534103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057037, 32.776646, 17.324848>,  <37.727448, 32.916698, 17.615231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057037, 32.776646, 17.324848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.156837, 33.145470, 17.206484>,  <37.216717, 33.366764, 17.135466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.156837, 33.145470, 17.206484>,  <37.057037, 32.776646, 17.324848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156837, 33.145470, 17.206484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111208, -0.276273, -0.954623,
		-0.961968, 0.271085, 0.033610,
		0.249498, 0.922055, -0.295913,
		37.231686, 33.422085, 17.117710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544441, 32.972656, 16.932091>,  <37.057037, 32.776646, 17.324848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544441, 32.972656, 16.932091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.842983, 33.217739, 16.828133>,  <37.022110, 33.364788, 16.765759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.842983, 33.217739, 16.828133>,  <36.544441, 32.972656, 16.932091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842983, 33.217739, 16.828133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274602, -0.072213, -0.958842,
		-0.606255, 0.787006, 0.114354,
		0.746357, 0.612705, -0.259893,
		37.066891, 33.401550, 16.750164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309349, 33.360065, 16.382893>,  <36.544441, 32.972656, 16.932091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309349, 33.360065, 16.382893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.707470, 33.392872, 16.362329>,  <36.946342, 33.412556, 16.349991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.707470, 33.392872, 16.362329>,  <36.309349, 33.360065, 16.382893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707470, 33.392872, 16.362329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039034, -0.145904, -0.988528,
		-0.088577, 0.985893, -0.142018,
		0.995304, 0.082018, -0.051408,
		37.006062, 33.417477, 16.346907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.537548, 35.852474, 32.135048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.914585, 35.977226, 32.087288>,  <36.140808, 36.052078, 32.058632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.914585, 35.977226, 32.087288>,  <35.537548, 35.852474, 32.135048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914585, 35.977226, 32.087288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041324, -0.245844, -0.968428,
		-0.331391, 0.917763, -0.218841,
		0.942588, 0.311885, -0.119396,
		36.197361, 36.070793, 32.051468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448498, 36.141098, 31.480850>,  <35.537548, 35.852474, 32.135048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448498, 36.141098, 31.480850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.827942, 36.030586, 31.542561>,  <36.055611, 35.964279, 31.579586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.827942, 36.030586, 31.542561>,  <35.448498, 36.141098, 31.480850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827942, 36.030586, 31.542561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038752, -0.382435, -0.923169,
		0.314057, 0.881709, -0.352076,
		0.948613, -0.276284, 0.154274,
		36.112526, 35.947701, 31.588842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888508, 36.315212, 30.819340>,  <35.448498, 36.141098, 31.480850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888508, 36.315212, 30.819340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.147797, 36.070415, 31.000565>,  <36.303371, 35.923538, 31.109299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.147797, 36.070415, 31.000565>,  <35.888508, 36.315212, 30.819340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147797, 36.070415, 31.000565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302741, -0.338811, -0.890817,
		0.698677, 0.714612, -0.034350,
		0.648227, -0.611994, 0.453062,
		36.342266, 35.886818, 31.136484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599865, 36.336796, 30.422356>,  <35.888508, 36.315212, 30.819340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599865, 36.336796, 30.422356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.599781, 35.998440, 30.635698>,  <36.599731, 35.795425, 30.763704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.599781, 35.998440, 30.635698>,  <36.599865, 36.336796, 30.422356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599781, 35.998440, 30.635698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303115, -0.508320, -0.806059,
		0.952954, 0.161498, 0.256510,
		-0.000212, -0.845890, 0.533358,
		36.599716, 35.744675, 30.795706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123875, 36.037846, 30.163671>,  <36.599865, 36.336796, 30.422356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123875, 36.037846, 30.163671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.914368, 35.750168, 30.346287>,  <36.788666, 35.577560, 30.455856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.914368, 35.750168, 30.346287>,  <37.123875, 36.037846, 30.163671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914368, 35.750168, 30.346287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215202, -0.630258, -0.745965,
		0.824232, -0.292462, 0.484879,
		-0.523765, -0.719195, 0.456540,
		36.757236, 35.534409, 30.483250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581059, 35.438305, 30.330441>,  <37.123875, 36.037846, 30.163671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581059, 35.438305, 30.330441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.211811, 35.285042, 30.317535>,  <36.990261, 35.193085, 30.309792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.211811, 35.285042, 30.317535>,  <37.581059, 35.438305, 30.330441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211811, 35.285042, 30.317535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225995, -0.472766, -0.851715,
		0.311085, -0.793527, 0.523010,
		-0.923121, -0.383154, -0.032263,
		36.934875, 35.170097, 30.307856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668179, 34.726315, 30.219009>,  <37.581059, 35.438305, 30.330441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668179, 34.726315, 30.219009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.297192, 34.826981, 30.108400>,  <37.074600, 34.887379, 30.042034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.297192, 34.826981, 30.108400>,  <37.668179, 34.726315, 30.219009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297192, 34.826981, 30.108400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110485, -0.522074, -0.845713,
		-0.357202, -0.814925, 0.456403,
		-0.927469, 0.251664, -0.276523,
		37.018951, 34.902481, 30.025444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425858, 34.226734, 29.778019>,  <37.668179, 34.726315, 30.219009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425858, 34.226734, 29.778019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.159218, 34.502548, 29.664749>,  <36.999233, 34.668037, 29.596786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.159218, 34.502548, 29.664749>,  <37.425858, 34.226734, 29.778019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159218, 34.502548, 29.664749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027507, -0.356876, -0.933747,
		-0.744907, -0.630225, 0.218927,
		-0.666601, 0.689533, -0.283175,
		36.959236, 34.709408, 29.579796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923836, 33.793419, 29.553936>,  <37.425858, 34.226734, 29.778019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923836, 33.793419, 29.553936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.874924, 34.157337, 29.395281>,  <36.845577, 34.375687, 29.300087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.874924, 34.157337, 29.395281>,  <36.923836, 33.793419, 29.553936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874924, 34.157337, 29.395281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187976, -0.413634, -0.890827,
		-0.974532, -0.034369, 0.221598,
		-0.122277, 0.909794, -0.396639,
		36.838242, 34.430275, 29.276289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256287, 33.749088, 29.078211>,  <36.923836, 33.793419, 29.553936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256287, 33.749088, 29.078211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.449902, 34.082035, 28.970238>,  <36.566071, 34.281803, 28.905453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.449902, 34.082035, 28.970238>,  <36.256287, 33.749088, 29.078211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449902, 34.082035, 28.970238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022211, -0.296695, -0.954714,
		-0.874763, 0.468117, -0.125125,
		0.484042, 0.832369, -0.269935,
		36.595116, 34.331745, 28.889257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765736, 34.115742, 28.636469>,  <36.256287, 33.749088, 29.078211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765736, 34.115742, 28.636469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.129196, 34.256176, 28.546053>,  <36.347271, 34.340435, 28.491804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.129196, 34.256176, 28.546053>,  <35.765736, 34.115742, 28.636469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129196, 34.256176, 28.546053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109230, -0.322628, -0.940202,
		-0.403016, 0.879006, -0.254807,
		0.908651, 0.351084, -0.226038,
		36.401791, 34.361500, 28.478241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652447, 34.473408, 27.990213>,  <35.765736, 34.115742, 28.636469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652447, 34.473408, 27.990213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.042458, 34.388512, 28.016380>,  <36.276463, 34.337574, 28.032080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.042458, 34.388512, 28.016380>,  <35.652447, 34.473408, 27.990213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042458, 34.388512, 28.016380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002910, -0.282312, -0.959318,
		0.222072, 0.935551, -0.274644,
		0.975026, -0.212239, 0.065416,
		36.334965, 34.324841, 28.036005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338860, 34.950703, 27.459055>,  <35.652447, 34.473408, 27.990213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338860, 34.950703, 27.459055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.977650, 34.788208, 27.403187>,  <34.760921, 34.690712, 27.369665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.977650, 34.788208, 27.403187>,  <35.338860, 34.950703, 27.459055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977650, 34.788208, 27.403187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193236, 0.093749, 0.976663,
		-0.383666, 0.908944, -0.163159,
		-0.903028, -0.406241, -0.139672,
		34.706741, 34.666336, 27.361284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925999, 35.359570, 27.893435>,  <35.338860, 34.950703, 27.459055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.925999, 35.359570, 27.893435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.695164, 35.046558, 27.799948>,  <34.556664, 34.858753, 27.743855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.695164, 35.046558, 27.799948>,  <34.925999, 35.359570, 27.893435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695164, 35.046558, 27.799948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284849, -0.075346, 0.955607,
		-0.765399, 0.618039, -0.179422,
		-0.577084, -0.782528, -0.233718,
		34.522038, 34.811798, 27.729832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157127, 35.492798, 28.104776>,  <34.925999, 35.359570, 27.893435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157127, 35.492798, 28.104776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.256702, 35.105392, 28.103830>,  <34.316448, 34.872948, 28.103262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.256702, 35.105392, 28.103830>,  <34.157127, 35.492798, 28.104776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256702, 35.105392, 28.103830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394901, -0.103730, 0.912849,
		-0.884356, -0.226304, -0.408290,
		0.248933, -0.968518, -0.002367,
		34.331383, 34.814838, 28.103121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596581, 35.232620, 28.358049>,  <34.157127, 35.492798, 28.104776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596581, 35.232620, 28.358049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.855335, 34.937870, 28.436584>,  <34.010590, 34.761021, 28.483706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.855335, 34.937870, 28.436584>,  <33.596581, 35.232620, 28.358049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855335, 34.937870, 28.436584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316345, -0.025034, 0.948314,
		-0.693877, -0.675562, -0.249302,
		0.646886, -0.736878, 0.196340,
		34.049400, 34.716808, 28.495487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238991, 34.685936, 28.780598>,  <33.596581, 35.232620, 28.358049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238991, 34.685936, 28.780598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.628605, 34.686131, 28.871153>,  <33.862373, 34.686249, 28.925486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.628605, 34.686131, 28.871153>,  <33.238991, 34.685936, 28.780598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628605, 34.686131, 28.871153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218748, 0.259609, 0.940613,
		-0.058312, -0.965714, 0.252976,
		0.974037, 0.000489, 0.226386,
		33.920815, 34.686279, 28.939068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289429, 34.868576, 29.452391>,  <33.238991, 34.685936, 28.780598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289429, 34.868576, 29.452391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.684490, 34.850319, 29.392452>,  <33.921528, 34.839363, 29.356489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.684490, 34.850319, 29.392452>,  <33.289429, 34.868576, 29.452391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684490, 34.850319, 29.392452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155855, 0.190494, 0.969237,
		-0.015698, -0.980626, 0.195257,
		0.987655, -0.045647, -0.149845,
		33.980785, 34.836624, 29.347498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644554, 34.338108, 29.920227>,  <33.289429, 34.868576, 29.452391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644554, 34.338108, 29.920227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.921513, 34.612137, 29.829657>,  <34.087688, 34.776554, 29.775314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.921513, 34.612137, 29.829657>,  <33.644554, 34.338108, 29.920227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921513, 34.612137, 29.829657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255587, 0.060588, 0.964886,
		0.674733, -0.725953, -0.133144,
		0.692395, 0.685070, -0.226425,
		34.129230, 34.817657, 29.761728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338245, 34.105015, 30.308640>,  <33.644554, 34.338108, 29.920227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338245, 34.105015, 30.308640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.327847, 34.500870, 30.252165>,  <34.321606, 34.738384, 30.218279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.327847, 34.500870, 30.252165>,  <34.338245, 34.105015, 30.308640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327847, 34.500870, 30.252165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221700, 0.143426, 0.964509,
		0.974768, -0.006228, -0.223132,
		-0.025996, 0.989642, -0.141188,
		34.320049, 34.797764, 30.209808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653728, 34.340752, 30.928574>,  <34.338245, 34.105015, 30.308640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653728, 34.340752, 30.928574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.532726, 34.691891, 30.780048>,  <34.460125, 34.902573, 30.690933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.532726, 34.691891, 30.780048>,  <34.653728, 34.340752, 30.928574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532726, 34.691891, 30.780048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021666, 0.395798, 0.918082,
		0.952901, 0.269680, -0.138751,
		-0.302505, 0.877848, -0.371313,
		34.441975, 34.955246, 30.668653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977951, 34.873821, 31.340513>,  <34.653728, 34.340752, 30.928574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977951, 34.873821, 31.340513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.664925, 35.061111, 31.176388>,  <34.477108, 35.173485, 31.077913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.664925, 35.061111, 31.176388>,  <34.977951, 34.873821, 31.340513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664925, 35.061111, 31.176388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206493, 0.426542, 0.880581,
		0.587328, 0.773837, -0.237110,
		-0.782564, 0.468228, -0.410312,
		34.430157, 35.201580, 31.053293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095062, 35.534897, 31.567141>,  <34.977951, 34.873821, 31.340513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095062, 35.534897, 31.567141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.702370, 35.507759, 31.496027>,  <34.466755, 35.491478, 31.453360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.702370, 35.507759, 31.496027>,  <35.095062, 35.534897, 31.567141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702370, 35.507759, 31.496027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188181, 0.484774, 0.854156,
		0.028236, 0.872004, -0.488683,
		-0.981728, -0.067843, -0.177782,
		34.407852, 35.487408, 31.442692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761097, 36.247780, 31.755985>,  <35.095062, 35.534897, 31.567141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761097, 36.247780, 31.755985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.451561, 35.998466, 31.710939>,  <34.265839, 35.848877, 31.683912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.451561, 35.998466, 31.710939>,  <34.761097, 36.247780, 31.755985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451561, 35.998466, 31.710939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496161, 0.486023, 0.719449,
		-0.393689, 0.612615, -0.685355,
		-0.773843, -0.623285, -0.112613,
		34.219406, 35.811481, 31.677155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195194, 36.662338, 31.795551>,  <34.761097, 36.247780, 31.755985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195194, 36.662338, 31.795551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.049652, 36.297611, 31.871660>,  <33.962326, 36.078777, 31.917326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.049652, 36.297611, 31.871660>,  <34.195194, 36.662338, 31.795551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049652, 36.297611, 31.871660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473448, 0.356960, 0.805249,
		-0.802158, 0.202909, -0.561578,
		-0.363853, -0.911815, 0.190272,
		33.940495, 36.024067, 31.928741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483383, 36.658897, 31.781693>,  <34.195194, 36.662338, 31.795551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483383, 36.658897, 31.781693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.559361, 36.337559, 32.007458>,  <33.604946, 36.144756, 32.142918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.559361, 36.337559, 32.007458>,  <33.483383, 36.658897, 31.781693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559361, 36.337559, 32.007458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561904, 0.382470, 0.733471,
		-0.805100, -0.456462, -0.378755,
		0.189939, -0.803342, 0.564415,
		33.616341, 36.096558, 32.176781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869659, 36.476650, 32.140892>,  <33.483383, 36.658897, 31.781693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869659, 36.476650, 32.140892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.183651, 36.337631, 32.346035>,  <33.372044, 36.254219, 32.469120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.183651, 36.337631, 32.346035>,  <32.869659, 36.476650, 32.140892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183651, 36.337631, 32.346035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364137, 0.410901, 0.835801,
		-0.501214, -0.842835, 0.195993,
		0.784977, -0.347547, 0.512857,
		33.419144, 36.233368, 32.499893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001869, 37.085659, 32.499611>,  <32.869659, 36.476650, 32.140892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001869, 37.085659, 32.499611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.192852, 37.361668, 32.282021>,  <33.307442, 37.527271, 32.151466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.192852, 37.361668, 32.282021>,  <33.001869, 37.085659, 32.499611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192852, 37.361668, 32.282021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559619, -0.238481, -0.793696,
		-0.677395, 0.683371, 0.272286,
		0.477454, 0.690022, -0.543973,
		33.336090, 37.568676, 32.118828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572033, 37.283180, 31.830276>,  <33.001869, 37.085659, 32.499611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572033, 37.283180, 31.830276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.908859, 37.485096, 31.754265>,  <33.110954, 37.606247, 31.708658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.908859, 37.485096, 31.754265>,  <32.572033, 37.283180, 31.830276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908859, 37.485096, 31.754265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162417, -0.098658, -0.981777,
		-0.514342, 0.857584, -0.001089,
		0.842065, 0.504793, -0.190031,
		33.161480, 37.636536, 31.697256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.472595, 37.819599, 31.251074>,  <32.572033, 37.283180, 31.830276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.472595, 37.819599, 31.251074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.869396, 37.774841, 31.274414>,  <33.107479, 37.747986, 31.288418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.869396, 37.774841, 31.274414>,  <32.472595, 37.819599, 31.251074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869396, 37.774841, 31.274414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061273, 0.022864, -0.997859,
		0.110320, 0.993457, 0.029537,
		0.992006, -0.111893, 0.058350,
		33.167000, 37.741272, 31.291920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703838, 38.358055, 30.852661>,  <32.472595, 37.819599, 31.251074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703838, 38.358055, 30.852661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.027851, 38.124340, 30.872467>,  <33.222260, 37.984112, 30.884350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.027851, 38.124340, 30.872467>,  <32.703838, 38.358055, 30.852661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027851, 38.124340, 30.872467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164652, 0.145595, -0.975547,
		0.562790, 0.798380, 0.214140,
		0.810035, -0.584287, 0.049516,
		33.270863, 37.949055, 30.887321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253574, 38.789101, 30.656240>,  <32.703838, 38.358055, 30.852661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253574, 38.789101, 30.656240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.316826, 38.400341, 30.586483>,  <33.354774, 38.167088, 30.544628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.316826, 38.400341, 30.586483>,  <33.253574, 38.789101, 30.656240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316826, 38.400341, 30.586483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203190, 0.204863, -0.957468,
		0.966286, 0.115966, 0.229874,
		0.158127, -0.971896, -0.174393,
		33.364265, 38.108772, 30.534164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781525, 38.773933, 30.090433>,  <33.253574, 38.789101, 30.656240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781525, 38.773933, 30.090433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.649380, 38.396835, 30.108753>,  <33.570091, 38.170578, 30.119745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.649380, 38.396835, 30.108753>,  <33.781525, 38.773933, 30.090433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649380, 38.396835, 30.108753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091634, -0.080331, -0.992547,
		0.939394, -0.323707, 0.112926,
		-0.330366, -0.942741, 0.045800,
		33.550270, 38.114014, 30.122494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295639, 38.368427, 29.687229>,  <33.781525, 38.773933, 30.090433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295639, 38.368427, 29.687229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.959839, 38.154736, 29.726906>,  <33.758358, 38.026520, 29.750711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.959839, 38.154736, 29.726906>,  <34.295639, 38.368427, 29.687229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959839, 38.154736, 29.726906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071680, -0.289843, -0.954386,
		0.538613, -0.794096, 0.281617,
		-0.839499, -0.534231, 0.099192,
		33.707989, 37.994465, 29.756664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366951, 37.794571, 29.343842>,  <34.295639, 38.368427, 29.687229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366951, 37.794571, 29.343842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.966995, 37.790848, 29.348505>,  <33.727020, 37.788612, 29.351303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.966995, 37.790848, 29.348505>,  <34.366951, 37.794571, 29.343842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966995, 37.790848, 29.348505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010029, -0.158980, -0.987231,
		0.011048, -0.987238, 0.158869,
		-0.999889, -0.009314, 0.011658,
		33.667030, 37.788055, 29.352003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198502, 37.186745, 28.909246>,  <34.366951, 37.794571, 29.343842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198502, 37.186745, 28.909246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.877552, 37.425373, 28.916039>,  <33.684982, 37.568550, 28.920115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.877552, 37.425373, 28.916039>,  <34.198502, 37.186745, 28.909246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877552, 37.425373, 28.916039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062298, -0.055426, -0.996518,
		-0.593557, -0.800641, 0.081638,
		-0.802378, 0.596575, 0.016980,
		33.636837, 37.604347, 28.921133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665630, 36.888039, 28.451685>,  <34.198502, 37.186745, 28.909246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665630, 36.888039, 28.451685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.537838, 37.265575, 28.485363>,  <33.461163, 37.492100, 28.505569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.537838, 37.265575, 28.485363>,  <33.665630, 36.888039, 28.451685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537838, 37.265575, 28.485363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327554, -0.026626, -0.944457,
		-0.889178, -0.329317, 0.317667,
		-0.319484, 0.943844, 0.084194,
		33.441994, 37.548729, 28.510622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931030, 36.897919, 28.206499>,  <33.665630, 36.888039, 28.451685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931030, 36.897919, 28.206499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.119793, 37.249668, 28.181190>,  <33.233051, 37.460720, 28.166006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.119793, 37.249668, 28.181190>,  <32.931030, 36.897919, 28.206499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119793, 37.249668, 28.181190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288619, 0.086276, -0.953549,
		-0.833071, 0.468243, 0.294519,
		0.471902, 0.879377, -0.063269,
		33.261364, 37.513481, 28.162210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592384, 37.300159, 27.714256>,  <32.931030, 36.897919, 28.206499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592384, 37.300159, 27.714256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.936230, 37.501354, 27.750181>,  <33.142536, 37.622070, 27.771736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.936230, 37.501354, 27.750181>,  <32.592384, 37.300159, 27.714256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936230, 37.501354, 27.750181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016554, 0.148264, -0.988809,
		-0.510674, 0.851482, 0.119124,
		0.859615, 0.502988, 0.089810,
		33.194115, 37.652252, 27.777124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500614, 37.907127, 27.220131>,  <32.592384, 37.300159, 27.714256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500614, 37.907127, 27.220131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.892529, 37.875233, 27.293530>,  <33.127678, 37.856098, 27.337568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.892529, 37.875233, 27.293530>,  <32.500614, 37.907127, 27.220131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892529, 37.875233, 27.293530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195243, 0.180760, -0.963953,
		0.043690, 0.980290, 0.192673,
		0.979781, -0.079733, 0.183497,
		33.186462, 37.851315, 27.348579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816311, 38.534039, 26.932474>,  <32.500614, 37.907127, 27.220131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816311, 38.534039, 26.932474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.092850, 38.245270, 26.944302>,  <33.258774, 38.072010, 26.951399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.092850, 38.245270, 26.944302>,  <32.816311, 38.534039, 26.932474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092850, 38.245270, 26.944302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229428, 0.180533, -0.956436,
		0.685133, 0.668010, 0.290439,
		0.691343, -0.721921, 0.029571,
		33.300251, 38.028694, 26.953173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353725, 38.863106, 26.589018>,  <32.816311, 38.534039, 26.932474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353725, 38.863106, 26.589018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.435081, 38.472050, 26.567619>,  <33.483894, 38.237415, 26.554781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.435081, 38.472050, 26.567619>,  <33.353725, 38.863106, 26.589018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435081, 38.472050, 26.567619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307377, 0.115630, -0.944536,
		0.929598, 0.175663, 0.324021,
		0.203387, -0.977636, -0.053495,
		33.496098, 38.178761, 26.551571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921925, 38.881096, 26.263594>,  <33.353725, 38.863106, 26.589018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921925, 38.881096, 26.263594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.832199, 38.492996, 26.227142>,  <33.778366, 38.260136, 26.205271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.832199, 38.492996, 26.227142>,  <33.921925, 38.881096, 26.263594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832199, 38.492996, 26.227142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375287, 0.000298, -0.926908,
		0.899358, -0.242116, 0.364054,
		-0.224311, -0.970247, -0.091130,
		33.764904, 38.201923, 26.199802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470539, 38.453552, 26.007017>,  <33.921925, 38.881096, 26.263594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470539, 38.453552, 26.007017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.143753, 38.251640, 25.895466>,  <33.947681, 38.130493, 25.828535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.143753, 38.251640, 25.895466>,  <34.470539, 38.453552, 26.007017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143753, 38.251640, 25.895466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343738, -0.037941, -0.938299,
		0.463052, -0.862415, 0.204508,
		-0.816962, -0.504779, -0.278876,
		33.898663, 38.100208, 25.811804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733768, 37.926796, 25.627415>,  <34.470539, 38.453552, 26.007017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733768, 37.926796, 25.627415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.357685, 37.933865, 25.491362>,  <34.132034, 37.938107, 25.409729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.357685, 37.933865, 25.491362>,  <34.733768, 37.926796, 25.627415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357685, 37.933865, 25.491362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339961, -0.011994, -0.940363,
		-0.020715, -0.999771, 0.005262,
		-0.940211, 0.017691, -0.340132,
		34.075623, 37.939167, 25.389322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679771, 37.445816, 25.126863>,  <34.733768, 37.926796, 25.627415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679771, 37.445816, 25.126863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.369961, 37.687527, 25.052076>,  <34.184074, 37.832554, 25.007204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.369961, 37.687527, 25.052076>,  <34.679771, 37.445816, 25.126863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369961, 37.687527, 25.052076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229360, -0.007168, -0.973315,
		-0.589488, -0.796745, -0.133044,
		-0.774531, 0.604273, -0.186966,
		34.137600, 37.868809, 24.995987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325096, 37.089764, 24.664610>,  <34.679771, 37.445816, 25.126863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325096, 37.089764, 24.664610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.205868, 37.468910, 24.619530>,  <34.134331, 37.696400, 24.592482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.205868, 37.468910, 24.619530>,  <34.325096, 37.089764, 24.664610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205868, 37.468910, 24.619530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078411, -0.093353, -0.992541,
		-0.951319, -0.304681, -0.046498,
		-0.298068, 0.947869, -0.112698,
		34.116447, 37.753269, 24.585720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970230, 37.122662, 24.062500>,  <34.325096, 37.089764, 24.664610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970230, 37.122662, 24.062500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.010708, 37.517773, 24.109917>,  <34.034992, 37.754841, 24.138367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.010708, 37.517773, 24.109917>,  <33.970230, 37.122662, 24.062500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010708, 37.517773, 24.109917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280494, 0.085991, -0.955996,
		-0.954507, 0.129988, -0.268365,
		0.101191, 0.987780, 0.118540,
		34.041065, 37.814106, 24.145479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605728, 37.458508, 23.430355>,  <33.970230, 37.122662, 24.062500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605728, 37.458508, 23.430355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.872269, 37.719288, 23.575096>,  <34.032192, 37.875755, 23.661942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.872269, 37.719288, 23.575096>,  <33.605728, 37.458508, 23.430355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872269, 37.719288, 23.575096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289969, 0.220519, -0.931284,
		-0.686946, 0.725488, -0.042102,
		0.666351, 0.651949, 0.361854,
		34.072174, 37.914871, 23.683653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525703, 38.058769, 23.010284>,  <33.605728, 37.458508, 23.430355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525703, 38.058769, 23.010284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.893291, 38.111546, 23.158924>,  <34.113846, 38.143211, 23.248108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.893291, 38.111546, 23.158924>,  <33.525703, 38.058769, 23.010284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893291, 38.111546, 23.158924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277867, 0.451976, -0.847648,
		-0.279795, 0.882218, 0.378690,
		0.918969, 0.131942, 0.371600,
		34.168983, 38.151127, 23.270405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623695, 38.696609, 22.755972>,  <33.525703, 38.058769, 23.010284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623695, 38.696609, 22.755972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.975601, 38.533718, 22.854105>,  <34.186745, 38.435986, 22.912985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.975601, 38.533718, 22.854105>,  <33.623695, 38.696609, 22.755972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975601, 38.533718, 22.854105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301723, 0.079466, -0.950078,
		0.367400, 0.909864, 0.192781,
		0.879762, -0.407225, 0.245332,
		34.239529, 38.411552, 22.927704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183208, 39.168888, 22.532520>,  <33.623695, 38.696609, 22.755972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183208, 39.168888, 22.532520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.369175, 38.818935, 22.586821>,  <34.480755, 38.608963, 22.619402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.369175, 38.818935, 22.586821>,  <34.183208, 39.168888, 22.532520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369175, 38.818935, 22.586821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535778, 0.155953, -0.829831,
		0.704836, 0.458536, 0.541250,
		0.464917, -0.874885, 0.135752,
		34.508652, 38.556469, 22.627546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977955, 39.255280, 22.504478>,  <34.183208, 39.168888, 22.532520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977955, 39.255280, 22.504478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.924194, 38.866905, 22.425270>,  <34.891937, 38.633881, 22.377745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.924194, 38.866905, 22.425270>,  <34.977955, 39.255280, 22.504478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924194, 38.866905, 22.425270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365697, 0.137126, -0.920577,
		0.920979, -0.196143, 0.336639,
		-0.134403, -0.970940, -0.198019,
		34.883873, 38.575623, 22.365864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540947, 39.028557, 22.183178>,  <34.977955, 39.255280, 22.504478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540947, 39.028557, 22.183178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.242462, 38.781582, 22.083626>,  <35.063370, 38.633396, 22.023895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.242462, 38.781582, 22.083626>,  <35.540947, 39.028557, 22.183178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242462, 38.781582, 22.083626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379550, -0.087456, -0.921028,
		0.546910, -0.781745, 0.299608,
		-0.746212, -0.617436, -0.248881,
		35.018600, 38.596352, 22.008961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271122, 38.692966, 22.073542>,  <35.540947, 39.028557, 22.183178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271122, 38.692966, 22.073542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.645973, 38.823555, 22.122875>,  <36.870884, 38.901909, 22.152475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.645973, 38.823555, 22.122875>,  <36.271122, 38.692966, 22.073542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645973, 38.823555, 22.122875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006196, -0.368906, 0.929446,
		0.348939, -0.870243, -0.347734,
		0.937125, 0.326475, 0.123334,
		36.927113, 38.921497, 22.159876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422649, 38.455261, 22.688505>,  <36.271122, 38.692966, 22.073542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422649, 38.455261, 22.688505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.749287, 38.681862, 22.644224>,  <36.945271, 38.817822, 22.617657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.749287, 38.681862, 22.644224>,  <36.422649, 38.455261, 22.688505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749287, 38.681862, 22.644224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189848, -0.082480, 0.978343,
		0.545102, -0.819923, -0.174901,
		0.816592, 0.566501, -0.110701,
		36.994263, 38.851810, 22.611013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991814, 38.096123, 23.091833>,  <36.422649, 38.455261, 22.688505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991814, 38.096123, 23.091833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.072063, 38.487511, 23.072495>,  <37.120213, 38.722343, 23.060892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.072063, 38.487511, 23.072495>,  <36.991814, 38.096123, 23.091833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072063, 38.487511, 23.072495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374559, -0.031013, 0.926684,
		0.905238, -0.204024, -0.372718,
		0.200625, 0.978474, -0.048345,
		37.132252, 38.781052, 23.057991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670441, 38.223686, 23.415644>,  <36.991814, 38.096123, 23.091833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670441, 38.223686, 23.415644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.513798, 38.591705, 23.420485>,  <37.419811, 38.812519, 23.423389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.513798, 38.591705, 23.420485>,  <37.670441, 38.223686, 23.415644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513798, 38.591705, 23.420485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470373, 0.188869, 0.862020,
		0.790816, 0.343270, -0.506730,
		-0.391611, 0.920051, 0.012104,
		37.396313, 38.867722, 23.424116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265450, 38.774635, 23.597326>,  <37.670441, 38.223686, 23.415644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265450, 38.774635, 23.597326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.898151, 38.913834, 23.672934>,  <37.677773, 38.997353, 23.718298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.898151, 38.913834, 23.672934>,  <38.265450, 38.774635, 23.597326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898151, 38.913834, 23.672934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285481, 0.250888, 0.924963,
		0.274463, 0.903301, -0.329723,
		-0.918243, 0.347997, 0.189016,
		37.622677, 39.018234, 23.729639>
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
