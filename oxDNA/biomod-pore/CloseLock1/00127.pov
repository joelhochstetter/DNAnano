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
	<24.630665, 35.149693, 34.668583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.369150, 34.957478, 34.902382>,  <24.212240, 34.842148, 35.042664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.369150, 34.957478, 34.902382>,  <24.630665, 35.149693, 34.668583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.369150, 34.957478, 34.902382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409338, 0.874279, 0.260919,
		-0.636398, -0.068672, -0.768298,
		-0.653789, -0.480542, 0.584500,
		24.173014, 34.813316, 35.077732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.789171, 34.573692, 35.155273>,  <24.630665, 35.149693, 34.668583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.789171, 34.573692, 35.155273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.137691, 34.477390, 34.984219>,  <25.346804, 34.419609, 34.881588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.137691, 34.477390, 34.984219>,  <24.789171, 34.573692, 35.155273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.137691, 34.477390, 34.984219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326986, 0.934592, 0.140064,
		0.365943, -0.261868, 0.893034,
		0.871301, -0.240755, -0.427635,
		25.399082, 34.405163, 34.855927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.151997, 34.898582, 35.599403>,  <24.789171, 34.573692, 35.155273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.151997, 34.898582, 35.599403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.355131, 34.881340, 35.255253>,  <25.477013, 34.870995, 35.048763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.355131, 34.881340, 35.255253>,  <25.151997, 34.898582, 35.599403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.355131, 34.881340, 35.255253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174246, 0.983243, 0.053590,
		0.843647, -0.177132, 0.506837,
		0.507837, -0.043104, -0.860374,
		25.507483, 34.868408, 34.997139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.848795, 35.256973, 35.663307>,  <25.151997, 34.898582, 35.599403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.848795, 35.256973, 35.663307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.746180, 35.278934, 35.277317>,  <25.684610, 35.292110, 35.045723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.746180, 35.278934, 35.277317>,  <25.848795, 35.256973, 35.663307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.746180, 35.278934, 35.277317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220827, 0.975308, -0.003216,
		0.940969, -0.213917, -0.262328,
		-0.256539, 0.054903, -0.964973,
		25.669218, 35.295406, 34.987823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.422289, 35.347500, 35.344681>,  <25.848795, 35.256973, 35.663307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.422289, 35.347500, 35.344681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.089069, 35.500809, 35.185116>,  <25.889137, 35.592793, 35.089378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.089069, 35.500809, 35.185116>,  <26.422289, 35.347500, 35.344681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.089069, 35.500809, 35.185116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309692, 0.920622, 0.237793,
		0.458387, 0.074553, -0.885620,
		-0.833050, 0.383271, -0.398913,
		25.839155, 35.615791, 35.065441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.535501, 35.914772, 34.763649>,  <26.422289, 35.347500, 35.344681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.535501, 35.914772, 34.763649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.216698, 35.953850, 35.002052>,  <26.025415, 35.977295, 35.145096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.216698, 35.953850, 35.002052>,  <26.535501, 35.914772, 34.763649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.216698, 35.953850, 35.002052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313313, 0.910540, 0.269724,
		-0.516341, 0.401711, -0.756320,
		-0.797011, 0.097695, 0.596010,
		25.977594, 35.983158, 35.180855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.209352, 36.578922, 34.673576>,  <26.535501, 35.914772, 34.763649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.209352, 36.578922, 34.673576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.161552, 36.460060, 35.052505>,  <26.132874, 36.388744, 35.279861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.161552, 36.460060, 35.052505>,  <26.209352, 36.578922, 34.673576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.161552, 36.460060, 35.052505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249571, 0.914532, 0.318348,
		-0.960955, 0.274466, -0.035124,
		-0.119498, -0.297153, 0.947323,
		26.125704, 36.370914, 35.336700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.944916, 36.834888, 33.894180>,  <26.209352, 36.578922, 34.673576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.944916, 36.834888, 33.894180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.236847, 36.863731, 33.622253>,  <26.412006, 36.881035, 33.459099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.236847, 36.863731, 33.622253>,  <25.944916, 36.834888, 33.894180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.236847, 36.863731, 33.622253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074409, 0.996893, 0.025850,
		0.679569, 0.031719, 0.732926,
		0.729829, 0.072103, -0.679817,
		26.455795, 36.885361, 33.418308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.451845, 37.299694, 34.137024>,  <25.944916, 36.834888, 33.894180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.451845, 37.299694, 34.137024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.502764, 37.302551, 33.740288>,  <26.533316, 37.304264, 33.502247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.502764, 37.302551, 33.740288>,  <26.451845, 37.299694, 34.137024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.502764, 37.302551, 33.740288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022533, 0.999695, 0.010092,
		0.991608, -0.023634, 0.127098,
		0.127298, 0.007143, -0.991839,
		26.540953, 37.304695, 33.442738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.002665, 37.813927, 34.066734>,  <26.451845, 37.299694, 34.137024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.002665, 37.813927, 34.066734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.808306, 37.756771, 33.721832>,  <26.691690, 37.722477, 33.514893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.808306, 37.756771, 33.721832>,  <27.002665, 37.813927, 34.066734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.808306, 37.756771, 33.721832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050076, 0.980374, -0.190684,
		0.872581, -0.135831, -0.469205,
		-0.485897, -0.142891, -0.862256,
		26.662537, 37.713905, 33.463154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.340828, 38.161465, 33.574657>,  <27.002665, 37.813927, 34.066734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.340828, 38.161465, 33.574657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.971743, 38.157345, 33.420521>,  <26.750292, 38.154873, 33.328037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.971743, 38.157345, 33.420521>,  <27.340828, 38.161465, 33.574657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.971743, 38.157345, 33.420521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060299, 0.983482, -0.170669,
		0.380737, -0.180715, -0.906852,
		-0.922715, -0.010298, -0.385345,
		26.694927, 38.154255, 33.304916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.429974, 38.550945, 33.037800>,  <27.340828, 38.161465, 33.574657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.429974, 38.550945, 33.037800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.035765, 38.517212, 33.096638>,  <26.799240, 38.496971, 33.131939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.035765, 38.517212, 33.096638>,  <27.429974, 38.550945, 33.037800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.035765, 38.517212, 33.096638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106220, 0.983283, -0.147895,
		-0.132160, -0.161377, -0.978004,
		-0.985521, -0.084338, 0.147092,
		26.740108, 38.491909, 33.140766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.112480, 38.984268, 32.567688>,  <27.429974, 38.550945, 33.037800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.112480, 38.984268, 32.567688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.815187, 38.939915, 32.831600>,  <26.636812, 38.913303, 32.989948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.815187, 38.939915, 32.831600>,  <27.112480, 38.984268, 32.567688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.815187, 38.939915, 32.831600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118986, 0.992356, 0.032740,
		-0.658366, -0.054171, -0.750746,
		-0.743233, -0.110883, 0.659779,
		26.592216, 38.906651, 33.029533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.621532, 39.380566, 32.310719>,  <27.112480, 38.984268, 32.567688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.621532, 39.380566, 32.310719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.563419, 39.340397, 32.704430>,  <26.528551, 39.316296, 32.940659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.563419, 39.340397, 32.704430>,  <26.621532, 39.380566, 32.310719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.563419, 39.340397, 32.704430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117279, 0.989570, 0.083646,
		-0.982414, -0.103283, -0.155545,
		-0.145284, -0.100418, 0.984281,
		26.519835, 39.310272, 32.999714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.060570, 39.853600, 32.440506>,  <26.621532, 39.380566, 32.310719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.060570, 39.853600, 32.440506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.277174, 39.784431, 32.769592>,  <26.407137, 39.742931, 32.967045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.277174, 39.784431, 32.769592>,  <26.060570, 39.853600, 32.440506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.277174, 39.784431, 32.769592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119069, 0.952979, 0.278664,
		-0.832220, -0.248860, 0.495458,
		0.541510, -0.172916, 0.822719,
		26.439627, 39.732555, 33.016407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.686623, 40.231976, 32.877491>,  <26.060570, 39.853600, 32.440506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.686623, 40.231976, 32.877491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.031672, 40.184711, 33.074234>,  <26.238701, 40.156353, 33.192280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.031672, 40.184711, 33.074234>,  <25.686623, 40.231976, 32.877491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.031672, 40.184711, 33.074234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083294, 0.925882, 0.368516,
		-0.498943, -0.358859, 0.788845,
		0.862622, -0.118163, 0.491854,
		26.290459, 40.149261, 33.221790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.673019, 40.809334, 33.390369>,  <25.686623, 40.231976, 32.877491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.673019, 40.809334, 33.390369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.046379, 40.667507, 33.412457>,  <26.270395, 40.582413, 33.425709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.046379, 40.667507, 33.412457>,  <25.673019, 40.809334, 33.390369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.046379, 40.667507, 33.412457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316807, 0.886519, 0.337219,
		-0.168519, -0.297266, 0.939806,
		0.933399, -0.354565, 0.055220,
		26.326399, 40.561138, 33.429024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.939503, 40.895447, 34.060246>,  <25.673019, 40.809334, 33.390369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.939503, 40.895447, 34.060246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265333, 40.881863, 33.828621>,  <26.460831, 40.873714, 33.689644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265333, 40.881863, 33.828621>,  <25.939503, 40.895447, 34.060246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.265333, 40.881863, 33.828621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346776, 0.828755, 0.439216,
		0.464988, -0.558580, 0.686859,
		0.814575, -0.033956, -0.579063,
		26.509706, 40.871677, 33.654903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.503620, 41.105061, 34.517071>,  <25.939503, 40.895447, 34.060246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.503620, 41.105061, 34.517071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.610872, 41.163662, 34.136200>,  <26.675224, 41.198822, 33.907677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.610872, 41.163662, 34.136200>,  <26.503620, 41.105061, 34.517071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.610872, 41.163662, 34.136200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437631, 0.861983, 0.255859,
		0.858245, -0.485307, 0.167012,
		0.268132, 0.146500, -0.952178,
		26.691311, 41.207611, 33.850548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.223843, 41.403809, 34.617161>,  <26.503620, 41.105061, 34.517071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.223843, 41.403809, 34.617161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.098223, 41.473785, 34.243900>,  <27.022852, 41.515770, 34.019943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.098223, 41.473785, 34.243900>,  <27.223843, 41.403809, 34.617161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.098223, 41.473785, 34.243900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439695, 0.897917, 0.020357,
		0.841453, -0.403908, -0.358909,
		-0.314048, 0.174940, -0.933151,
		27.004009, 41.526268, 33.963955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.740253, 41.728386, 34.405201>,  <27.223843, 41.403809, 34.617161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.740253, 41.728386, 34.405201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455868, 41.848969, 34.151066>,  <27.285236, 41.921318, 33.998585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455868, 41.848969, 34.151066>,  <27.740253, 41.728386, 34.405201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.455868, 41.848969, 34.151066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362795, 0.931179, 0.035853,
		0.602417, -0.205005, -0.771405,
		-0.710966, 0.301461, -0.635333,
		27.242579, 41.939407, 33.960464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.038443, 42.142048, 33.923134>,  <27.740253, 41.728386, 34.405201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.038443, 42.142048, 33.923134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.653839, 42.251507, 33.913204>,  <27.423077, 42.317181, 33.907246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.653839, 42.251507, 33.913204>,  <28.038443, 42.142048, 33.923134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.653839, 42.251507, 33.913204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266534, 0.950828, 0.157749,
		0.066771, 0.145061, -0.987167,
		-0.961510, 0.273646, -0.024824,
		27.365387, 42.333599, 33.905758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.035187, 42.677124, 33.523399>,  <28.038443, 42.142048, 33.923134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.035187, 42.677124, 33.523399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.692507, 42.697880, 33.728680>,  <27.486898, 42.710335, 33.851849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.692507, 42.697880, 33.728680>,  <28.035187, 42.677124, 33.523399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.692507, 42.697880, 33.728680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140590, 0.980749, 0.135521,
		-0.496284, 0.188251, -0.847504,
		-0.856701, 0.051893, 0.513196,
		27.435497, 42.713448, 33.882637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.722752, 43.282463, 33.351112>,  <28.035187, 42.677124, 33.523399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.722752, 43.282463, 33.351112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.498045, 43.235752, 33.678719>,  <27.363222, 43.207726, 33.875282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.498045, 43.235752, 33.678719>,  <27.722752, 43.282463, 33.351112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.498045, 43.235752, 33.678719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046542, 0.983958, 0.172220,
		-0.825987, 0.134865, -0.547318,
		-0.561764, -0.116778, 0.819014,
		27.329515, 43.200718, 33.924423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.287457, 43.958927, 33.434898>,  <27.722752, 43.282463, 33.351112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.287457, 43.958927, 33.434898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.266504, 43.771961, 33.787891>,  <27.253933, 43.659782, 33.999687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.266504, 43.771961, 33.787891>,  <27.287457, 43.958927, 33.434898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.266504, 43.771961, 33.787891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044828, 0.883909, 0.465507,
		-0.997621, -0.015176, -0.067253,
		-0.052381, -0.467414, 0.882486,
		27.250790, 43.631737, 34.052635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.729136, 44.321644, 33.705238>,  <27.287457, 43.958927, 33.434898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.729136, 44.321644, 33.705238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.969080, 44.142536, 33.970470>,  <27.113047, 44.035072, 34.129608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.969080, 44.142536, 33.970470>,  <26.729136, 44.321644, 33.705238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.969080, 44.142536, 33.970470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148275, 0.876597, 0.457812,
		-0.786245, -0.176305, 0.592229,
		0.599861, -0.447765, 0.663079,
		27.149038, 44.008205, 34.169395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.615761, 44.579559, 34.394218>,  <26.729136, 44.321644, 33.705238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.615761, 44.579559, 34.394218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.982542, 44.424377, 34.431515>,  <27.202610, 44.331268, 34.453892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.982542, 44.424377, 34.431515>,  <26.615761, 44.579559, 34.394218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.982542, 44.424377, 34.431515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338437, 0.880011, 0.333229,
		-0.211333, -0.273997, 0.938224,
		0.916951, -0.387952, 0.093244,
		27.257627, 44.307991, 34.459488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.900694, 44.514950, 35.105549>,  <26.615761, 44.579559, 34.394218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.900694, 44.514950, 35.105549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.178749, 44.562767, 34.822002>,  <27.345583, 44.591457, 34.651875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.178749, 44.562767, 34.822002>,  <26.900694, 44.514950, 35.105549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.178749, 44.562767, 34.822002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331109, 0.822008, 0.463324,
		0.638083, -0.556786, 0.531826,
		0.695138, 0.119547, -0.708867,
		27.387291, 44.598633, 34.609341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.577929, 44.557610, 35.449604>,  <26.900694, 44.514950, 35.105549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.577929, 44.557610, 35.449604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.587660, 44.752781, 35.100586>,  <27.593498, 44.869884, 34.891174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.587660, 44.752781, 35.100586>,  <27.577929, 44.557610, 35.449604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.587660, 44.752781, 35.100586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478689, 0.760555, 0.438649,
		0.877647, -0.428349, -0.215064,
		0.024327, 0.487928, -0.872545,
		27.594957, 44.899158, 34.838821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.281189, 44.771809, 35.215435>,  <27.577929, 44.557610, 35.449604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.281189, 44.771809, 35.215435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.035368, 45.018856, 35.019119>,  <27.887877, 45.167084, 34.901329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.035368, 45.018856, 35.019119>,  <28.281189, 44.771809, 35.215435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.035368, 45.018856, 35.019119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426227, 0.783468, 0.452226,
		0.663821, 0.068729, -0.744727,
		-0.614551, 0.617620, -0.490788,
		27.851004, 45.204144, 34.871883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.624010, 45.138592, 34.759491>,  <28.281189, 44.771809, 35.215435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.624010, 45.138592, 34.759491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.330017, 45.291985, 34.983185>,  <28.153622, 45.384018, 35.117401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.330017, 45.291985, 34.983185>,  <28.624010, 45.138592, 34.759491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.330017, 45.291985, 34.983185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659015, 0.598191, 0.455924,
		-0.159694, 0.703642, -0.692377,
		-0.734981, 0.383479, 0.559238,
		28.109524, 45.407028, 35.150955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.327509, 45.133629, 34.468483>,  <28.624010, 45.138592, 34.759491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.327509, 45.133629, 34.468483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.710350, 45.116779, 34.353817>,  <29.940056, 45.106670, 34.285019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.710350, 45.116779, 34.353817>,  <29.327509, 45.133629, 34.468483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.710350, 45.116779, 34.353817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126737, -0.828841, 0.544941,
		-0.260553, -0.557897, -0.787949,
		0.957105, -0.042124, -0.286663,
		29.997482, 45.104141, 34.267818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.501749, 44.537556, 34.088036>,  <29.327509, 45.133629, 34.468483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.501749, 44.537556, 34.088036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.831837, 44.672131, 34.269505>,  <30.029890, 44.752876, 34.378387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.831837, 44.672131, 34.269505>,  <29.501749, 44.537556, 34.088036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.831837, 44.672131, 34.269505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166617, -0.912495, 0.373621,
		0.539677, -0.232729, -0.809065,
		0.825219, 0.336438, 0.453676,
		30.079403, 44.773064, 34.405609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.147680, 44.229649, 33.891071>,  <29.501749, 44.537556, 34.088036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.147680, 44.229649, 33.891071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.191236, 44.323566, 34.277443>,  <30.217369, 44.379917, 34.509266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.191236, 44.323566, 34.277443>,  <30.147680, 44.229649, 33.891071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.191236, 44.323566, 34.277443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123052, -0.961047, 0.247480,
		0.986408, -0.145807, -0.075755,
		0.108888, 0.234794, 0.965927,
		30.223904, 44.394005, 34.567223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.669544, 43.852703, 34.091373>,  <30.147680, 44.229649, 33.891071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.669544, 43.852703, 34.091373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.404734, 43.929043, 34.381283>,  <30.245848, 43.974846, 34.555229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.404734, 43.929043, 34.381283>,  <30.669544, 43.852703, 34.091373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.404734, 43.929043, 34.381283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019106, -0.971018, 0.238241,
		0.749238, 0.143874, 0.646485,
		-0.662025, 0.190851, 0.724775,
		30.206125, 43.986298, 34.598717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906752, 43.663292, 34.802532>,  <30.669544, 43.852703, 34.091373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.906752, 43.663292, 34.802532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.518085, 43.617981, 34.719551>,  <30.284885, 43.590794, 34.669762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.518085, 43.617981, 34.719551>,  <30.906752, 43.663292, 34.802532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.518085, 43.617981, 34.719551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060748, -0.967876, 0.243977,
		-0.228423, 0.224462, 0.947333,
		-0.971665, -0.113278, -0.207450,
		30.226585, 43.583996, 34.657314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.720066, 43.255669, 35.290817>,  <30.906752, 43.663292, 34.802532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.720066, 43.255669, 35.290817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.429564, 43.220882, 35.018055>,  <30.255262, 43.200008, 34.854401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.429564, 43.220882, 35.018055>,  <30.720066, 43.255669, 35.290817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.429564, 43.220882, 35.018055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047151, -0.983327, 0.175628,
		-0.685805, 0.159703, 0.710047,
		-0.726256, -0.086967, -0.681901,
		30.211687, 43.194794, 34.813484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203623, 42.930767, 35.620331>,  <30.720066, 43.255669, 35.290817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203623, 42.930767, 35.620331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.129738, 42.871357, 35.231728>,  <30.085407, 42.835712, 34.998566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.129738, 42.871357, 35.231728>,  <30.203623, 42.930767, 35.620331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.129738, 42.871357, 35.231728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003957, -0.988619, 0.150391,
		-0.982784, 0.023935, 0.183200,
		-0.184715, -0.148527, -0.971504,
		30.074324, 42.826797, 34.940277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.597519, 42.472591, 35.523891>,  <30.203623, 42.930767, 35.620331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.597519, 42.472591, 35.523891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.821480, 42.444561, 35.193657>,  <29.955856, 42.427742, 34.995514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.821480, 42.444561, 35.193657>,  <29.597519, 42.472591, 35.523891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.821480, 42.444561, 35.193657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087142, -0.995871, 0.025428,
		-0.823963, 0.057707, -0.563697,
		0.559903, -0.070074, -0.825590,
		29.989450, 42.423538, 34.945980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.264591, 41.975689, 35.126850>,  <29.597519, 42.472591, 35.523891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.264591, 41.975689, 35.126850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.625824, 42.002327, 34.957138>,  <29.842564, 42.018311, 34.855312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.625824, 42.002327, 34.957138>,  <29.264591, 41.975689, 35.126850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.625824, 42.002327, 34.957138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003750, -0.986645, -0.162844,
		-0.429454, 0.148652, -0.890771,
		0.903081, 0.066594, -0.424276,
		29.896748, 42.022305, 34.829857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.197659, 41.548378, 34.536655>,  <29.264591, 41.975689, 35.126850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.197659, 41.548378, 34.536655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.593365, 41.578396, 34.586807>,  <29.830790, 41.596405, 34.616898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.593365, 41.578396, 34.586807>,  <29.197659, 41.548378, 34.536655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.593365, 41.578396, 34.586807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097767, -0.977628, -0.186241,
		0.108595, 0.196499, -0.974472,
		0.989267, 0.075046, 0.125376,
		29.890144, 41.600910, 34.624420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.485960, 41.301571, 33.992531>,  <29.197659, 41.548378, 34.536655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.485960, 41.301571, 33.992531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.754108, 41.272289, 34.287895>,  <29.914997, 41.254723, 34.465115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.754108, 41.272289, 34.287895>,  <29.485960, 41.301571, 33.992531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.754108, 41.272289, 34.287895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074839, -0.983378, -0.165431,
		0.738242, 0.166162, -0.653749,
		0.670371, -0.073202, 0.738407,
		29.955219, 41.250328, 34.509418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.845915, 40.742867, 33.745995>,  <29.485960, 41.301571, 33.992531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.845915, 40.742867, 33.745995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.929148, 40.800377, 34.132988>,  <29.979088, 40.834881, 34.365185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.929148, 40.800377, 34.132988>,  <29.845915, 40.742867, 33.745995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.929148, 40.800377, 34.132988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123118, -0.977421, 0.171729,
		0.970331, -0.154849, -0.185684,
		0.208083, 0.143773, 0.967487,
		29.991573, 40.843510, 34.423233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.314404, 40.190804, 33.912945>,  <29.845915, 40.742867, 33.745995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.314404, 40.190804, 33.912945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.172516, 40.337894, 34.256794>,  <30.087383, 40.426151, 34.463104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.172516, 40.337894, 34.256794>,  <30.314404, 40.190804, 33.912945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.172516, 40.337894, 34.256794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428587, -0.881074, 0.200055,
		0.830956, -0.297459, 0.470138,
		-0.354718, 0.367732, 0.859621,
		30.066101, 40.448215, 34.514679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697681, 39.845119, 34.452522>,  <30.314404, 40.190804, 33.912945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697681, 39.845119, 34.452522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.347601, 39.958572, 34.609276>,  <30.137552, 40.026642, 34.703327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.347601, 39.958572, 34.609276>,  <30.697681, 39.845119, 34.452522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.347601, 39.958572, 34.609276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302469, -0.953053, 0.014267,
		0.377536, -0.106048, 0.919902,
		-0.875202, 0.283628, 0.391888,
		30.085041, 40.043659, 34.726841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.672041, 39.393726, 35.018982>,  <30.697681, 39.845119, 34.452522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.672041, 39.393726, 35.018982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.306068, 39.540745, 34.952274>,  <30.086485, 39.628956, 34.912251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.306068, 39.540745, 34.952274>,  <30.672041, 39.393726, 35.018982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.306068, 39.540745, 34.952274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388310, -0.914285, 0.115318,
		-0.110085, 0.170264, 0.979230,
		-0.914930, 0.367550, -0.166764,
		30.031590, 39.651009, 34.902245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.378162, 39.157726, 35.638153>,  <30.672041, 39.393726, 35.018982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.378162, 39.157726, 35.638153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.098335, 39.246716, 35.366531>,  <29.930439, 39.300110, 35.203560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.098335, 39.246716, 35.366531>,  <30.378162, 39.157726, 35.638153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.098335, 39.246716, 35.366531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399898, -0.909439, 0.114029,
		-0.592190, 0.351323, 0.725179,
		-0.699567, 0.222470, -0.679053,
		29.888466, 39.313457, 35.162815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.728264, 39.046436, 35.865826>,  <30.378162, 39.157726, 35.638153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.728264, 39.046436, 35.865826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.702826, 39.010937, 35.468216>,  <29.687563, 38.989635, 35.229652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.702826, 39.010937, 35.468216>,  <29.728264, 39.046436, 35.865826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.702826, 39.010937, 35.468216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234999, -0.966698, 0.101347,
		-0.969913, 0.240039, 0.040622,
		-0.063596, -0.088752, -0.994021,
		29.683746, 38.984310, 35.170010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.123466, 38.638256, 35.771118>,  <29.728264, 39.046436, 35.865826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.123466, 38.638256, 35.771118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.307739, 38.616154, 35.416782>,  <29.418303, 38.602890, 35.204182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.307739, 38.616154, 35.416782>,  <29.123466, 38.638256, 35.771118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.307739, 38.616154, 35.416782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212896, -0.975803, -0.049846,
		-0.861653, 0.211556, -0.461300,
		0.460682, -0.055259, -0.885843,
		29.445944, 38.599575, 35.151028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587097, 38.304764, 35.325077>,  <29.123466, 38.638256, 35.771118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.587097, 38.304764, 35.325077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.936047, 38.248756, 35.137733>,  <29.145416, 38.215153, 35.025326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.936047, 38.248756, 35.137733>,  <28.587097, 38.304764, 35.325077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.936047, 38.248756, 35.137733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180616, -0.982628, -0.042653,
		-0.454253, 0.121803, -0.882507,
		0.872371, -0.140020, -0.468362,
		29.197758, 38.206749, 34.997227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.435331, 38.031582, 34.609421>,  <28.587097, 38.304764, 35.325077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.435331, 38.031582, 34.609421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.801579, 37.942524, 34.743332>,  <29.021326, 37.889091, 34.823677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.801579, 37.942524, 34.743332>,  <28.435331, 38.031582, 34.609421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.801579, 37.942524, 34.743332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155992, -0.964170, -0.214577,
		0.370554, 0.144248, -0.917541,
		0.915618, -0.222641, 0.334775,
		29.076263, 37.875732, 34.843765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.567307, 37.552418, 34.103840>,  <28.435331, 38.031582, 34.609421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.567307, 37.552418, 34.103840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.806128, 37.491802, 34.418945>,  <28.949421, 37.455433, 34.608009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.806128, 37.491802, 34.418945>,  <28.567307, 37.552418, 34.103840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.806128, 37.491802, 34.418945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056258, -0.987488, -0.147316,
		0.800227, 0.043637, -0.598108,
		0.597053, -0.151535, 0.787759,
		28.985243, 37.446342, 34.655273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.016708, 37.019535, 33.805981>,  <28.567307, 37.552418, 34.103840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.016708, 37.019535, 33.805981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044159, 37.016235, 34.205025>,  <29.060629, 37.014256, 34.444450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044159, 37.016235, 34.205025>,  <29.016708, 37.019535, 33.805981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.044159, 37.016235, 34.205025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079109, -0.996862, -0.002800,
		0.994501, -0.078728, -0.069063,
		0.068626, -0.008248, 0.997608,
		29.064747, 37.013760, 34.504307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.642740, 36.659199, 33.908607>,  <29.016708, 37.019535, 33.805981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.642740, 36.659199, 33.908607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.390015, 36.645168, 34.218338>,  <29.238379, 36.636749, 34.404175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.390015, 36.645168, 34.218338>,  <29.642740, 36.659199, 33.908607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.390015, 36.645168, 34.218338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094258, -0.988086, -0.121666,
		0.769368, -0.149856, 0.620980,
		-0.631814, -0.035074, 0.774326,
		29.200470, 36.634647, 34.450638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.899080, 36.071598, 34.097229>,  <29.642740, 36.659199, 33.908607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.899080, 36.071598, 34.097229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.572323, 36.122997, 34.322147>,  <29.376268, 36.153839, 34.457096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.572323, 36.122997, 34.322147>,  <29.899080, 36.071598, 34.097229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.572323, 36.122997, 34.322147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229088, -0.966960, -0.111836,
		0.529344, -0.220173, 0.819340,
		-0.816893, 0.128501, 0.562294,
		29.327255, 36.161549, 34.490837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.846701, 35.527306, 34.682137>,  <29.899080, 36.071598, 34.097229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.846701, 35.527306, 34.682137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.473244, 35.655041, 34.617222>,  <29.249170, 35.731682, 34.578274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.473244, 35.655041, 34.617222>,  <29.846701, 35.527306, 34.682137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.473244, 35.655041, 34.617222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312474, -0.947568, -0.066893,
		-0.175138, -0.011744, 0.984474,
		-0.933642, 0.319337, -0.162285,
		29.193151, 35.750843, 34.568535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443703, 34.956741, 34.958660>,  <29.846701, 35.527306, 34.682137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443703, 34.956741, 34.958660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.209257, 35.177528, 34.721409>,  <29.068590, 35.310001, 34.579060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.209257, 35.177528, 34.721409>,  <29.443703, 34.956741, 34.958660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.209257, 35.177528, 34.721409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622981, -0.775067, -0.105667,
		-0.518040, 0.307575, 0.798143,
		-0.586114, 0.551968, -0.593129,
		29.033422, 35.343117, 34.543468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.696337, 35.030689, 35.285179>,  <29.443703, 34.956741, 34.958660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.696337, 35.030689, 35.285179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.771080, 35.004501, 34.893097>,  <28.815926, 34.988789, 34.657848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.771080, 35.004501, 34.893097>,  <28.696337, 35.030689, 35.285179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.771080, 35.004501, 34.893097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620215, -0.781648, -0.066029,
		-0.761851, 0.620275, -0.186661,
		0.186859, -0.065466, -0.980203,
		28.827137, 34.984863, 34.599037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.827385, 35.060402, 36.030777>,  <28.696337, 35.030689, 35.285179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.827385, 35.060402, 36.030777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.945911, 34.882565, 36.368896>,  <29.017027, 34.775864, 36.571770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.945911, 34.882565, 36.368896>,  <28.827385, 35.060402, 36.030777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.945911, 34.882565, 36.368896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613714, 0.766780, 0.188159,
		-0.731815, 0.463020, 0.500059,
		0.296314, -0.444591, 0.845303,
		29.034805, 34.749187, 36.622486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.481100, 34.817028, 35.833206>,  <28.827385, 35.060402, 36.030777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.481100, 34.817028, 35.833206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.721773, 34.593758, 36.061737>,  <29.866177, 34.459797, 36.198856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.721773, 34.593758, 36.061737>,  <29.481100, 34.817028, 35.833206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.721773, 34.593758, 36.061737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442452, -0.828438, -0.343406,
		0.664992, -0.046165, -0.745422,
		0.601682, -0.558175, 0.571330,
		29.902277, 34.426304, 36.233135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.401281, 34.149036, 35.549042>,  <29.481100, 34.817028, 35.833206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.401281, 34.149036, 35.549042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.608686, 34.078037, 35.883617>,  <29.733130, 34.035439, 36.084362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.608686, 34.078037, 35.883617>,  <29.401281, 34.149036, 35.549042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.608686, 34.078037, 35.883617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392075, -0.918675, 0.048100,
		0.759883, -0.352889, -0.545938,
		0.518514, -0.177498, 0.836444,
		29.764240, 34.024788, 36.134552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.720493, 33.517761, 35.505505>,  <29.401281, 34.149036, 35.549042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.720493, 33.517761, 35.505505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.666340, 33.600780, 35.893028>,  <29.633848, 33.650593, 36.125542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.666340, 33.600780, 35.893028>,  <29.720493, 33.517761, 35.505505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.666340, 33.600780, 35.893028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275235, -0.947206, 0.164461,
		0.951797, -0.244385, 0.185363,
		-0.135385, 0.207551, 0.968810,
		29.625725, 33.663048, 36.183670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104954, 33.029858, 36.005852>,  <29.720493, 33.517761, 35.505505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.104954, 33.029858, 36.005852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.774799, 33.137505, 36.204372>,  <29.576706, 33.202091, 36.323483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.774799, 33.137505, 36.204372>,  <30.104954, 33.029858, 36.005852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.774799, 33.137505, 36.204372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057550, -0.914604, 0.400235,
		0.561626, 0.301786, 0.770390,
		-0.825387, 0.269118, 0.496298,
		29.527184, 33.218239, 36.353260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.660650, 32.867092, 36.466702>,  <30.104954, 33.029858, 36.005852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.660650, 32.867092, 36.466702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851896, 32.516563, 36.490246>,  <30.966644, 32.306248, 36.504372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851896, 32.516563, 36.490246>,  <30.660650, 32.867092, 36.466702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851896, 32.516563, 36.490246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312321, -0.106999, 0.943932,
		-0.820890, -0.469693, -0.324852,
		0.478116, -0.876322, 0.058861,
		30.995331, 32.253666, 36.507904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.255795, 32.431206, 36.993141>,  <30.660650, 32.867092, 36.466702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.255795, 32.431206, 36.993141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.614233, 32.255974, 36.964592>,  <30.829296, 32.150833, 36.947460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.614233, 32.255974, 36.964592>,  <30.255795, 32.431206, 36.993141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614233, 32.255974, 36.964592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013874, -0.133086, 0.991007,
		-0.443644, -0.889028, -0.113180,
		0.896096, -0.438085, -0.071377,
		30.883062, 32.124550, 36.943180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.321426, 31.847475, 37.661312>,  <30.255795, 32.431206, 36.993141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.321426, 31.847475, 37.661312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696304, 31.891754, 37.529003>,  <30.921230, 31.918322, 37.449615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696304, 31.891754, 37.529003>,  <30.321426, 31.847475, 37.661312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.696304, 31.891754, 37.529003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327425, 0.047722, 0.943671,
		0.120250, -0.992707, 0.008478,
		0.937194, 0.110701, -0.330776,
		30.977463, 31.924965, 37.429771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.775507, 31.239902, 37.911884>,  <30.321426, 31.847475, 37.661312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.775507, 31.239902, 37.911884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.005377, 31.560068, 37.843666>,  <31.143299, 31.752169, 37.802734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.005377, 31.560068, 37.843666>,  <30.775507, 31.239902, 37.911884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.005377, 31.560068, 37.843666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370596, -0.068720, 0.926248,
		0.729664, -0.595493, -0.336123,
		0.574672, 0.800416, -0.170545,
		31.177778, 31.800194, 37.792503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431166, 31.064091, 38.098442>,  <30.775507, 31.239902, 37.911884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431166, 31.064091, 38.098442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448927, 31.463415, 38.083450>,  <31.459583, 31.703011, 38.074455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448927, 31.463415, 38.083450>,  <31.431166, 31.064091, 38.098442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.448927, 31.463415, 38.083450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334650, 0.020490, 0.942120,
		0.941296, -0.054376, -0.333174,
		0.044402, 0.998310, -0.037484,
		31.462248, 31.762909, 38.072205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091084, 31.213537, 38.305809>,  <31.431166, 31.064091, 38.098442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091084, 31.213537, 38.305809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863523, 31.538914, 38.354256>,  <31.726988, 31.734138, 38.383324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863523, 31.538914, 38.354256>,  <32.091084, 31.213537, 38.305809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.863523, 31.538914, 38.354256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493946, 0.220208, 0.841146,
		0.657549, 0.538354, -0.527071,
		-0.568899, 0.813439, 0.121120,
		31.692854, 31.782946, 38.390591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.639988, 31.612812, 38.518429>,  <32.091084, 31.213537, 38.305809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.639988, 31.612812, 38.518429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285320, 31.766169, 38.621834>,  <32.072521, 31.858183, 38.683876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285320, 31.766169, 38.621834>,  <32.639988, 31.612812, 38.518429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.285320, 31.766169, 38.621834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391386, 0.324549, 0.861095,
		0.246239, 0.864684, -0.437822,
		-0.886670, 0.383393, 0.258508,
		32.019318, 31.881186, 38.699387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807266, 32.176491, 39.014103>,  <32.639988, 31.612812, 38.518429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807266, 32.176491, 39.014103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424934, 32.121784, 39.118164>,  <32.195534, 32.088959, 39.180603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424934, 32.121784, 39.118164>,  <32.807266, 32.176491, 39.014103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.424934, 32.121784, 39.118164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264838, -0.016920, 0.964144,
		-0.127460, 0.990459, 0.052394,
		-0.955832, -0.136766, 0.260154,
		32.138184, 32.080753, 39.196209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623322, 32.721973, 39.482235>,  <32.807266, 32.176491, 39.014103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623322, 32.721973, 39.482235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338150, 32.449909, 39.550484>,  <32.167046, 32.286671, 39.591431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338150, 32.449909, 39.550484>,  <32.623322, 32.721973, 39.482235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338150, 32.449909, 39.550484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108468, 0.347350, 0.931441,
		-0.692792, 0.645549, -0.321413,
		-0.712933, -0.680158, 0.170620,
		32.124271, 32.245861, 39.601669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147858, 32.976879, 39.884274>,  <32.623322, 32.721973, 39.482235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147858, 32.976879, 39.884274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032791, 32.597164, 39.935040>,  <31.963751, 32.369335, 39.965500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032791, 32.597164, 39.935040>,  <32.147858, 32.976879, 39.884274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.032791, 32.597164, 39.935040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305225, 0.216475, 0.927349,
		-0.907791, 0.228033, -0.352018,
		-0.287669, -0.949283, 0.126912,
		31.946491, 32.312378, 39.973114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.474089, 32.989758, 40.141338>,  <32.147858, 32.976879, 39.884274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.474089, 32.989758, 40.141338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589336, 32.621281, 40.245945>,  <31.658485, 32.400196, 40.308708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589336, 32.621281, 40.245945>,  <31.474089, 32.989758, 40.141338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.589336, 32.621281, 40.245945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445931, 0.112611, 0.887955,
		-0.847427, -0.372459, -0.378342,
		0.288121, -0.921191, 0.261521,
		31.675774, 32.344925, 40.324402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.900925, 32.590569, 40.431049>,  <31.474089, 32.989758, 40.141338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.900925, 32.590569, 40.431049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237099, 32.413124, 40.555550>,  <31.438803, 32.306656, 40.630249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237099, 32.413124, 40.555550>,  <30.900925, 32.590569, 40.431049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237099, 32.413124, 40.555550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282959, 0.130608, 0.950198,
		-0.462170, -0.886651, -0.015756,
		0.840436, -0.443612, 0.311249,
		31.489229, 32.280041, 40.648926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.661911, 32.112854, 40.856541>,  <30.900925, 32.590569, 40.431049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.661911, 32.112854, 40.856541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037905, 32.185711, 40.971951>,  <31.263502, 32.229427, 41.041199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037905, 32.185711, 40.971951>,  <30.661911, 32.112854, 40.856541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.037905, 32.185711, 40.971951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240468, -0.246286, 0.938892,
		0.242077, -0.951927, -0.187704,
		0.939986, 0.182147, 0.288528,
		31.319901, 32.240356, 41.058510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.699684, 31.872004, 41.500065>,  <30.661911, 32.112854, 40.856541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.699684, 31.872004, 41.500065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.072559, 32.013309, 41.531639>,  <31.296284, 32.098095, 41.550583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.072559, 32.013309, 41.531639>,  <30.699684, 31.872004, 41.500065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.072559, 32.013309, 41.531639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077912, -0.017136, 0.996813,
		0.353494, -0.935365, 0.011549,
		0.932187, 0.353267, 0.078933,
		31.352215, 32.119289, 41.555321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244427, 31.337364, 41.955246>,  <30.699684, 31.872004, 41.500065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.244427, 31.337364, 41.955246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.375225, 31.715343, 41.950420>,  <31.453705, 31.942131, 41.947525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.375225, 31.715343, 41.950420>,  <31.244427, 31.337364, 41.955246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.375225, 31.715343, 41.950420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139310, -0.035574, 0.989610,
		0.934701, -0.325280, -0.143273,
		0.326997, 0.944949, -0.012064,
		31.473324, 31.998829, 41.946800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897219, 31.337767, 42.318752>,  <31.244427, 31.337364, 41.955246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897219, 31.337767, 42.318752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742771, 31.705843, 42.344543>,  <31.650103, 31.926689, 42.360020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742771, 31.705843, 42.344543>,  <31.897219, 31.337767, 42.318752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742771, 31.705843, 42.344543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041828, -0.052361, 0.997752,
		0.921500, 0.387947, -0.018273,
		-0.386118, 0.920193, 0.064478,
		31.626936, 31.981901, 42.363888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161301, 31.550791, 42.952858>,  <31.897219, 31.337767, 42.318752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161301, 31.550791, 42.952858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889996, 31.834528, 42.876133>,  <31.727213, 32.004768, 42.830097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889996, 31.834528, 42.876133>,  <32.161301, 31.550791, 42.952858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889996, 31.834528, 42.876133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165157, 0.107188, 0.980425,
		0.716017, 0.696666, 0.044451,
		-0.678264, 0.709343, -0.191808,
		31.686516, 32.047329, 42.818592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365765, 32.280350, 43.202515>,  <32.161301, 31.550791, 42.952858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365765, 32.280350, 43.202515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967142, 32.260227, 43.176144>,  <31.727968, 32.248154, 43.160320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967142, 32.260227, 43.176144>,  <32.365765, 32.280350, 43.202515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967142, 32.260227, 43.176144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073431, 0.165779, 0.983425,
		-0.038545, 0.984879, -0.168902,
		-0.996555, -0.050309, -0.065931,
		31.668175, 32.245136, 43.156364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056538, 32.824291, 43.699497>,  <32.365765, 32.280350, 43.202515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056538, 32.824291, 43.699497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731585, 32.597740, 43.644005>,  <31.536612, 32.461811, 43.610710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731585, 32.597740, 43.644005>,  <32.056538, 32.824291, 43.699497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731585, 32.597740, 43.644005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304816, 0.209640, 0.929052,
		-0.497111, 0.797036, -0.342949,
		-0.812384, -0.566378, -0.138735,
		31.487869, 32.427826, 43.602383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539251, 33.149094, 44.146255>,  <32.056538, 32.824291, 43.699497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.539251, 33.149094, 44.146255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356098, 32.800365, 44.076649>,  <31.246206, 32.591129, 44.034885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356098, 32.800365, 44.076649>,  <31.539251, 33.149094, 44.146255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.356098, 32.800365, 44.076649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292308, -0.037217, 0.955600,
		-0.839584, 0.488417, -0.237798,
		-0.457881, -0.871817, -0.174015,
		31.218735, 32.538822, 44.024445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.822870, 33.274670, 44.094662>,  <31.539251, 33.149094, 44.146255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.822870, 33.274670, 44.094662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.922638, 32.908043, 44.219685>,  <30.982498, 32.688068, 44.294701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.922638, 32.908043, 44.219685>,  <30.822870, 33.274670, 44.094662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.922638, 32.908043, 44.219685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369544, 0.208251, 0.905576,
		-0.895113, -0.341371, -0.286771,
		0.249417, -0.916568, 0.312559,
		30.997463, 32.633072, 44.313454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.273748, 33.037487, 44.568233>,  <30.822870, 33.274670, 44.094662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.273748, 33.037487, 44.568233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.539072, 32.750797, 44.654324>,  <30.698267, 32.578781, 44.705978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.539072, 32.750797, 44.654324>,  <30.273748, 33.037487, 44.568233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.539072, 32.750797, 44.654324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407118, -0.104291, 0.907402,
		-0.627914, -0.689510, -0.360970,
		0.663309, -0.716728, 0.215226,
		30.738066, 32.535778, 44.718891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.889280, 32.346661, 44.796291>,  <30.273748, 33.037487, 44.568233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.889280, 32.346661, 44.796291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.265722, 32.329491, 44.930443>,  <30.491587, 32.319187, 45.010933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.265722, 32.329491, 44.930443>,  <29.889280, 32.346661, 44.796291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.265722, 32.329491, 44.930443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338057, -0.138491, 0.930880,
		0.006490, -0.989433, -0.144846,
		0.941103, -0.042924, 0.335383,
		30.548054, 32.316612, 45.031059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.867590, 31.783804, 45.360764>,  <29.889280, 32.346661, 44.796291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.867590, 31.783804, 45.360764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.213034, 31.971546, 45.434395>,  <30.420300, 32.084190, 45.478573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.213034, 31.971546, 45.434395>,  <29.867590, 31.783804, 45.360764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.213034, 31.971546, 45.434395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129406, -0.146515, 0.980708,
		0.487272, -0.870768, -0.065793,
		0.863609, 0.469357, 0.184075,
		30.472116, 32.112354, 45.489616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.239574, 31.416027, 45.963188>,  <29.867590, 31.783804, 45.360764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.239574, 31.416027, 45.963188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.406000, 31.778036, 45.927803>,  <30.505856, 31.995241, 45.906570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.406000, 31.778036, 45.927803>,  <30.239574, 31.416027, 45.963188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.406000, 31.778036, 45.927803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116932, 0.043232, 0.992198,
		0.901785, -0.423163, -0.087839,
		0.416065, 0.905021, -0.088467,
		30.530819, 32.049541, 45.901264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.854460, 31.356146, 46.361599>,  <30.239574, 31.416027, 45.963188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.854460, 31.356146, 46.361599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772545, 31.746880, 46.336746>,  <30.723396, 31.981319, 46.321835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772545, 31.746880, 46.336746>,  <30.854460, 31.356146, 46.361599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772545, 31.746880, 46.336746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249752, 0.113526, 0.961632,
		0.946407, 0.181412, -0.267214,
		-0.204787, 0.976832, -0.062134,
		30.711109, 32.039928, 46.318108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447369, 31.687147, 46.651184>,  <30.854460, 31.356146, 46.361599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447369, 31.687147, 46.651184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.146841, 31.951063, 46.656853>,  <30.966524, 32.109413, 46.660255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.146841, 31.951063, 46.656853>,  <31.447369, 31.687147, 46.651184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146841, 31.951063, 46.656853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190646, 0.196435, 0.961804,
		0.631803, 0.725323, -0.273371,
		-0.751318, 0.659788, 0.014172,
		30.921446, 32.148998, 46.661106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784430, 32.213245, 46.986660>,  <31.447369, 31.687147, 46.651184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784430, 32.213245, 46.986660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.392551, 32.276279, 47.036236>,  <31.157425, 32.314102, 47.065983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.392551, 32.276279, 47.036236>,  <31.784430, 32.213245, 46.986660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.392551, 32.276279, 47.036236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169828, 0.323749, 0.930777,
		0.106554, 0.932927, -0.343938,
		-0.979696, 0.157588, 0.123940,
		31.098642, 32.323555, 47.073418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.634678, 32.997387, 47.152946>,  <31.784430, 32.213245, 46.986660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.634678, 32.997387, 47.152946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.330790, 32.768490, 47.276474>,  <31.148457, 32.631153, 47.350590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.330790, 32.768490, 47.276474>,  <31.634678, 32.997387, 47.152946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.330790, 32.768490, 47.276474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040438, 0.432422, 0.900764,
		-0.648992, 0.696816, -0.305379,
		-0.759720, -0.572240, 0.308816,
		31.102873, 32.596817, 47.369118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178225, 33.457005, 47.451900>,  <31.634678, 32.997387, 47.152946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178225, 33.457005, 47.451900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.064398, 33.103344, 47.600113>,  <30.996101, 32.891148, 47.689041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.064398, 33.103344, 47.600113>,  <31.178225, 33.457005, 47.451900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.064398, 33.103344, 47.600113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099285, 0.411610, 0.905936,
		-0.953502, 0.221010, -0.204913,
		-0.284565, -0.884156, 0.370528,
		30.979029, 32.838097, 47.711273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.888340, 33.644310, 48.012035>,  <31.178225, 33.457005, 47.451900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.888340, 33.644310, 48.012035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.918617, 33.249245, 48.066860>,  <30.936783, 33.012203, 48.099754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.918617, 33.249245, 48.066860>,  <30.888340, 33.644310, 48.012035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.918617, 33.249245, 48.066860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100708, 0.144323, 0.984393,
		-0.992033, -0.060707, 0.110390,
		0.075692, -0.987667, 0.137060,
		30.941324, 32.952946, 48.107979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.538342, 33.523094, 48.667824>,  <30.888340, 33.644310, 48.012035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.538342, 33.523094, 48.667824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797953, 33.221535, 48.627045>,  <30.953720, 33.040600, 48.602577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797953, 33.221535, 48.627045>,  <30.538342, 33.523094, 48.667824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.797953, 33.221535, 48.627045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119512, -0.031300, 0.992339,
		-0.751319, -0.656239, 0.069786,
		0.649028, -0.753903, -0.101945,
		30.992661, 32.995365, 48.596462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.360023, 33.076534, 49.180222>,  <30.538342, 33.523094, 48.667824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.360023, 33.076534, 49.180222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744081, 32.994331, 49.104446>,  <30.974516, 32.945011, 49.058979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744081, 32.994331, 49.104446>,  <30.360023, 33.076534, 49.180222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744081, 32.994331, 49.104446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171836, -0.100543, 0.979981,
		-0.220441, -0.973477, -0.061223,
		0.960145, -0.205508, -0.189442,
		31.032125, 32.932678, 49.047615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.370340, 32.530739, 49.623878>,  <30.360023, 33.076534, 49.180222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.370340, 32.530739, 49.623878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.740614, 32.645378, 49.525108>,  <30.962778, 32.714161, 49.465847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.740614, 32.645378, 49.525108>,  <30.370340, 32.530739, 49.623878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.740614, 32.645378, 49.525108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306763, -0.186728, 0.933289,
		0.221376, -0.939676, -0.260770,
		0.925683, 0.286602, -0.246921,
		31.018318, 32.731358, 49.451031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.782799, 32.015274, 49.855328>,  <30.370340, 32.530739, 49.623878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.782799, 32.015274, 49.855328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.981228, 32.362022, 49.835537>,  <31.100286, 32.570072, 49.823662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.981228, 32.362022, 49.835537>,  <30.782799, 32.015274, 49.855328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.981228, 32.362022, 49.835537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309393, -0.123237, 0.942915,
		0.811287, -0.483062, -0.329338,
		0.496074, 0.866870, -0.049475,
		31.130051, 32.622082, 49.820694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.497414, 31.887474, 50.017216>,  <30.782799, 32.015274, 49.855328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.497414, 31.887474, 50.017216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444479, 32.276760, 50.092415>,  <31.412718, 32.510330, 50.137535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444479, 32.276760, 50.092415>,  <31.497414, 31.887474, 50.017216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444479, 32.276760, 50.092415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303063, -0.140855, 0.942504,
		0.943737, 0.181705, -0.276304,
		-0.132338, 0.973213, 0.187998,
		31.404778, 32.568726, 50.148815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056278, 32.241909, 50.297684>,  <31.497414, 31.887474, 50.017216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056278, 32.241909, 50.297684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767359, 32.474407, 50.447578>,  <31.594006, 32.613907, 50.537518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767359, 32.474407, 50.447578>,  <32.056278, 32.241909, 50.297684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767359, 32.474407, 50.447578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406119, -0.082098, 0.910125,
		0.559773, 0.809575, -0.176756,
		-0.722303, 0.581247, 0.374740,
		31.550669, 32.648781, 50.560001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445999, 32.809944, 50.745575>,  <32.056278, 32.241909, 50.297684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445999, 32.809944, 50.745575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059380, 32.776714, 50.842636>,  <31.827408, 32.756775, 50.900871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059380, 32.776714, 50.842636>,  <32.445999, 32.809944, 50.745575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059380, 32.776714, 50.842636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239655, 0.044443, 0.969840,
		-0.091354, 0.995552, -0.023047,
		-0.966550, -0.083076, 0.242649,
		31.769415, 32.751793, 50.915432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382500, 33.293034, 51.405342>,  <32.445999, 32.809944, 50.745575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382500, 33.293034, 51.405342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.058861, 33.059177, 51.381489>,  <31.864677, 32.918861, 51.367176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.058861, 33.059177, 51.381489>,  <32.382500, 33.293034, 51.405342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058861, 33.059177, 51.381489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037055, -0.050515, 0.998036,
		-0.586506, 0.809717, 0.019208,
		-0.809097, -0.584642, -0.059631,
		31.816132, 32.883785, 51.363598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900587, 33.663074, 51.924595>,  <32.382500, 33.293034, 51.405342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900587, 33.663074, 51.924595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815298, 33.274792, 51.880283>,  <31.764124, 33.041824, 51.853699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815298, 33.274792, 51.880283>,  <31.900587, 33.663074, 51.924595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815298, 33.274792, 51.880283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091374, -0.132700, 0.986936,
		-0.972721, 0.200317, 0.116992,
		-0.213224, -0.970703, -0.110776,
		31.751331, 32.983582, 51.847050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.444340, 33.429333, 52.436935>,  <31.900587, 33.663074, 51.924595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.444340, 33.429333, 52.436935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600981, 33.072113, 52.348297>,  <31.694965, 32.857780, 52.295113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600981, 33.072113, 52.348297>,  <31.444340, 33.429333, 52.436935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600981, 33.072113, 52.348297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208663, -0.148365, 0.966668,
		-0.896163, -0.424788, 0.128247,
		0.391602, -0.893053, -0.221597,
		31.718462, 32.804195, 52.281818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.087641, 32.956097, 52.885075>,  <31.444340, 33.429333, 52.436935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.087641, 32.956097, 52.885075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.385979, 32.707348, 52.789581>,  <31.564981, 32.558098, 52.732285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.385979, 32.707348, 52.789581>,  <31.087641, 32.956097, 52.885075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385979, 32.707348, 52.789581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192468, -0.141915, 0.970987,
		-0.637709, -0.770153, 0.013844,
		0.745844, -0.621872, -0.238730,
		31.609732, 32.520786, 52.717964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.936480, 32.282722, 53.100021>,  <31.087641, 32.956097, 52.885075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.936480, 32.282722, 53.100021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316092, 32.408798, 53.100563>,  <31.543858, 32.484444, 53.100887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316092, 32.408798, 53.100563>,  <30.936480, 32.282722, 53.100021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316092, 32.408798, 53.100563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005508, -0.020881, 0.999767,
		0.315145, -0.948799, -0.021553,
		0.949027, 0.315191, 0.001355,
		31.600800, 32.503357, 53.100971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.136486, 32.614491, 53.784882>,  <30.936480, 32.282722, 53.100021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.136486, 32.614491, 53.784882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.094595, 32.859650, 54.098160>,  <31.069460, 33.006744, 54.286125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.094595, 32.859650, 54.098160>,  <31.136486, 32.614491, 53.784882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.094595, 32.859650, 54.098160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806447, -0.513175, 0.293758,
		0.581958, -0.600838, 0.548013,
		-0.104726, 0.612898, 0.783191,
		31.063177, 33.043518, 54.333118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149330, 32.255299, 54.501987>,  <31.136486, 32.614491, 53.784882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.149330, 32.255299, 54.501987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.925652, 32.582817, 54.450027>,  <30.791445, 32.779327, 54.418850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.925652, 32.582817, 54.450027>,  <31.149330, 32.255299, 54.501987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.925652, 32.582817, 54.450027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827887, -0.543281, 0.139457,
		0.043613, 0.185529, 0.981670,
		-0.559196, 0.818795, -0.129903,
		30.757893, 32.828457, 54.411057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.026409, 31.536049, 54.879612>,  <31.149330, 32.255299, 54.501987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.026409, 31.536049, 54.879612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.355120, 31.756645, 54.822281>,  <31.552345, 31.889004, 54.787884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.355120, 31.756645, 54.822281>,  <31.026409, 31.536049, 54.879612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355120, 31.756645, 54.822281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359325, -0.696770, -0.620804,
		-0.442233, 0.458661, -0.770753,
		0.821776, 0.551490, -0.143326,
		31.601652, 31.922092, 54.779282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.207445, 31.502234, 54.157486>,  <31.026409, 31.536049, 54.879612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.207445, 31.502234, 54.157486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.541162, 31.584770, 54.361988>,  <31.741392, 31.634293, 54.484688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.541162, 31.584770, 54.361988>,  <31.207445, 31.502234, 54.157486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.541162, 31.584770, 54.361988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504671, -0.659152, -0.557518,
		0.221954, 0.723147, -0.654060,
		0.834292, 0.206341, 0.511253,
		31.791451, 31.646673, 54.515366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750872, 31.362886, 53.674034>,  <31.207445, 31.502234, 54.157486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.750872, 31.362886, 53.674034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905720, 31.334566, 54.041756>,  <31.998629, 31.317574, 54.262390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905720, 31.334566, 54.041756>,  <31.750872, 31.362886, 53.674034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905720, 31.334566, 54.041756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637536, -0.699738, -0.322359,
		0.666097, 0.710883, -0.225745,
		0.387121, -0.070802, 0.919306,
		32.021854, 31.313326, 54.317547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473278, 31.683716, 53.782776>,  <31.750872, 31.362886, 53.674034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473278, 31.683716, 53.782776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400291, 31.364439, 54.012417>,  <32.356499, 31.172873, 54.150200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400291, 31.364439, 54.012417>,  <32.473278, 31.683716, 53.782776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400291, 31.364439, 54.012417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680157, -0.524118, -0.512530,
		0.709996, 0.296961, 0.638530,
		-0.182463, -0.798194, 0.574102,
		32.345554, 31.124981, 54.184647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055138, 31.526310, 54.153744>,  <32.473278, 31.683716, 53.782776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055138, 31.526310, 54.153744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837025, 31.198816, 54.081806>,  <32.706158, 31.002319, 54.038643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837025, 31.198816, 54.081806>,  <33.055138, 31.526310, 54.153744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837025, 31.198816, 54.081806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773023, -0.408160, -0.485634,
		0.324201, -0.403829, 0.855462,
		-0.545279, -0.818735, -0.179844,
		32.673443, 30.953196, 54.027855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476688, 31.042866, 54.126823>,  <33.055138, 31.526310, 54.153744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476688, 31.042866, 54.126823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160084, 30.895020, 53.932137>,  <32.970119, 30.806311, 53.815327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160084, 30.895020, 53.932137>,  <33.476688, 31.042866, 54.126823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160084, 30.895020, 53.932137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592644, -0.658706, -0.463551,
		-0.149266, -0.655355, 0.740426,
		-0.791513, -0.369617, -0.486714,
		32.922630, 30.784134, 53.786121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699261, 30.373474, 54.149548>,  <33.476688, 31.042866, 54.126823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699261, 30.373474, 54.149548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419338, 30.414381, 53.866756>,  <33.251385, 30.438925, 53.697083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419338, 30.414381, 53.866756>,  <33.699261, 30.373474, 54.149548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419338, 30.414381, 53.866756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467804, -0.682336, -0.561762,
		-0.539843, -0.723851, 0.429663,
		-0.699806, 0.102265, -0.706974,
		33.209396, 30.445061, 53.654663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576355, 29.794996, 53.726830>,  <33.699261, 30.373474, 54.149548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576355, 29.794996, 53.726830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453945, 30.085148, 53.480198>,  <33.380497, 30.259239, 53.332218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453945, 30.085148, 53.480198>,  <33.576355, 29.794996, 53.726830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453945, 30.085148, 53.480198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467412, -0.449739, -0.761092,
		-0.829381, -0.521112, -0.201419,
		-0.306028, 0.725381, -0.616579,
		33.362137, 30.302763, 53.295223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330799, 29.373554, 53.139458>,  <33.576355, 29.794996, 53.726830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330799, 29.373554, 53.139458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341640, 29.744991, 52.991417>,  <33.348145, 29.967854, 52.902592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341640, 29.744991, 52.991417>,  <33.330799, 29.373554, 53.139458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341640, 29.744991, 52.991417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129125, -0.370391, -0.919857,
		-0.991258, -0.022862, -0.129942,
		0.027099, 0.928595, -0.370105,
		33.349770, 30.023569, 52.880386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946766, 29.318975, 52.622822>,  <33.330799, 29.373554, 53.139458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946766, 29.318975, 52.622822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127132, 29.666084, 52.539261>,  <33.235352, 29.874350, 52.489124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127132, 29.666084, 52.539261>,  <32.946766, 29.318975, 52.622822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127132, 29.666084, 52.539261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085328, -0.274886, -0.957683,
		-0.888477, 0.414012, -0.197997,
		0.450919, 0.867774, -0.208903,
		33.262409, 29.926416, 52.476589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549835, 29.754795, 52.252987>,  <32.946766, 29.318975, 52.622822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549835, 29.754795, 52.252987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930321, 29.837627, 52.161499>,  <33.158611, 29.887327, 52.106606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930321, 29.837627, 52.161499>,  <32.549835, 29.754795, 52.252987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930321, 29.837627, 52.161499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185204, -0.209678, -0.960070,
		-0.246771, 0.955590, -0.161095,
		0.951212, 0.207082, -0.228721,
		33.215683, 29.899752, 52.092884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555256, 30.109478, 51.621887>,  <32.549835, 29.754795, 52.252987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555256, 30.109478, 51.621887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945438, 30.021568, 51.616405>,  <33.179546, 29.968822, 51.613117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945438, 30.021568, 51.616405>,  <32.555256, 30.109478, 51.621887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945438, 30.021568, 51.616405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020285, -0.027720, -0.999410,
		0.219263, 0.975157, -0.031497,
		0.975455, -0.219773, -0.013703,
		33.238075, 29.955637, 51.612293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819515, 30.646444, 51.223469>,  <32.555256, 30.109478, 51.621887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819515, 30.646444, 51.223469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086449, 30.348881, 51.237694>,  <33.246609, 30.170341, 51.246231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086449, 30.348881, 51.237694>,  <32.819515, 30.646444, 51.223469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086449, 30.348881, 51.237694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107855, 0.049282, -0.992944,
		0.736909, 0.666460, 0.113122,
		0.667333, -0.743910, 0.035564,
		33.286648, 30.125708, 51.248363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397015, 30.971567, 50.899075>,  <32.819515, 30.646444, 51.223469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397015, 30.971567, 50.899075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542782, 30.605354, 50.830952>,  <33.630241, 30.385628, 50.790077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542782, 30.605354, 50.830952>,  <33.397015, 30.971567, 50.899075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542782, 30.605354, 50.830952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021636, 0.174512, -0.984417,
		0.930985, 0.362422, 0.043787,
		0.364416, -0.915530, -0.170309,
		33.652107, 30.330696, 50.779858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109856, 30.928928, 50.474030>,  <33.397015, 30.971567, 50.899075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109856, 30.928928, 50.474030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925762, 30.576294, 50.432098>,  <33.815304, 30.364714, 50.406940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925762, 30.576294, 50.432098>,  <34.109856, 30.928928, 50.474030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925762, 30.576294, 50.432098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178196, 0.023944, -0.983704,
		0.869729, -0.471416, 0.146075,
		-0.460236, -0.881586, -0.104829,
		33.787693, 30.311819, 50.400650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466957, 30.621933, 49.903522>,  <34.109856, 30.928928, 50.474030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466957, 30.621933, 49.903522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120964, 30.429461, 49.960480>,  <33.913368, 30.313976, 49.994656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120964, 30.429461, 49.960480>,  <34.466957, 30.621933, 49.903522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.120964, 30.429461, 49.960480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087840, -0.134197, -0.987054,
		0.494062, -0.866288, 0.073810,
		-0.864978, -0.481182, 0.142396,
		33.861469, 30.285107, 50.003197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556248, 30.001425, 49.470695>,  <34.466957, 30.621933, 49.903522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556248, 30.001425, 49.470695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165787, 30.040403, 49.548286>,  <33.931511, 30.063791, 49.594841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165787, 30.040403, 49.548286>,  <34.556248, 30.001425, 49.470695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165787, 30.040403, 49.548286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209973, -0.197084, -0.957637,
		-0.055090, -0.975532, 0.212845,
		-0.976154, 0.097448, 0.193978,
		33.872940, 30.069637, 49.606480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170193, 29.492134, 49.254940>,  <34.556248, 30.001425, 49.470695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170193, 29.492134, 49.254940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865379, 29.751118, 49.250954>,  <33.682491, 29.906507, 49.248562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865379, 29.751118, 49.250954>,  <34.170193, 29.492134, 49.254940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865379, 29.751118, 49.250954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132839, -0.171377, -0.976209,
		-0.633763, -0.742581, 0.216603,
		-0.762035, 0.647459, -0.009969,
		33.636768, 29.945354, 49.247963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659943, 29.170359, 48.797661>,  <34.170193, 29.492134, 49.254940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659943, 29.170359, 48.797661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532001, 29.548780, 48.818367>,  <33.455238, 29.775833, 48.830791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532001, 29.548780, 48.818367>,  <33.659943, 29.170359, 48.797661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532001, 29.548780, 48.818367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090222, 0.023978, -0.995633,
		-0.943163, -0.323124, 0.077685,
		-0.319850, 0.946053, 0.051768,
		33.436047, 29.832596, 48.833897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135719, 29.207811, 48.310238>,  <33.659943, 29.170359, 48.797661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135719, 29.207811, 48.310238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266647, 29.581148, 48.369209>,  <33.345203, 29.805149, 48.404591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266647, 29.581148, 48.369209>,  <33.135719, 29.207811, 48.310238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266647, 29.581148, 48.369209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054036, 0.174258, -0.983216,
		-0.943366, 0.313863, 0.107473,
		0.327323, 0.933340, 0.147429,
		33.364845, 29.861151, 48.413437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673866, 29.646402, 47.929684>,  <33.135719, 29.207811, 48.310238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673866, 29.646402, 47.929684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995155, 29.880011, 47.976589>,  <33.187927, 30.020176, 48.004734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995155, 29.880011, 47.976589>,  <32.673866, 29.646402, 47.929684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995155, 29.880011, 47.976589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062223, 0.278046, -0.958550,
		-0.592419, 0.762633, 0.259673,
		0.803223, 0.584021, 0.117266,
		33.236122, 30.055218, 48.011768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515953, 30.201693, 47.549042>,  <32.673866, 29.646402, 47.929684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515953, 30.201693, 47.549042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912743, 30.163889, 47.582664>,  <33.150814, 30.141207, 47.602837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912743, 30.163889, 47.582664>,  <32.515953, 30.201693, 47.549042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912743, 30.163889, 47.582664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107139, 0.274687, -0.955546,
		0.067217, 0.956878, 0.282607,
		0.991969, -0.094507, 0.084056,
		33.210335, 30.135536, 47.607880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818913, 30.809673, 47.234154>,  <32.515953, 30.201693, 47.549042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818913, 30.809673, 47.234154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150120, 30.585711, 47.222248>,  <33.348846, 30.451332, 47.215107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150120, 30.585711, 47.222248>,  <32.818913, 30.809673, 47.234154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150120, 30.585711, 47.222248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213417, 0.363809, -0.906695,
		0.518493, 0.744411, 0.420734,
		0.828021, -0.559907, -0.029762,
		33.398525, 30.417738, 47.213318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350861, 31.221327, 46.981007>,  <32.818913, 30.809673, 47.234154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350861, 31.221327, 46.981007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446552, 30.841450, 46.900162>,  <33.503967, 30.613523, 46.851654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446552, 30.841450, 46.900162>,  <33.350861, 31.221327, 46.981007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446552, 30.841450, 46.900162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125634, 0.236679, -0.963431,
		0.962800, 0.205094, 0.175935,
		0.239234, -0.949695, -0.202108,
		33.518322, 30.556541, 46.839531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944862, 31.238363, 46.628986>,  <33.350861, 31.221327, 46.981007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944862, 31.238363, 46.628986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796944, 30.876751, 46.543209>,  <33.708195, 30.659784, 46.491745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796944, 30.876751, 46.543209>,  <33.944862, 31.238363, 46.628986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796944, 30.876751, 46.543209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226236, 0.136241, -0.964498,
		0.901149, -0.405180, 0.154142,
		-0.369794, -0.904029, -0.214439,
		33.686005, 30.605543, 46.478878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436382, 30.970055, 46.214348>,  <33.944862, 31.238363, 46.628986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436382, 30.970055, 46.214348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103184, 30.759188, 46.147152>,  <33.903267, 30.632668, 46.106834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103184, 30.759188, 46.147152>,  <34.436382, 30.970055, 46.214348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103184, 30.759188, 46.147152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114425, 0.132914, -0.984500,
		0.541324, -0.839302, -0.050395,
		-0.832991, -0.527167, -0.167986,
		33.853287, 30.601038, 46.096756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615456, 30.437538, 45.663364>,  <34.436382, 30.970055, 46.214348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615456, 30.437538, 45.663364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218117, 30.483557, 45.661598>,  <33.979713, 30.511168, 45.660538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218117, 30.483557, 45.661598>,  <34.615456, 30.437538, 45.663364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218117, 30.483557, 45.661598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001317, -0.049676, -0.998765,
		-0.115129, -0.992117, 0.049498,
		-0.993349, 0.115052, -0.004413,
		33.920113, 30.518072, 45.660275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356087, 29.834152, 45.204590>,  <34.615456, 30.437538, 45.663364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356087, 29.834152, 45.204590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057922, 30.099920, 45.226185>,  <33.879025, 30.259380, 45.239140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057922, 30.099920, 45.226185>,  <34.356087, 29.834152, 45.204590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057922, 30.099920, 45.226185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264302, -0.220231, -0.938958,
		-0.611973, -0.714175, 0.339769,
		-0.745409, 0.664419, 0.053983,
		33.834301, 30.299246, 45.242378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803837, 29.495533, 44.865257>,  <34.356087, 29.834152, 45.204590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803837, 29.495533, 44.865257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729774, 29.888550, 44.858059>,  <33.685337, 30.124361, 44.853741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729774, 29.888550, 44.858059>,  <33.803837, 29.495533, 44.865257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729774, 29.888550, 44.858059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403175, -0.092654, -0.910421,
		-0.896195, -0.161318, 0.413292,
		-0.185160, 0.982544, -0.017997,
		33.674225, 30.183313, 44.852661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237545, 29.527796, 44.467640>,  <33.803837, 29.495533, 44.865257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237545, 29.527796, 44.467640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388401, 29.897062, 44.437893>,  <33.478916, 30.118622, 44.420044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388401, 29.897062, 44.437893>,  <33.237545, 29.527796, 44.467640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388401, 29.897062, 44.437893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285701, 0.039582, -0.957501,
		-0.880988, 0.382360, 0.278677,
		0.377141, 0.923165, -0.074369,
		33.501545, 30.174011, 44.415581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742519, 29.828907, 44.122131>,  <33.237545, 29.527796, 44.467640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742519, 29.828907, 44.122131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057732, 30.071230, 44.078297>,  <33.246857, 30.216623, 44.051998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057732, 30.071230, 44.078297>,  <32.742519, 29.828907, 44.122131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057732, 30.071230, 44.078297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331468, 0.267510, -0.904747,
		-0.518789, 0.749290, 0.411611,
		0.788028, 0.605808, -0.109584,
		33.294140, 30.252972, 44.045422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504730, 30.305780, 43.720432>,  <32.742519, 29.828907, 44.122131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504730, 30.305780, 43.720432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895370, 30.377522, 43.672958>,  <33.129753, 30.420567, 43.644474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895370, 30.377522, 43.672958>,  <32.504730, 30.305780, 43.720432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895370, 30.377522, 43.672958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154874, 0.203595, -0.966728,
		-0.149223, 0.962487, 0.226608,
		0.976599, 0.179354, -0.118683,
		33.188351, 30.431328, 43.637352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594261, 30.985161, 43.295238>,  <32.504730, 30.305780, 43.720432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594261, 30.985161, 43.295238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929588, 30.768528, 43.270203>,  <33.130783, 30.638548, 43.255180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929588, 30.768528, 43.270203>,  <32.594261, 30.985161, 43.295238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929588, 30.768528, 43.270203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035022, 0.061071, -0.997519,
		0.544063, 0.838425, 0.032229,
		0.838313, -0.541584, -0.062589,
		33.181084, 30.606052, 43.251427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856907, 31.253061, 42.682316>,  <32.594261, 30.985161, 43.295238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856907, 31.253061, 42.682316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078541, 30.923548, 42.730259>,  <33.211521, 30.725840, 42.759026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078541, 30.923548, 42.730259>,  <32.856907, 31.253061, 42.682316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078541, 30.923548, 42.730259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044426, -0.114512, -0.992428,
		0.831273, 0.555216, -0.026852,
		0.554086, -0.823785, 0.119856,
		33.244766, 30.676413, 42.766216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538612, 31.226145, 42.163864>,  <32.856907, 31.253061, 42.682316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538612, 31.226145, 42.163864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476898, 30.851656, 42.290154>,  <33.439869, 30.626963, 42.365929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476898, 30.851656, 42.290154>,  <33.538612, 31.226145, 42.163864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476898, 30.851656, 42.290154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030825, -0.323955, -0.945570,
		0.987545, -0.136156, 0.078841,
		-0.154286, -0.936224, 0.315724,
		33.430611, 30.570789, 42.384872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056511, 30.853539, 41.820633>,  <33.538612, 31.226145, 42.163864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056511, 30.853539, 41.820633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781528, 30.577875, 41.912254>,  <33.616539, 30.412477, 41.967228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781528, 30.577875, 41.912254>,  <34.056511, 30.853539, 41.820633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781528, 30.577875, 41.912254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201875, -0.484312, -0.851287,
		0.697605, -0.538981, 0.472066,
		-0.687454, -0.689160, 0.229052,
		33.575291, 30.371126, 41.980968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349911, 30.260353, 41.654037>,  <34.056511, 30.853539, 41.820633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349911, 30.260353, 41.654037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957764, 30.183586, 41.672127>,  <33.722477, 30.137526, 41.682980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957764, 30.183586, 41.672127>,  <34.349911, 30.260353, 41.654037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957764, 30.183586, 41.672127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081710, -0.604163, -0.792660,
		0.179448, -0.773404, 0.607984,
		-0.980368, -0.191919, 0.045221,
		33.663654, 30.126011, 41.685692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340755, 29.570566, 41.607040>,  <34.349911, 30.260353, 41.654037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340755, 29.570566, 41.607040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.988174, 29.690811, 41.461342>,  <33.776627, 29.762959, 41.373924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.988174, 29.690811, 41.461342>,  <34.340755, 29.570566, 41.607040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988174, 29.690811, 41.461342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172669, -0.512738, -0.841002,
		-0.439574, -0.804198, 0.400050,
		-0.881454, 0.300607, -0.364246,
		33.723740, 29.780994, 41.352066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151966, 29.075466, 41.152435>,  <34.340755, 29.570566, 41.607040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151966, 29.075466, 41.152435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.882053, 29.352482, 41.050411>,  <33.720104, 29.518692, 40.989197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.882053, 29.352482, 41.050411>,  <34.151966, 29.075466, 41.152435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882053, 29.352482, 41.050411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086015, -0.417050, -0.904804,
		-0.732989, -0.588604, 0.340986,
		-0.674780, 0.692542, -0.255064,
		33.679619, 29.560244, 40.973892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656853, 28.744865, 40.716393>,  <34.151966, 29.075466, 41.152435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656853, 28.744865, 40.716393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612228, 29.134270, 40.636559>,  <33.585453, 29.367912, 40.588657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612228, 29.134270, 40.636559>,  <33.656853, 28.744865, 40.716393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612228, 29.134270, 40.636559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103198, -0.211102, -0.972001,
		-0.988385, -0.087838, 0.124014,
		-0.111558, 0.973510, -0.199585,
		33.578762, 29.426323, 40.576683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146179, 28.741634, 40.063019>,  <33.656853, 28.744865, 40.716393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146179, 28.741634, 40.063019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323524, 29.099968, 40.075123>,  <33.429932, 29.314968, 40.082386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323524, 29.099968, 40.075123>,  <33.146179, 28.741634, 40.063019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323524, 29.099968, 40.075123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137330, 0.101251, -0.985337,
		-0.885760, 0.432704, 0.167915,
		0.443361, 0.895832, 0.030261,
		33.456532, 29.368717, 40.084202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706600, 29.169453, 39.732594>,  <33.146179, 28.741634, 40.063019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706600, 29.169453, 39.732594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057140, 29.362074, 39.728104>,  <33.267464, 29.477646, 39.725410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057140, 29.362074, 39.728104>,  <32.706600, 29.169453, 39.732594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057140, 29.362074, 39.728104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263168, 0.459149, -0.848484,
		-0.403436, 0.746519, 0.529102,
		0.876346, 0.481551, -0.011223,
		33.320045, 29.506538, 39.724735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622177, 29.972084, 39.585381>,  <32.706600, 29.169453, 39.732594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622177, 29.972084, 39.585381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985241, 29.852018, 39.468033>,  <33.203079, 29.779980, 39.397625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985241, 29.852018, 39.468033>,  <32.622177, 29.972084, 39.585381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985241, 29.852018, 39.468033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165863, 0.385551, -0.907656,
		0.385551, 0.872498, 0.300162,
		0.907656, -0.300162, -0.293365,
		33.257538, 29.761971, 39.380024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014725, 30.577578, 39.340809>,  <32.622177, 29.972084, 39.585381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014725, 30.577578, 39.340809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210041, 30.268259, 39.179024>,  <33.327229, 30.082668, 39.081955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210041, 30.268259, 39.179024>,  <33.014725, 30.577578, 39.340809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210041, 30.268259, 39.179024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018626, 0.472595, -0.881083,
		0.872484, 0.422688, 0.245165,
		0.488287, -0.773298, -0.404458,
		33.356525, 30.036270, 39.057686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224751, 30.909586, 38.798481>,  <33.014725, 30.577578, 39.340809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224751, 30.909586, 38.798481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301346, 30.530443, 38.696575>,  <33.347305, 30.302958, 38.635433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301346, 30.530443, 38.696575>,  <33.224751, 30.909586, 38.798481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301346, 30.530443, 38.696575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034457, 0.252912, -0.966875,
		0.980889, 0.193925, 0.015770,
		0.191490, -0.947855, -0.254761,
		33.358791, 30.246086, 38.620148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818237, 30.865482, 38.352512>,  <33.224751, 30.909586, 38.798481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818237, 30.865482, 38.352512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630470, 30.521894, 38.270714>,  <33.517811, 30.315742, 38.221634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630470, 30.521894, 38.270714>,  <33.818237, 30.865482, 38.352512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630470, 30.521894, 38.270714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048879, 0.205962, -0.977338,
		0.881620, -0.468780, -0.054698,
		-0.469422, -0.858967, -0.204493,
		33.489643, 30.264204, 38.209366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152142, 30.555479, 37.760548>,  <33.818237, 30.865482, 38.352512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152142, 30.555479, 37.760548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797195, 30.371508, 37.747612>,  <33.584229, 30.261126, 37.739853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797195, 30.371508, 37.747612>,  <34.152142, 30.555479, 37.760548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797195, 30.371508, 37.747612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048842, -0.024031, -0.998517,
		0.458469, -0.887631, 0.043788,
		-0.887367, -0.459928, -0.032336,
		33.530987, 30.233530, 37.737911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742043, 30.863388, 38.310120>,  <34.152142, 30.555479, 37.760548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742043, 30.863388, 38.310120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128384, 30.916880, 38.221352>,  <35.360188, 30.948975, 38.168091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128384, 30.916880, 38.221352>,  <34.742043, 30.863388, 38.310120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128384, 30.916880, 38.221352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211855, 0.085470, 0.973557,
		0.149164, -0.987325, 0.054220,
		0.965851, 0.133733, -0.221919,
		35.418140, 30.956999, 38.154778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046692, 30.472910, 38.793892>,  <34.742043, 30.863388, 38.310120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046692, 30.472910, 38.793892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335361, 30.708427, 38.648285>,  <35.508564, 30.849739, 38.560921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335361, 30.708427, 38.648285>,  <35.046692, 30.472910, 38.793892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335361, 30.708427, 38.648285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543604, -0.156469, 0.824629,
		0.428580, -0.792993, -0.432991,
		0.721675, 0.588795, -0.364015,
		35.551865, 30.885065, 38.539082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657837, 30.174786, 38.666664>,  <35.046692, 30.472910, 38.793892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657837, 30.174786, 38.666664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.744255, 30.556051, 38.751331>,  <35.796108, 30.784811, 38.802132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.744255, 30.556051, 38.751331>,  <35.657837, 30.174786, 38.666664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744255, 30.556051, 38.751331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367703, -0.280252, 0.886709,
		0.904499, -0.113744, -0.411029,
		0.216049, 0.953164, 0.211664,
		35.809071, 30.842001, 38.814831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088978, 30.093943, 39.259281>,  <35.657837, 30.174786, 38.666664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088978, 30.093943, 39.259281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043297, 30.491196, 39.269474>,  <36.015888, 30.729548, 39.275589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043297, 30.491196, 39.269474>,  <36.088978, 30.093943, 39.259281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043297, 30.491196, 39.269474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299641, 0.009978, 0.954000,
		0.947193, 0.116581, -0.298722,
		-0.114199, 0.993131, 0.025481,
		36.009037, 30.789135, 39.277119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610416, 30.322247, 39.681366>,  <36.088978, 30.093943, 39.259281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610416, 30.322247, 39.681366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380718, 30.649700, 39.677883>,  <36.242901, 30.846172, 39.675793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380718, 30.649700, 39.677883>,  <36.610416, 30.322247, 39.681366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380718, 30.649700, 39.677883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232097, 0.172992, 0.957186,
		0.785093, 0.547639, -0.289343,
		-0.574247, 0.818636, -0.008709,
		36.208443, 30.895290, 39.675270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048302, 30.880054, 39.930264>,  <36.610416, 30.322247, 39.681366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048302, 30.880054, 39.930264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659206, 30.946156, 39.995354>,  <36.425751, 30.985815, 40.034409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659206, 30.946156, 39.995354>,  <37.048302, 30.880054, 39.930264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659206, 30.946156, 39.995354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175826, 0.067931, 0.982075,
		0.151235, 0.983909, -0.095134,
		-0.972735, 0.165251, 0.162723,
		36.367386, 30.995731, 40.044170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019463, 31.420441, 40.336739>,  <37.048302, 30.880054, 39.930264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019463, 31.420441, 40.336739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647675, 31.282097, 40.388062>,  <36.424603, 31.199091, 40.418854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647675, 31.282097, 40.388062>,  <37.019463, 31.420441, 40.336739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647675, 31.282097, 40.388062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102043, 0.093180, 0.990406,
		-0.354496, 0.933648, -0.051316,
		-0.929473, -0.345858, 0.128304,
		36.368832, 31.178339, 40.426552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511154, 31.951385, 40.609692>,  <37.019463, 31.420441, 40.336739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511154, 31.951385, 40.609692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407215, 31.574926, 40.696156>,  <36.344852, 31.349051, 40.748032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407215, 31.574926, 40.696156>,  <36.511154, 31.951385, 40.609692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407215, 31.574926, 40.696156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225906, 0.158387, 0.961187,
		-0.938853, 0.298594, 0.171454,
		-0.259849, -0.941145, 0.216156,
		36.329262, 31.292583, 40.761002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215488, 32.035366, 41.327625>,  <36.511154, 31.951385, 40.609692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215488, 32.035366, 41.327625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227745, 31.635553, 41.326954>,  <36.235100, 31.395666, 41.326550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227745, 31.635553, 41.326954>,  <36.215488, 32.035366, 41.327625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227745, 31.635553, 41.326954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060327, 0.000172, 0.998179,
		-0.997708, -0.030688, 0.060304,
		0.030643, -0.999529, -0.001680,
		36.236938, 31.335695, 41.326450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690701, 31.699821, 41.825817>,  <36.215488, 32.035366, 41.327625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690701, 31.699821, 41.825817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937126, 31.389359, 41.772091>,  <36.084984, 31.203081, 41.739857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.937126, 31.389359, 41.772091>,  <35.690701, 31.699821, 41.825817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937126, 31.389359, 41.772091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182559, -0.306561, 0.934180,
		-0.766245, -0.550999, -0.330557,
		0.616068, -0.776157, -0.134311,
		36.121948, 31.156511, 41.731796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438782, 31.109758, 42.210136>,  <35.690701, 31.699821, 41.825817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438782, 31.109758, 42.210136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830593, 31.034094, 42.182590>,  <36.065681, 30.988695, 42.166061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830593, 31.034094, 42.182590>,  <35.438782, 31.109758, 42.210136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830593, 31.034094, 42.182590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018246, -0.424108, 0.905428,
		-0.200476, -0.885636, -0.418877,
		0.979529, -0.189159, -0.068864,
		36.124451, 30.977346, 42.161930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567005, 30.531300, 42.604919>,  <35.438782, 31.109758, 42.210136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567005, 30.531300, 42.604919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.934097, 30.686886, 42.572731>,  <36.154354, 30.780237, 42.553417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.934097, 30.686886, 42.572731>,  <35.567005, 30.531300, 42.604919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934097, 30.686886, 42.572731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207812, -0.297529, 0.931821,
		0.338503, -0.871884, -0.353883,
		0.917731, 0.388966, -0.080474,
		36.209415, 30.803576, 42.548588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102669, 30.005165, 42.792198>,  <35.567005, 30.531300, 42.604919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102669, 30.005165, 42.792198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.278896, 30.360600, 42.843281>,  <36.384632, 30.573860, 42.873928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.278896, 30.360600, 42.843281>,  <36.102669, 30.005165, 42.792198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278896, 30.360600, 42.843281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148748, -0.212547, 0.965763,
		0.885309, -0.406491, -0.225818,
		0.440570, 0.888588, 0.127705,
		36.411068, 30.627176, 42.881592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834984, 29.859556, 42.998009>,  <36.102669, 30.005165, 42.792198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834984, 29.859556, 42.998009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781120, 30.242937, 43.098595>,  <36.748802, 30.472965, 43.158947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781120, 30.242937, 43.098595>,  <36.834984, 29.859556, 42.998009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781120, 30.242937, 43.098595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332611, -0.195334, 0.922613,
		0.933401, 0.207876, -0.292489,
		-0.134656, 0.958453, 0.251467,
		36.740723, 30.530474, 43.174034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395496, 30.012491, 43.414433>,  <36.834984, 29.859556, 42.998009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395496, 30.012491, 43.414433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119637, 30.290155, 43.496914>,  <36.954121, 30.456753, 43.546402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119637, 30.290155, 43.496914>,  <37.395496, 30.012491, 43.414433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119637, 30.290155, 43.496914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306053, 0.021337, 0.951775,
		0.656284, 0.719505, -0.227165,
		-0.689654, 0.694159, 0.206204,
		36.912739, 30.498404, 43.558777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692684, 30.545509, 43.903469>,  <37.395496, 30.012491, 43.414433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692684, 30.545509, 43.903469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.295166, 30.584852, 43.924259>,  <37.056656, 30.608458, 43.936733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.295166, 30.584852, 43.924259>,  <37.692684, 30.545509, 43.903469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295166, 30.584852, 43.924259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061172, 0.092916, 0.993793,
		0.092916, 0.990804, -0.098356,
		-0.993793, 0.098356, 0.051976,
		36.997028, 30.614359, 43.939854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579453, 31.001459, 44.462093>,  <37.692684, 30.545509, 43.903469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579453, 31.001459, 44.462093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217937, 30.838451, 44.409798>,  <37.001026, 30.740646, 44.378422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217937, 30.838451, 44.409798>,  <37.579453, 31.001459, 44.462093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217937, 30.838451, 44.409798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255534, 0.268777, 0.928688,
		-0.343317, 0.872748, -0.347052,
		-0.903790, -0.407518, -0.130741,
		36.946800, 30.716196, 44.370575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062351, 31.448742, 44.767429>,  <37.579453, 31.001459, 44.462093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062351, 31.448742, 44.767429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882980, 31.092340, 44.739071>,  <36.775356, 30.878500, 44.722057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882980, 31.092340, 44.739071>,  <37.062351, 31.448742, 44.767429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882980, 31.092340, 44.739071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214233, 0.030135, 0.976318,
		-0.867765, 0.452997, -0.204396,
		-0.448428, -0.891003, -0.070897,
		36.748451, 30.825039, 44.717800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474663, 31.473709, 45.161568>,  <37.062351, 31.448742, 44.767429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474663, 31.473709, 45.161568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487812, 31.076996, 45.112118>,  <36.495701, 30.838968, 45.082447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487812, 31.076996, 45.112118>,  <36.474663, 31.473709, 45.161568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487812, 31.076996, 45.112118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366710, -0.127032, 0.921622,
		-0.929754, 0.015034, -0.367874,
		0.032876, -0.991785, -0.123622,
		36.497677, 30.779461, 45.075031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881577, 31.174749, 45.516781>,  <36.474663, 31.473709, 45.161568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881577, 31.174749, 45.516781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.154926, 30.885101, 45.479572>,  <36.318935, 30.711313, 45.457249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.154926, 30.885101, 45.479572>,  <35.881577, 31.174749, 45.516781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154926, 30.885101, 45.479572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065378, -0.187600, 0.980067,
		-0.727138, -0.663668, -0.175542,
		0.683371, -0.724121, -0.093022,
		36.359936, 30.667866, 45.451664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518257, 30.560232, 45.674118>,  <35.881577, 31.174749, 45.516781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518257, 30.560232, 45.674118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899727, 30.472754, 45.756752>,  <36.128609, 30.420265, 45.806332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899727, 30.472754, 45.756752>,  <35.518257, 30.560232, 45.674118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899727, 30.472754, 45.756752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262936, -0.272216, 0.925615,
		-0.146191, -0.937054, -0.317108,
		0.953673, -0.218696, 0.206589,
		36.185829, 30.407145, 45.818729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568222, 29.898403, 45.956543>,  <35.518257, 30.560232, 45.674118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568222, 29.898403, 45.956543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.857311, 30.133953, 46.101265>,  <36.030766, 30.275284, 46.188099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.857311, 30.133953, 46.101265>,  <35.568222, 29.898403, 45.956543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857311, 30.133953, 46.101265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457751, 0.015629, 0.888943,
		0.517822, -0.808073, 0.280854,
		0.722720, 0.588876, 0.361803,
		36.074127, 30.310616, 46.209805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840549, 29.615376, 46.586025>,  <35.568222, 29.898403, 45.956543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840549, 29.615376, 46.586025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959393, 29.996887, 46.604038>,  <36.030697, 30.225796, 46.614845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959393, 29.996887, 46.604038>,  <35.840549, 29.615376, 46.586025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959393, 29.996887, 46.604038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196096, 0.014797, 0.980473,
		0.934491, -0.300136, 0.191430,
		0.297108, 0.953782, 0.045028,
		36.048527, 30.283022, 46.617546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102726, 29.695183, 47.307896>,  <35.840549, 29.615376, 46.586025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102726, 29.695183, 47.307896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082596, 30.073776, 47.180374>,  <36.070518, 30.300932, 47.103863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082596, 30.073776, 47.180374>,  <36.102726, 29.695183, 47.307896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082596, 30.073776, 47.180374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115132, 0.311580, 0.943219,
		0.992074, 0.084176, 0.093289,
		-0.050329, 0.946484, -0.318802,
		36.067497, 30.357721, 47.084732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566879, 30.076868, 47.615376>,  <36.102726, 29.695183, 47.307896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566879, 30.076868, 47.615376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.306988, 30.362389, 47.510807>,  <36.151054, 30.533701, 47.448067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.306988, 30.362389, 47.510807>,  <36.566879, 30.076868, 47.615376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306988, 30.362389, 47.510807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045551, 0.379835, 0.923932,
		0.758801, 0.588396, -0.279304,
		-0.649727, 0.713803, -0.261418,
		36.112068, 30.576530, 47.432381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793533, 30.734558, 47.886303>,  <36.566879, 30.076868, 47.615376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793533, 30.734558, 47.886303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410118, 30.805189, 47.796837>,  <36.180069, 30.847567, 47.743156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410118, 30.805189, 47.796837>,  <36.793533, 30.734558, 47.886303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410118, 30.805189, 47.796837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113542, 0.483243, 0.868093,
		0.261370, 0.857495, -0.443157,
		-0.958537, 0.176576, -0.223667,
		36.122559, 30.858162, 47.729736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693928, 31.407921, 47.947979>,  <36.793533, 30.734558, 47.886303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693928, 31.407921, 47.947979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.340855, 31.232355, 48.015182>,  <36.129009, 31.127016, 48.055504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.340855, 31.232355, 48.015182>,  <36.693928, 31.407921, 47.947979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340855, 31.232355, 48.015182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089975, 0.508693, 0.856234,
		-0.461277, 0.740666, -0.488506,
		-0.882682, -0.438914, 0.168007,
		36.076050, 31.100681, 48.065586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271225, 31.949915, 48.159351>,  <36.693928, 31.407921, 47.947979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271225, 31.949915, 48.159351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060352, 31.626181, 48.262936>,  <35.933830, 31.431940, 48.325085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060352, 31.626181, 48.262936>,  <36.271225, 31.949915, 48.159351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060352, 31.626181, 48.262936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210182, 0.419469, 0.883102,
		-0.823351, 0.411123, -0.391243,
		-0.527177, -0.809336, 0.258960,
		35.902199, 31.383381, 48.340622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589233, 32.196831, 48.378376>,  <36.271225, 31.949915, 48.159351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589233, 32.196831, 48.378376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690639, 31.854160, 48.558083>,  <35.751484, 31.648560, 48.665905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690639, 31.854160, 48.558083>,  <35.589233, 32.196831, 48.378376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690639, 31.854160, 48.558083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382626, 0.337753, 0.859953,
		-0.888440, -0.389915, -0.242159,
		0.253519, -0.856674, 0.449265,
		35.766697, 31.597158, 48.692863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133965, 32.189743, 48.833755>,  <35.589233, 32.196831, 48.378376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133965, 32.189743, 48.833755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366409, 31.896294, 48.974670>,  <35.505878, 31.720224, 49.059219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366409, 31.896294, 48.974670>,  <35.133965, 32.189743, 48.833755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366409, 31.896294, 48.974670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279026, 0.227037, 0.933059,
		-0.764493, -0.640513, -0.072765,
		0.581116, -0.733620, 0.352288,
		35.540745, 31.676208, 49.080357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696503, 31.825592, 49.339443>,  <35.133965, 32.189743, 48.833755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696503, 31.825592, 49.339443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076069, 31.739304, 49.431553>,  <35.303810, 31.687531, 49.486820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076069, 31.739304, 49.431553>,  <34.696503, 31.825592, 49.339443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076069, 31.739304, 49.431553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214890, 0.092570, 0.972241,
		-0.231050, -0.972057, 0.041485,
		0.948914, -0.215722, 0.230274,
		35.360744, 31.674587, 49.500633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760048, 31.321951, 49.962971>,  <34.696503, 31.825592, 49.339443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760048, 31.321951, 49.962971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087437, 31.551514, 49.952152>,  <35.283871, 31.689251, 49.945660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087437, 31.551514, 49.952152>,  <34.760048, 31.321951, 49.962971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087437, 31.551514, 49.952152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201044, 0.330186, 0.922257,
		0.538224, -0.749404, 0.385629,
		0.818472, 0.573909, -0.027050,
		35.332977, 31.723686, 49.944038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823906, 31.420242, 50.673546>,  <34.760048, 31.321951, 49.962971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823906, 31.420242, 50.673546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094006, 31.682034, 50.537487>,  <35.256065, 31.839109, 50.455853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094006, 31.682034, 50.537487>,  <34.823906, 31.420242, 50.673546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094006, 31.682034, 50.537487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089653, 0.530568, 0.842888,
		0.732125, -0.538660, 0.416939,
		0.675244, 0.654480, -0.340150,
		35.296577, 31.878378, 50.435444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400650, 31.397808, 51.046978>,  <34.823906, 31.420242, 50.673546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400650, 31.397808, 51.046978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408436, 31.765474, 50.889618>,  <35.413105, 31.986074, 50.795204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408436, 31.765474, 50.889618>,  <35.400650, 31.397808, 51.046978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408436, 31.765474, 50.889618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098088, 0.393327, 0.914151,
		0.994988, 0.020798, 0.097813,
		0.019460, 0.919163, -0.393396,
		35.414272, 32.041222, 50.771599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873039, 31.788458, 51.411095>,  <35.400650, 31.397808, 51.046978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873039, 31.788458, 51.411095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643501, 32.062248, 51.231232>,  <35.505779, 32.226521, 51.123314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643501, 32.062248, 51.231232>,  <35.873039, 31.788458, 51.411095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643501, 32.062248, 51.231232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184697, 0.426749, 0.885309,
		0.797863, 0.591084, -0.118469,
		-0.573848, 0.684475, -0.449659,
		35.471348, 32.267590, 51.096333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103477, 32.491398, 51.696308>,  <35.873039, 31.788458, 51.411095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103477, 32.491398, 51.696308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.733944, 32.561211, 51.560036>,  <35.512222, 32.603096, 51.478271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.733944, 32.561211, 51.560036>,  <36.103477, 32.491398, 51.696308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733944, 32.561211, 51.560036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213281, 0.504359, 0.836740,
		0.317860, 0.845673, -0.428722,
		-0.923838, 0.174528, -0.340682,
		35.456791, 32.613567, 51.457832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042797, 33.096581, 51.939056>,  <36.103477, 32.491398, 51.696308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042797, 33.096581, 51.939056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667606, 32.998581, 51.840942>,  <35.442490, 32.939781, 51.782074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667606, 32.998581, 51.840942>,  <36.042797, 33.096581, 51.939056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667606, 32.998581, 51.840942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333552, 0.444857, 0.831171,
		-0.094521, 0.861439, -0.498988,
		-0.937981, -0.245002, -0.245286,
		35.386211, 32.925079, 51.767357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619179, 33.718990, 51.980976>,  <36.042797, 33.096581, 51.939056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619179, 33.718990, 51.980976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416435, 33.377750, 52.030483>,  <35.294788, 33.173008, 52.060188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416435, 33.377750, 52.030483>,  <35.619179, 33.718990, 51.980976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416435, 33.377750, 52.030483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426075, 0.372737, 0.824334,
		-0.749370, 0.365088, -0.552409,
		-0.506858, -0.853099, 0.123763,
		35.264378, 33.121822, 52.067612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585922, 34.268513, 51.429108>,  <35.619179, 33.718990, 51.980976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585922, 34.268513, 51.429108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627907, 34.623100, 51.609402>,  <35.653099, 34.835854, 51.717579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627907, 34.623100, 51.609402>,  <35.585922, 34.268513, 51.429108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627907, 34.623100, 51.609402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367267, 0.386644, -0.845944,
		-0.924174, 0.254330, -0.284988,
		0.104960, 0.886467, 0.450733,
		35.659393, 34.889042, 51.744621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318821, 34.878986, 50.987076>,  <35.585922, 34.268513, 51.429108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318821, 34.878986, 50.987076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577053, 35.067081, 51.227772>,  <35.731995, 35.179939, 51.372189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577053, 35.067081, 51.227772>,  <35.318821, 34.878986, 50.987076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577053, 35.067081, 51.227772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382671, 0.482697, -0.787760,
		-0.660896, 0.738836, 0.131675,
		0.645584, 0.470239, 0.601744,
		35.770729, 35.208153, 51.408295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320328, 35.573597, 50.862644>,  <35.318821, 34.878986, 50.987076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320328, 35.573597, 50.862644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684559, 35.525661, 51.020878>,  <35.903099, 35.496899, 51.115818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684559, 35.525661, 51.020878>,  <35.320328, 35.573597, 50.862644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684559, 35.525661, 51.020878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410782, 0.368617, -0.833894,
		-0.045881, 0.921824, 0.384884,
		0.910578, -0.119843, 0.395581,
		35.957733, 35.489708, 51.139553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672710, 35.971840, 50.503536>,  <35.320328, 35.573597, 50.862644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672710, 35.971840, 50.503536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961315, 35.750706, 50.670288>,  <36.134480, 35.618027, 50.770340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961315, 35.750706, 50.670288>,  <35.672710, 35.971840, 50.503536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961315, 35.750706, 50.670288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432889, -0.109738, -0.894743,
		0.540392, 0.826034, 0.160138,
		0.721515, -0.552834, 0.416882,
		36.177769, 35.584854, 50.795353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295273, 36.295486, 50.314331>,  <35.672710, 35.971840, 50.503536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295273, 36.295486, 50.314331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359344, 35.912640, 50.410885>,  <36.397789, 35.682930, 50.468819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359344, 35.912640, 50.410885>,  <36.295273, 36.295486, 50.314331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359344, 35.912640, 50.410885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515532, -0.127425, -0.847343,
		0.841765, 0.260173, 0.473013,
		0.160182, -0.957117, 0.241389,
		36.407398, 35.625504, 50.483303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791328, 36.224846, 49.866875>,  <36.295273, 36.295486, 50.314331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791328, 36.224846, 49.866875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.689491, 35.856056, 49.983593>,  <36.628391, 35.634781, 50.053623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.689491, 35.856056, 49.983593>,  <36.791328, 36.224846, 49.866875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689491, 35.856056, 49.983593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314932, -0.364332, -0.876402,
		0.914332, -0.131227, 0.383115,
		-0.254589, -0.921977, 0.291793,
		36.613113, 35.579464, 50.071129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427567, 35.722897, 49.943310>,  <36.791328, 36.224846, 49.866875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427567, 35.722897, 49.943310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087784, 35.530678, 49.856133>,  <36.883915, 35.415344, 49.803825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087784, 35.530678, 49.856133>,  <37.427567, 35.722897, 49.943310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087784, 35.530678, 49.856133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428856, -0.388114, -0.815751,
		0.307423, -0.786409, 0.535772,
		-0.849455, -0.480550, -0.217941,
		36.832947, 35.386513, 49.790749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654270, 34.958912, 49.821335>,  <37.427567, 35.722897, 49.943310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654270, 34.958912, 49.821335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.298180, 35.025372, 49.651676>,  <37.084526, 35.065247, 49.549881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.298180, 35.025372, 49.651676>,  <37.654270, 34.958912, 49.821335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298180, 35.025372, 49.651676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270861, -0.555550, -0.786129,
		-0.366245, -0.814714, 0.449562,
		-0.890224, 0.166147, -0.424142,
		37.031113, 35.075214, 49.524433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356564, 34.319363, 49.639133>,  <37.654270, 34.958912, 49.821335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356564, 34.319363, 49.639133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.164249, 34.587208, 49.412697>,  <37.048862, 34.747913, 49.276833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.164249, 34.587208, 49.412697>,  <37.356564, 34.319363, 49.639133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164249, 34.587208, 49.412697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269371, -0.501596, -0.822095,
		-0.834439, -0.547739, 0.060784,
		-0.480782, 0.669614, -0.566096,
		37.020016, 34.788094, 49.242867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073112, 33.940170, 49.205814>,  <37.356564, 34.319363, 49.639133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073112, 33.940170, 49.205814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063061, 34.282799, 48.999645>,  <37.057030, 34.488377, 48.875942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063061, 34.282799, 48.999645>,  <37.073112, 33.940170, 49.205814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063061, 34.282799, 48.999645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367779, -0.471504, -0.801513,
		-0.929573, -0.209706, -0.303177,
		-0.025133, 0.856567, -0.515423,
		37.055519, 34.539768, 48.845016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771751, 33.852829, 48.604015>,  <37.073112, 33.940170, 49.205814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771751, 33.852829, 48.604015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959572, 34.191765, 48.504784>,  <37.072262, 34.395126, 48.445244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959572, 34.191765, 48.504784>,  <36.771751, 33.852829, 48.604015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959572, 34.191765, 48.504784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203111, -0.377115, -0.903621,
		-0.859226, 0.373906, -0.349177,
		0.469549, 0.847336, -0.248083,
		37.100437, 34.445965, 48.430359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487335, 34.095806, 47.968822>,  <36.771751, 33.852829, 48.604015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487335, 34.095806, 47.968822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847584, 34.265560, 48.006290>,  <37.063732, 34.367413, 48.028770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847584, 34.265560, 48.006290>,  <36.487335, 34.095806, 47.968822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847584, 34.265560, 48.006290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249180, -0.327642, -0.911351,
		-0.356076, 0.844124, -0.400831,
		0.900622, 0.424389, 0.093673,
		37.117771, 34.392876, 48.034393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653812, 34.337917, 47.256901>,  <36.487335, 34.095806, 47.968822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653812, 34.337917, 47.256901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000729, 34.321468, 47.455341>,  <37.208878, 34.311600, 47.574406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000729, 34.321468, 47.455341>,  <36.653812, 34.337917, 47.256901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000729, 34.321468, 47.455341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412218, -0.499364, -0.762044,
		0.279075, 0.865416, -0.416141,
		0.867291, -0.041127, 0.496100,
		37.260918, 34.309132, 47.604172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101093, 34.581608, 46.782299>,  <36.653812, 34.337917, 47.256901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101093, 34.581608, 46.782299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313694, 34.372414, 47.048832>,  <37.441254, 34.246899, 47.208752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313694, 34.372414, 47.048832>,  <37.101093, 34.581608, 46.782299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313694, 34.372414, 47.048832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361354, -0.571477, -0.736775,
		0.766113, 0.632377, -0.114758,
		0.531501, -0.522985, 0.666328,
		37.473145, 34.215519, 47.248730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713219, 34.534332, 46.452168>,  <37.101093, 34.581608, 46.782299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713219, 34.534332, 46.452168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724216, 34.250847, 46.734150>,  <37.730816, 34.080757, 46.903339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724216, 34.250847, 46.734150>,  <37.713219, 34.534332, 46.452168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724216, 34.250847, 46.734150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545477, -0.580338, -0.604701,
		0.837675, 0.401165, 0.370631,
		0.027494, -0.708713, 0.704961,
		37.732464, 34.038235, 46.945637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420856, 34.482330, 46.523426>,  <37.713219, 34.534332, 46.452168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.420856, 34.482330, 46.523426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.268497, 34.124516, 46.616993>,  <38.177082, 33.909824, 46.673134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.268497, 34.124516, 46.616993>,  <38.420856, 34.482330, 46.523426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268497, 34.124516, 46.616993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366407, -0.378308, -0.850076,
		0.848919, -0.238082, 0.471861,
		-0.380896, -0.894539, 0.233918,
		38.154228, 33.856155, 46.687168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903397, 33.847614, 46.323643>,  <38.420856, 34.482330, 46.523426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903397, 33.847614, 46.323643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543282, 33.674778, 46.344704>,  <38.327213, 33.571075, 46.357342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543282, 33.674778, 46.344704>,  <38.903397, 33.847614, 46.323643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543282, 33.674778, 46.344704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274568, -0.657574, -0.701576,
		0.337771, -0.617164, 0.710647,
		-0.900291, -0.432093, 0.052656,
		38.273193, 33.545151, 46.360500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955013, 33.057610, 46.312141>,  <38.903397, 33.847614, 46.323643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955013, 33.057610, 46.312141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584167, 33.133724, 46.182987>,  <38.361660, 33.179394, 46.105495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584167, 33.133724, 46.182987>,  <38.955013, 33.057610, 46.312141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584167, 33.133724, 46.182987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153878, -0.592289, -0.790896,
		-0.341734, -0.782934, 0.519838,
		-0.927114, 0.190284, -0.322882,
		38.306034, 33.190811, 46.086124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715431, 32.482670, 45.839241>,  <38.955013, 33.057610, 46.312141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715431, 32.482670, 45.839241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427994, 32.744560, 45.745468>,  <38.255531, 32.901695, 45.689205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427994, 32.744560, 45.745468>,  <38.715431, 32.482670, 45.839241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427994, 32.744560, 45.745468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096348, -0.240126, -0.965949,
		-0.688722, -0.716713, 0.109473,
		-0.718595, 0.654723, -0.234433,
		38.212414, 32.940975, 45.675137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209755, 32.091938, 45.422188>,  <38.715431, 32.482670, 45.839241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209755, 32.091938, 45.422188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.152981, 32.474831, 45.321339>,  <38.118916, 32.704567, 45.260830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.152981, 32.474831, 45.321339>,  <38.209755, 32.091938, 45.422188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152981, 32.474831, 45.321339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028528, -0.258552, -0.965576,
		-0.989464, -0.129861, 0.064007,
		-0.141939, 0.957229, -0.252124,
		38.110397, 32.762001, 45.245701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656479, 32.109367, 44.864208>,  <38.209755, 32.091938, 45.422188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656479, 32.109367, 44.864208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831211, 32.466862, 44.823380>,  <37.936050, 32.681358, 44.798882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831211, 32.466862, 44.823380>,  <37.656479, 32.109367, 44.864208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831211, 32.466862, 44.823380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124227, -0.052450, -0.990866,
		-0.890924, 0.445523, 0.088114,
		0.436832, 0.893733, -0.102075,
		37.962261, 32.734982, 44.792755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211777, 32.401520, 44.471802>,  <37.656479, 32.109367, 44.864208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211777, 32.401520, 44.471802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.555008, 32.600582, 44.421127>,  <37.760944, 32.720020, 44.390724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.555008, 32.600582, 44.421127>,  <37.211777, 32.401520, 44.471802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555008, 32.600582, 44.421127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125120, -0.036658, -0.991464,
		-0.498049, 0.866601, 0.030811,
		0.858075, 0.497653, -0.126687,
		37.812431, 32.749878, 44.383121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103806, 32.887833, 43.973431>,  <37.211777, 32.401520, 44.471802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103806, 32.887833, 43.973431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503311, 32.874187, 43.958939>,  <37.743015, 32.866001, 43.950245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503311, 32.874187, 43.958939>,  <37.103806, 32.887833, 43.973431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503311, 32.874187, 43.958939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034291, 0.055760, -0.997855,
		0.036055, 0.997862, 0.054522,
		0.998761, -0.034108, -0.036229,
		37.802940, 32.863956, 43.948071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284065, 33.236080, 43.425144>,  <37.103806, 32.887833, 43.973431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284065, 33.236080, 43.425144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636223, 33.055008, 43.481689>,  <37.847519, 32.946365, 43.515617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636223, 33.055008, 43.481689>,  <37.284065, 33.236080, 43.425144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636223, 33.055008, 43.481689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115961, -0.083545, -0.989734,
		0.459840, 0.887752, -0.021060,
		0.880398, -0.452677, 0.141362,
		37.900341, 32.919205, 43.524097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751427, 33.669277, 43.107845>,  <37.284065, 33.236080, 43.425144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751427, 33.669277, 43.107845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921009, 33.310165, 43.155609>,  <38.022758, 33.094700, 43.184269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921009, 33.310165, 43.155609>,  <37.751427, 33.669277, 43.107845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921009, 33.310165, 43.155609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354101, 0.042956, -0.934220,
		0.833593, 0.438349, 0.336115,
		0.423953, -0.897778, 0.119411,
		38.048195, 33.040833, 43.191433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407402, 33.687061, 42.828342>,  <37.751427, 33.669277, 43.107845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407402, 33.687061, 42.828342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.319561, 33.296825, 42.829132>,  <38.266857, 33.062683, 42.829605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.319561, 33.296825, 42.829132>,  <38.407402, 33.687061, 42.828342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319561, 33.296825, 42.829132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195892, -0.046080, -0.979542,
		0.955719, -0.214727, 0.201229,
		-0.219606, -0.975587, 0.001976,
		38.253677, 33.004150, 42.829723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927025, 33.277775, 42.647198>,  <38.407402, 33.687061, 42.828342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927025, 33.277775, 42.647198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.643345, 33.018024, 42.537403>,  <38.473137, 32.862175, 42.471527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.643345, 33.018024, 42.537403>,  <38.927025, 33.277775, 42.647198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643345, 33.018024, 42.537403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425518, -0.083848, -0.901057,
		0.562108, -0.755832, 0.335786,
		-0.709203, -0.649374, -0.274489,
		38.430584, 32.823212, 42.455055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364758, 32.835304, 42.263454>,  <38.927025, 33.277775, 42.647198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364758, 32.835304, 42.263454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981972, 32.760231, 42.174911>,  <38.752300, 32.715187, 42.121788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981972, 32.760231, 42.174911>,  <39.364758, 32.835304, 42.263454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981972, 32.760231, 42.174911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232536, -0.039533, -0.971784,
		0.173636, -0.981434, 0.081475,
		-0.956962, -0.187682, -0.221355,
		38.694881, 32.703926, 42.108505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340862, 32.337379, 41.720398>,  <39.364758, 32.835304, 42.263454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340862, 32.337379, 41.720398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978481, 32.504677, 41.694122>,  <38.761051, 32.605053, 41.678356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978481, 32.504677, 41.694122>,  <39.340862, 32.337379, 41.720398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978481, 32.504677, 41.694122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040740, -0.068326, -0.996831,
		-0.421404, -0.905762, 0.044862,
		-0.905957, 0.418241, -0.065694,
		38.706696, 32.630150, 41.674416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079418, 31.951750, 41.192196>,  <39.340862, 32.337379, 41.720398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079418, 31.951750, 41.192196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865242, 32.285294, 41.245842>,  <38.736736, 32.485420, 41.278030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865242, 32.285294, 41.245842>,  <39.079418, 31.951750, 41.192196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865242, 32.285294, 41.245842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098340, 0.219269, -0.970696,
		-0.838830, -0.506558, -0.199407,
		-0.535438, 0.833858, 0.134115,
		38.704609, 32.535450, 41.286076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599754, 31.863514, 40.627888>,  <39.079418, 31.951750, 41.192196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599754, 31.863514, 40.627888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568420, 32.248360, 40.732349>,  <38.549622, 32.479267, 40.795025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568420, 32.248360, 40.732349>,  <38.599754, 31.863514, 40.627888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568420, 32.248360, 40.732349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123865, 0.250536, -0.960151,
		-0.989203, -0.107558, 0.099548,
		-0.078332, 0.962114, 0.261153,
		38.544922, 32.536995, 40.810696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001621, 32.099331, 40.312813>,  <38.599754, 31.863514, 40.627888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001621, 32.099331, 40.312813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233234, 32.420280, 40.370663>,  <38.372204, 32.612850, 40.405373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233234, 32.420280, 40.370663>,  <38.001621, 32.099331, 40.312813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233234, 32.420280, 40.370663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035264, 0.152580, -0.987662,
		-0.814540, 0.576990, 0.060054,
		0.579034, 0.802373, 0.144629,
		38.406944, 32.660992, 40.414051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679775, 32.594189, 39.860069>,  <38.001621, 32.099331, 40.312813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679775, 32.594189, 39.860069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039982, 32.728230, 39.970909>,  <38.256104, 32.808655, 40.037411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039982, 32.728230, 39.970909>,  <37.679775, 32.594189, 39.860069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039982, 32.728230, 39.970909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198586, 0.249971, -0.947670,
		-0.386834, 0.908416, 0.158555,
		0.900513, 0.335104, 0.277095,
		38.310135, 32.828762, 40.054039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824875, 33.264748, 39.685432>,  <37.679775, 32.594189, 39.860069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824875, 33.264748, 39.685432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.204601, 33.148071, 39.732285>,  <38.432438, 33.078064, 39.760395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.204601, 33.148071, 39.732285>,  <37.824875, 33.264748, 39.685432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204601, 33.148071, 39.732285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247010, 0.461835, -0.851877,
		0.194393, 0.837630, 0.510478,
		0.949314, -0.291692, 0.117126,
		38.489395, 33.060562, 39.767422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251637, 33.907288, 39.720085>,  <37.824875, 33.264748, 39.685432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251637, 33.907288, 39.720085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.488197, 33.611629, 39.591152>,  <38.630135, 33.434235, 39.513790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.488197, 33.611629, 39.591152>,  <38.251637, 33.907288, 39.720085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488197, 33.611629, 39.591152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329232, 0.586233, -0.740228,
		0.736102, 0.331651, 0.590052,
		0.591406, -0.739147, -0.322337,
		38.665619, 33.389885, 39.494450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864998, 34.233425, 39.612000>,  <38.251637, 33.907288, 39.720085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864998, 34.233425, 39.612000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934959, 33.899811, 39.402699>,  <38.976936, 33.699642, 39.277119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934959, 33.899811, 39.402699>,  <38.864998, 34.233425, 39.612000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934959, 33.899811, 39.402699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315140, 0.550910, -0.772777,
		0.932789, -0.029738, 0.359193,
		0.174902, -0.834034, -0.523255,
		38.987431, 33.649601, 39.245724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486465, 34.257675, 39.327522>,  <38.864998, 34.233425, 39.612000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486465, 34.257675, 39.327522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330269, 33.957172, 39.114681>,  <39.236553, 33.776871, 38.986977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330269, 33.957172, 39.114681>,  <39.486465, 34.257675, 39.327522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330269, 33.957172, 39.114681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363712, 0.405076, -0.838825,
		0.845714, -0.521084, 0.115063,
		-0.390489, -0.751256, -0.532103,
		39.213123, 33.731796, 38.955051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018845, 34.063004, 38.837883>,  <39.486465, 34.257675, 39.327522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.018845, 34.063004, 38.837883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.682732, 33.900375, 38.694427>,  <39.481064, 33.802799, 38.608353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.682732, 33.900375, 38.694427>,  <40.018845, 34.063004, 38.837883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.682732, 33.900375, 38.694427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316539, 0.169126, -0.933380,
		0.440137, -0.897830, -0.013420,
		-0.840287, -0.406567, -0.358637,
		39.430645, 33.778404, 38.586838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233692, 33.593178, 38.273232>,  <40.018845, 34.063004, 38.837883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233692, 33.593178, 38.273232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845943, 33.672024, 38.214619>,  <39.613297, 33.719330, 38.179451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845943, 33.672024, 38.214619>,  <40.233692, 33.593178, 38.273232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845943, 33.672024, 38.214619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202350, 0.302770, -0.931335,
		-0.139214, -0.932457, -0.333382,
		-0.969368, 0.197115, -0.146533,
		39.555134, 33.731159, 38.170658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976555, 33.132195, 37.699013>,  <40.233692, 33.593178, 38.273232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976555, 33.132195, 37.699013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823662, 33.494061, 37.774349>,  <39.731926, 33.711182, 37.819553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823662, 33.494061, 37.774349>,  <39.976555, 33.132195, 37.699013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823662, 33.494061, 37.774349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322232, 0.321519, -0.890389,
		-0.866064, -0.279643, -0.414407,
		-0.382230, 0.904669, 0.188346,
		39.708992, 33.765461, 37.830853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655823, 33.295078, 37.096600>,  <39.976555, 33.132195, 37.699013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655823, 33.295078, 37.096600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.679779, 33.640339, 37.297150>,  <39.694153, 33.847496, 37.417480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.679779, 33.640339, 37.297150>,  <39.655823, 33.295078, 37.096600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.679779, 33.640339, 37.297150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099214, 0.494644, -0.863414,
		-0.993262, 0.101458, -0.056011,
		0.059895, 0.863153, 0.501377,
		39.697746, 33.899284, 37.447563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371029, 33.555130, 36.431656>,  <39.655823, 33.295078, 37.096600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.371029, 33.555130, 36.431656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.748924, 33.515976, 36.556805>,  <39.975662, 33.492485, 36.631893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.748924, 33.515976, 36.556805>,  <39.371029, 33.555130, 36.431656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748924, 33.515976, 36.556805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322613, 0.108135, -0.940334,
		0.058208, 0.989306, 0.133737,
		0.944739, -0.097880, 0.312869,
		40.032345, 33.486610, 36.650665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667458, 33.921452, 35.835995>,  <39.371029, 33.555130, 36.431656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667458, 33.921452, 35.835995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.955467, 33.690258, 35.989616>,  <40.128273, 33.551540, 36.081791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.955467, 33.690258, 35.989616>,  <39.667458, 33.921452, 35.835995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955467, 33.690258, 35.989616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459217, -0.018076, -0.888140,
		0.520273, 0.815848, 0.252405,
		0.720025, -0.577984, 0.384056,
		40.171474, 33.516861, 36.104832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322884, 34.148087, 35.704746>,  <39.667458, 33.921452, 35.835995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.322884, 34.148087, 35.704746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402878, 33.765106, 35.787975>,  <40.450874, 33.535320, 35.837914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402878, 33.765106, 35.787975>,  <40.322884, 34.148087, 35.704746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402878, 33.765106, 35.787975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467754, -0.093307, -0.878920,
		0.860936, 0.273103, 0.429190,
		0.199989, -0.957449, 0.208076,
		40.462875, 33.477871, 35.850399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011635, 33.969257, 35.526699>,  <40.322884, 34.148087, 35.704746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.011635, 33.969257, 35.526699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.803303, 33.631950, 35.473587>,  <40.678303, 33.429565, 35.441719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.803303, 33.631950, 35.473587>,  <41.011635, 33.969257, 35.526699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.803303, 33.631950, 35.473587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443206, -0.134175, -0.886322,
		0.729594, -0.520470, 0.443625,
		-0.520827, -0.843272, -0.132782,
		40.647053, 33.378967, 35.433754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.556644, 33.534824, 35.440575>,  <41.011635, 33.969257, 35.526699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.556644, 33.534824, 35.440575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.192413, 33.513199, 35.276657>,  <40.973877, 33.500225, 35.178307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.192413, 33.513199, 35.276657>,  <41.556644, 33.534824, 35.440575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.192413, 33.513199, 35.276657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395282, 0.175970, -0.901547,
		0.120847, -0.982910, -0.138865,
		-0.910576, -0.054058, -0.409792,
		40.919239, 33.496983, 35.153721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.784904, 33.661854, 34.813469>,  <41.556644, 33.534824, 35.440575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.784904, 33.661854, 34.813469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.393673, 33.580387, 34.796154>,  <41.158932, 33.531506, 34.785767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.393673, 33.580387, 34.796154>,  <41.784904, 33.661854, 34.813469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.393673, 33.580387, 34.796154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025409, 0.089572, -0.995656,
		0.206663, -0.974933, -0.082434,
		-0.978082, -0.203671, -0.043284,
		41.100246, 33.519287, 34.783169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.317387, 33.850224, 34.342079>,  <41.784904, 33.661854, 34.813469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.317387, 33.850224, 34.342079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.694416, 33.775658, 34.231224>,  <42.920635, 33.730919, 34.164711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.694416, 33.775658, 34.231224>,  <42.317387, 33.850224, 34.342079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.694416, 33.775658, 34.231224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092369, 0.942885, -0.320057,
		0.320968, 0.276079, 0.905958,
		0.942575, -0.186410, -0.277134,
		42.977188, 33.719734, 34.148083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.626575, 34.462601, 34.521839>,  <42.317387, 33.850224, 34.342079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.626575, 34.462601, 34.521839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.889805, 34.292568, 34.273247>,  <43.047745, 34.190548, 34.124092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.889805, 34.292568, 34.273247>,  <42.626575, 34.462601, 34.521839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.889805, 34.292568, 34.273247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163428, 0.886357, -0.433202,
		0.735000, 0.183513, 0.652762,
		0.658078, -0.425083, -0.621481,
		43.087227, 34.165043, 34.086803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.340691, 34.860535, 34.524944>,  <42.626575, 34.462601, 34.521839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.340691, 34.860535, 34.524944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.313747, 34.658566, 34.180733>,  <43.297581, 34.537384, 33.974205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.313747, 34.658566, 34.180733>,  <43.340691, 34.860535, 34.524944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.313747, 34.658566, 34.180733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202975, 0.837521, -0.507306,
		0.976864, -0.208838, 0.046073,
		-0.067358, -0.504921, -0.860533,
		43.293541, 34.507088, 33.922573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.939503, 35.092678, 34.104309>,  <43.340691, 34.860535, 34.524944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.939503, 35.092678, 34.104309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.659420, 34.935787, 33.865692>,  <43.491371, 34.841652, 33.722523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.659420, 34.935787, 33.865692>,  <43.939503, 35.092678, 34.104309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.659420, 34.935787, 33.865692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097206, 0.775408, -0.623934,
		0.707287, -0.494873, -0.504822,
		-0.700211, -0.392229, -0.596541,
		43.449356, 34.818119, 33.686729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.226856, 35.298000, 33.499943>,  <43.939503, 35.092678, 34.104309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.226856, 35.298000, 33.499943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.854061, 35.170292, 33.431290>,  <43.630383, 35.093666, 33.390099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.854061, 35.170292, 33.431290>,  <44.226856, 35.298000, 33.499943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.854061, 35.170292, 33.431290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121059, 0.720457, -0.682851,
		0.341668, -0.615634, -0.710111,
		-0.931991, -0.319274, -0.171629,
		43.574463, 35.074509, 33.379803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.173107, 35.412216, 32.760303>,  <44.226856, 35.298000, 33.499943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.173107, 35.412216, 32.760303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.799995, 35.357319, 32.893623>,  <43.576130, 35.324379, 32.973614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.799995, 35.357319, 32.893623>,  <44.173107, 35.412216, 32.760303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.799995, 35.357319, 32.893623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326834, 0.711982, -0.621500,
		-0.152004, -0.688655, -0.708978,
		-0.932778, -0.137248, 0.333300,
		43.520161, 35.316143, 32.993614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.783577, 35.181564, 32.191196>,  <44.173107, 35.412216, 32.760303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.783577, 35.181564, 32.191196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.539204, 35.366871, 32.447987>,  <43.392578, 35.478054, 32.602062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.539204, 35.366871, 32.447987>,  <43.783577, 35.181564, 32.191196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.539204, 35.366871, 32.447987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264035, 0.645249, -0.716896,
		-0.746352, -0.607484, -0.271888,
		-0.610938, 0.463268, 0.641980,
		43.355923, 35.505852, 32.640579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.230843, 35.341293, 31.843971>,  <43.783577, 35.181564, 32.191196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.230843, 35.341293, 31.843971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.157692, 35.575790, 32.159660>,  <43.113800, 35.716488, 32.349075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.157692, 35.575790, 32.159660>,  <43.230843, 35.341293, 31.843971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.157692, 35.575790, 32.159660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294637, 0.733181, -0.612891,
		-0.937947, -0.344617, 0.038649,
		-0.182876, 0.586247, 0.789222,
		43.102829, 35.751663, 32.396427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.700394, 35.766235, 31.623730>,  <43.230843, 35.341293, 31.843971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.700394, 35.766235, 31.623730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.817959, 36.005356, 31.922058>,  <42.888500, 36.148827, 32.101055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.817959, 36.005356, 31.922058>,  <42.700394, 35.766235, 31.623730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.817959, 36.005356, 31.922058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291781, 0.799153, -0.525565,
		-0.910207, -0.063144, 0.409311,
		0.293916, 0.597802, 0.745819,
		42.906136, 36.184696, 32.145805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.181499, 36.319359, 31.584579>,  <42.700394, 35.766235, 31.623730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.181499, 36.319359, 31.584579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488358, 36.452728, 31.803783>,  <42.672474, 36.532749, 31.935305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488358, 36.452728, 31.803783>,  <42.181499, 36.319359, 31.584579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.488358, 36.452728, 31.803783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222184, 0.939532, -0.260603,
		-0.601761, 0.078163, 0.794842,
		0.767149, 0.333422, 0.548008,
		42.718502, 36.552753, 31.968185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.993828, 36.943916, 31.950581>,  <42.181499, 36.319359, 31.584579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.993828, 36.943916, 31.950581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.393604, 36.956795, 31.947048>,  <42.633469, 36.964523, 31.944929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.393604, 36.956795, 31.947048>,  <41.993828, 36.943916, 31.950581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.393604, 36.956795, 31.947048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033385, 0.965983, -0.256440,
		0.000276, 0.256592, 0.966520,
		0.999443, 0.032197, -0.008833,
		42.693436, 36.966454, 31.944399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.160625, 37.639641, 32.208637>,  <41.993828, 36.943916, 31.950581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.160625, 37.639641, 32.208637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.495899, 37.540062, 32.014538>,  <42.697063, 37.480312, 31.898079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.495899, 37.540062, 32.014538>,  <42.160625, 37.639641, 32.208637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.495899, 37.540062, 32.014538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098260, 0.944112, -0.314637,
		0.536458, 0.216044, 0.815805,
		0.838187, -0.248951, -0.485248,
		42.747356, 37.465378, 31.868963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.637726, 38.239689, 32.295578>,  <42.160625, 37.639641, 32.208637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.637726, 38.239689, 32.295578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.808029, 38.019905, 32.008018>,  <42.910213, 37.888035, 31.835482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.808029, 38.019905, 32.008018>,  <42.637726, 38.239689, 32.295578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.808029, 38.019905, 32.008018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105426, 0.819224, -0.563699,
		0.898672, 0.164211, 0.406723,
		0.425763, -0.549460, -0.718902,
		42.935757, 37.855068, 31.792349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.184483, 38.607380, 32.101463>,  <42.637726, 38.239689, 32.295578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.184483, 38.607380, 32.101463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.103516, 38.348049, 31.807880>,  <43.054935, 38.192451, 31.631729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.103516, 38.348049, 31.807880>,  <43.184483, 38.607380, 32.101463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.103516, 38.348049, 31.807880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063929, 0.739127, -0.670525,
		0.977211, -0.182645, -0.108163,
		-0.202414, -0.648330, -0.733960,
		43.042789, 38.153549, 31.587692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.781059, 38.552364, 31.637907>,  <43.184483, 38.607380, 32.101463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.781059, 38.552364, 31.637907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.443684, 38.452991, 31.447372>,  <43.241257, 38.393368, 31.333052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.443684, 38.452991, 31.447372>,  <43.781059, 38.552364, 31.637907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.443684, 38.452991, 31.447372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223654, 0.643793, -0.731785,
		0.488457, -0.723750, -0.487438,
		-0.843439, -0.248428, -0.476334,
		43.190651, 38.378464, 31.304472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.938732, 38.762863, 30.942671>,  <43.781059, 38.552364, 31.637907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.938732, 38.762863, 30.942671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.547428, 38.690315, 30.902460>,  <43.312645, 38.646786, 30.878334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.547428, 38.690315, 30.902460>,  <43.938732, 38.762863, 30.942671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.547428, 38.690315, 30.902460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048873, 0.672791, -0.738217,
		0.201521, -0.717258, -0.667031,
		-0.978264, -0.181366, -0.100527,
		43.253948, 38.635906, 30.872301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.762142, 38.699520, 30.137550>,  <43.938732, 38.762863, 30.942671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.762142, 38.699520, 30.137550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.454716, 38.816849, 30.364975>,  <43.270260, 38.887245, 30.501431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.454716, 38.816849, 30.364975>,  <43.762142, 38.699520, 30.137550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.454716, 38.816849, 30.364975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016370, 0.879394, -0.475813,
		-0.639556, -0.375003, -0.671074,
		-0.768570, 0.293323, 0.568561,
		43.224144, 38.904846, 30.535543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.274567, 39.002178, 29.664623>,  <43.762142, 38.699520, 30.137550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.274567, 39.002178, 29.664623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.183887, 39.150867, 30.024719>,  <43.129478, 39.240082, 30.240776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.183887, 39.150867, 30.024719>,  <43.274567, 39.002178, 29.664623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.183887, 39.150867, 30.024719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216982, 0.881799, -0.418747,
		-0.949487, -0.290266, -0.119250,
		-0.226703, 0.371720, 0.900239,
		43.115875, 39.262383, 30.294790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.630699, 39.203838, 29.535118>,  <43.274567, 39.002178, 29.664623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.630699, 39.203838, 29.535118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.782734, 39.403217, 29.846781>,  <42.873955, 39.522846, 30.033779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.782734, 39.403217, 29.846781>,  <42.630699, 39.203838, 29.535118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.782734, 39.403217, 29.846781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303787, 0.862917, -0.403841,
		-0.873641, -0.083204, 0.479404,
		0.380085, 0.498448, 0.779156,
		42.896759, 39.552753, 30.080528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.192989, 39.827942, 29.533829>,  <42.630699, 39.203838, 29.535118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.192989, 39.827942, 29.533829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.501110, 39.931633, 29.766876>,  <42.685982, 39.993847, 29.906704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.501110, 39.931633, 29.766876>,  <42.192989, 39.827942, 29.533829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.501110, 39.931633, 29.766876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030473, 0.897640, -0.439674,
		-0.636956, 0.356433, 0.683551,
		0.770297, 0.259223, 0.582619,
		42.732201, 40.009399, 29.941662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.995033, 40.536205, 29.808083>,  <42.192989, 39.827942, 29.533829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.995033, 40.536205, 29.808083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.389477, 40.482834, 29.847670>,  <42.626141, 40.450809, 29.871422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.389477, 40.482834, 29.847670>,  <41.995033, 40.536205, 29.808083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.389477, 40.482834, 29.847670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165802, 0.753349, -0.636377,
		0.010353, 0.643943, 0.765004,
		0.986105, -0.133428, 0.098968,
		42.685307, 40.442806, 29.877359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.400295, 40.402771, 29.186726>,  <41.995033, 40.536205, 29.808083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.400295, 40.402771, 29.186726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.576572, 40.424175, 28.828300>,  <42.682339, 40.437016, 28.613245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.576572, 40.424175, 28.828300>,  <42.400295, 40.402771, 29.186726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.576572, 40.424175, 28.828300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804713, -0.418793, -0.420772,
		-0.397779, 0.906504, -0.141499,
		0.440690, 0.053508, -0.896063,
		42.708778, 40.440228, 28.559481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876698, 40.703381, 28.563601>,  <42.400295, 40.402771, 29.186726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.876698, 40.703381, 28.563601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.162552, 40.428558, 28.511068>,  <42.334064, 40.263664, 28.479549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.162552, 40.428558, 28.511068>,  <41.876698, 40.703381, 28.563601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.162552, 40.428558, 28.511068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681660, -0.641900, -0.351147,
		0.156955, 0.340467, -0.927064,
		0.714636, -0.687056, -0.131333,
		42.376942, 40.222443, 28.471668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873859, 40.432293, 27.872469>,  <41.876698, 40.703381, 28.563601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.873859, 40.432293, 27.872469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.971085, 40.169083, 28.157545>,  <42.029419, 40.011158, 28.328590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.971085, 40.169083, 28.157545>,  <41.873859, 40.432293, 27.872469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.971085, 40.169083, 28.157545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876798, -0.463305, -0.128739,
		0.414906, -0.593594, -0.689564,
		0.243060, -0.658023, 0.712690,
		42.044003, 39.971676, 28.371351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.613888, 39.745285, 27.421492>,  <41.873859, 40.432293, 27.872469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.613888, 39.745285, 27.421492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.563591, 39.408501, 27.211620>,  <41.533413, 39.206429, 27.085697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.563591, 39.408501, 27.211620>,  <41.613888, 39.745285, 27.421492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.563591, 39.408501, 27.211620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191594, 0.539526, -0.819880,
		0.973387, -0.002565, -0.229155,
		-0.125738, -0.841965, -0.524676,
		41.525871, 39.155910, 27.054218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.949944, 39.464657, 28.089121>,  <41.613888, 39.745285, 27.421492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.949944, 39.464657, 28.089121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.700645, 39.324905, 28.368980>,  <41.551067, 39.241055, 28.536896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.700645, 39.324905, 28.368980>,  <41.949944, 39.464657, 28.089121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700645, 39.324905, 28.368980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352206, -0.673383, -0.650005,
		0.698228, -0.651529, 0.296627,
		-0.623241, -0.349378, 0.699647,
		41.513672, 39.220093, 28.578875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.017975, 38.774616, 28.208597>,  <41.949944, 39.464657, 28.089121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.017975, 38.774616, 28.208597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.637093, 38.872684, 28.281475>,  <41.408562, 38.931526, 28.325203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.637093, 38.872684, 28.281475>,  <42.017975, 38.774616, 28.208597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.637093, 38.872684, 28.281475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301989, -0.665944, -0.682145,
		-0.045911, -0.704563, 0.708155,
		-0.952205, 0.245173, 0.182196,
		41.351433, 38.946236, 28.336134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.434311, 38.116226, 28.053415>,  <42.017975, 38.774616, 28.208597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.434311, 38.116226, 28.053415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.771339, 38.331512, 28.045471>,  <42.973557, 38.460686, 28.040705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.771339, 38.331512, 28.045471>,  <42.434311, 38.116226, 28.053415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.771339, 38.331512, 28.045471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487892, -0.747141, 0.451377,
		0.228101, -0.390008, -0.892112,
		0.842574, 0.538214, -0.019858,
		43.024113, 38.492977, 28.039515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.818878, 37.626068, 27.847895>,  <42.434311, 38.116226, 28.053415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.818878, 37.626068, 27.847895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.058430, 37.914059, 27.988169>,  <43.202160, 38.086853, 28.072332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.058430, 37.914059, 27.988169>,  <42.818878, 37.626068, 27.847895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.058430, 37.914059, 27.988169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690722, -0.685980, 0.228769,
		0.405271, 0.105220, -0.908121,
		0.598881, 0.719972, 0.350686,
		43.238094, 38.130051, 28.093374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.474796, 37.611633, 27.469280>,  <42.818878, 37.626068, 27.847895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.474796, 37.611633, 27.469280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.521301, 37.757980, 27.838631>,  <43.549202, 37.845787, 28.060242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.521301, 37.757980, 27.838631>,  <43.474796, 37.611633, 27.469280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.521301, 37.757980, 27.838631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706322, -0.684064, 0.182115,
		0.698279, 0.631028, -0.337950,
		0.116260, 0.365868, 0.923376,
		43.556179, 37.867741, 28.115644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.163200, 37.341774, 27.721418>,  <43.474796, 37.611633, 27.469280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.163200, 37.341774, 27.721418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.933460, 37.438782, 28.034163>,  <43.795616, 37.496986, 28.221809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.933460, 37.438782, 28.034163>,  <44.163200, 37.341774, 27.721418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.933460, 37.438782, 28.034163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493711, -0.659228, 0.567157,
		0.652968, 0.711761, 0.258897,
		-0.574353, 0.242515, 0.781860,
		43.761154, 37.511536, 28.268721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.547749, 37.580318, 28.271515>,  <44.163200, 37.341774, 27.721418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.547749, 37.580318, 28.271515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.216686, 37.393600, 28.396147>,  <44.018047, 37.281570, 28.470926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.216686, 37.393600, 28.396147>,  <44.547749, 37.580318, 28.271515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.216686, 37.393600, 28.396147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560620, -0.661655, 0.497914,
		-0.026267, 0.586781, 0.809320,
		-0.827657, -0.466799, 0.311581,
		43.968388, 37.253559, 28.489620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.608482, 37.400578, 29.055826>,  <44.547749, 37.580318, 28.271515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.608482, 37.400578, 29.055826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.322960, 37.146873, 28.937031>,  <44.151646, 36.994652, 28.865753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.322960, 37.146873, 28.937031>,  <44.608482, 37.400578, 29.055826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.322960, 37.146873, 28.937031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352963, -0.692065, 0.629653,
		-0.604897, 0.344623, 0.717868,
		-0.713804, -0.634256, -0.296988,
		44.108818, 36.956596, 28.847935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.187786, 37.277340, 29.575369>,  <44.608482, 37.400578, 29.055826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.187786, 37.277340, 29.575369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.146046, 36.964943, 29.329067>,  <44.121002, 36.777504, 29.181286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.146046, 36.964943, 29.329067>,  <44.187786, 37.277340, 29.575369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.146046, 36.964943, 29.329067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178287, -0.623796, 0.760981,
		-0.978430, -0.030375, 0.204333,
		-0.104347, -0.780997, -0.615756,
		44.114742, 36.730644, 29.144341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.599854, 36.851074, 29.836557>,  <44.187786, 37.277340, 29.575369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.599854, 36.851074, 29.836557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.819347, 36.602657, 29.612700>,  <43.951042, 36.453606, 29.478384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.819347, 36.602657, 29.612700>,  <43.599854, 36.851074, 29.836557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.819347, 36.602657, 29.612700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051610, -0.642991, 0.764133,
		-0.834405, -0.448186, -0.320776,
		0.548730, -0.621041, -0.559646,
		43.983967, 36.416344, 29.444805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.489925, 36.249920, 30.040178>,  <43.599854, 36.851074, 29.836557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.489925, 36.249920, 30.040178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.805649, 36.142860, 29.819143>,  <43.995083, 36.078625, 29.686522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.805649, 36.142860, 29.819143>,  <43.489925, 36.249920, 30.040178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.805649, 36.142860, 29.819143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149226, -0.789380, 0.595493,
		-0.595584, -0.552489, -0.583126,
		0.789311, -0.267648, -0.552588,
		44.042442, 36.062565, 29.653366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.356247, 35.490257, 29.856916>,  <43.489925, 36.249920, 30.040178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.356247, 35.490257, 29.856916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.744354, 35.583519, 29.830925>,  <43.977219, 35.639477, 29.815331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.744354, 35.583519, 29.830925>,  <43.356247, 35.490257, 29.856916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.744354, 35.583519, 29.830925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234011, -0.835090, 0.497859,
		0.061816, -0.498261, -0.864820,
		0.970267, 0.233153, -0.064977,
		44.035435, 35.653465, 29.811432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.672184, 34.914200, 29.645065>,  <43.356247, 35.490257, 29.856916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.672184, 34.914200, 29.645065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.967209, 35.127213, 29.811153>,  <44.144226, 35.255020, 29.910807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.967209, 35.127213, 29.811153>,  <43.672184, 34.914200, 29.645065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.967209, 35.127213, 29.811153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258394, -0.790662, 0.555056,
		0.623884, -0.302099, -0.720767,
		0.737564, 0.532532, 0.415221,
		44.188477, 35.286972, 29.935720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.386723, 34.533596, 29.681957>,  <43.672184, 34.914200, 29.645065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.386723, 34.533596, 29.681957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.479797, 34.803467, 29.962147>,  <44.535641, 34.965389, 30.130260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.479797, 34.803467, 29.962147>,  <44.386723, 34.533596, 29.681957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.479797, 34.803467, 29.962147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370236, -0.727464, 0.577686,
		0.899324, 0.124922, -0.419061,
		0.232686, 0.674678, 0.700476,
		44.549603, 35.005871, 30.172289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.073566, 34.396347, 29.862801>,  <44.386723, 34.533596, 29.681957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.073566, 34.396347, 29.862801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.937439, 34.616562, 30.167719>,  <44.855762, 34.748692, 30.350670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.937439, 34.616562, 30.167719>,  <45.073566, 34.396347, 29.862801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.937439, 34.616562, 30.167719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241480, -0.732327, 0.636698,
		0.908773, 0.400761, 0.116284,
		-0.340321, 0.550534, 0.762295,
		44.835342, 34.781723, 30.396408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.603378, 34.552349, 30.331511>,  <45.073566, 34.396347, 29.862801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.603378, 34.552349, 30.331511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.272007, 34.627399, 30.542606>,  <45.073185, 34.672428, 30.669264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.272007, 34.627399, 30.542606>,  <45.603378, 34.552349, 30.331511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.272007, 34.627399, 30.542606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387460, -0.488429, 0.781864,
		0.404458, 0.852195, 0.331931,
		-0.828425, 0.187622, 0.527741,
		45.023479, 34.683685, 30.700928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.836922, 34.872066, 30.916901>,  <45.603378, 34.552349, 30.331511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.836922, 34.872066, 30.916901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.470036, 34.732025, 30.992945>,  <45.249905, 34.647999, 31.038570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.470036, 34.732025, 30.992945>,  <45.836922, 34.872066, 30.916901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.470036, 34.732025, 30.992945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323585, -0.376332, 0.868140,
		-0.232394, 0.857789, 0.458466,
		-0.917216, -0.350104, 0.190110,
		45.194870, 34.626995, 31.049978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.800793, 34.920307, 31.714296>,  <45.836922, 34.872066, 30.916901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.800793, 34.920307, 31.714296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.501766, 34.680412, 31.600134>,  <45.322350, 34.536476, 31.531635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.501766, 34.680412, 31.600134>,  <45.800793, 34.920307, 31.714296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.501766, 34.680412, 31.600134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110309, -0.535853, 0.837074,
		-0.654962, 0.594286, 0.466743,
		-0.747567, -0.599738, -0.285408,
		45.277496, 34.500492, 31.514511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.266994, 34.933285, 32.236721>,  <45.800793, 34.920307, 31.714296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.266994, 34.933285, 32.236721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.210423, 34.586346, 32.045845>,  <45.176479, 34.378181, 31.931320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.210423, 34.586346, 32.045845>,  <45.266994, 34.933285, 32.236721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.210423, 34.586346, 32.045845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058710, -0.488531, 0.870569,
		-0.988206, 0.095110, 0.120015,
		-0.141431, -0.867347, -0.477185,
		45.167992, 34.326141, 31.902689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.761738, 34.575645, 32.600613>,  <45.266994, 34.933285, 32.236721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.761738, 34.575645, 32.600613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.948082, 34.289898, 32.391750>,  <45.059887, 34.118450, 32.266434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.948082, 34.289898, 32.391750>,  <44.761738, 34.575645, 32.600613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.948082, 34.289898, 32.391750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110934, -0.538290, 0.835426,
		-0.877876, -0.447118, -0.171520,
		0.465862, -0.714373, -0.522153,
		45.087841, 34.075584, 32.235104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.430378, 34.003166, 32.762974>,  <44.761738, 34.575645, 32.600613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.430378, 34.003166, 32.762974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.799084, 33.883118, 32.664768>,  <45.020306, 33.811089, 32.605843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.799084, 33.883118, 32.664768>,  <44.430378, 34.003166, 32.762974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.799084, 33.883118, 32.664768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016987, -0.601316, 0.798831,
		-0.387379, -0.740504, -0.549173,
		0.921764, -0.300121, -0.245516,
		45.075611, 33.793079, 32.591114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.396744, 33.327534, 32.867294>,  <44.430378, 34.003166, 32.762974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.396744, 33.327534, 32.867294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.790016, 33.399376, 32.854061>,  <45.025978, 33.442482, 32.846123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.790016, 33.399376, 32.854061>,  <44.396744, 33.327534, 32.867294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.790016, 33.399376, 32.854061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113603, -0.459635, 0.880812,
		0.142997, -0.869757, -0.472308,
		0.983182, 0.179609, -0.033080,
		45.084972, 33.453259, 32.844135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.725319, 32.683636, 33.084068>,  <44.396744, 33.327534, 32.867294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.725319, 32.683636, 33.084068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.009396, 32.963173, 33.118111>,  <45.179840, 33.130894, 33.138538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.009396, 32.963173, 33.118111>,  <44.725319, 32.683636, 33.084068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.009396, 32.963173, 33.118111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365858, -0.469651, 0.803477,
		0.601476, -0.539486, -0.589220,
		0.710193, 0.698843, 0.085109,
		45.222454, 33.172825, 33.143642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.502354, 32.460247, 33.004532>,  <44.725319, 32.683636, 33.084068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.502354, 32.460247, 33.004532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.488735, 32.780079, 33.244370>,  <45.480564, 32.971977, 33.388271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.488735, 32.780079, 33.244370>,  <45.502354, 32.460247, 33.004532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.488735, 32.780079, 33.244370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614938, -0.456174, 0.643239,
		0.787840, 0.390617, -0.476159,
		-0.034049, 0.799577, 0.599597,
		45.478519, 33.019951, 33.424248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.141922, 32.366299, 33.344044>,  <45.502354, 32.460247, 33.004532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.141922, 32.366299, 33.344044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.976650, 32.660370, 33.559002>,  <45.877487, 32.836811, 33.687977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.976650, 32.660370, 33.559002>,  <46.141922, 32.366299, 33.344044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.976650, 32.660370, 33.559002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574547, -0.247396, 0.780186,
		0.706526, 0.631117, -0.320175,
		-0.413179, 0.735178, 0.537398,
		45.852695, 32.880924, 33.720222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.619007, 32.434383, 33.825127>,  <46.141922, 32.366299, 33.344044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.619007, 32.434383, 33.825127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.296307, 32.625111, 33.964722>,  <46.102688, 32.739548, 34.048477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.296307, 32.625111, 33.964722>,  <46.619007, 32.434383, 33.825127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.296307, 32.625111, 33.964722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353880, -0.083095, 0.931592,
		0.473203, 0.875063, -0.101701,
		-0.806752, 0.476822, 0.348988,
		46.054279, 32.768158, 34.069420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.854332, 33.029800, 34.175983>,  <46.619007, 32.434383, 33.825127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.854332, 33.029800, 34.175983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.510063, 32.871277, 34.303841>,  <46.303501, 32.776161, 34.380554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.510063, 32.871277, 34.303841>,  <46.854332, 33.029800, 34.175983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.510063, 32.871277, 34.303841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414247, -0.180037, 0.892180,
		-0.296032, 0.900291, 0.319124,
		-0.860677, -0.396310, 0.319646,
		46.251862, 32.752384, 34.399734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.737644, 33.497723, 34.654743>,  <46.854332, 33.029800, 34.175983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.737644, 33.497723, 34.654743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.639088, 33.125225, 34.762131>,  <46.579952, 32.901726, 34.826561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.639088, 33.125225, 34.762131>,  <46.737644, 33.497723, 34.654743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.639088, 33.125225, 34.762131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374901, 0.163860, 0.912468,
		-0.893722, 0.325474, 0.308751,
		-0.246392, -0.931245, 0.268466,
		46.565170, 32.845852, 34.842670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.404869, 33.885529, 34.947529>,  <46.737644, 33.497723, 34.654743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.404869, 33.885529, 34.947529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.493080, 34.095932, 35.276085>,  <47.546005, 34.222176, 35.473217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.493080, 34.095932, 35.276085>,  <47.404869, 33.885529, 34.947529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.493080, 34.095932, 35.276085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322787, 0.755313, -0.570360,
		-0.920422, 0.390912, -0.003225,
		0.220525, 0.526013, 0.821388,
		47.559238, 34.253735, 35.522503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.034302, 34.592236, 35.141857>,  <47.404869, 33.885529, 34.947529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.034302, 34.592236, 35.141857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.424747, 34.579803, 35.227859>,  <47.659016, 34.572346, 35.279461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.424747, 34.579803, 35.227859>,  <47.034302, 34.592236, 35.141857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.424747, 34.579803, 35.227859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173485, 0.707211, -0.685387,
		-0.130754, 0.706319, 0.695713,
		0.976118, -0.031078, 0.215007,
		47.717583, 34.570480, 35.292362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.504086, 35.310452, 35.361206>,  <47.034302, 34.592236, 35.141857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.504086, 35.310452, 35.361206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.687756, 35.036694, 35.134659>,  <47.797958, 34.872440, 34.998730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.687756, 35.036694, 35.134659>,  <47.504086, 35.310452, 35.361206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.687756, 35.036694, 35.134659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306348, 0.720432, -0.622197,
		0.833854, 0.112191, 0.540464,
		0.459173, -0.684392, -0.566365,
		47.825508, 34.831375, 34.964748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.658272, 35.709267, 45.302094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.380379, 35.421631, 45.295605>,  <32.213642, 35.249050, 45.291710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.380379, 35.421631, 45.295605>,  <32.658272, 35.709267, 45.302094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380379, 35.421631, 45.295605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352630, -0.320851, -0.879037,
		0.626900, -0.616414, 0.476477,
		-0.694729, -0.719089, -0.016224,
		32.171959, 35.205906, 45.290737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046242, 35.089211, 45.190300>,  <32.658272, 35.709267, 45.302094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046242, 35.089211, 45.190300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.670837, 35.001469, 45.083652>,  <32.445595, 34.948826, 45.019665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.670837, 35.001469, 45.083652>,  <33.046242, 35.089211, 45.190300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670837, 35.001469, 45.083652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335951, -0.402182, -0.851697,
		0.079593, -0.888895, 0.451142,
		-0.938511, -0.219351, -0.266614,
		32.389286, 34.935665, 45.003670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063534, 34.310059, 44.889587>,  <33.046242, 35.089211, 45.190300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063534, 34.310059, 44.889587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.751122, 34.508377, 44.737705>,  <32.563675, 34.627369, 44.646576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.751122, 34.508377, 44.737705>,  <33.063534, 34.310059, 44.889587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751122, 34.508377, 44.737705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218154, -0.353100, -0.909796,
		-0.585144, -0.793416, 0.167625,
		-0.781035, 0.495794, -0.379701,
		32.516811, 34.657116, 44.623795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618816, 33.814095, 44.526875>,  <33.063534, 34.310059, 44.889587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618816, 33.814095, 44.526875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.546532, 34.181705, 44.386745>,  <32.503159, 34.402271, 44.302670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.546532, 34.181705, 44.386745>,  <32.618816, 33.814095, 44.526875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.546532, 34.181705, 44.386745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121581, -0.374327, -0.919291,
		-0.975992, -0.123536, 0.179383,
		-0.180713, 0.919031, -0.350321,
		32.492317, 34.457417, 44.281651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177727, 33.685673, 44.009880>,  <32.618816, 33.814095, 44.526875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177727, 33.685673, 44.009880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.304085, 34.058689, 43.939941>,  <32.379902, 34.282501, 43.897980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.304085, 34.058689, 43.939941>,  <32.177727, 33.685673, 44.009880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304085, 34.058689, 43.939941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072871, -0.159893, -0.984441,
		-0.945990, 0.323726, 0.017445,
		0.315900, 0.932543, -0.174848,
		32.398853, 34.338451, 43.887486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745975, 34.078720, 43.528992>,  <32.177727, 33.685673, 44.009880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745975, 34.078720, 43.528992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.098537, 34.263737, 43.490662>,  <32.310074, 34.374748, 43.467663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.098537, 34.263737, 43.490662>,  <31.745975, 34.078720, 43.528992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098537, 34.263737, 43.490662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082459, -0.049090, -0.995385,
		-0.465112, 0.885237, -0.005127,
		0.881403, 0.462543, -0.095828,
		32.362957, 34.402500, 43.461914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.638380, 34.497234, 42.908936>,  <31.745975, 34.078720, 43.528992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.638380, 34.497234, 42.908936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.033752, 34.518169, 42.965881>,  <32.270977, 34.530731, 43.000050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.033752, 34.518169, 42.965881>,  <31.638380, 34.497234, 42.908936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033752, 34.518169, 42.965881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137701, 0.083993, -0.986906,
		-0.063613, 0.995091, 0.075814,
		0.988429, 0.052340, 0.142369,
		32.330280, 34.533871, 43.008591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.775965, 34.861652, 42.439735>,  <31.638380, 34.497234, 42.908936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.775965, 34.861652, 42.439735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.131832, 34.715786, 42.549652>,  <32.345352, 34.628265, 42.615601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.131832, 34.715786, 42.549652>,  <31.775965, 34.861652, 42.439735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131832, 34.715786, 42.549652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337988, 0.121310, -0.933300,
		0.307009, 0.923202, 0.231178,
		0.889668, -0.364667, 0.274788,
		32.398731, 34.606384, 42.632088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.203358, 35.349354, 42.153709>,  <31.775965, 34.861652, 42.439735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.203358, 35.349354, 42.153709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.422554, 35.019558, 42.210163>,  <32.554070, 34.821678, 42.244038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.422554, 35.019558, 42.210163>,  <32.203358, 35.349354, 42.153709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422554, 35.019558, 42.210163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325560, 0.054797, -0.943932,
		0.770532, 0.563212, 0.298451,
		0.547988, -0.824493, 0.141137,
		32.586952, 34.772209, 42.252502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926350, 35.488190, 41.933735>,  <32.203358, 35.349354, 42.153709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926350, 35.488190, 41.933735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.869926, 35.092331, 41.923122>,  <32.836071, 34.854816, 41.916756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.869926, 35.092331, 41.923122>,  <32.926350, 35.488190, 41.933735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869926, 35.092331, 41.923122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426719, -0.036598, -0.903644,
		0.893316, -0.138786, 0.427463,
		-0.141058, -0.989646, -0.026529,
		32.827610, 34.795437, 41.915165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613155, 35.195644, 41.734341>,  <32.926350, 35.488190, 41.933735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613155, 35.195644, 41.734341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.342953, 34.907703, 41.670471>,  <33.180832, 34.734940, 41.632149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.342953, 34.907703, 41.670471>,  <33.613155, 35.195644, 41.734341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342953, 34.907703, 41.670471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299638, -0.070130, -0.951472,
		0.673726, -0.690570, 0.263070,
		-0.675507, -0.719857, -0.159673,
		33.140301, 34.691746, 41.622570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986767, 34.711552, 41.322418>,  <33.613155, 35.195644, 41.734341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986767, 34.711552, 41.322418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.602772, 34.607090, 41.281979>,  <33.372375, 34.544411, 41.257713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.602772, 34.607090, 41.281979>,  <33.986767, 34.711552, 41.322418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602772, 34.607090, 41.281979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148092, -0.167025, -0.974767,
		0.237683, -0.950736, 0.199017,
		-0.959987, -0.261158, -0.101098,
		33.314777, 34.528744, 41.251648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906799, 34.116844, 40.899330>,  <33.986767, 34.711552, 41.322418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906799, 34.116844, 40.899330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.538982, 34.272079, 40.874599>,  <33.318291, 34.365223, 40.859760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.538982, 34.272079, 40.874599>,  <33.906799, 34.116844, 40.899330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538982, 34.272079, 40.874599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027469, -0.220404, -0.975022,
		-0.392024, -0.894878, 0.213331,
		-0.919545, 0.388092, -0.061822,
		33.263119, 34.388508, 40.856052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448769, 33.545959, 40.557659>,  <33.906799, 34.116844, 40.899330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448769, 33.545959, 40.557659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.299683, 33.915924, 40.527657>,  <33.210232, 34.137901, 40.509655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.299683, 33.915924, 40.527657>,  <33.448769, 33.545959, 40.557659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299683, 33.915924, 40.527657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088380, -0.045083, -0.995066,
		-0.923727, -0.377507, -0.064940,
		-0.372717, 0.924909, -0.075008,
		33.187866, 34.193398, 40.505154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101643, 33.480274, 40.056179>,  <33.448769, 33.545959, 40.557659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101643, 33.480274, 40.056179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.186451, 33.870644, 40.076672>,  <33.237335, 34.104866, 40.088966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.186451, 33.870644, 40.076672>,  <33.101643, 33.480274, 40.056179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186451, 33.870644, 40.076672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066640, 0.037863, -0.997058,
		-0.974991, 0.214810, -0.057008,
		0.212019, 0.975922, 0.051231,
		33.250057, 34.163422, 40.092041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670177, 33.744408, 39.478863>,  <33.101643, 33.480274, 40.056179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670177, 33.744408, 39.478863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.977806, 33.980118, 39.577885>,  <33.162384, 34.121544, 39.637299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.977806, 33.980118, 39.577885>,  <32.670177, 33.744408, 39.478863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977806, 33.980118, 39.577885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276907, 0.041894, -0.959983,
		-0.576061, 0.806849, -0.130954,
		0.769075, 0.589271, 0.247556,
		33.208527, 34.156898, 39.652153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.788548, 34.164040, 38.883671>,  <32.670177, 33.744408, 39.478863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.788548, 34.164040, 38.883671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.142963, 34.232586, 39.055981>,  <33.355614, 34.273712, 39.159367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.142963, 34.232586, 39.055981>,  <32.788548, 34.164040, 38.883671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142963, 34.232586, 39.055981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426501, 0.062976, -0.902292,
		-0.181747, 0.983193, -0.017287,
		0.886039, 0.171362, 0.430779,
		33.408775, 34.283993, 39.185215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988625, 34.573658, 38.405380>,  <32.788548, 34.164040, 38.883671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988625, 34.573658, 38.405380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.325455, 34.513813, 38.612656>,  <33.527554, 34.477905, 38.737019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.325455, 34.513813, 38.612656>,  <32.988625, 34.573658, 38.405380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325455, 34.513813, 38.612656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535755, 0.121235, -0.835625,
		0.062198, 0.981284, 0.182246,
		0.842080, -0.149613, 0.518187,
		33.578079, 34.468929, 38.768112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501747, 35.174007, 38.262421>,  <32.988625, 34.573658, 38.405380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501747, 35.174007, 38.262421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.729321, 34.872665, 38.394341>,  <33.865864, 34.691860, 38.473492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.729321, 34.872665, 38.394341>,  <33.501747, 35.174007, 38.262421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729321, 34.872665, 38.394341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521822, 0.020742, -0.852802,
		0.635623, 0.657285, 0.404919,
		0.568933, -0.753356, 0.329802,
		33.900002, 34.646660, 38.493282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187328, 35.397820, 38.286617>,  <33.501747, 35.174007, 38.262421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187328, 35.397820, 38.286617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.223972, 34.999863, 38.269680>,  <34.245956, 34.761089, 38.259518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.223972, 34.999863, 38.269680>,  <34.187328, 35.397820, 38.286617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223972, 34.999863, 38.269680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359782, 0.072719, -0.930198,
		0.928529, 0.069976, 0.364606,
		0.091606, -0.994895, -0.042346,
		34.251453, 34.701393, 38.256977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905258, 35.236958, 38.100407>,  <34.187328, 35.397820, 38.286617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905258, 35.236958, 38.100407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.716328, 34.900223, 37.995930>,  <34.602970, 34.698181, 37.933243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.716328, 34.900223, 37.995930>,  <34.905258, 35.236958, 38.100407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716328, 34.900223, 37.995930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383810, 0.070329, -0.920730,
		0.793471, -0.535135, 0.289886,
		-0.472327, -0.841834, -0.261194,
		34.574631, 34.647671, 37.917572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394016, 34.914307, 37.789089>,  <34.905258, 35.236958, 38.100407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394016, 34.914307, 37.789089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.038631, 34.780014, 37.663918>,  <34.825401, 34.699436, 37.588814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.038631, 34.780014, 37.663918>,  <35.394016, 34.914307, 37.789089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038631, 34.780014, 37.663918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320550, 0.034047, -0.946620,
		0.328467, -0.941341, 0.077370,
		-0.888458, -0.335734, -0.312930,
		34.772095, 34.679295, 37.570038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967918, 34.688671, 38.051003>,  <35.394016, 34.914307, 37.789089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967918, 34.688671, 38.051003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.333382, 34.849957, 38.030449>,  <36.552662, 34.946728, 38.018116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.333382, 34.849957, 38.030449>,  <35.967918, 34.688671, 38.051003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333382, 34.849957, 38.030449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080781, 0.304020, 0.949235,
		0.398369, -0.863128, 0.310344,
		0.913661, 0.403215, -0.051388,
		36.607479, 34.970921, 38.015034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397907, 34.258671, 38.540352>,  <35.967918, 34.688671, 38.051003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397907, 34.258671, 38.540352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.551010, 34.624325, 38.486908>,  <36.642872, 34.843716, 38.454842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.551010, 34.624325, 38.486908>,  <36.397907, 34.258671, 38.540352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551010, 34.624325, 38.486908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042946, 0.162071, 0.985844,
		0.922850, -0.371602, 0.101292,
		0.382758, 0.914136, -0.133608,
		36.665836, 34.898567, 38.446827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808784, 34.365635, 39.115452>,  <36.397907, 34.258671, 38.540352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808784, 34.365635, 39.115452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.780285, 34.738209, 38.972706>,  <36.763187, 34.961754, 38.887058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.780285, 34.738209, 38.972706>,  <36.808784, 34.365635, 39.115452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780285, 34.738209, 38.972706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047060, 0.360518, 0.931564,
		0.996348, 0.049576, -0.069519,
		-0.071247, 0.931434, -0.356869,
		36.758911, 35.017639, 38.865646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328861, 34.695869, 39.433582>,  <36.808784, 34.365635, 39.115452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328861, 34.695869, 39.433582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.101574, 35.000660, 39.309315>,  <36.965202, 35.183537, 39.234753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.101574, 35.000660, 39.309315>,  <37.328861, 34.695869, 39.433582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101574, 35.000660, 39.309315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093867, 0.435095, 0.895478,
		0.817506, 0.479666, -0.318754,
		-0.568219, 0.761980, -0.310667,
		36.931107, 35.229256, 39.216114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690041, 35.377937, 39.594410>,  <37.328861, 34.695869, 39.433582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690041, 35.377937, 39.594410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.303757, 35.473404, 39.553524>,  <37.071987, 35.530685, 39.528992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.303757, 35.473404, 39.553524>,  <37.690041, 35.377937, 39.594410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303757, 35.473404, 39.553524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025012, 0.477377, 0.878342,
		0.258426, 0.845665, -0.466976,
		-0.965707, 0.238666, -0.102214,
		37.014046, 35.545002, 39.522861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506996, 36.124592, 39.815964>,  <37.690041, 35.377937, 39.594410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.506996, 36.124592, 39.815964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.145378, 35.955650, 39.842243>,  <36.928406, 35.854286, 39.858013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.145378, 35.955650, 39.842243>,  <37.506996, 36.124592, 39.815964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145378, 35.955650, 39.842243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154601, 0.466416, 0.870951,
		-0.398491, 0.777224, -0.486958,
		-0.904048, -0.422350, 0.065703,
		36.874165, 35.828945, 39.861954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140362, 36.602825, 40.181911>,  <37.506996, 36.124592, 39.815964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140362, 36.602825, 40.181911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.891861, 36.289436, 40.187759>,  <36.742760, 36.101402, 40.191269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.891861, 36.289436, 40.187759>,  <37.140362, 36.602825, 40.181911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891861, 36.289436, 40.187759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393333, 0.327920, 0.858928,
		-0.677741, 0.527862, -0.511888,
		-0.621254, -0.783473, 0.014619,
		36.705486, 36.054394, 40.192146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452110, 36.902050, 40.318390>,  <37.140362, 36.602825, 40.181911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452110, 36.902050, 40.318390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.465778, 36.517868, 40.428921>,  <36.473980, 36.287357, 40.495239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.465778, 36.517868, 40.428921>,  <36.452110, 36.902050, 40.318390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465778, 36.517868, 40.428921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625966, 0.194971, 0.755085,
		-0.779101, -0.198778, -0.594549,
		0.034174, -0.960455, 0.276330,
		36.476032, 36.229733, 40.511818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852383, 36.790688, 40.544743>,  <36.452110, 36.902050, 40.318390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852383, 36.790688, 40.544743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.023186, 36.460022, 40.691330>,  <36.125668, 36.261623, 40.779282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.023186, 36.460022, 40.691330>,  <35.852383, 36.790688, 40.544743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023186, 36.460022, 40.691330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565131, 0.072409, 0.821817,
		-0.705900, -0.558021, -0.436253,
		0.427003, -0.826661, 0.366469,
		36.151287, 36.212025, 40.801270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287914, 36.396496, 40.746956>,  <35.852383, 36.790688, 40.544743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287914, 36.396496, 40.746956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.616730, 36.285679, 40.945953>,  <35.814018, 36.219189, 41.065350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.616730, 36.285679, 40.945953>,  <35.287914, 36.396496, 40.746956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616730, 36.285679, 40.945953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503490, 0.054467, 0.862283,
		-0.265984, -0.959313, -0.094712,
		0.822041, -0.277040, 0.497492,
		35.863342, 36.202568, 41.095200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068134, 35.818424, 41.177097>,  <35.287914, 36.396496, 40.746956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068134, 35.818424, 41.177097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.397312, 35.973392, 41.343311>,  <35.594818, 36.066372, 41.443039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.397312, 35.973392, 41.343311>,  <35.068134, 35.818424, 41.177097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397312, 35.973392, 41.343311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434570, -0.041846, 0.899665,
		0.365935, -0.920954, 0.133923,
		0.822946, 0.387418, 0.415532,
		35.644196, 36.089619, 41.467972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091274, 35.440029, 41.756031>,  <35.068134, 35.818424, 41.177097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091274, 35.440029, 41.756031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.321304, 35.755814, 41.841862>,  <35.459324, 35.945282, 41.893360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.321304, 35.755814, 41.841862>,  <35.091274, 35.440029, 41.756031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321304, 35.755814, 41.841862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482675, 0.115639, 0.868132,
		0.660540, -0.602813, 0.447553,
		0.575075, 0.789458, 0.214579,
		35.493828, 35.992653, 41.906235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466129, 35.321884, 42.405807>,  <35.091274, 35.440029, 41.756031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466129, 35.321884, 42.405807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.430519, 35.714729, 42.339451>,  <35.409153, 35.950439, 42.299637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.430519, 35.714729, 42.339451>,  <35.466129, 35.321884, 42.405807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430519, 35.714729, 42.339451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389222, 0.119003, 0.913425,
		0.916832, 0.145888, 0.371667,
		-0.089028, 0.982118, -0.165889,
		35.403812, 36.009365, 42.289684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638390, 35.641232, 43.083321>,  <35.466129, 35.321884, 42.405807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638390, 35.641232, 43.083321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.490089, 35.949123, 42.875450>,  <35.401108, 36.133858, 42.750729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.490089, 35.949123, 42.875450>,  <35.638390, 35.641232, 43.083321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490089, 35.949123, 42.875450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485055, 0.316691, 0.815125,
		0.792000, 0.554282, 0.255945,
		-0.370754, 0.769726, -0.519676,
		35.378864, 36.180042, 42.719547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871677, 36.331722, 43.448021>,  <35.638390, 35.641232, 43.083321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871677, 36.331722, 43.448021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.555973, 36.402477, 43.212811>,  <35.366550, 36.444931, 43.071682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.555973, 36.402477, 43.212811>,  <35.871677, 36.331722, 43.448021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555973, 36.402477, 43.212811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525593, 0.300569, 0.795870,
		0.317523, 0.937214, -0.144257,
		-0.789260, 0.176886, -0.588031,
		35.319195, 36.455544, 43.036400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617741, 36.999786, 43.601051>,  <35.871677, 36.331722, 43.448021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617741, 36.999786, 43.601051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.303764, 36.806152, 43.446369>,  <35.115379, 36.689972, 43.353561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.303764, 36.806152, 43.446369>,  <35.617741, 36.999786, 43.601051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303764, 36.806152, 43.446369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537235, 0.220872, 0.813999,
		-0.308629, 0.846688, -0.433436,
		-0.784937, -0.484081, -0.386703,
		35.068283, 36.660927, 43.330357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121704, 37.422600, 43.771332>,  <35.617741, 36.999786, 43.601051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121704, 37.422600, 43.771332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.947124, 37.070381, 43.697414>,  <34.842377, 36.859051, 43.653065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.947124, 37.070381, 43.697414>,  <35.121704, 37.422600, 43.771332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947124, 37.070381, 43.697414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672569, 0.182867, 0.717085,
		-0.597635, 0.437258, -0.672041,
		-0.436445, -0.880549, -0.184798,
		34.816193, 36.806217, 43.641975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449280, 37.523087, 43.855553>,  <35.121704, 37.422600, 43.771332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449280, 37.523087, 43.855553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.464375, 37.123634, 43.870079>,  <34.473431, 36.883965, 43.878796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.464375, 37.123634, 43.870079>,  <34.449280, 37.523087, 43.855553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464375, 37.123634, 43.870079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412683, 0.017528, 0.910706,
		-0.910093, -0.049351, -0.411456,
		0.037732, -0.998628, 0.036319,
		34.475693, 36.824047, 43.880974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.625813, 37.168472, 44.079697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.939877, 36.932419, 44.154804>,  <34.128315, 36.790787, 44.199871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.939877, 36.932419, 44.154804>,  <33.625813, 37.168472, 44.079697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939877, 36.932419, 44.154804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310652, -0.113021, 0.943780,
		-0.535735, -0.799354, -0.272067,
		0.785165, -0.590135, 0.187772,
		34.175426, 36.755379, 44.211136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349167, 36.596107, 44.373749>,  <33.625813, 37.168472, 44.079697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349167, 36.596107, 44.373749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.727089, 36.576527, 44.503326>,  <33.953842, 36.564777, 44.581074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.727089, 36.576527, 44.503326>,  <33.349167, 36.596107, 44.373749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727089, 36.576527, 44.503326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327620, -0.142539, 0.933996,
		0.000457, -0.988578, -0.150709,
		0.944810, -0.048948, 0.323943,
		34.010532, 36.561840, 44.600510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326759, 36.043377, 44.822750>,  <33.349167, 36.596107, 44.373749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326759, 36.043377, 44.822750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.664261, 36.239880, 44.909237>,  <33.866760, 36.357780, 44.961128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.664261, 36.239880, 44.909237>,  <33.326759, 36.043377, 44.822750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664261, 36.239880, 44.909237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185569, -0.110986, 0.976343,
		0.503636, -0.863912, -0.002482,
		0.843750, 0.491261, 0.216213,
		33.917385, 36.387257, 44.974102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664074, 35.690784, 45.328159>,  <33.326759, 36.043377, 44.822750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664074, 35.690784, 45.328159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.844589, 36.045586, 45.367279>,  <33.952896, 36.258469, 45.390751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.844589, 36.045586, 45.367279>,  <33.664074, 35.690784, 45.328159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844589, 36.045586, 45.367279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168959, -0.022678, 0.985362,
		0.876239, -0.461202, 0.139633,
		0.451284, 0.887006, 0.097795,
		33.979973, 36.311687, 45.396618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240967, 35.569042, 45.780586>,  <33.664074, 35.690784, 45.328159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240967, 35.569042, 45.780586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.134796, 35.954678, 45.777081>,  <34.071095, 36.186058, 45.774979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.134796, 35.954678, 45.777081>,  <34.240967, 35.569042, 45.780586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134796, 35.954678, 45.777081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071579, -0.010639, 0.997378,
		0.961471, 0.265355, 0.071833,
		-0.265423, 0.964092, -0.008765,
		34.055168, 36.243904, 45.774452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615871, 35.957405, 46.348682>,  <34.240967, 35.569042, 45.780586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615871, 35.957405, 46.348682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.318657, 36.214481, 46.274021>,  <34.140327, 36.368729, 46.229225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.318657, 36.214481, 46.274021>,  <34.615871, 35.957405, 46.348682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318657, 36.214481, 46.274021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093972, 0.175949, 0.979904,
		0.662620, 0.745645, -0.070342,
		-0.743037, 0.642694, -0.186658,
		34.095745, 36.407288, 46.218025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743839, 36.597000, 46.739620>,  <34.615871, 35.957405, 46.348682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743839, 36.597000, 46.739620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.349911, 36.620064, 46.674145>,  <34.113552, 36.633904, 46.634861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.349911, 36.620064, 46.674145>,  <34.743839, 36.597000, 46.739620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349911, 36.620064, 46.674145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141366, 0.280561, 0.949369,
		0.100664, 0.958103, -0.268153,
		-0.984826, 0.057660, -0.163686,
		34.054462, 36.637363, 46.625038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611191, 37.283157, 46.988586>,  <34.743839, 36.597000, 46.739620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611191, 37.283157, 46.988586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.250523, 37.113117, 46.956917>,  <34.034122, 37.011093, 46.937916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.250523, 37.113117, 46.956917>,  <34.611191, 37.283157, 46.988586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250523, 37.113117, 46.956917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281753, 0.438686, 0.853328,
		-0.328020, 0.791733, -0.515327,
		-0.901675, -0.425104, -0.079176,
		33.980019, 36.985584, 46.933163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073750, 37.779480, 47.071327>,  <34.611191, 37.283157, 46.988586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073750, 37.779480, 47.071327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.894924, 37.432838, 47.159985>,  <33.787628, 37.224854, 47.213181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.894924, 37.432838, 47.159985>,  <34.073750, 37.779480, 47.071327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894924, 37.432838, 47.159985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318649, 0.385822, 0.865797,
		-0.835822, 0.316437, -0.448630,
		-0.447062, -0.866608, 0.221646,
		33.760807, 37.172855, 47.226479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448879, 37.878086, 47.495518>,  <34.073750, 37.779480, 47.071327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448879, 37.878086, 47.495518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.509033, 37.492161, 47.581791>,  <33.545128, 37.260605, 47.633556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.509033, 37.492161, 47.581791>,  <33.448879, 37.878086, 47.495518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509033, 37.492161, 47.581791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232387, 0.177554, 0.956280,
		-0.960927, -0.193934, -0.197508,
		0.150386, -0.964813, 0.215684,
		33.554150, 37.202717, 47.646496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775852, 37.615688, 47.858002>,  <33.448879, 37.878086, 47.495518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775852, 37.615688, 47.858002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.081245, 37.367775, 47.930618>,  <33.264481, 37.219025, 47.974190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.081245, 37.367775, 47.930618>,  <32.775852, 37.615688, 47.858002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081245, 37.367775, 47.930618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169951, 0.078378, 0.982331,
		-0.623066, -0.780845, -0.045493,
		0.763482, -0.619789, 0.181540,
		33.310291, 37.181839, 47.985081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521523, 37.195618, 48.344891>,  <32.775852, 37.615688, 47.858002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521523, 37.195618, 48.344891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.911903, 37.134491, 48.407066>,  <33.146133, 37.097816, 48.444374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.911903, 37.134491, 48.407066>,  <32.521523, 37.195618, 48.344891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911903, 37.134491, 48.407066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169831, -0.086033, 0.981711,
		-0.136651, -0.984502, -0.109917,
		0.975953, -0.152819, 0.155443,
		33.204689, 37.088646, 48.453701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584835, 36.778664, 48.869072>,  <32.521523, 37.195618, 48.344891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584835, 36.778664, 48.869072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.954617, 36.930901, 48.859833>,  <33.176487, 37.022243, 48.854290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.954617, 36.930901, 48.859833>,  <32.584835, 36.778664, 48.869072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954617, 36.930901, 48.859833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019508, 0.013276, 0.999722,
		0.380796, -0.924647, 0.004849,
		0.924453, 0.380595, -0.023093,
		33.231953, 37.045078, 48.852905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869934, 36.467506, 49.320477>,  <32.584835, 36.778664, 48.869072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869934, 36.467506, 49.320477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.117920, 36.780087, 49.292225>,  <33.266712, 36.967632, 49.275272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.117920, 36.780087, 49.292225>,  <32.869934, 36.467506, 49.320477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117920, 36.780087, 49.292225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034057, 0.116731, 0.992580,
		0.783893, -0.612955, 0.098982,
		0.619961, 0.781447, -0.070629,
		33.303909, 37.014519, 49.271034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468277, 36.225491, 49.737911>,  <32.869934, 36.467506, 49.320477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468277, 36.225491, 49.737911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.519550, 36.620758, 49.704205>,  <33.550312, 36.857918, 49.683983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.519550, 36.620758, 49.704205>,  <33.468277, 36.225491, 49.737911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519550, 36.620758, 49.704205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175798, 0.060980, 0.982536,
		0.976045, -0.140756, -0.165900,
		0.128181, 0.988165, -0.084264,
		33.558006, 36.917206, 49.678925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030804, 36.296005, 50.010567>,  <33.468277, 36.225491, 49.737911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030804, 36.296005, 50.010567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.890736, 36.670628, 50.016918>,  <33.806694, 36.895401, 50.020729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.890736, 36.670628, 50.016918>,  <34.030804, 36.296005, 50.010567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890736, 36.670628, 50.016918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158701, 0.042610, 0.986407,
		0.923145, 0.347928, -0.163552,
		-0.350168, 0.936552, 0.015882,
		33.785686, 36.951591, 50.021683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523823, 36.578583, 50.431004>,  <34.030804, 36.296005, 50.010567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523823, 36.578583, 50.431004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.208858, 36.825062, 50.437778>,  <34.019882, 36.972950, 50.441841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.208858, 36.825062, 50.437778>,  <34.523823, 36.578583, 50.431004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208858, 36.825062, 50.437778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048939, 0.035103, 0.998185,
		0.614485, 0.786808, -0.057796,
		-0.787409, 0.616198, 0.016936,
		33.972637, 37.009922, 50.442860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821873, 37.051422, 50.901283>,  <34.523823, 36.578583, 50.431004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821873, 37.051422, 50.901283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.422024, 37.062088, 50.904114>,  <34.182114, 37.068485, 50.905811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.422024, 37.062088, 50.904114>,  <34.821873, 37.051422, 50.901283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422024, 37.062088, 50.904114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005802, -0.047703, 0.998845,
		0.026970, 0.998506, 0.047530,
		-0.999619, 0.026663, 0.007080,
		34.122139, 37.070087, 50.906239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724308, 37.483158, 51.571892>,  <34.821873, 37.051422, 50.901283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724308, 37.483158, 51.571892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.364784, 37.323524, 51.499363>,  <34.149071, 37.227745, 51.455845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.364784, 37.323524, 51.499363>,  <34.724308, 37.483158, 51.571892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364784, 37.323524, 51.499363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133080, -0.145701, 0.980337,
		-0.417653, 0.905266, 0.077848,
		-0.898808, -0.399080, -0.181325,
		34.095142, 37.203800, 51.444965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202179, 37.821083, 52.010731>,  <34.724308, 37.483158, 51.571892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202179, 37.821083, 52.010731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.020241, 37.472904, 51.935425>,  <33.911079, 37.263996, 51.890244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.020241, 37.472904, 51.935425>,  <34.202179, 37.821083, 52.010731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020241, 37.472904, 51.935425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107980, -0.155933, 0.981848,
		-0.884002, 0.466914, -0.023066,
		-0.454842, -0.870446, -0.188262,
		33.883789, 37.211769, 51.878944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616692, 37.688908, 52.586285>,  <34.202179, 37.821083, 52.010731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616692, 37.688908, 52.586285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.691380, 37.328876, 52.428810>,  <33.736191, 37.112858, 52.334324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.691380, 37.328876, 52.428810>,  <33.616692, 37.688908, 52.586285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691380, 37.328876, 52.428810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084654, -0.384502, 0.919234,
		-0.978759, -0.204965, 0.004402,
		0.186718, -0.900082, -0.393686,
		33.747395, 37.058853, 52.310703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249847, 37.229073, 53.104317>,  <33.616692, 37.688908, 52.586285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249847, 37.229073, 53.104317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.507763, 37.031750, 52.870770>,  <33.662514, 36.913357, 52.730640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.507763, 37.031750, 52.870770>,  <33.249847, 37.229073, 53.104317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507763, 37.031750, 52.870770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367555, -0.469645, 0.802706,
		-0.670188, -0.732178, -0.121506,
		0.644789, -0.493304, -0.583866,
		33.701199, 36.883759, 52.695610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326500, 36.607334, 53.449013>,  <33.249847, 37.229073, 53.104317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326500, 36.607334, 53.449013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.634632, 36.566833, 53.197193>,  <33.819511, 36.542534, 53.046101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.634632, 36.566833, 53.197193>,  <33.326500, 36.607334, 53.449013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634632, 36.566833, 53.197193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452455, -0.608899, 0.651558,
		-0.449301, -0.786760, -0.423246,
		0.770333, -0.101246, -0.629552,
		33.865730, 36.536461, 53.008327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628334, 36.323452, 53.205013>,  <33.326500, 36.607334, 53.449013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628334, 36.323452, 53.205013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.416569, 36.030052, 53.375519>,  <32.289509, 35.854012, 53.477821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.416569, 36.030052, 53.375519>,  <32.628334, 36.323452, 53.205013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416569, 36.030052, 53.375519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258119, -0.339368, -0.904546,
		0.808141, -0.588910, -0.009662,
		-0.529417, -0.733495, 0.426266,
		32.257744, 35.810005, 53.503399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702019, 35.508617, 52.946098>,  <32.628334, 36.323452, 53.205013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702019, 35.508617, 52.946098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.336216, 35.601055, 53.078926>,  <32.116734, 35.656517, 53.158623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.336216, 35.601055, 53.078926>,  <32.702019, 35.508617, 52.946098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336216, 35.601055, 53.078926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378784, -0.200736, -0.903453,
		-0.142125, -0.951998, 0.271110,
		-0.914507, 0.231095, 0.332072,
		32.061863, 35.670383, 53.178547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364399, 34.960812, 52.840855>,  <32.702019, 35.508617, 52.946098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364399, 34.960812, 52.840855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.087440, 35.249317, 52.833241>,  <31.921265, 35.422421, 52.828674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.087440, 35.249317, 52.833241>,  <32.364399, 34.960812, 52.840855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087440, 35.249317, 52.833241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247102, -0.261831, -0.932945,
		-0.677882, -0.641267, 0.359517,
		-0.692399, 0.721264, -0.019032,
		31.879721, 35.465694, 52.827530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.822037, 34.585873, 52.608898>,  <32.364399, 34.960812, 52.840855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.822037, 34.585873, 52.608898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.732212, 34.971794, 52.554173>,  <31.678318, 35.203346, 52.521336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.732212, 34.971794, 52.554173>,  <31.822037, 34.585873, 52.608898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732212, 34.971794, 52.554173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340555, -0.209254, -0.916643,
		-0.913014, -0.159248, 0.375560,
		-0.224561, 0.964807, -0.136819,
		31.664845, 35.261238, 52.513126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.261854, 34.596115, 52.186359>,  <31.822037, 34.585873, 52.608898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.261854, 34.596115, 52.186359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.384396, 34.972126, 52.126373>,  <31.457920, 35.197735, 52.090382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.384396, 34.972126, 52.126373>,  <31.261854, 34.596115, 52.186359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384396, 34.972126, 52.126373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191942, -0.093306, -0.976961,
		-0.932366, 0.328079, 0.151847,
		0.306351, 0.940031, -0.149968,
		31.476301, 35.254135, 52.081383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.742453, 34.943882, 51.877678>,  <31.261854, 34.596115, 52.186359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.742453, 34.943882, 51.877678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.087893, 35.124233, 51.787426>,  <31.295156, 35.232445, 51.733276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.087893, 35.124233, 51.787426>,  <30.742453, 34.943882, 51.877678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.087893, 35.124233, 51.787426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153284, -0.191535, -0.969442,
		-0.480312, 0.871795, -0.096298,
		0.863600, 0.450874, -0.225629,
		31.346972, 35.259495, 51.719738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493944, 35.356689, 51.362888>,  <30.742453, 34.943882, 51.877678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.493944, 35.356689, 51.362888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.889469, 35.366302, 51.304001>,  <31.126783, 35.372070, 51.268669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.889469, 35.366302, 51.304001>,  <30.493944, 35.356689, 51.362888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.889469, 35.366302, 51.304001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146545, -0.027865, -0.988812,
		-0.027865, 0.999323, -0.024032,
		0.988812, 0.024032, -0.147222,
		31.186113, 35.373512, 51.259834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681723, 35.835804, 50.782024>,  <30.493944, 35.356689, 51.362888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681723, 35.835804, 50.782024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.991863, 35.585804, 50.818268>,  <31.177948, 35.435802, 50.840012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.991863, 35.585804, 50.818268>,  <30.681723, 35.835804, 50.782024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.991863, 35.585804, 50.818268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087761, -0.035448, -0.995511,
		0.625405, 0.779820, 0.027366,
		0.775349, -0.624999, 0.090607,
		31.224468, 35.398304, 50.845451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.189459, 36.117935, 50.377148>,  <30.681723, 35.835804, 50.782024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.189459, 36.117935, 50.377148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.252213, 35.723686, 50.402229>,  <31.289864, 35.487137, 50.417278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.252213, 35.723686, 50.402229>,  <31.189459, 36.117935, 50.377148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252213, 35.723686, 50.402229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153310, -0.038421, -0.987431,
		0.975645, 0.164524, 0.145079,
		0.156882, -0.985624, 0.062709,
		31.299276, 35.427998, 50.421043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.226536, 35.926395, 49.697083>,  <31.189459, 36.117935, 50.377148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.226536, 35.926395, 49.697083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.302835, 35.574509, 49.871304>,  <31.348616, 35.363377, 49.975838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.302835, 35.574509, 49.871304>,  <31.226536, 35.926395, 49.697083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.302835, 35.574509, 49.871304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097515, -0.424523, -0.900151,
		0.976783, 0.214177, 0.004808,
		0.190750, -0.879721, 0.435552,
		31.360060, 35.310593, 50.001968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954483, 35.859207, 49.630390>,  <31.226536, 35.926395, 49.697083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954483, 35.859207, 49.630390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.840759, 35.475723, 49.627739>,  <31.772524, 35.245632, 49.626148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.840759, 35.475723, 49.627739>,  <31.954483, 35.859207, 49.630390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840759, 35.475723, 49.627739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031763, 0.016324, -0.999362,
		0.958206, -0.283919, -0.035093,
		-0.284311, -0.958709, -0.006624,
		31.755466, 35.188110, 49.625751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408077, 35.466011, 49.185135>,  <31.954483, 35.859207, 49.630390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408077, 35.466011, 49.185135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.074814, 35.244934, 49.193020>,  <31.874857, 35.112289, 49.197750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.074814, 35.244934, 49.193020>,  <32.408077, 35.466011, 49.185135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074814, 35.244934, 49.193020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024666, -0.072743, -0.997046,
		0.552490, -0.830207, 0.074239,
		-0.833154, -0.552689, 0.019712,
		31.824867, 35.079128, 49.198933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533279, 34.848900, 48.721527>,  <32.408077, 35.466011, 49.185135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533279, 34.848900, 48.721527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.137539, 34.889744, 48.763031>,  <31.900095, 34.914249, 48.787933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.137539, 34.889744, 48.763031>,  <32.533279, 34.848900, 48.721527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137539, 34.889744, 48.763031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105068, -0.007493, -0.994437,
		-0.100765, -0.994745, 0.018142,
		-0.989347, 0.102110, 0.103761,
		31.840734, 34.920376, 48.794159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322838, 34.395046, 48.311901>,  <32.533279, 34.848900, 48.721527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322838, 34.395046, 48.311901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.993795, 34.618107, 48.356327>,  <31.796370, 34.751945, 48.382984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.993795, 34.618107, 48.356327>,  <32.322838, 34.395046, 48.311901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993795, 34.618107, 48.356327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107399, 0.039430, -0.993434,
		-0.558371, -0.829137, 0.027456,
		-0.822610, 0.557653, 0.111066,
		31.747013, 34.785404, 48.389648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820021, 34.118839, 47.881428>,  <32.322838, 34.395046, 48.311901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820021, 34.118839, 47.881428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.717251, 34.503418, 47.920639>,  <31.655590, 34.734165, 47.944168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.717251, 34.503418, 47.920639>,  <31.820021, 34.118839, 47.881428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.717251, 34.503418, 47.920639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106306, 0.072704, -0.991672,
		-0.960567, -0.265204, 0.083528,
		-0.256923, 0.961447, 0.098030,
		31.640175, 34.791851, 47.950047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.229414, 34.264698, 47.550358>,  <31.820021, 34.118839, 47.881428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.229414, 34.264698, 47.550358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.374424, 34.635841, 47.585335>,  <31.461430, 34.858528, 47.606319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.374424, 34.635841, 47.585335>,  <31.229414, 34.264698, 47.550358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374424, 34.635841, 47.585335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023171, 0.102768, -0.994436,
		-0.931685, 0.358484, 0.058756,
		0.362527, 0.927862, 0.087441,
		31.483183, 34.914200, 47.611568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.789549, 34.759777, 47.246887>,  <31.229414, 34.264698, 47.550358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.789549, 34.759777, 47.246887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.128492, 34.972038, 47.238941>,  <31.331858, 35.099396, 47.234173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.128492, 34.972038, 47.238941>,  <30.789549, 34.759777, 47.246887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.128492, 34.972038, 47.238941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223289, 0.322112, -0.919992,
		-0.481798, 0.783997, 0.391432,
		0.847356, 0.530653, -0.019865,
		31.382700, 35.131233, 47.232983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.735250, 35.218109, 46.716377>,  <30.789549, 34.759777, 47.246887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.735250, 35.218109, 46.716377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.131491, 35.258095, 46.753727>,  <31.369234, 35.282085, 46.776134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.131491, 35.258095, 46.753727>,  <30.735250, 35.218109, 46.716377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131491, 35.258095, 46.753727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075503, 0.169612, -0.982614,
		-0.114062, 0.980428, 0.160471,
		0.990600, 0.099963, 0.093372,
		31.428671, 35.288082, 46.781738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.804180, 35.718948, 46.297386>,  <30.735250, 35.218109, 46.716377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.804180, 35.718948, 46.297386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.169838, 35.560532, 46.332005>,  <31.389233, 35.465481, 46.352776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.169838, 35.560532, 46.332005>,  <30.804180, 35.718948, 46.297386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.169838, 35.560532, 46.332005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160853, 0.158390, -0.974186,
		0.372106, 0.904470, 0.208495,
		0.914146, -0.396038, 0.086549,
		31.444082, 35.441719, 46.357967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.204954, 36.014584, 45.719719>,  <30.804180, 35.718948, 46.297386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.204954, 36.014584, 45.719719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.440090, 35.705151, 45.814388>,  <31.581173, 35.519493, 45.871189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.440090, 35.705151, 45.814388>,  <31.204954, 36.014584, 45.719719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440090, 35.705151, 45.814388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237590, -0.114568, -0.964585,
		0.773300, 0.623256, 0.116447,
		0.587842, -0.773580, 0.236675,
		31.616444, 35.473076, 45.885391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879911, 36.082413, 45.431507>,  <31.204954, 36.014584, 45.719719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879911, 36.082413, 45.431507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.871225, 35.692318, 45.519539>,  <31.866014, 35.458260, 45.572357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.871225, 35.692318, 45.519539>,  <31.879911, 36.082413, 45.431507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871225, 35.692318, 45.519539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364094, -0.212731, -0.906742,
		0.931109, 0.060443, 0.359698,
		-0.021713, -0.975239, 0.220083,
		31.864712, 35.399746, 45.585564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.955910, 40.299438, 29.859016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.562855, 40.363098, 29.897165>,  <43.327023, 40.401295, 29.920053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.562855, 40.363098, 29.897165>,  <43.955910, 40.299438, 29.859016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.562855, 40.363098, 29.897165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097575, -0.880483, 0.463928,
		0.157805, 0.446567, 0.880724,
		-0.982638, 0.159147, 0.095371,
		43.268063, 40.410843, 29.925777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.774517, 40.363457, 30.628708>,  <43.955910, 40.299438, 29.859016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.774517, 40.363457, 30.628708> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.451687, 40.249962, 30.421587>,  <43.257988, 40.181866, 30.297314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.451687, 40.249962, 30.421587>,  <43.774517, 40.363457, 30.628708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.451687, 40.249962, 30.421587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046380, -0.843792, 0.534663,
		-0.588625, 0.455528, 0.667843,
		-0.807074, -0.283742, -0.517804,
		43.209564, 40.164841, 30.266245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.324844, 40.172279, 31.134720>,  <43.774517, 40.363457, 30.628708>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.324844, 40.172279, 31.134720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.219715, 39.974152, 30.803522>,  <43.156639, 39.855274, 30.604803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.219715, 39.974152, 30.803522>,  <43.324844, 40.172279, 31.134720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.219715, 39.974152, 30.803522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102587, -0.838956, 0.534443,
		-0.959375, 0.225405, 0.169683,
		-0.262823, -0.495324, -0.827997,
		43.140869, 39.825554, 30.555122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.723289, 39.797436, 31.389366>,  <43.324844, 40.172279, 31.134720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.723289, 39.797436, 31.389366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.861500, 39.630207, 31.053312>,  <42.944427, 39.529869, 30.851679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.861500, 39.630207, 31.053312>,  <42.723289, 39.797436, 31.389366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.861500, 39.630207, 31.053312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037047, -0.900656, 0.432950,
		-0.937678, -0.118470, -0.326687,
		0.345524, -0.418070, -0.840137,
		42.965157, 39.504787, 30.801271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.293430, 39.320000, 31.335480>,  <42.723289, 39.797436, 31.389366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.293430, 39.320000, 31.335480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.578728, 39.183723, 31.090464>,  <42.749908, 39.101959, 30.943453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.578728, 39.183723, 31.090464>,  <42.293430, 39.320000, 31.335480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.578728, 39.183723, 31.090464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101527, -0.914923, 0.390651,
		-0.693520, -0.216442, -0.687156,
		0.713248, -0.340689, -0.612543,
		42.792702, 39.081516, 30.906700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.988541, 38.760860, 30.883177>,  <42.293430, 39.320000, 31.335480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.988541, 38.760860, 30.883177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.380543, 38.683128, 30.866137>,  <42.615746, 38.636490, 30.855911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.380543, 38.683128, 30.866137>,  <41.988541, 38.760860, 30.883177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.380543, 38.683128, 30.866137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182741, -0.963948, 0.193416,
		-0.078654, -0.181764, -0.980191,
		0.980010, -0.194334, -0.042603,
		42.674545, 38.624828, 30.853355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.145134, 38.110813, 30.631607>,  <41.988541, 38.760860, 30.883177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.145134, 38.110813, 30.631607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.453186, 38.217525, 30.863377>,  <42.638016, 38.281551, 31.002438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.453186, 38.217525, 30.863377>,  <42.145134, 38.110813, 30.631607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.453186, 38.217525, 30.863377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005646, -0.911159, 0.412017,
		0.637866, -0.314034, -0.703214,
		0.770127, 0.266782, 0.579424,
		42.684223, 38.297562, 31.037205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.626698, 37.513317, 30.590097>,  <42.145134, 38.110813, 30.631607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.626698, 37.513317, 30.590097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.800701, 37.705585, 30.894655>,  <42.905106, 37.820946, 31.077389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.800701, 37.705585, 30.894655>,  <42.626698, 37.513317, 30.590097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.800701, 37.705585, 30.894655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159657, -0.873370, 0.460145,
		0.886157, -0.078607, -0.456670,
		0.435013, 0.480671, 0.761393,
		42.931206, 37.849789, 31.123074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.221375, 37.086510, 30.777430>,  <42.626698, 37.513317, 30.590097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.221375, 37.086510, 30.777430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.125904, 37.328629, 31.081179>,  <43.068623, 37.473900, 31.263428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.125904, 37.328629, 31.081179>,  <43.221375, 37.086510, 30.777430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.125904, 37.328629, 31.081179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114466, -0.758986, 0.640966,
		0.964329, 0.239907, 0.111867,
		-0.238678, 0.605297, 0.759374,
		43.054302, 37.510216, 31.308990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.811897, 37.018909, 31.250744>,  <43.221375, 37.086510, 30.777430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.811897, 37.018909, 31.250744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.477932, 37.146854, 31.429901>,  <43.277554, 37.223621, 31.537395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.477932, 37.146854, 31.429901>,  <43.811897, 37.018909, 31.250744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.477932, 37.146854, 31.429901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106874, -0.704078, 0.702034,
		0.539902, 0.634007, 0.553661,
		-0.834915, 0.319858, 0.447892,
		43.227459, 37.242813, 31.564268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.965618, 37.062073, 31.951376>,  <43.811897, 37.018909, 31.250744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.965618, 37.062073, 31.951376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.568302, 37.026123, 31.922255>,  <43.329914, 37.004555, 31.904781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.568302, 37.026123, 31.922255>,  <43.965618, 37.062073, 31.951376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.568302, 37.026123, 31.922255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020076, -0.753870, 0.656717,
		-0.113904, 0.650848, 0.750615,
		-0.993289, -0.089872, -0.072803,
		43.270317, 36.999161, 31.900414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.823898, 36.871845, 32.572403>,  <43.965618, 37.062073, 31.951376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.823898, 36.871845, 32.572403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.470112, 36.810265, 32.396210>,  <43.257839, 36.773315, 32.290493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.470112, 36.810265, 32.396210>,  <43.823898, 36.871845, 32.572403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.470112, 36.810265, 32.396210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123928, -0.832600, 0.539833,
		-0.449855, 0.532050, 0.717324,
		-0.884462, -0.153950, -0.440485,
		43.204773, 36.764080, 32.264065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.392220, 36.885929, 33.137180>,  <43.823898, 36.871845, 32.572403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.392220, 36.885929, 33.137180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.252934, 36.670437, 32.830322>,  <43.169361, 36.541142, 32.646206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.252934, 36.670437, 32.830322>,  <43.392220, 36.885929, 33.137180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.252934, 36.670437, 32.830322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103936, -0.791130, 0.602753,
		-0.931636, 0.289620, 0.219487,
		-0.348212, -0.538734, -0.767147,
		43.148472, 36.508816, 32.600178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.941513, 36.479954, 33.465767>,  <43.392220, 36.885929, 33.137180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.941513, 36.479954, 33.465767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.983646, 36.257187, 33.136223>,  <43.008926, 36.123528, 32.938496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.983646, 36.257187, 33.136223>,  <42.941513, 36.479954, 33.465767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.983646, 36.257187, 33.136223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012362, -0.829141, 0.558904,
		-0.994360, -0.048686, -0.094219,
		0.105332, -0.556916, -0.823863,
		43.015247, 36.090111, 32.889065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.457775, 35.974461, 33.531796>,  <42.941513, 36.479954, 33.465767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.457775, 35.974461, 33.531796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.714012, 35.823627, 33.264229>,  <42.867756, 35.733128, 33.103687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.714012, 35.823627, 33.264229>,  <42.457775, 35.974461, 33.531796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.714012, 35.823627, 33.264229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128599, -0.806134, 0.577590,
		-0.757033, -0.456023, -0.467915,
		0.640596, -0.377081, -0.668914,
		42.906189, 35.710503, 33.063553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.274960, 35.336510, 33.311096>,  <42.457775, 35.974461, 33.531796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.274960, 35.336510, 33.311096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.662537, 35.311123, 33.215500>,  <42.895084, 35.295891, 33.158142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.662537, 35.311123, 33.215500>,  <42.274960, 35.336510, 33.311096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.662537, 35.311123, 33.215500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057111, -0.882928, 0.466022,
		-0.240586, -0.465199, -0.851885,
		0.968946, -0.063466, -0.238988,
		42.953220, 35.292084, 33.143803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396706, 34.690514, 33.068451>,  <42.274960, 35.336510, 33.311096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.396706, 34.690514, 33.068451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.757664, 34.816723, 33.185837>,  <42.974239, 34.892448, 33.256268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.757664, 34.816723, 33.185837>,  <42.396706, 34.690514, 33.068451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.757664, 34.816723, 33.185837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205266, -0.913577, 0.351059,
		0.378869, -0.256557, -0.889178,
		0.902399, 0.315523, 0.293464,
		43.028385, 34.911381, 33.273876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.854958, 34.248184, 32.740330>,  <42.396706, 34.690514, 33.068451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.854958, 34.248184, 32.740330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.043613, 34.411686, 33.052864>,  <43.156807, 34.509789, 33.240383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.043613, 34.411686, 33.052864>,  <42.854958, 34.248184, 32.740330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.043613, 34.411686, 33.052864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175678, -0.911864, 0.371000,
		0.864116, -0.037714, -0.501877,
		0.471636, 0.408756, 0.781331,
		43.185104, 34.534313, 33.287262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.492867, 33.852856, 32.857269>,  <42.854958, 34.248184, 32.740330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.492867, 33.852856, 32.857269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.421749, 34.052422, 33.196556>,  <43.379078, 34.172161, 33.400127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.421749, 34.052422, 33.196556>,  <43.492867, 33.852856, 32.857269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.421749, 34.052422, 33.196556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131277, -0.842219, 0.522909,
		0.975272, 0.204322, 0.084245,
		-0.177795, 0.498919, 0.848215,
		43.368412, 34.202099, 33.451019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.892185, 33.602493, 33.277840>,  <43.492867, 33.852856, 32.857269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.892185, 33.602493, 33.277840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.632957, 33.770184, 33.532166>,  <43.477421, 33.870796, 33.684761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.632957, 33.770184, 33.532166>,  <43.892185, 33.602493, 33.277840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.632957, 33.770184, 33.532166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066907, -0.800291, 0.595867,
		0.758639, 0.428702, 0.490593,
		-0.648067, 0.419224, 0.635815,
		43.438538, 33.895950, 33.722912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.276844, 33.502903, 33.895943>,  <43.892185, 33.602493, 33.277840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.276844, 33.502903, 33.895943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.893581, 33.563496, 33.993095>,  <43.663624, 33.599854, 34.051388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.893581, 33.563496, 33.993095>,  <44.276844, 33.502903, 33.895943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.893581, 33.563496, 33.993095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010567, -0.829196, 0.558858,
		0.286056, 0.538039, 0.792897,
		-0.958155, 0.151486, 0.242882,
		43.606136, 33.608940, 34.065960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.245663, 33.187859, 34.436211>,  <44.276844, 33.502903, 33.895943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.245663, 33.187859, 34.436211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.848179, 33.211956, 34.398438>,  <43.609688, 33.226414, 34.375774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.848179, 33.211956, 34.398438>,  <44.245663, 33.187859, 34.436211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.848179, 33.211956, 34.398438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108331, -0.731212, 0.673493,
		-0.028479, 0.679485, 0.733137,
		-0.993707, 0.060241, -0.094434,
		43.550068, 33.230030, 34.370106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.952381, 33.132183, 34.620274>,  <44.245663, 33.187859, 34.436211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.952381, 33.132183, 34.620274> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.305336, 33.048817, 34.451530>,  <45.517109, 32.998798, 34.350285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.305336, 33.048817, 34.451530>,  <44.952381, 33.132183, 34.620274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.305336, 33.048817, 34.451530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154615, 0.718343, -0.678290,
		0.444401, 0.663738, 0.601631,
		0.882384, -0.208411, -0.421856,
		45.570053, 32.986294, 34.324974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.260761, 33.792694, 34.382915>,  <44.952381, 33.132183, 34.620274>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.260761, 33.792694, 34.382915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.446297, 33.503723, 34.177803>,  <45.557617, 33.330341, 34.054733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.446297, 33.503723, 34.177803>,  <45.260761, 33.792694, 34.382915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.446297, 33.503723, 34.177803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113029, 0.525828, -0.843048,
		0.878679, 0.449000, 0.162245,
		0.463841, -0.722430, -0.512783,
		45.585449, 33.286995, 34.023968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.697117, 34.201374, 33.964481>,  <45.260761, 33.792694, 34.382915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.697117, 34.201374, 33.964481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.632294, 33.840195, 33.805275>,  <45.593399, 33.623486, 33.709751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.632294, 33.840195, 33.805275>,  <45.697117, 34.201374, 33.964481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.632294, 33.840195, 33.805275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033206, 0.408114, -0.912327,
		0.986222, -0.134634, -0.096122,
		-0.162059, -0.902949, -0.398020,
		45.583675, 33.569309, 33.685867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.086044, 34.102482, 33.376163>,  <45.697117, 34.201374, 33.964481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.086044, 34.102482, 33.376163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.836861, 33.800350, 33.294773>,  <45.687351, 33.619072, 33.245937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.836861, 33.800350, 33.294773>,  <46.086044, 34.102482, 33.376163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.836861, 33.800350, 33.294773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018797, 0.245588, -0.969192,
		0.782028, -0.607592, -0.138794,
		-0.622959, -0.755327, -0.203478,
		45.649971, 33.573753, 33.233730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.375187, 33.784065, 32.791386>,  <46.086044, 34.102482, 33.376163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.375187, 33.784065, 32.791386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.991978, 33.670792, 32.809284>,  <45.762051, 33.602829, 32.820023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.991978, 33.670792, 32.809284>,  <46.375187, 33.784065, 32.791386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.991978, 33.670792, 32.809284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114502, 0.234852, -0.965263,
		0.262850, -0.929863, -0.257419,
		-0.958018, -0.283195, 0.044741,
		45.704571, 33.585838, 32.822708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.170601, 33.320835, 32.154293>,  <46.375187, 33.784065, 32.791386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.170601, 33.320835, 32.154293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.831444, 33.482941, 32.291019>,  <45.627949, 33.580204, 32.373055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.831444, 33.482941, 32.291019>,  <46.170601, 33.320835, 32.154293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.831444, 33.482941, 32.291019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207194, 0.340158, -0.917258,
		-0.487999, -0.848561, -0.204451,
		-0.847896, 0.405260, 0.341814,
		45.577076, 33.604519, 32.393562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.726395, 33.174084, 31.488832>,  <46.170601, 33.320835, 32.154293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.726395, 33.174084, 31.488832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.553108, 33.444756, 31.726967>,  <45.449139, 33.607159, 31.869848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.553108, 33.444756, 31.726967>,  <45.726395, 33.174084, 31.488832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.553108, 33.444756, 31.726967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427627, 0.427135, -0.796675,
		-0.793386, -0.599712, 0.104327,
		-0.433214, 0.676684, 0.595336,
		45.423145, 33.647762, 31.905567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.064121, 33.201115, 31.250368>,  <45.726395, 33.174084, 31.488832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.064121, 33.201115, 31.250368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.106030, 33.544495, 31.451199>,  <45.131172, 33.750523, 31.571697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.106030, 33.544495, 31.451199>,  <45.064121, 33.201115, 31.250368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.106030, 33.544495, 31.451199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457519, 0.489863, -0.742099,
		-0.883007, -0.151962, 0.444080,
		0.104768, 0.858453, 0.502078,
		45.137459, 33.802029, 31.601822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.424789, 33.555153, 31.360876>,  <45.064121, 33.201115, 31.250368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.424789, 33.555153, 31.360876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.679726, 33.860218, 31.404951>,  <44.832687, 34.043259, 31.431396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.679726, 33.860218, 31.404951>,  <44.424789, 33.555153, 31.360876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.679726, 33.860218, 31.404951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551715, 0.551455, -0.625706,
		-0.537967, 0.337995, 0.772238,
		0.637340, 0.762664, 0.110188,
		44.870926, 34.089016, 31.438007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.027237, 34.265182, 31.619747>,  <44.424789, 33.555153, 31.360876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.027237, 34.265182, 31.619747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.363033, 34.346066, 31.418011>,  <44.564510, 34.394596, 31.296968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.363033, 34.346066, 31.418011>,  <44.027237, 34.265182, 31.619747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.363033, 34.346066, 31.418011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493148, 0.673262, -0.550930,
		0.228151, 0.711218, 0.664918,
		0.839495, 0.202207, -0.504341,
		44.614883, 34.406727, 31.266708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.017963, 34.973621, 31.534611>,  <44.027237, 34.265182, 31.619747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.017963, 34.973621, 31.534611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.307880, 34.863712, 31.281889>,  <44.481831, 34.797768, 31.130257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.307880, 34.863712, 31.281889>,  <44.017963, 34.973621, 31.534611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.307880, 34.863712, 31.281889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205702, 0.788898, -0.579074,
		0.657543, 0.549671, 0.515266,
		0.724792, -0.274775, -0.631803,
		44.525318, 34.781281, 31.092348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.397770, 35.606003, 31.376307>,  <44.017963, 34.973621, 31.534611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.397770, 35.606003, 31.376307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.524323, 35.354462, 31.092209>,  <44.600254, 35.203537, 30.921749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.524323, 35.354462, 31.092209>,  <44.397770, 35.606003, 31.376307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.524323, 35.354462, 31.092209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017797, 0.744640, -0.667230,
		0.948465, 0.223741, 0.224400,
		0.316383, -0.628850, -0.710246,
		44.619236, 35.165806, 30.879135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.916153, 35.944302, 30.980684>,  <44.397770, 35.606003, 31.376307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.916153, 35.944302, 30.980684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.782131, 35.643883, 30.753117>,  <44.701717, 35.463631, 30.616577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.782131, 35.643883, 30.753117>,  <44.916153, 35.944302, 30.980684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.782131, 35.643883, 30.753117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019115, 0.598276, -0.801062,
		0.942006, -0.279272, -0.186097,
		-0.335052, -0.751048, -0.568918,
		44.681614, 35.418568, 30.582441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.292206, 35.886265, 30.390285>,  <44.916153, 35.944302, 30.980684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.292206, 35.886265, 30.390285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.941055, 35.725384, 30.286306>,  <44.730366, 35.628857, 30.223919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.941055, 35.725384, 30.286306>,  <45.292206, 35.886265, 30.390285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.941055, 35.725384, 30.286306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066674, 0.640174, -0.765332,
		0.474228, -0.654533, -0.588808,
		-0.877874, -0.402200, -0.259949,
		44.677692, 35.604725, 30.208323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.289993, 35.997501, 29.652119>,  <45.292206, 35.886265, 30.390285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.289993, 35.997501, 29.652119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.907646, 35.890324, 29.700315>,  <44.678238, 35.826015, 29.729233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.907646, 35.890324, 29.700315>,  <45.289993, 35.997501, 29.652119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.907646, 35.890324, 29.700315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240144, 0.476320, -0.845843,
		0.169247, -0.837451, -0.519646,
		-0.955870, -0.267946, 0.120493,
		44.620884, 35.809940, 29.736464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.099197, 35.760166, 28.978319>,  <45.289993, 35.997501, 29.652119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.099197, 35.760166, 28.978319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.770756, 35.866146, 29.180544>,  <44.573692, 35.929733, 29.301878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.770756, 35.866146, 29.180544>,  <45.099197, 35.760166, 28.978319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.770756, 35.866146, 29.180544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419554, 0.320376, -0.849314,
		-0.386993, -0.909485, -0.151903,
		-0.821104, 0.264947, 0.505561,
		44.524426, 35.945629, 29.332212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.503494, 35.634819, 28.554615>,  <45.099197, 35.760166, 28.978319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.503494, 35.634819, 28.554615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.344360, 35.874126, 28.832840>,  <44.248882, 36.017712, 28.999775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.344360, 35.874126, 28.832840>,  <44.503494, 35.634819, 28.554615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.344360, 35.874126, 28.832840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511440, 0.484801, -0.709505,
		-0.761682, -0.638002, 0.113108,
		-0.397831, 0.598265, 0.695564,
		44.225010, 36.053604, 29.041510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.649231, 35.723896, 28.479465>,  <44.503494, 35.634819, 28.554615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.649231, 35.723896, 28.479465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.801132, 36.043118, 28.666611>,  <43.892273, 36.234650, 28.778898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.801132, 36.043118, 28.666611>,  <43.649231, 35.723896, 28.479465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.801132, 36.043118, 28.666611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569688, 0.600221, -0.561419,
		-0.728864, -0.053334, 0.682579,
		0.379755, 0.798054, 0.467863,
		43.915058, 36.282536, 28.806969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.208839, 36.210175, 28.313843>,  <43.649231, 35.723896, 28.479465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.208839, 36.210175, 28.313843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.496376, 36.436203, 28.475813>,  <43.668896, 36.571819, 28.572994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.496376, 36.436203, 28.475813>,  <43.208839, 36.210175, 28.313843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.496376, 36.436203, 28.475813> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357221, 0.799943, -0.482166,
		-0.596376, 0.201951, 0.776885,
		0.718838, 0.565073, 0.404926,
		43.712029, 36.605724, 28.597290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.876328, 36.635265, 28.747650>,  <43.208839, 36.210175, 28.313843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.876328, 36.635265, 28.747650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.212029, 36.827526, 28.645964>,  <43.413448, 36.942883, 28.584951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.212029, 36.827526, 28.645964>,  <42.876328, 36.635265, 28.747650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.212029, 36.827526, 28.645964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537308, 0.804812, -0.252147,
		0.083400, 0.348208, 0.933700,
		0.839252, 0.480655, -0.254216,
		43.463802, 36.971722, 28.569698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.174797, 37.075703, 42.150734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963844, 36.743191, 42.080475>,  <35.837273, 36.543686, 42.038319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963844, 36.743191, 42.080475>,  <36.174797, 37.075703, 42.150734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963844, 36.743191, 42.080475> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647430, -0.259320, -0.716650,
		0.550185, -0.491665, 0.674953,
		-0.527381, -0.831275, -0.175645,
		35.805630, 36.493809, 42.027782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683891, 36.483944, 42.134136>,  <36.174797, 37.075703, 42.150734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683891, 36.483944, 42.134136> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375904, 36.354004, 41.914455>,  <36.191113, 36.276039, 41.782646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375904, 36.354004, 41.914455>,  <36.683891, 36.483944, 42.134136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375904, 36.354004, 41.914455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631500, -0.264648, -0.728814,
		0.091413, -0.907983, 0.408915,
		-0.769969, -0.324852, -0.549199,
		36.144913, 36.256550, 41.749695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864925, 35.804775, 41.829365>,  <36.683891, 36.483944, 42.134136>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864925, 35.804775, 41.829365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551727, 35.914650, 41.606129>,  <36.363808, 35.980576, 41.472187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551727, 35.914650, 41.606129>,  <36.864925, 35.804775, 41.829365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551727, 35.914650, 41.606129> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395677, -0.472336, -0.787616,
		-0.479959, -0.837521, 0.261145,
		-0.782993, 0.274694, -0.558090,
		36.316830, 35.997055, 41.438702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823925, 35.241112, 41.447926>,  <36.864925, 35.804775, 41.829365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823925, 35.241112, 41.447926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623150, 35.524281, 41.249168>,  <36.502686, 35.694183, 41.129913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623150, 35.524281, 41.249168>,  <36.823925, 35.241112, 41.447926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623150, 35.524281, 41.249168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428196, -0.295763, -0.853916,
		-0.751468, -0.641382, -0.154674,
		-0.501940, 0.707922, -0.496894,
		36.472569, 35.736656, 41.100101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568188, 34.957638, 40.866180>,  <36.823925, 35.241112, 41.447926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568188, 34.957638, 40.866180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542881, 35.345161, 40.770348>,  <36.527699, 35.577675, 40.712849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542881, 35.345161, 40.770348>,  <36.568188, 34.957638, 40.866180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542881, 35.345161, 40.770348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286127, -0.212375, -0.934360,
		-0.956101, -0.127663, -0.263767,
		-0.063266, 0.968813, -0.239580,
		36.523903, 35.635807, 40.698475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046455, 34.991798, 40.420063>,  <36.568188, 34.957638, 40.866180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046455, 34.991798, 40.420063> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239090, 35.333088, 40.339977>,  <36.354671, 35.537861, 40.291924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239090, 35.333088, 40.339977>,  <36.046455, 34.991798, 40.420063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239090, 35.333088, 40.339977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033752, -0.210229, -0.977069,
		-0.875746, 0.477305, -0.072446,
		0.481590, 0.853220, -0.200217,
		36.383568, 35.589054, 40.279911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702503, 35.286118, 39.825863>,  <36.046455, 34.991798, 40.420063>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702503, 35.286118, 39.825863> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068829, 35.445683, 39.844398>,  <36.288624, 35.541424, 39.855522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068829, 35.445683, 39.844398>,  <35.702503, 35.286118, 39.825863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068829, 35.445683, 39.844398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105491, -0.127615, -0.986198,
		-0.387495, 0.908064, -0.158954,
		0.915816, 0.398915, 0.046343,
		36.343575, 35.565357, 39.858303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710350, 35.675098, 39.275402>,  <35.702503, 35.286118, 39.825863>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710350, 35.675098, 39.275402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.099041, 35.646156, 39.365307>,  <36.332256, 35.628792, 39.419250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.099041, 35.646156, 39.365307>,  <35.710350, 35.675098, 39.275402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099041, 35.646156, 39.365307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219541, -0.073592, -0.972824,
		0.086929, 0.994660, -0.055626,
		0.971723, -0.072354, 0.224766,
		36.390556, 35.624451, 39.432735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015839, 36.124462, 38.860680>,  <35.710350, 35.675098, 39.275402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015839, 36.124462, 38.860680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279930, 35.850887, 38.984829>,  <36.438385, 35.686745, 39.059319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279930, 35.850887, 38.984829>,  <36.015839, 36.124462, 38.860680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279930, 35.850887, 38.984829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195587, -0.242416, -0.950253,
		0.725149, 0.688091, -0.026282,
		0.660231, -0.683934, 0.310369,
		36.478001, 35.645706, 39.077938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721077, 36.236210, 38.407925>,  <36.015839, 36.124462, 38.860680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721077, 36.236210, 38.407925> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718895, 35.863251, 38.552483>,  <36.717587, 35.639477, 38.639217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718895, 35.863251, 38.552483>,  <36.721077, 36.236210, 38.407925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718895, 35.863251, 38.552483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381259, -0.336043, -0.861230,
		0.924452, 0.133087, 0.357318,
		-0.005455, -0.932396, 0.361396,
		36.717258, 35.583530, 38.660900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341263, 36.003971, 38.183094>,  <36.721077, 36.236210, 38.407925>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341263, 36.003971, 38.183094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158283, 35.659321, 38.271042>,  <37.048496, 35.452530, 38.323811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158283, 35.659321, 38.271042>,  <37.341263, 36.003971, 38.183094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158283, 35.659321, 38.271042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253609, -0.363405, -0.896448,
		0.852304, -0.354319, 0.384756,
		-0.457450, -0.861624, 0.219873,
		37.021049, 35.400833, 38.337002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773811, 35.464375, 38.050365>,  <37.341263, 36.003971, 38.183094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773811, 35.464375, 38.050365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404049, 35.315823, 38.015602>,  <37.182190, 35.226692, 37.994743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404049, 35.315823, 38.015602>,  <37.773811, 35.464375, 38.050365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404049, 35.315823, 38.015602> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202378, -0.284459, -0.937084,
		0.323290, -0.883834, 0.338114,
		-0.924406, -0.371377, -0.086906,
		37.126728, 35.204411, 37.989529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755856, 34.781891, 37.682640>,  <37.773811, 35.464375, 38.050365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755856, 34.781891, 37.682640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375927, 34.904202, 37.656261>,  <37.147972, 34.977589, 37.640434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375927, 34.904202, 37.656261>,  <37.755856, 34.781891, 37.682640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375927, 34.904202, 37.656261> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043043, -0.336567, -0.940675,
		-0.309824, -0.890633, 0.332839,
		-0.949819, 0.305771, -0.065941,
		37.090981, 34.995934, 37.636478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385029, 35.245598, 37.478565>,  <37.755856, 34.781891, 37.682640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385029, 35.245598, 37.478565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264149, 35.297737, 37.100849>,  <38.191620, 35.329021, 36.874218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264149, 35.297737, 37.100849>,  <38.385029, 35.245598, 37.478565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264149, 35.297737, 37.100849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835830, 0.440058, 0.328233,
		0.458328, 0.888458, -0.024034,
		-0.302197, 0.130350, -0.944291,
		38.173489, 35.336842, 36.817562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717579, 34.658756, 37.794724>,  <38.385029, 35.245598, 37.478565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717579, 34.658756, 37.794724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950619, 34.336452, 37.752151>,  <39.090443, 34.143070, 37.726608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950619, 34.336452, 37.752151>,  <38.717579, 34.658756, 37.794724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950619, 34.336452, 37.752151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360273, -0.373412, 0.854849,
		-0.728545, -0.459692, -0.507844,
		0.582602, -0.805759, -0.106432,
		39.125401, 34.094727, 37.720222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335167, 34.136665, 37.951534>,  <38.717579, 34.658756, 37.794724>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335167, 34.136665, 37.951534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713165, 34.025635, 38.020741>,  <38.939964, 33.959015, 38.062263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713165, 34.025635, 38.020741>,  <38.335167, 34.136665, 37.951534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.713165, 34.025635, 38.020741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304094, -0.550781, 0.777282,
		-0.120459, -0.787142, -0.604894,
		0.944995, -0.277575, 0.173019,
		38.996662, 33.942364, 38.072647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332409, 33.445412, 37.952671>,  <38.335167, 34.136665, 37.951534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332409, 33.445412, 37.952671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659679, 33.565010, 38.149117>,  <38.856041, 33.636768, 38.266983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659679, 33.565010, 38.149117>,  <38.332409, 33.445412, 37.952671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659679, 33.565010, 38.149117> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211385, -0.637915, 0.740527,
		0.534705, -0.709694, -0.458722,
		0.818173, 0.298997, 0.491114,
		38.905132, 33.654709, 38.296452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525928, 32.863094, 38.212250>,  <38.332409, 33.445412, 37.952671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525928, 32.863094, 38.212250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721561, 33.129704, 38.437302>,  <38.838940, 33.289669, 38.572330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721561, 33.129704, 38.437302>,  <38.525928, 32.863094, 38.212250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721561, 33.129704, 38.437302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078562, -0.608754, 0.789459,
		0.868695, -0.430309, -0.245365,
		0.489078, 0.666523, 0.562628,
		38.868286, 33.329659, 38.606091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107494, 32.497730, 38.588886>,  <38.525928, 32.863094, 38.212250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107494, 32.497730, 38.588886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031635, 32.829838, 38.798527>,  <38.986122, 33.029102, 38.924313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031635, 32.829838, 38.798527>,  <39.107494, 32.497730, 38.588886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031635, 32.829838, 38.798527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042006, -0.540163, 0.840512,
		0.980953, 0.137384, 0.137316,
		-0.189646, 0.830271, 0.524103,
		38.974743, 33.078918, 38.955757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531815, 32.458698, 39.162685>,  <39.107494, 32.497730, 38.588886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531815, 32.458698, 39.162685> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271992, 32.744373, 39.267006>,  <39.116100, 32.915779, 39.329597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271992, 32.744373, 39.267006>,  <39.531815, 32.458698, 39.162685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271992, 32.744373, 39.267006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049962, -0.382367, 0.922659,
		0.758673, 0.586286, 0.284050,
		-0.649554, 0.714188, 0.260799,
		39.077126, 32.958630, 39.345245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667328, 32.670502, 39.850338>,  <39.531815, 32.458698, 39.162685>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667328, 32.670502, 39.850338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289833, 32.798244, 39.815990>,  <39.063335, 32.874889, 39.795383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289833, 32.798244, 39.815990>,  <39.667328, 32.670502, 39.850338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289833, 32.798244, 39.815990> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146009, -0.169416, 0.974669,
		0.296718, 0.932368, 0.206513,
		-0.943737, 0.319355, -0.085866,
		39.006710, 32.894051, 39.790230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534470, 33.186878, 40.374035>,  <39.667328, 32.670502, 39.850338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.534470, 33.186878, 40.374035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171871, 33.062984, 40.259258>,  <38.954311, 32.988647, 40.190392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171871, 33.062984, 40.259258>,  <39.534470, 33.186878, 40.374035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171871, 33.062984, 40.259258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331502, 0.101209, 0.938010,
		-0.261493, 0.945421, -0.194423,
		-0.906492, -0.309735, -0.286944,
		38.899925, 32.970062, 40.173176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153698, 33.701832, 40.730152>,  <39.534470, 33.186878, 40.374035>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153698, 33.701832, 40.730152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911221, 33.398907, 40.632988>,  <38.765736, 33.217152, 40.574688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911221, 33.398907, 40.632988>,  <39.153698, 33.701832, 40.730152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911221, 33.398907, 40.632988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344908, -0.024886, 0.938306,
		-0.716640, 0.652574, -0.246119,
		-0.606189, -0.757316, -0.242912,
		38.729362, 33.171711, 40.560116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489750, 33.840332, 41.012310>,  <39.153698, 33.701832, 40.730152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489750, 33.840332, 41.012310> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510704, 33.443871, 40.963520>,  <38.523277, 33.205994, 40.934246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510704, 33.443871, 40.963520>,  <38.489750, 33.840332, 41.012310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510704, 33.443871, 40.963520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273832, -0.131722, 0.952715,
		-0.960350, -0.016507, -0.278309,
		0.052386, -0.991149, -0.121979,
		38.526421, 33.146526, 40.926926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896843, 33.537010, 41.258114>,  <38.489750, 33.840332, 41.012310>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896843, 33.537010, 41.258114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159779, 33.237419, 41.291431>,  <38.317539, 33.057667, 41.311424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159779, 33.237419, 41.291431>,  <37.896843, 33.537010, 41.258114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159779, 33.237419, 41.291431> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479877, -0.330793, 0.812585,
		-0.581051, -0.574118, -0.576860,
		0.657341, -0.748975, 0.083298,
		38.356979, 33.012726, 41.316422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517315, 33.051952, 41.511806>,  <37.896843, 33.537010, 41.258114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517315, 33.051952, 41.511806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891312, 32.919510, 41.562672>,  <38.115707, 32.840046, 41.593189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891312, 32.919510, 41.562672>,  <37.517315, 33.051952, 41.511806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891312, 32.919510, 41.562672> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277861, -0.460964, 0.842797,
		-0.220433, -0.823338, -0.522995,
		0.934988, -0.331100, 0.127162,
		38.171806, 32.820179, 41.600819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455429, 32.345535, 41.669418>,  <37.517315, 33.051952, 41.511806>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455429, 32.345535, 41.669418> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795383, 32.489456, 41.823425>,  <37.999355, 32.575809, 41.915829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795383, 32.489456, 41.823425>,  <37.455429, 32.345535, 41.669418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795383, 32.489456, 41.823425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259098, -0.350911, 0.899850,
		0.458875, -0.864526, -0.205010,
		0.849884, 0.359801, 0.385021,
		38.050350, 32.597397, 41.938931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582321, 31.937878, 42.151691>,  <37.455429, 32.345535, 41.669418>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582321, 31.937878, 42.151691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843960, 32.217598, 42.267025>,  <38.000942, 32.385429, 42.336227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843960, 32.217598, 42.267025>,  <37.582321, 31.937878, 42.151691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843960, 32.217598, 42.267025> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187810, -0.219112, 0.957454,
		0.732726, -0.680419, -0.011984,
		0.654095, 0.699300, 0.288338,
		38.040188, 32.427387, 42.353527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441895, 31.356953, 42.440826>,  <37.582321, 31.937878, 42.151691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441895, 31.356953, 42.440826> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087116, 31.173288, 42.460831>,  <36.874249, 31.063089, 42.472836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087116, 31.173288, 42.460831>,  <37.441895, 31.356953, 42.440826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087116, 31.173288, 42.460831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032899, -0.045206, -0.998436,
		0.460702, -0.887203, 0.024990,
		-0.886945, -0.459159, 0.050015,
		36.821033, 31.035542, 42.475834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399975, 30.853258, 41.969864>,  <37.441895, 31.356953, 42.440826>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399975, 30.853258, 41.969864> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007050, 30.886490, 42.036980>,  <36.771294, 30.906429, 42.077248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007050, 30.886490, 42.036980>,  <37.399975, 30.853258, 41.969864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007050, 30.886490, 42.036980> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173206, -0.062915, -0.982874,
		-0.071118, -0.994554, 0.076195,
		-0.982314, 0.083097, 0.167788,
		36.712357, 30.911413, 42.087315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074863, 30.272278, 41.613228>,  <37.399975, 30.853258, 41.969864>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074863, 30.272278, 41.613228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785305, 30.544527, 41.658348>,  <36.611568, 30.707876, 41.685421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785305, 30.544527, 41.658348>,  <37.074863, 30.272278, 41.613228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785305, 30.544527, 41.658348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199533, -0.050039, -0.978613,
		-0.660421, -0.730924, 0.172029,
		-0.723900, 0.680622, 0.112797,
		36.568134, 30.748714, 41.692188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346420, 30.058723, 41.284714>,  <37.074863, 30.272278, 41.613228>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346420, 30.058723, 41.284714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329784, 30.458242, 41.295063>,  <36.319801, 30.697954, 41.301273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329784, 30.458242, 41.295063>,  <36.346420, 30.058723, 41.284714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329784, 30.458242, 41.295063> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369825, 0.008669, -0.929061,
		-0.928170, -0.048208, 0.369021,
		-0.041589, 0.998800, 0.025875,
		36.317307, 30.757883, 41.302826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667156, 30.253288, 40.985291>,  <36.346420, 30.058723, 41.284714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667156, 30.253288, 40.985291> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918026, 30.559589, 40.928341>,  <36.068546, 30.743370, 40.894169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918026, 30.559589, 40.928341>,  <35.667156, 30.253288, 40.985291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918026, 30.559589, 40.928341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279820, 0.050927, -0.958701,
		-0.726879, 0.641113, 0.246214,
		0.627174, 0.765755, -0.142378,
		36.106178, 30.789316, 40.885628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196648, 30.654615, 40.562008>,  <35.667156, 30.253288, 40.985291>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196648, 30.654615, 40.562008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549271, 30.838205, 40.517830>,  <35.760845, 30.948359, 40.491322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549271, 30.838205, 40.517830>,  <35.196648, 30.654615, 40.562008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549271, 30.838205, 40.517830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169357, 0.089099, -0.981519,
		-0.440650, 0.883971, 0.156276,
		0.881559, 0.458973, -0.110445,
		35.813740, 30.975897, 40.484695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046814, 31.218243, 40.189285>,  <35.196648, 30.654615, 40.562008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046814, 31.218243, 40.189285> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436859, 31.142546, 40.143093>,  <35.670887, 31.097128, 40.115379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436859, 31.142546, 40.143093>,  <35.046814, 31.218243, 40.189285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436859, 31.142546, 40.143093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045575, 0.338650, -0.939808,
		0.216960, 0.921684, 0.321599,
		0.975116, -0.189244, -0.115479,
		35.729393, 31.085772, 40.108448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269619, 31.804813, 39.792645>,  <35.046814, 31.218243, 40.189285>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269619, 31.804813, 39.792645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571159, 31.545507, 39.749825>,  <35.752083, 31.389923, 39.724133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571159, 31.545507, 39.749825>,  <35.269619, 31.804813, 39.792645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571159, 31.545507, 39.749825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031742, 0.198664, -0.979554,
		0.656276, 0.735042, 0.170341,
		0.753853, -0.648264, -0.107046,
		35.797314, 31.351028, 39.717712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902679, 32.045650, 39.427044>,  <35.269619, 31.804813, 39.792645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902679, 32.045650, 39.427044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950928, 31.655874, 39.351238>,  <35.979877, 31.422009, 39.305756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950928, 31.655874, 39.351238>,  <35.902679, 32.045650, 39.427044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950928, 31.655874, 39.351238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105818, 0.202445, -0.973560,
		0.987042, 0.097380, 0.127532,
		0.120623, -0.974440, -0.189518,
		35.987114, 31.363543, 39.294384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136276, 32.083263, 38.796471>,  <35.902679, 32.045650, 39.427044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136276, 32.083263, 38.796471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029320, 31.698250, 38.814510>,  <35.965145, 31.467243, 38.825336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029320, 31.698250, 38.814510>,  <36.136276, 32.083263, 38.796471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029320, 31.698250, 38.814510> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295151, 0.037257, -0.954724,
		0.917271, -0.268601, -0.294054,
		-0.267396, -0.962530, 0.045103,
		35.949100, 31.409491, 38.828041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282192, 31.873901, 38.143215>,  <36.136276, 32.083263, 38.796471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282192, 31.873901, 38.143215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067051, 31.570528, 38.290451>,  <35.937965, 31.388504, 38.378792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067051, 31.570528, 38.290451>,  <36.282192, 31.873901, 38.143215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067051, 31.570528, 38.290451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313166, -0.225637, -0.922505,
		0.782715, -0.611445, -0.116156,
		-0.537852, -0.758434, 0.368094,
		35.905697, 31.342999, 38.400879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622238, 31.334332, 37.747231>,  <36.282192, 31.873901, 38.143215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622238, 31.334332, 37.747231> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264359, 31.210991, 37.876499>,  <36.049633, 31.136988, 37.954060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264359, 31.210991, 37.876499>,  <36.622238, 31.334332, 37.747231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264359, 31.210991, 37.876499> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236762, -0.286135, -0.928477,
		0.378767, -0.907219, 0.182998,
		-0.894695, -0.308350, 0.323174,
		35.995949, 31.118486, 37.973450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.427803, 30.241554, 46.039444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.038845, 30.248041, 45.946327>,  <36.805470, 30.251932, 45.890457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.038845, 30.248041, 45.946327>,  <37.427803, 30.241554, 46.039444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038845, 30.248041, 45.946327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233189, 0.104854, -0.966762,
		0.008730, -0.994355, -0.105741,
		-0.972392, 0.016218, -0.232789,
		36.747128, 30.252907, 45.876492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322472, 29.782745, 45.451309>,  <37.427803, 30.241554, 46.039444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322472, 29.782745, 45.451309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.007698, 30.029465, 45.444454>,  <36.818832, 30.177496, 45.440342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.007698, 30.029465, 45.444454>,  <37.322472, 29.782745, 45.451309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007698, 30.029465, 45.444454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062660, 0.052248, -0.996666,
		-0.613845, -0.785387, -0.079764,
		-0.786936, 0.616796, -0.017140,
		36.771618, 30.214504, 45.439312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768841, 29.509945, 44.954525>,  <37.322472, 29.782745, 45.451309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768841, 29.509945, 44.954525> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.696926, 29.901377, 44.994637>,  <36.653778, 30.136236, 45.018703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.696926, 29.901377, 44.994637>,  <36.768841, 29.509945, 44.954525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696926, 29.901377, 44.994637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149405, 0.073598, -0.986033,
		-0.972293, -0.192259, 0.132973,
		-0.179788, 0.978580, 0.100283,
		36.642990, 30.194950, 45.024723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254570, 29.633841, 44.434475>,  <36.768841, 29.509945, 44.954525>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254570, 29.633841, 44.434475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.408699, 29.986767, 44.542580>,  <36.501179, 30.198523, 44.607445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.408699, 29.986767, 44.542580>,  <36.254570, 29.633841, 44.434475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408699, 29.986767, 44.542580> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010055, 0.288851, -0.957321,
		-0.922726, 0.371598, 0.102431,
		0.385326, 0.882315, 0.270266,
		36.524296, 30.251461, 44.623661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829334, 30.134626, 44.243195>,  <36.254570, 29.633841, 44.434475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829334, 30.134626, 44.243195> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.185459, 30.314470, 44.272018>,  <36.399136, 30.422377, 44.289314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.185459, 30.314470, 44.272018>,  <35.829334, 30.134626, 44.243195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185459, 30.314470, 44.272018> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029559, 0.214985, -0.976170,
		-0.454386, 0.866968, 0.204694,
		0.890314, 0.449608, 0.072060,
		36.452553, 30.449352, 44.293636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688759, 30.726894, 44.041656>,  <35.829334, 30.134626, 44.243195>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688759, 30.726894, 44.041656> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.086632, 30.698019, 44.012268>,  <36.325356, 30.680695, 43.994637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.086632, 30.698019, 44.012268>,  <35.688759, 30.726894, 44.041656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086632, 30.698019, 44.012268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048289, 0.303242, -0.951689,
		0.090980, 0.950175, 0.298144,
		0.994681, -0.072187, -0.073471,
		36.385036, 30.676363, 43.990227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014088, 31.421917, 43.830074>,  <35.688759, 30.726894, 44.041656>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014088, 31.421917, 43.830074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.299522, 31.149267, 43.765350>,  <36.470783, 30.985678, 43.726517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.299522, 31.149267, 43.765350>,  <36.014088, 31.421917, 43.830074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299522, 31.149267, 43.765350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079497, 0.308262, -0.947974,
		0.696044, 0.663597, 0.274158,
		0.713585, -0.681626, -0.161810,
		36.513599, 30.944778, 43.716808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643936, 31.746048, 43.573898>,  <36.014088, 31.421917, 43.830074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643936, 31.746048, 43.573898> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.638786, 31.362610, 43.460106>,  <36.635696, 31.132547, 43.391830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.638786, 31.362610, 43.460106>,  <36.643936, 31.746048, 43.573898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638786, 31.362610, 43.460106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003704, 0.284546, -0.958655,
		0.999910, -0.011288, -0.007214,
		-0.012874, -0.958596, -0.284479,
		36.634926, 31.075031, 43.374763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132961, 31.708286, 43.019363>,  <36.643936, 31.746048, 43.573898>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132961, 31.708286, 43.019363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.897469, 31.387161, 42.981644>,  <36.756172, 31.194487, 42.959011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.897469, 31.387161, 42.981644>,  <37.132961, 31.708286, 43.019363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897469, 31.387161, 42.981644> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041432, 0.146473, -0.988347,
		0.807269, -0.577960, -0.119495,
		-0.588728, -0.802813, -0.094297,
		36.720852, 31.146318, 42.953354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953327, 31.736765, 42.794968>,  <37.132961, 31.708286, 43.019363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953327, 31.736765, 42.794968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.073593, 32.117722, 42.815182>,  <38.145752, 32.346294, 42.827309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.073593, 32.117722, 42.815182>,  <37.953327, 31.736765, 42.794968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073593, 32.117722, 42.815182> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078645, -0.028044, 0.996508,
		0.950481, -0.303591, 0.066469,
		0.300667, 0.952389, 0.050531,
		38.163792, 32.403439, 42.830341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476933, 31.798149, 43.384865>,  <37.953327, 31.736765, 42.794968>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476933, 31.798149, 43.384865> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.326378, 32.162148, 43.315300>,  <38.236046, 32.380547, 43.273560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.326378, 32.162148, 43.315300>,  <38.476933, 31.798149, 43.384865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326378, 32.162148, 43.315300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055559, 0.209551, 0.976218,
		0.924797, 0.357770, -0.129430,
		-0.376383, 0.909994, -0.173915,
		38.213463, 32.435146, 43.263126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910995, 32.123882, 43.829632>,  <38.476933, 31.798149, 43.384865>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910995, 32.123882, 43.829632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.628246, 32.385399, 43.721642>,  <38.458595, 32.542309, 43.656849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.628246, 32.385399, 43.721642>,  <38.910995, 32.123882, 43.829632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628246, 32.385399, 43.721642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027431, 0.356049, 0.934065,
		0.706807, 0.667673, -0.233747,
		-0.706875, 0.653791, -0.269973,
		38.416183, 32.581535, 43.640648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065132, 32.720146, 44.040264>,  <38.910995, 32.123882, 43.829632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065132, 32.720146, 44.040264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.670101, 32.761326, 43.992790>,  <38.433083, 32.786034, 43.964306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.670101, 32.761326, 43.992790>,  <39.065132, 32.720146, 44.040264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670101, 32.761326, 43.992790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052115, 0.497993, 0.865614,
		0.148218, 0.861049, -0.486443,
		-0.987581, 0.102949, -0.118685,
		38.373825, 32.792210, 43.957184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976509, 33.357742, 44.293335>,  <39.065132, 32.720146, 44.040264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976509, 33.357742, 44.293335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.625652, 33.166019, 44.305191>,  <38.415138, 33.050987, 44.312305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.625652, 33.166019, 44.305191>,  <38.976509, 33.357742, 44.293335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625652, 33.166019, 44.305191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113452, 0.266801, 0.957050,
		-0.466630, 0.836110, -0.288402,
		-0.877146, -0.479309, 0.029639,
		38.362507, 33.022228, 44.314083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509872, 33.846825, 44.476337>,  <38.976509, 33.357742, 44.293335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509872, 33.846825, 44.476337> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.369915, 33.490883, 44.593452>,  <38.285938, 33.277317, 44.663723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.369915, 33.490883, 44.593452>,  <38.509872, 33.846825, 44.476337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369915, 33.490883, 44.593452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088723, 0.342620, 0.935275,
		-0.932577, 0.301274, -0.198832,
		-0.349898, -0.889857, 0.292790,
		38.264946, 33.223927, 44.681290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984539, 34.075348, 44.905182>,  <38.509872, 33.846825, 44.476337>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984539, 34.075348, 44.905182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.025360, 33.689571, 45.002701>,  <38.049854, 33.458107, 45.061211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.025360, 33.689571, 45.002701>,  <37.984539, 34.075348, 44.905182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025360, 33.689571, 45.002701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171368, 0.224366, 0.959319,
		-0.979907, -0.139681, -0.142377,
		0.102054, -0.964442, 0.243795,
		38.055977, 33.400238, 45.075840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459656, 34.017342, 45.441105>,  <37.984539, 34.075348, 44.905182>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459656, 34.017342, 45.441105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.657406, 33.672657, 45.486801>,  <37.776058, 33.465847, 45.514217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.657406, 33.672657, 45.486801>,  <37.459656, 34.017342, 45.441105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657406, 33.672657, 45.486801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082066, 0.084564, 0.993033,
		-0.865364, -0.500309, -0.028911,
		0.494379, -0.861708, 0.114237,
		37.805721, 33.414146, 45.521072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120926, 33.399059, 45.743717>,  <37.459656, 34.017342, 45.441105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120926, 33.399059, 45.743717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.509125, 33.389656, 45.839699>,  <37.742043, 33.384014, 45.897289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.509125, 33.389656, 45.839699>,  <37.120926, 33.399059, 45.743717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509125, 33.389656, 45.839699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239381, 0.024914, 0.970606,
		-0.028800, -0.999413, 0.018550,
		0.970498, -0.023513, 0.239958,
		37.800274, 33.382603, 45.911686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039619, 33.048592, 46.482174>,  <37.120926, 33.399059, 45.743717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039619, 33.048592, 46.482174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.418926, 33.174034, 46.462433>,  <37.646511, 33.249298, 46.450588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.418926, 33.174034, 46.462433>,  <37.039619, 33.048592, 46.482174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418926, 33.174034, 46.462433> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038749, 0.268626, 0.962465,
		0.315091, -0.910764, 0.266882,
		0.948270, 0.313606, -0.049351,
		37.703407, 33.268116, 46.447628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409458, 32.822086, 47.146164>,  <37.039619, 33.048592, 46.482174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409458, 32.822086, 47.146164> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.603588, 33.131634, 46.983398>,  <37.720066, 33.317364, 46.885738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.603588, 33.131634, 46.983398>,  <37.409458, 32.822086, 47.146164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603588, 33.131634, 46.983398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005355, 0.462760, 0.886467,
		0.874317, -0.432405, 0.220446,
		0.485326, 0.773873, -0.406914,
		37.749187, 33.363796, 46.861324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890152, 33.053013, 47.706551>,  <37.409458, 32.822086, 47.146164>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890152, 33.053013, 47.706551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.823795, 33.369102, 47.470573>,  <37.783981, 33.558758, 47.328987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.823795, 33.369102, 47.470573>,  <37.890152, 33.053013, 47.706551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823795, 33.369102, 47.470573> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073808, 0.586601, 0.806506,
		0.983379, 0.177333, -0.038986,
		-0.165889, 0.790223, -0.589939,
		37.774029, 33.606171, 47.293591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415539, 33.590366, 47.940628>,  <37.890152, 33.053013, 47.706551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415539, 33.590366, 47.940628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.117043, 33.778286, 47.751987>,  <37.937943, 33.891037, 47.638805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.117043, 33.778286, 47.751987>,  <38.415539, 33.590366, 47.940628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117043, 33.778286, 47.751987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121254, 0.600669, 0.790250,
		0.654536, 0.646902, -0.391280,
		-0.746244, 0.469802, -0.471599,
		37.893169, 33.919228, 47.610508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448429, 34.268429, 48.128448>,  <38.415539, 33.590366, 47.940628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448429, 34.268429, 48.128448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.074169, 34.245338, 47.989178>,  <37.849613, 34.231483, 47.905617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.074169, 34.245338, 47.989178>,  <38.448429, 34.268429, 48.128448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074169, 34.245338, 47.989178> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295079, 0.669177, 0.682005,
		0.193621, 0.740858, -0.643149,
		-0.935649, -0.057729, -0.348178,
		37.793476, 34.228020, 47.884724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.837202, 32.507355, 47.140415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.235136, 32.476112, 47.114483>,  <30.473896, 32.457367, 47.098923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.235136, 32.476112, 47.114483>,  <29.837202, 32.507355, 47.140415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.235136, 32.476112, 47.114483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049308, 0.186390, -0.981238,
		0.088723, 0.979366, 0.181576,
		0.994835, -0.078105, -0.064828,
		30.533587, 32.452682, 47.095036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.953114, 33.018116, 46.790989>,  <29.837202, 32.507355, 47.140415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.953114, 33.018116, 46.790989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.233547, 32.737091, 46.742180>,  <30.401808, 32.568478, 46.712894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.233547, 32.737091, 46.742180>,  <29.953114, 33.018116, 46.790989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.233547, 32.737091, 46.742180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135077, 0.037181, -0.990137,
		0.700168, 0.710653, -0.068833,
		0.701084, -0.702560, -0.122026,
		30.443872, 32.526321, 46.705570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.405619, 33.337032, 46.339836>,  <29.953114, 33.018116, 46.790989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.405619, 33.337032, 46.339836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.491549, 32.946663, 46.324768>,  <30.543106, 32.712440, 46.315727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.491549, 32.946663, 46.324768>,  <30.405619, 33.337032, 46.339836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491549, 32.946663, 46.324768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054728, 0.050537, -0.997222,
		0.975118, 0.212165, 0.064267,
		0.214823, -0.975926, -0.037668,
		30.555996, 32.653885, 46.313469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973894, 33.296192, 45.984726>,  <30.405619, 33.337032, 46.339836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973894, 33.296192, 45.984726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.831356, 32.922844, 45.967598>,  <30.745832, 32.698833, 45.957321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.831356, 32.922844, 45.967598>,  <30.973894, 33.296192, 45.984726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.831356, 32.922844, 45.967598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340861, -0.087191, -0.936062,
		0.869960, -0.348159, 0.349220,
		-0.356348, -0.933372, -0.042821,
		30.724451, 32.642834, 45.954750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541883, 32.861134, 45.645649>,  <30.973894, 33.296192, 45.984726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541883, 32.861134, 45.645649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.212593, 32.642101, 45.585701>,  <31.015018, 32.510681, 45.549732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.212593, 32.642101, 45.585701>,  <31.541883, 32.861134, 45.645649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212593, 32.642101, 45.585701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355673, -0.291702, -0.887923,
		0.442489, -0.784264, 0.434894,
		-0.823226, -0.547576, -0.149867,
		30.965626, 32.477829, 45.540741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837143, 32.230854, 45.319035>,  <31.541883, 32.861134, 45.645649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837143, 32.230854, 45.319035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.445166, 32.258476, 45.244267>,  <31.209978, 32.275047, 45.199406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.445166, 32.258476, 45.244267>,  <31.837143, 32.230854, 45.319035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.445166, 32.258476, 45.244267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169696, -0.202550, -0.964457,
		-0.104459, -0.976834, 0.186770,
		-0.979945, 0.069053, -0.186923,
		31.151182, 32.279194, 45.188190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.709061, 31.649092, 44.918449>,  <31.837143, 32.230854, 45.319035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.709061, 31.649092, 44.918449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.421082, 31.922892, 44.872604>,  <31.248295, 32.087170, 44.845097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.421082, 31.922892, 44.872604>,  <31.709061, 31.649092, 44.918449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.421082, 31.922892, 44.872604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196483, 0.042638, -0.979580,
		-0.665634, -0.727766, -0.165189,
		-0.719948, 0.684499, -0.114612,
		31.205097, 32.128242, 44.838223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.276924, 31.370438, 44.473793>,  <31.709061, 31.649092, 44.918449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.276924, 31.370438, 44.473793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.215895, 31.764109, 44.437767>,  <31.179277, 32.000313, 44.416153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.215895, 31.764109, 44.437767>,  <31.276924, 31.370438, 44.473793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215895, 31.764109, 44.437767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113887, -0.108032, -0.987603,
		-0.981708, -0.140426, 0.128568,
		-0.152574, 0.984180, -0.090063,
		31.170122, 32.059364, 44.410748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.698957, 31.390953, 43.934628>,  <31.276924, 31.370438, 44.473793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.698957, 31.390953, 43.934628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.880251, 31.747473, 43.939678>,  <30.989027, 31.961386, 43.942707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.880251, 31.747473, 43.939678>,  <30.698957, 31.390953, 43.934628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880251, 31.747473, 43.939678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059742, -0.016243, -0.998082,
		-0.889387, 0.453120, -0.060609,
		0.453235, 0.891302, 0.012624,
		31.016222, 32.014862, 43.943466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.510763, 31.597677, 43.330257>,  <30.698957, 31.390953, 43.934628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.510763, 31.597677, 43.330257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.807020, 31.849890, 43.423103>,  <30.984776, 32.001217, 43.478813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.807020, 31.849890, 43.423103>,  <30.510763, 31.597677, 43.330257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.807020, 31.849890, 43.423103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167942, 0.160773, -0.972598,
		-0.650570, 0.759332, 0.013183,
		0.740645, 0.630529, 0.232117,
		31.029213, 32.039047, 43.492737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.349304, 32.292488, 43.120979>,  <30.510763, 31.597677, 43.330257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.349304, 32.292488, 43.120979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.748249, 32.263470, 43.122135>,  <30.987616, 32.246059, 43.122829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.748249, 32.263470, 43.122135>,  <30.349304, 32.292488, 43.120979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.748249, 32.263470, 43.122135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019283, 0.226301, -0.973867,
		0.069993, 0.971352, 0.227103,
		0.997361, -0.072543, 0.002891,
		31.047457, 32.241707, 43.123001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.633051, 32.680550, 42.456528>,  <30.349304, 32.292488, 43.120979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.633051, 32.680550, 42.456528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.972292, 32.510532, 42.583057>,  <31.175837, 32.408524, 42.658978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.972292, 32.510532, 42.583057>,  <30.633051, 32.680550, 42.456528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972292, 32.510532, 42.583057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361941, 0.028750, -0.931758,
		0.386942, 0.904717, 0.178223,
		0.848101, -0.425043, 0.316329,
		31.226723, 32.383018, 42.677956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.159897, 33.139465, 42.262009>,  <30.633051, 32.680550, 42.456528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.159897, 33.139465, 42.262009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.315014, 32.772980, 42.302364>,  <31.408083, 32.553089, 42.326576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.315014, 32.772980, 42.302364>,  <31.159897, 33.139465, 42.262009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315014, 32.772980, 42.302364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430973, 0.083475, -0.898495,
		0.814789, 0.391907, 0.427233,
		0.387790, -0.916210, 0.100887,
		31.431351, 32.498116, 42.332630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780996, 33.246918, 42.007847>,  <31.159897, 33.139465, 42.262009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780996, 33.246918, 42.007847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.702444, 32.854939, 41.994389>,  <31.655313, 32.619751, 41.986313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.702444, 32.854939, 41.994389>,  <31.780996, 33.246918, 42.007847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.702444, 32.854939, 41.994389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187481, -0.003848, -0.982261,
		0.962437, -0.199205, 0.184478,
		-0.196381, -0.979950, -0.033644,
		31.643530, 32.560955, 41.984295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515240, 33.520855, 42.040546>,  <31.780996, 33.246918, 42.007847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515240, 33.520855, 42.040546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.626465, 33.900608, 41.982082>,  <32.693199, 34.128460, 41.947006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.626465, 33.900608, 41.982082>,  <32.515240, 33.520855, 42.040546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626465, 33.900608, 41.982082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057334, 0.168289, 0.984069,
		0.958852, -0.265249, 0.101226,
		0.278059, 0.949380, -0.146156,
		32.709881, 34.185421, 41.938236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178726, 33.588917, 42.348030>,  <32.515240, 33.520855, 42.040546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178726, 33.588917, 42.348030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.981327, 33.936192, 42.327221>,  <32.862888, 34.144558, 42.314735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.981327, 33.936192, 42.327221>,  <33.178726, 33.588917, 42.348030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981327, 33.936192, 42.327221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161268, 0.150117, 0.975427,
		0.854667, 0.472978, -0.214094,
		-0.493495, 0.868191, -0.052024,
		32.833279, 34.196648, 42.311615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556084, 33.971539, 42.743507>,  <33.178726, 33.588917, 42.348030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556084, 33.971539, 42.743507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.202183, 34.156891, 42.723530>,  <32.989841, 34.268101, 42.711544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.202183, 34.156891, 42.723530>,  <33.556084, 33.971539, 42.743507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202183, 34.156891, 42.723530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055787, 0.211691, 0.975743,
		0.462710, 0.860505, -0.213145,
		-0.884753, 0.463377, -0.049947,
		32.936756, 34.295902, 42.708546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618477, 34.480919, 43.196400>,  <33.556084, 33.971539, 42.743507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618477, 34.480919, 43.196400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.222546, 34.492008, 43.140587>,  <32.984985, 34.498661, 43.107101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.222546, 34.492008, 43.140587>,  <33.618477, 34.480919, 43.196400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222546, 34.492008, 43.140587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128622, 0.244613, 0.961052,
		0.060770, 0.969224, -0.238560,
		-0.989830, 0.027719, -0.139528,
		32.925598, 34.500324, 43.098728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454670, 35.144890, 43.412834>,  <33.618477, 34.480919, 43.196400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454670, 35.144890, 43.412834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.132900, 34.907738, 43.427708>,  <32.939838, 34.765446, 43.436630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.132900, 34.907738, 43.427708>,  <33.454670, 35.144890, 43.412834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132900, 34.907738, 43.427708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110363, 0.210652, 0.971311,
		-0.583708, 0.777247, -0.234887,
		-0.804429, -0.592885, 0.037180,
		32.891571, 34.729874, 43.438862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820404, 35.578575, 43.787388>,  <33.454670, 35.144890, 43.412834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820404, 35.578575, 43.787388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.691212, 35.200115, 43.796135>,  <32.613697, 34.973038, 43.801384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.691212, 35.200115, 43.796135>,  <32.820404, 35.578575, 43.787388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691212, 35.200115, 43.796135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309324, 0.127372, 0.942388,
		-0.894427, 0.297613, -0.333806,
		-0.322984, -0.946152, 0.021866,
		32.594315, 34.916271, 43.802696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075577, 35.619942, 43.862469>,  <32.820404, 35.578575, 43.787388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075577, 35.619942, 43.862469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.207970, 35.260410, 43.977402>,  <32.287407, 35.044693, 44.046360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.207970, 35.260410, 43.977402>,  <32.075577, 35.619942, 43.862469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207970, 35.260410, 43.977402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444359, 0.120158, 0.887754,
		-0.832462, -0.421511, -0.359632,
		0.330986, -0.898827, 0.287329,
		32.307266, 34.990761, 44.063599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.475336, 35.265350, 44.135731>,  <32.075577, 35.619942, 43.862469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.475336, 35.265350, 44.135731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.791409, 35.071384, 44.285648>,  <31.981052, 34.955006, 44.375599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.791409, 35.071384, 44.285648>,  <31.475336, 35.265350, 44.135731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791409, 35.071384, 44.285648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425845, 0.005381, 0.904780,
		-0.440760, -0.874544, -0.202247,
		0.790182, -0.484917, 0.374792,
		32.028461, 34.925911, 44.398087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216017, 34.791019, 44.571205>,  <31.475336, 35.265350, 44.135731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216017, 34.791019, 44.571205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.591774, 34.844707, 44.697395>,  <31.817228, 34.876919, 44.773109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.591774, 34.844707, 44.697395>,  <31.216017, 34.791019, 44.571205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.591774, 34.844707, 44.697395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324334, 0.049663, 0.944638,
		0.111127, -0.989706, 0.090187,
		0.939392, 0.134225, 0.315477,
		31.873592, 34.884975, 44.792038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.274841, 34.278591, 45.165440>,  <31.216017, 34.791019, 44.571205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.274841, 34.278591, 45.165440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.547981, 34.569836, 45.189327>,  <31.711866, 34.744583, 45.203659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.547981, 34.569836, 45.189327>,  <31.274841, 34.278591, 45.165440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.547981, 34.569836, 45.189327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219303, 0.126317, 0.967445,
		0.696864, -0.673719, 0.245932,
		0.682852, 0.728112, 0.059723,
		31.752836, 34.788269, 45.207245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578167, 34.163738, 45.844273>,  <31.274841, 34.278591, 45.165440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578167, 34.163738, 45.844273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.687834, 34.541557, 45.771988>,  <31.753633, 34.768250, 45.728619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.687834, 34.541557, 45.771988>,  <31.578167, 34.163738, 45.844273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.687834, 34.541557, 45.771988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128265, 0.222145, 0.966540,
		0.953090, -0.241815, 0.182058,
		0.274167, 0.944551, -0.180708,
		31.770084, 34.824924, 45.717777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158447, 34.367870, 46.251980>,  <31.578167, 34.163738, 45.844273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158447, 34.367870, 46.251980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.971354, 34.701771, 46.135761>,  <31.859097, 34.902111, 46.066029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.971354, 34.701771, 46.135761>,  <32.158447, 34.367870, 46.251980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971354, 34.701771, 46.135761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198177, 0.419397, 0.885907,
		0.861364, 0.356792, -0.361596,
		-0.467737, 0.834749, -0.290546,
		31.831032, 34.952194, 46.048599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582581, 34.885696, 46.487251>,  <32.158447, 34.367870, 46.251980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582581, 34.885696, 46.487251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.225708, 35.062000, 46.447773>,  <32.011585, 35.167782, 46.424084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.225708, 35.062000, 46.447773>,  <32.582581, 34.885696, 46.487251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225708, 35.062000, 46.447773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119972, 0.441917, 0.888997,
		0.435449, 0.781307, -0.447150,
		-0.892183, 0.440758, -0.098698,
		31.958054, 35.194229, 46.418163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.717392, 35.631294, 46.753178>,  <32.582581, 34.885696, 46.487251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.717392, 35.631294, 46.753178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.342613, 35.495060, 46.784481>,  <32.117744, 35.413319, 46.803265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.342613, 35.495060, 46.784481>,  <32.717392, 35.631294, 46.753178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342613, 35.495060, 46.784481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045428, 0.340752, 0.939055,
		-0.346498, 0.876293, -0.334740,
		-0.936950, -0.340587, 0.078261,
		32.061527, 35.392883, 46.807961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776154, 36.408913, 46.845730>,  <32.717392, 35.631294, 46.753178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776154, 36.408913, 46.845730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.132374, 36.588005, 46.877880>,  <33.346107, 36.695461, 46.897171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.132374, 36.588005, 46.877880>,  <32.776154, 36.408913, 46.845730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132374, 36.588005, 46.877880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175016, -0.174150, -0.969041,
		-0.419869, 0.877047, -0.233449,
		0.890550, 0.447727, 0.080377,
		33.399540, 36.722324, 46.901993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831940, 36.797390, 46.301456>,  <32.776154, 36.408913, 46.845730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831940, 36.797390, 46.301456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.219456, 36.766834, 46.395782>,  <33.451965, 36.748501, 46.452377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.219456, 36.766834, 46.395782>,  <32.831940, 36.797390, 46.301456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219456, 36.766834, 46.395782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231940, -0.056302, -0.971099,
		0.087460, 0.995487, -0.036827,
		0.968790, -0.076391, 0.235817,
		33.510094, 36.743916, 46.466526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286995, 37.333405, 45.985531>,  <32.831940, 36.797390, 46.301456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286995, 37.333405, 45.985531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.532909, 37.027493, 46.062622>,  <33.680458, 36.843945, 46.108875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.532909, 37.027493, 46.062622>,  <33.286995, 37.333405, 45.985531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532909, 37.027493, 46.062622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374576, 0.068087, -0.924693,
		0.694069, 0.640678, 0.328329,
		0.614786, -0.764785, 0.192725,
		33.717346, 36.798058, 46.120441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880024, 37.564415, 45.672264>,  <33.286995, 37.333405, 45.985531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880024, 37.564415, 45.672264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.943848, 37.173962, 45.731197>,  <33.982140, 36.939690, 45.766560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.943848, 37.173962, 45.731197>,  <33.880024, 37.564415, 45.672264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943848, 37.173962, 45.731197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379574, -0.077114, -0.921942,
		0.911299, 0.203027, 0.358211,
		0.159556, -0.976132, 0.147337,
		33.991714, 36.881123, 45.775398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516750, 37.456604, 45.414230>,  <33.880024, 37.564415, 45.672264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516750, 37.456604, 45.414230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.328278, 37.103817, 45.409939>,  <34.215195, 36.892143, 45.407364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.328278, 37.103817, 45.409939>,  <34.516750, 37.456604, 45.414230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328278, 37.103817, 45.409939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319631, -0.159391, -0.934040,
		0.822086, -0.443532, 0.357008,
		-0.471180, -0.881972, -0.010733,
		34.186924, 36.839226, 45.406719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022785, 37.035343, 45.218739>,  <34.516750, 37.456604, 45.414230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022785, 37.035343, 45.218739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.682144, 36.843941, 45.133133>,  <34.477760, 36.729099, 45.081772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.682144, 36.843941, 45.133133>,  <35.022785, 37.035343, 45.218739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682144, 36.843941, 45.133133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359717, -0.236519, -0.902586,
		0.381273, -0.845632, 0.373548,
		-0.851607, -0.478504, -0.214010,
		34.426662, 36.700390, 45.068932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265980, 36.404873, 44.900291>,  <35.022785, 37.035343, 45.218739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265980, 36.404873, 44.900291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.879456, 36.454819, 44.810265>,  <34.647541, 36.484787, 44.756248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.879456, 36.454819, 44.810265>,  <35.265980, 36.404873, 44.900291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879456, 36.454819, 44.810265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165375, -0.368851, -0.914658,
		-0.197228, -0.921063, 0.335774,
		-0.966308, 0.124868, -0.225069,
		34.589561, 36.492279, 44.742744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070927, 35.837082, 44.451885>,  <35.265980, 36.404873, 44.900291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070927, 35.837082, 44.451885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.796459, 36.120499, 44.385990>,  <34.631779, 36.290550, 44.346455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.796459, 36.120499, 44.385990>,  <35.070927, 35.837082, 44.451885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796459, 36.120499, 44.385990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103781, -0.128792, -0.986226,
		-0.720002, -0.693813, 0.014840,
		-0.686168, 0.708545, -0.164735,
		34.590611, 36.333061, 44.336571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546524, 35.523182, 43.966709>,  <35.070927, 35.837082, 44.451885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546524, 35.523182, 43.966709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.550865, 35.922436, 43.942680>,  <34.553471, 36.161987, 43.928265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.550865, 35.922436, 43.942680>,  <34.546524, 35.523182, 43.966709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550865, 35.922436, 43.942680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174491, -0.061045, -0.982765,
		-0.984599, 0.000183, -0.174828,
		0.010852, 0.998135, -0.060073,
		34.554119, 36.221878, 43.924660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278362, 35.633408, 43.335083>,  <34.546524, 35.523182, 43.966709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278362, 35.633408, 43.335083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.453175, 35.984131, 43.415298>,  <34.558060, 36.194565, 43.463428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.453175, 35.984131, 43.415298>,  <34.278362, 35.633408, 43.335083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453175, 35.984131, 43.415298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418199, -0.000692, -0.908355,
		-0.796314, 0.480841, -0.366983,
		0.437029, 0.876807, 0.200536,
		34.584282, 36.247173, 43.475460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041058, 36.080082, 42.753281>,  <34.278362, 35.633408, 43.335083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041058, 36.080082, 42.753281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.349957, 36.248943, 42.943192>,  <34.535297, 36.350262, 43.057140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.349957, 36.248943, 42.943192>,  <34.041058, 36.080082, 42.753281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349957, 36.248943, 42.943192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504982, 0.045607, -0.861924,
		-0.385517, 0.905377, -0.177960,
		0.772250, 0.422153, 0.474781,
		34.581631, 36.375587, 43.085625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216652, 36.616386, 42.378956>,  <34.041058, 36.080082, 42.753281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216652, 36.616386, 42.378956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.554947, 36.536926, 42.577057>,  <34.757923, 36.489250, 42.695915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.554947, 36.536926, 42.577057>,  <34.216652, 36.616386, 42.378956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554947, 36.536926, 42.577057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529718, 0.200732, -0.824079,
		0.064291, 0.959294, 0.274994,
		0.845734, -0.198650, 0.495250,
		34.808666, 36.477333, 42.725632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710873, 37.139107, 42.119370>,  <34.216652, 36.616386, 42.378956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710873, 37.139107, 42.119370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.909676, 36.840321, 42.296021>,  <35.028957, 36.661049, 42.402012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.909676, 36.840321, 42.296021>,  <34.710873, 37.139107, 42.119370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909676, 36.840321, 42.296021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654101, -0.011932, -0.756313,
		0.570206, 0.664760, 0.482658,
		0.497007, -0.746961, 0.441624,
		35.058777, 36.616234, 42.428509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416061, 37.318974, 42.167015>,  <34.710873, 37.139107, 42.119370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416061, 37.318974, 42.167015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.421795, 36.921177, 42.208557>,  <35.425236, 36.682499, 42.233482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.421795, 36.921177, 42.208557>,  <35.416061, 37.318974, 42.167015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421795, 36.921177, 42.208557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742514, -0.058978, -0.667229,
		0.669677, 0.086675, 0.737577,
		0.014332, -0.994489, 0.103854,
		35.426094, 36.622829, 42.239712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.255638, 43.076385, 35.215748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.186520, 43.245831, 34.860062>,  <27.145048, 43.347496, 34.646652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.186520, 43.245831, 34.860062>,  <27.255638, 43.076385, 35.215748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.186520, 43.245831, 34.860062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319436, -0.878096, -0.356242,
		-0.931720, 0.222490, 0.287046,
		-0.172794, 0.423611, -0.889211,
		27.134682, 43.372913, 34.593300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.666195, 42.874969, 34.986286>,  <27.255638, 43.076385, 35.215748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.666195, 42.874969, 34.986286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.859873, 42.981682, 34.652969>,  <26.976080, 43.045712, 34.452980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.859873, 42.981682, 34.652969>,  <26.666195, 42.874969, 34.986286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.859873, 42.981682, 34.652969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278540, -0.855834, -0.435848,
		-0.829439, 0.443142, -0.340082,
		0.484197, 0.266783, -0.833295,
		27.005133, 43.061718, 34.402981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.188892, 42.843945, 34.430012>,  <26.666195, 42.874969, 34.986286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.188892, 42.843945, 34.430012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.549942, 42.794296, 34.265152>,  <26.766571, 42.764507, 34.166237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.549942, 42.794296, 34.265152>,  <26.188892, 42.843945, 34.430012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.549942, 42.794296, 34.265152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313872, -0.845030, -0.432907,
		-0.294543, 0.520113, -0.801702,
		0.902623, -0.124122, -0.412147,
		26.820728, 42.757061, 34.141506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.112886, 42.532619, 33.810089>,  <26.188892, 42.843945, 34.430012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.112886, 42.532619, 33.810089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.504988, 42.467335, 33.854752>,  <26.740248, 42.428165, 33.881550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.504988, 42.467335, 33.854752>,  <26.112886, 42.532619, 33.810089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.504988, 42.467335, 33.854752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098563, -0.892741, -0.439657,
		0.171436, 0.419970, -0.891198,
		0.980253, -0.163212, 0.111654,
		26.799063, 42.418369, 33.888248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.350157, 42.369450, 33.137737>,  <26.112886, 42.532619, 33.810089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.350157, 42.369450, 33.137737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.620365, 42.223148, 33.393829>,  <26.782490, 42.135368, 33.547485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.620365, 42.223148, 33.393829>,  <26.350157, 42.369450, 33.137737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.620365, 42.223148, 33.393829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017152, -0.860266, -0.509557,
		0.737142, 0.355197, -0.574854,
		0.675520, -0.365756, 0.640231,
		26.823021, 42.113422, 33.585899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.565825, 41.770432, 32.800209>,  <26.350157, 42.369450, 33.137737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.565825, 41.770432, 32.800209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.735844, 41.688152, 33.152805>,  <26.837854, 41.638786, 33.364361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.735844, 41.688152, 33.152805>,  <26.565825, 41.770432, 32.800209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.735844, 41.688152, 33.152805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166737, -0.974965, -0.147112,
		0.889681, -0.084448, -0.448705,
		0.425048, -0.205699, 0.881489,
		26.863358, 41.626442, 33.417252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.128647, 41.296860, 32.651016>,  <26.565825, 41.770432, 32.800209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.128647, 41.296860, 32.651016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.002485, 41.261929, 33.028988>,  <26.926788, 41.240971, 33.255772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.002485, 41.261929, 33.028988>,  <27.128647, 41.296860, 32.651016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.002485, 41.261929, 33.028988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129549, -0.982472, -0.134034,
		0.940074, -0.164689, 0.298561,
		-0.315402, -0.087324, 0.944932,
		26.907864, 41.235733, 33.312466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.561197, 40.713947, 32.946827>,  <27.128647, 41.296860, 32.651016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.561197, 40.713947, 32.946827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.241173, 40.738338, 33.185551>,  <27.049158, 40.752972, 33.328785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.241173, 40.738338, 33.185551>,  <27.561197, 40.713947, 32.946827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.241173, 40.738338, 33.185551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055102, -0.998085, 0.028106,
		0.597382, -0.010399, 0.801890,
		-0.800062, 0.060976, 0.596811,
		27.001154, 40.756630, 33.364594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.565237, 40.155884, 33.344364>,  <27.561197, 40.713947, 32.946827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.565237, 40.155884, 33.344364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.179552, 40.261803, 33.349602>,  <26.948141, 40.325356, 33.352745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.179552, 40.261803, 33.349602>,  <27.565237, 40.155884, 33.344364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.179552, 40.261803, 33.349602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262740, -0.960991, 0.086396,
		0.035465, 0.079863, 0.996175,
		-0.964215, 0.264799, 0.013098,
		26.890287, 40.341244, 33.353531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.350502, 39.823853, 33.857048>,  <27.565237, 40.155884, 33.344364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.350502, 39.823853, 33.857048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.015760, 39.926693, 33.663731>,  <26.814915, 39.988396, 33.547741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.015760, 39.926693, 33.663731>,  <27.350502, 39.823853, 33.857048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.015760, 39.926693, 33.663731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262895, -0.963131, -0.057145,
		-0.480167, 0.079234, 0.873591,
		-0.836855, 0.257102, -0.483294,
		26.764704, 40.003822, 33.518742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.987705, 39.317261, 34.112675>,  <27.350502, 39.823853, 33.857048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.987705, 39.317261, 34.112675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.772989, 39.461929, 33.807770>,  <26.644159, 39.548733, 33.624825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.772989, 39.461929, 33.807770>,  <26.987705, 39.317261, 34.112675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.772989, 39.461929, 33.807770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422247, -0.897339, -0.128416,
		-0.730454, 0.252932, 0.634399,
		-0.536790, 0.361675, -0.762265,
		26.611952, 39.570431, 33.579090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.275320, 39.136948, 34.258060>,  <26.987705, 39.317261, 34.112675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.275320, 39.136948, 34.258060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.341585, 39.180801, 33.866032>,  <26.381344, 39.207115, 33.630814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.341585, 39.180801, 33.866032>,  <26.275320, 39.136948, 34.258060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.341585, 39.180801, 33.866032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184674, -0.972772, -0.140034,
		-0.968737, 0.204192, -0.140903,
		0.165661, 0.109635, -0.980070,
		26.391283, 39.213692, 33.572010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.671211, 38.825340, 33.911213>,  <26.275320, 39.136948, 34.258060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.671211, 38.825340, 33.911213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.969624, 38.861851, 33.647362>,  <26.148672, 38.883759, 33.489052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.969624, 38.861851, 33.647362>,  <25.671211, 38.825340, 33.911213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.969624, 38.861851, 33.647362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065345, -0.975746, -0.208927,
		-0.662695, 0.198970, -0.721974,
		0.746033, 0.091277, -0.659623,
		26.193434, 38.889233, 33.449474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.460335, 38.399727, 33.420658>,  <25.671211, 38.825340, 33.911213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.460335, 38.399727, 33.420658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.853260, 38.426270, 33.350628>,  <26.089016, 38.442196, 33.308609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.853260, 38.426270, 33.350628>,  <25.460335, 38.399727, 33.420658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.853260, 38.426270, 33.350628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007666, -0.948554, -0.316522,
		-0.187077, 0.309582, -0.932288,
		0.982315, 0.066361, -0.175079,
		26.147955, 38.446178, 33.298103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.532478, 38.034718, 32.784210>,  <25.460335, 38.399727, 33.420658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.532478, 38.034718, 32.784210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.890644, 38.064785, 32.959747>,  <26.105543, 38.082825, 33.065071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.890644, 38.064785, 32.959747>,  <25.532478, 38.034718, 32.784210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.890644, 38.064785, 32.959747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210247, -0.940214, -0.267942,
		0.392466, 0.332185, -0.857685,
		0.895414, 0.075168, 0.438843,
		26.159267, 38.087334, 33.091400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.055819, 37.719707, 32.312496>,  <25.532478, 38.034718, 32.784210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.055819, 37.719707, 32.312496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.233906, 37.721092, 32.670662>,  <26.340757, 37.721924, 32.885563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.233906, 37.721092, 32.670662>,  <26.055819, 37.719707, 32.312496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.233906, 37.721092, 32.670662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224580, -0.968461, -0.107926,
		0.866802, 0.249143, -0.431951,
		0.445216, 0.003457, 0.895416,
		26.367470, 37.722130, 32.939285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.625328, 37.271507, 32.205299>,  <26.055819, 37.719707, 32.312496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.625328, 37.271507, 32.205299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.568819, 37.291222, 32.600796>,  <26.534914, 37.303051, 32.838093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.568819, 37.291222, 32.600796>,  <26.625328, 37.271507, 32.205299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.568819, 37.291222, 32.600796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294345, -0.951500, 0.089488,
		0.945200, 0.303674, 0.119913,
		-0.141273, 0.049288, 0.988743,
		26.526438, 37.306007, 32.897419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.242632, 36.960541, 32.425247>,  <26.625328, 37.271507, 32.205299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.242632, 36.960541, 32.425247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.963923, 36.935307, 32.711052>,  <26.796698, 36.920166, 32.882534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.963923, 36.935307, 32.711052>,  <27.242632, 36.960541, 32.425247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.963923, 36.935307, 32.711052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166899, -0.983043, 0.075966,
		0.697606, 0.172182, 0.695485,
		-0.696772, -0.063081, 0.714513,
		26.754890, 36.916382, 32.925407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.291899, 36.256081, 32.524437>,  <27.242632, 36.960541, 32.425247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.291899, 36.256081, 32.524437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.026211, 36.278412, 32.822617>,  <26.866798, 36.291809, 33.001526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.026211, 36.278412, 32.822617>,  <27.291899, 36.256081, 32.524437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.026211, 36.278412, 32.822617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270312, -0.911792, 0.309138,
		0.696954, 0.406839, 0.590540,
		-0.664219, 0.055825, 0.745450,
		26.826944, 36.295158, 33.046253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.607525, 36.192966, 33.212711>,  <27.291899, 36.256081, 32.524437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.607525, 36.192966, 33.212711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.241022, 36.033134, 33.201321>,  <27.021120, 35.937237, 33.194489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.241022, 36.033134, 33.201321>,  <27.607525, 36.192966, 33.212711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.241022, 36.033134, 33.201321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377561, -0.885152, 0.271944,
		-0.133867, 0.238420, 0.961892,
		-0.916257, -0.399577, -0.028474,
		26.966145, 35.913261, 33.192780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.167028, 35.889767, 33.745865>,  <27.607525, 36.192966, 33.212711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.167028, 35.889767, 33.745865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.432245, 35.723927, 33.995178>,  <28.591375, 35.624424, 34.144768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.432245, 35.723927, 33.995178>,  <28.167028, 35.889767, 33.745865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.432245, 35.723927, 33.995178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142435, 0.887282, 0.438683,
		-0.734907, -0.202088, 0.647358,
		0.663041, -0.414598, 0.623285,
		28.631157, 35.599548, 34.182163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.069677, 36.250912, 34.342037>,  <28.167028, 35.889767, 33.745865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.069677, 36.250912, 34.342037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.410461, 36.057247, 34.421791>,  <28.614933, 35.941048, 34.469643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.410461, 36.057247, 34.421791>,  <28.069677, 36.250912, 34.342037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.410461, 36.057247, 34.421791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382383, 0.835436, 0.394753,
		-0.357694, -0.260074, 0.896893,
		0.851962, -0.484157, 0.199383,
		28.666050, 35.911999, 34.481606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.154104, 36.276485, 35.090878>,  <28.069677, 36.250912, 34.342037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.154104, 36.276485, 35.090878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.511421, 36.239780, 34.914875>,  <28.725811, 36.217758, 34.809273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.511421, 36.239780, 34.914875>,  <28.154104, 36.276485, 35.090878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.511421, 36.239780, 34.914875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250729, 0.914209, 0.318365,
		0.373046, -0.394716, 0.839664,
		0.893293, -0.091764, -0.440009,
		28.779409, 36.212250, 34.782871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555868, 36.572678, 35.598194>,  <28.154104, 36.276485, 35.090878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.555868, 36.572678, 35.598194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.758526, 36.583168, 35.253490>,  <28.880119, 36.589462, 35.046669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.758526, 36.583168, 35.253490>,  <28.555868, 36.572678, 35.598194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.758526, 36.583168, 35.253490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206662, 0.966703, 0.150918,
		0.837021, -0.254555, 0.484353,
		0.506643, 0.026224, -0.861758,
		28.910519, 36.591034, 34.994965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.275343, 36.800407, 35.756752>,  <28.555868, 36.572678, 35.598194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.275343, 36.800407, 35.756752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.197451, 36.876575, 35.371872>,  <29.150715, 36.922276, 35.140945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.197451, 36.876575, 35.371872>,  <29.275343, 36.800407, 35.756752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.197451, 36.876575, 35.371872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466181, 0.881063, 0.080016,
		0.862991, -0.432976, -0.260341,
		-0.194732, 0.190419, -0.962196,
		29.139030, 36.933701, 35.083214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.884392, 37.091957, 35.543457>,  <29.275343, 36.800407, 35.756752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.884392, 37.091957, 35.543457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.619555, 37.203579, 35.265247>,  <29.460651, 37.270554, 35.098320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.619555, 37.203579, 35.265247>,  <29.884392, 37.091957, 35.543457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.619555, 37.203579, 35.265247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488613, 0.864443, -0.118301,
		0.568232, -0.418171, -0.708693,
		-0.662095, 0.279054, -0.695528,
		29.420927, 37.287296, 35.056587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222485, 37.471020, 35.021988>,  <29.884392, 37.091957, 35.543457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222485, 37.471020, 35.021988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.860519, 37.609737, 34.923309>,  <29.643339, 37.692970, 34.864101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.860519, 37.609737, 34.923309>,  <30.222485, 37.471020, 35.021988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.860519, 37.609737, 34.923309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381067, 0.918358, -0.106801,
		0.189520, -0.190654, -0.963189,
		-0.904915, 0.346798, -0.246699,
		29.589045, 37.713776, 34.849300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.397499, 37.927849, 34.498894>,  <30.222485, 37.471020, 35.021988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.397499, 37.927849, 34.498894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.032400, 38.024441, 34.630699>,  <29.813341, 38.082397, 34.709782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.032400, 38.024441, 34.630699>,  <30.397499, 37.927849, 34.498894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.032400, 38.024441, 34.630699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240724, 0.969606, -0.043771,
		-0.330065, 0.039370, -0.943137,
		-0.912748, 0.241483, 0.329511,
		29.758575, 38.096886, 34.729553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.990347, 38.482460, 33.983025>,  <30.397499, 37.927849, 34.498894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.990347, 38.482460, 33.983025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.789631, 38.518818, 34.327106>,  <29.669201, 38.540630, 34.533554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.789631, 38.518818, 34.327106>,  <29.990347, 38.482460, 33.983025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.789631, 38.518818, 34.327106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076777, 0.995219, -0.060370,
		-0.861576, 0.035750, -0.506368,
		-0.501789, 0.090891, 0.860202,
		29.639093, 38.546085, 34.585167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.368208, 38.949596, 33.915245>,  <29.990347, 38.482460, 33.983025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.368208, 38.949596, 33.915245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.444128, 38.968781, 34.307507>,  <29.489679, 38.980293, 34.542862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.444128, 38.968781, 34.307507>,  <29.368208, 38.949596, 33.915245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.444128, 38.968781, 34.307507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129618, 0.988840, -0.073450,
		-0.973229, 0.141050, 0.181465,
		0.189800, 0.047963, 0.980651,
		29.501068, 38.983170, 34.601704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.907003, 39.452728, 34.207321>,  <29.368208, 38.949596, 33.915245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.907003, 39.452728, 34.207321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.224785, 39.394726, 34.443226>,  <29.415453, 39.359924, 34.584770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.224785, 39.394726, 34.443226>,  <28.907003, 39.452728, 34.207321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.224785, 39.394726, 34.443226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216375, 0.974937, -0.051760,
		-0.567474, 0.168730, 0.805917,
		0.794452, -0.145008, 0.589761,
		29.463121, 39.351223, 34.620155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.813534, 39.997276, 34.720695>,  <28.907003, 39.452728, 34.207321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.813534, 39.997276, 34.720695> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.186073, 39.876171, 34.801620>,  <29.409597, 39.803509, 34.850174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.186073, 39.876171, 34.801620>,  <28.813534, 39.997276, 34.720695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.186073, 39.876171, 34.801620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270717, 0.947284, 0.171361,
		-0.243525, -0.104828, 0.964213,
		0.931347, -0.302760, 0.202309,
		29.465477, 39.785343, 34.862312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.021221, 40.473839, 35.276409>,  <28.813534, 39.997276, 34.720695>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.021221, 40.473839, 35.276409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.353298, 40.336514, 35.100719>,  <29.552544, 40.254120, 34.995304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.353298, 40.336514, 35.100719>,  <29.021221, 40.473839, 35.276409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.353298, 40.336514, 35.100719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415703, 0.906200, 0.077412,
		0.371449, -0.246854, 0.895036,
		0.830191, -0.343314, -0.439225,
		29.602356, 40.233521, 34.968952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.566259, 40.751556, 35.655376>,  <29.021221, 40.473839, 35.276409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.566259, 40.751556, 35.655376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.722361, 40.666882, 35.296959>,  <29.816021, 40.616077, 35.081909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.722361, 40.666882, 35.296959>,  <29.566259, 40.751556, 35.655376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.722361, 40.666882, 35.296959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543340, 0.838629, 0.038517,
		0.743294, -0.501887, 0.442294,
		0.390251, -0.211687, -0.896043,
		29.839436, 40.603374, 35.028145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.300524, 40.853218, 35.720882>,  <29.566259, 40.751556, 35.655376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.300524, 40.853218, 35.720882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.190321, 40.854958, 35.336369>,  <30.124199, 40.855999, 35.105659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.190321, 40.854958, 35.336369>,  <30.300524, 40.853218, 35.720882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.190321, 40.854958, 35.336369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223595, 0.972853, -0.059685,
		0.934933, -0.231383, -0.269000,
		-0.275508, 0.004346, -0.961289,
		30.107668, 40.856262, 35.047981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785547, 41.240631, 35.501068>,  <30.300524, 40.853218, 35.720882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785547, 41.240631, 35.501068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.555847, 41.220165, 35.174236>,  <30.418028, 41.207886, 34.978138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.555847, 41.220165, 35.174236>,  <30.785547, 41.240631, 35.501068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555847, 41.220165, 35.174236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101748, 0.985847, -0.133244,
		0.812333, -0.159651, -0.560916,
		-0.574249, -0.051167, -0.817080,
		30.383572, 41.204815, 34.929111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170589, 41.638348, 34.939278>,  <30.785547, 41.240631, 35.501068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170589, 41.638348, 34.939278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.782463, 41.632671, 34.842709>,  <30.549587, 41.629265, 34.784767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.782463, 41.632671, 34.842709>,  <31.170589, 41.638348, 34.939278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.782463, 41.632671, 34.842709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021991, 0.988964, -0.146516,
		0.240838, -0.147476, -0.959296,
		-0.970316, -0.014190, -0.241423,
		30.491367, 41.628414, 34.770283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.096346, 42.148960, 34.340313>,  <31.170589, 41.638348, 34.939278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.096346, 42.148960, 34.340313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.731766, 42.100021, 34.497433>,  <30.513018, 42.070656, 34.591705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.731766, 42.100021, 34.497433>,  <31.096346, 42.148960, 34.340313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731766, 42.100021, 34.497433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262045, 0.908678, -0.325017,
		-0.317160, -0.399167, -0.860276,
		-0.911450, -0.122348, 0.392796,
		30.458330, 42.063316, 34.615273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.668129, 42.409485, 33.811745>,  <31.096346, 42.148960, 34.340313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.668129, 42.409485, 33.811745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.475672, 42.425308, 34.162045>,  <30.360197, 42.434803, 34.372223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.475672, 42.425308, 34.162045>,  <30.668129, 42.409485, 33.811745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.475672, 42.425308, 34.162045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305917, 0.928605, -0.210019,
		-0.821533, -0.368955, -0.434689,
		-0.481142, 0.039559, 0.875749,
		30.331329, 42.437176, 34.424770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.040838, 42.759872, 33.625690>,  <30.668129, 42.409485, 33.811745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.040838, 42.759872, 33.625690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.056553, 42.775715, 34.025066>,  <30.065981, 42.785221, 34.264694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.056553, 42.775715, 34.025066>,  <30.040838, 42.759872, 33.625690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.056553, 42.775715, 34.025066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407291, 0.913075, -0.020192,
		-0.912453, -0.405863, 0.052003,
		0.039287, 0.039605, 0.998443,
		30.068338, 42.787598, 34.324600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.467651, 43.096832, 33.756641>,  <30.040838, 42.759872, 33.625690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.467651, 43.096832, 33.756641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.673096, 43.125221, 34.098675>,  <29.796362, 43.142254, 34.303894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.673096, 43.125221, 34.098675>,  <29.467651, 43.096832, 33.756641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.673096, 43.125221, 34.098675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348450, 0.927946, 0.132281,
		-0.784082, -0.365895, 0.501334,
		0.513612, 0.070971, 0.855082,
		29.827179, 43.146511, 34.355198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.038204, 43.457012, 34.237522>,  <29.467651, 43.096832, 33.756641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.038204, 43.457012, 34.237522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.413870, 43.498177, 34.368599>,  <29.639269, 43.522873, 34.447247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.413870, 43.498177, 34.368599>,  <29.038204, 43.457012, 34.237522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.413870, 43.498177, 34.368599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143271, 0.984470, 0.101450,
		-0.312166, -0.142227, 0.939321,
		0.939163, 0.102908, 0.327695,
		29.695618, 43.529049, 34.466908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.237179, 34.986954, 48.153168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.885040, 34.800690, 48.117054>,  <37.673759, 34.688931, 48.095387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.885040, 34.800690, 48.117054>,  <38.237179, 34.986954, 48.153168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885040, 34.800690, 48.117054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345821, 0.499820, 0.794096,
		-0.324656, 0.730299, -0.601050,
		-0.880345, -0.465664, -0.090283,
		37.620937, 34.660992, 48.089970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646420, 35.555302, 48.196678>,  <38.237179, 34.986954, 48.153168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646420, 35.555302, 48.196678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.480225, 35.199070, 48.270699>,  <37.380508, 34.985332, 48.315109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.480225, 35.199070, 48.270699>,  <37.646420, 35.555302, 48.196678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480225, 35.199070, 48.270699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583790, 0.417103, 0.696573,
		-0.697536, 0.181388, -0.693211,
		-0.415491, -0.890574, 0.185052,
		37.355576, 34.931896, 48.326214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903610, 35.641647, 48.172722>,  <37.646420, 35.555302, 48.196678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903610, 35.641647, 48.172722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.948399, 35.304977, 48.384022>,  <36.975269, 35.102974, 48.510799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.948399, 35.304977, 48.384022>,  <36.903610, 35.641647, 48.172722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948399, 35.304977, 48.384022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525052, 0.401216, 0.750564,
		-0.843673, -0.361394, -0.397001,
		0.111966, -0.841677, 0.528246,
		36.981987, 35.052475, 48.542496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327450, 35.507893, 48.461464>,  <36.903610, 35.641647, 48.172722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327450, 35.507893, 48.461464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.562317, 35.285664, 48.696945>,  <36.703239, 35.152325, 48.838234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.562317, 35.285664, 48.696945>,  <36.327450, 35.507893, 48.461464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562317, 35.285664, 48.696945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563046, 0.242186, 0.790143,
		-0.581557, -0.795414, -0.170609,
		0.587172, -0.555574, 0.588700,
		36.738468, 35.118992, 48.873554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825459, 35.223030, 49.020245>,  <36.327450, 35.507893, 48.461464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825459, 35.223030, 49.020245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.194981, 35.164261, 49.161667>,  <36.416695, 35.129002, 49.246521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.194981, 35.164261, 49.161667>,  <35.825459, 35.223030, 49.020245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194981, 35.164261, 49.161667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336611, 0.128313, 0.932860,
		-0.182422, -0.980791, 0.069081,
		0.923805, -0.146921, 0.353552,
		36.472122, 35.120186, 49.267731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765331, 34.671116, 49.639877>,  <35.825459, 35.223030, 49.020245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765331, 34.671116, 49.639877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.094246, 34.894833, 49.681908>,  <36.291595, 35.029060, 49.707127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.094246, 34.894833, 49.681908>,  <35.765331, 34.671116, 49.639877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094246, 34.894833, 49.681908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217461, 0.138182, 0.966238,
		0.525887, -0.817374, 0.235249,
		0.822286, 0.559290, 0.105078,
		36.340931, 35.062618, 49.713432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026787, 34.422836, 50.280632>,  <35.765331, 34.671116, 49.639877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026787, 34.422836, 50.280632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.215771, 34.773582, 50.245102>,  <36.329163, 34.984032, 50.223785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.215771, 34.773582, 50.245102>,  <36.026787, 34.422836, 50.280632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215771, 34.773582, 50.245102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047951, 0.126207, 0.990844,
		0.880047, -0.463875, 0.101675,
		0.472460, 0.876865, -0.088825,
		36.357510, 35.036640, 50.218456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617432, 34.388248, 50.731014>,  <36.026787, 34.422836, 50.280632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.617432, 34.388248, 50.731014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.558727, 34.776756, 50.656082>,  <36.523506, 35.009861, 50.611122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.558727, 34.776756, 50.656082>,  <36.617432, 34.388248, 50.731014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558727, 34.776756, 50.656082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099915, 0.202967, 0.974074,
		0.984113, 0.124237, -0.126832,
		-0.146759, 0.971272, -0.187330,
		36.514698, 35.068138, 50.599884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038227, 34.786003, 51.323498>,  <36.617432, 34.388248, 50.731014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038227, 34.786003, 51.323498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.789577, 35.042355, 51.143337>,  <36.640388, 35.196163, 51.035240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.789577, 35.042355, 51.143337>,  <37.038227, 34.786003, 51.323498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789577, 35.042355, 51.143337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339199, 0.298050, 0.892250,
		0.706062, 0.707421, 0.032108,
		-0.621627, 0.640875, -0.450398,
		36.603088, 35.234619, 51.008217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037674, 35.365406, 51.807381>,  <37.038227, 34.786003, 51.323498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037674, 35.365406, 51.807381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.707550, 35.391396, 51.583012>,  <36.509476, 35.406990, 51.448391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.707550, 35.391396, 51.583012>,  <37.037674, 35.365406, 51.807381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707550, 35.391396, 51.583012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560483, 0.026593, 0.827739,
		0.068698, 0.997532, 0.014469,
		-0.825311, 0.064974, -0.560927,
		36.459957, 35.410889, 51.414734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658577, 35.728180, 52.218109>,  <37.037674, 35.365406, 51.807381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658577, 35.728180, 52.218109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.387505, 35.577038, 51.965767>,  <36.224861, 35.486351, 51.814362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.387505, 35.577038, 51.965767>,  <36.658577, 35.728180, 52.218109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387505, 35.577038, 51.965767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656192, -0.076476, 0.750708,
		-0.331905, 0.922700, -0.196120,
		-0.677680, -0.377857, -0.630852,
		36.184200, 35.463680, 51.776512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026279, 36.053696, 52.364128>,  <36.658577, 35.728180, 52.218109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026279, 36.053696, 52.364128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.915813, 35.720505, 52.172344>,  <35.849533, 35.520588, 52.057274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.915813, 35.720505, 52.172344>,  <36.026279, 36.053696, 52.364128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915813, 35.720505, 52.172344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664423, -0.194992, 0.721471,
		-0.694460, 0.517807, -0.499601,
		-0.276164, -0.832979, -0.479457,
		35.832966, 35.470612, 52.028507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341827, 36.076103, 52.105236>,  <36.026279, 36.053696, 52.364128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341827, 36.076103, 52.105236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.472103, 35.708847, 52.195526>,  <35.550270, 35.488495, 52.249702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.472103, 35.708847, 52.195526>,  <35.341827, 36.076103, 52.105236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472103, 35.708847, 52.195526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584987, -0.008124, 0.811002,
		-0.742776, -0.396181, -0.539744,
		0.325689, -0.918136, 0.225727,
		35.569809, 35.433407, 52.263245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888905, 35.411152, 52.076141>,  <35.341827, 36.076103, 52.105236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888905, 35.411152, 52.076141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.174011, 35.403156, 52.356586>,  <35.345078, 35.398357, 52.524853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.174011, 35.403156, 52.356586>,  <34.888905, 35.411152, 52.076141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174011, 35.403156, 52.356586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691070, 0.150889, 0.706863,
		-0.119923, -0.988348, 0.093732,
		0.712770, -0.019994, 0.701113,
		35.387844, 35.397160, 52.566921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604809, 36.140034, 52.174179>,  <34.888905, 35.411152, 52.076141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604809, 36.140034, 52.174179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.294949, 36.343349, 52.324677>,  <34.109032, 36.465340, 52.414974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.294949, 36.343349, 52.324677>,  <34.604809, 36.140034, 52.174179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294949, 36.343349, 52.324677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205682, 0.360104, -0.909956,
		-0.598010, -0.782283, -0.174407,
		-0.774648, 0.508290, 0.376247,
		34.062553, 36.495838, 52.437550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906487, 35.888294, 51.819069>,  <34.604809, 36.140034, 52.174179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906487, 35.888294, 51.819069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.852413, 36.250931, 51.978977>,  <33.819969, 36.468513, 52.074921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.852413, 36.250931, 51.978977>,  <33.906487, 35.888294, 51.819069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852413, 36.250931, 51.978977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230809, 0.363562, -0.902524,
		-0.963562, -0.214278, 0.160101,
		-0.135185, 0.906591, 0.399772,
		33.811859, 36.522907, 52.098907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281696, 36.113232, 51.521988>,  <33.906487, 35.888294, 51.819069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281696, 36.113232, 51.521988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.495964, 36.431576, 51.634888>,  <33.624523, 36.622581, 51.702625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.495964, 36.431576, 51.634888>,  <33.281696, 36.113232, 51.521988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495964, 36.431576, 51.634888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195914, 0.442256, -0.875230,
		-0.821387, 0.413537, 0.392824,
		0.535669, 0.795862, 0.282246,
		33.656666, 36.670334, 51.719563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986923, 36.552784, 51.112862>,  <33.281696, 36.113232, 51.521988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986923, 36.552784, 51.112862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.325352, 36.745071, 51.205006>,  <33.528408, 36.860443, 51.260292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.325352, 36.745071, 51.205006>,  <32.986923, 36.552784, 51.112862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325352, 36.745071, 51.205006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094421, 0.290154, -0.952310,
		-0.524634, 0.827477, 0.200102,
		0.846075, 0.480721, 0.230356,
		33.579174, 36.889286, 51.274113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852703, 37.138847, 50.861145>,  <32.986923, 36.552784, 51.112862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852703, 37.138847, 50.861145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.252411, 37.124275, 50.865913>,  <33.492233, 37.115532, 50.868774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.252411, 37.124275, 50.865913>,  <32.852703, 37.138847, 50.861145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252411, 37.124275, 50.865913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017263, 0.150142, -0.988514,
		0.034221, 0.987993, 0.150660,
		0.999265, -0.036428, 0.011918,
		33.552189, 37.113346, 50.869488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034000, 37.893414, 50.728096>,  <32.852703, 37.138847, 50.861145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034000, 37.893414, 50.728096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.305340, 37.619576, 50.621380>,  <33.468143, 37.455273, 50.557350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.305340, 37.619576, 50.621380>,  <33.034000, 37.893414, 50.728096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305340, 37.619576, 50.621380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048502, 0.404036, -0.913456,
		0.733141, 0.606699, 0.307280,
		0.678345, -0.684596, -0.266789,
		33.508842, 37.414196, 50.541344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248020, 38.143822, 50.065609>,  <33.034000, 37.893414, 50.728096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248020, 38.143822, 50.065609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.427963, 37.786938, 50.049618>,  <33.535931, 37.572807, 50.040024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.427963, 37.786938, 50.049618>,  <33.248020, 38.143822, 50.065609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427963, 37.786938, 50.049618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169687, 0.129337, -0.976974,
		0.876833, 0.432714, 0.209578,
		0.449856, -0.892206, -0.039982,
		33.562920, 37.519276, 50.037624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887909, 38.182674, 49.670681>,  <33.248020, 38.143822, 50.065609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887909, 38.182674, 49.670681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.774471, 37.799198, 49.661835>,  <33.706409, 37.569111, 49.656525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.774471, 37.799198, 49.661835>,  <33.887909, 38.182674, 49.670681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774471, 37.799198, 49.661835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323810, -0.074025, -0.943222,
		0.902620, -0.274653, 0.331426,
		-0.283592, -0.958690, -0.022119,
		33.689392, 37.511593, 49.655197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070629, 38.065491, 49.061272>,  <33.887909, 38.182674, 49.670681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070629, 38.065491, 49.061272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.853931, 37.735962, 49.127998>,  <33.723915, 37.538242, 49.168034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.853931, 37.735962, 49.127998>,  <34.070629, 38.065491, 49.061272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853931, 37.735962, 49.127998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257641, -0.351657, -0.899977,
		0.800086, -0.444575, 0.402759,
		-0.541740, -0.823826, 0.166815,
		33.691410, 37.488815, 49.178043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383926, 37.535805, 48.677643>,  <34.070629, 38.065491, 49.061272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383926, 37.535805, 48.677643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.033855, 37.358829, 48.755939>,  <33.823814, 37.252644, 48.802917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.033855, 37.358829, 48.755939>,  <34.383926, 37.535805, 48.677643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033855, 37.358829, 48.755939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013453, -0.426693, -0.904296,
		0.483620, -0.788784, 0.379383,
		-0.875175, -0.442440, 0.195746,
		33.771301, 37.226097, 48.814663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426350, 36.975376, 48.364853>,  <34.383926, 37.535805, 48.677643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426350, 36.975376, 48.364853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.030800, 37.007069, 48.415211>,  <33.793468, 37.026085, 48.445427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.030800, 37.007069, 48.415211>,  <34.426350, 36.975376, 48.364853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030800, 37.007069, 48.415211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147644, -0.419665, -0.895590,
		-0.018128, -0.904214, 0.426695,
		-0.988874, 0.079234, 0.125894,
		33.734138, 37.030838, 48.452980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150814, 36.281830, 48.386818>,  <34.426350, 36.975376, 48.364853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150814, 36.281830, 48.386818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.874680, 36.537945, 48.252071>,  <33.709000, 36.691612, 48.171223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.874680, 36.537945, 48.252071>,  <34.150814, 36.281830, 48.386818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874680, 36.537945, 48.252071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001869, -0.467186, -0.884157,
		-0.723491, -0.609732, 0.323710,
		-0.690331, 0.640285, -0.336865,
		33.667580, 36.730030, 48.151012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703999, 35.924141, 47.934269>,  <34.150814, 36.281830, 48.386818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703999, 35.924141, 47.934269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.667488, 36.312687, 47.846519>,  <33.645580, 36.545815, 47.793869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.667488, 36.312687, 47.846519>,  <33.703999, 35.924141, 47.934269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667488, 36.312687, 47.846519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081795, -0.226867, -0.970485,
		-0.992460, -0.070642, 0.100160,
		-0.091280, 0.971361, -0.219378,
		33.640102, 36.604095, 47.780704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187756, 35.984348, 47.331890>,  <33.703999, 35.924141, 47.934269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187756, 35.984348, 47.331890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.378117, 36.336067, 47.324329>,  <33.492332, 36.547096, 47.319794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.378117, 36.336067, 47.324329>,  <33.187756, 35.984348, 47.331890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378117, 36.336067, 47.324329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195305, -0.126608, -0.972536,
		-0.857537, 0.459144, -0.231984,
		0.475905, 0.879294, -0.018898,
		33.520889, 36.599854, 47.318661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466278, 35.828316, 47.397232>,  <33.187756, 35.984348, 47.331890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466278, 35.828316, 47.397232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.145668, 35.600830, 47.323345>,  <31.953300, 35.464340, 47.279011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.145668, 35.600830, 47.323345>,  <32.466278, 35.828316, 47.397232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145668, 35.600830, 47.323345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229972, 0.008027, 0.973164,
		-0.551965, 0.822499, -0.137220,
		-0.801528, -0.568709, -0.184721,
		31.905209, 35.430218, 47.267929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965919, 36.111515, 47.756435>,  <32.466278, 35.828316, 47.397232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965919, 36.111515, 47.756435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.838572, 35.736652, 47.699326>,  <31.762163, 35.511734, 47.665062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.838572, 35.736652, 47.699326>,  <31.965919, 36.111515, 47.756435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838572, 35.736652, 47.699326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307966, -0.040190, 0.950548,
		-0.896548, 0.346593, -0.275816,
		-0.318368, -0.937154, -0.142771,
		31.743061, 35.455505, 47.656494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318121, 36.038338, 48.173378>,  <31.965919, 36.111515, 47.756435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318121, 36.038338, 48.173378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.425102, 35.659946, 48.100060>,  <31.489292, 35.432911, 48.056068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.425102, 35.659946, 48.100060>,  <31.318121, 36.038338, 48.173378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.425102, 35.659946, 48.100060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220202, -0.245192, 0.944136,
		-0.938072, -0.212153, -0.273884,
		0.267455, -0.945977, -0.183292,
		31.505339, 35.376152, 48.045071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.720188, 35.627895, 48.501770>,  <31.318121, 36.038338, 48.173378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.720188, 35.627895, 48.501770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.036329, 35.386414, 48.460045>,  <31.226015, 35.241524, 48.435009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.036329, 35.386414, 48.460045>,  <30.720188, 35.627895, 48.501770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.036329, 35.386414, 48.460045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089450, -0.282153, 0.955190,
		-0.606086, -0.745607, -0.277002,
		0.790353, -0.603705, -0.104314,
		31.273436, 35.205303, 48.428749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.572813, 35.033077, 48.921085>,  <30.720188, 35.627895, 48.501770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.572813, 35.033077, 48.921085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.970694, 35.017868, 48.882874>,  <31.209421, 35.008743, 48.859947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.970694, 35.017868, 48.882874>,  <30.572813, 35.033077, 48.921085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.970694, 35.017868, 48.882874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081562, -0.273885, 0.958298,
		-0.062598, -0.961011, -0.269332,
		0.994700, -0.038020, -0.095526,
		31.269104, 35.006462, 48.854214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.763060, 34.347359, 49.234676>,  <30.572813, 35.033077, 48.921085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.763060, 34.347359, 49.234676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.075525, 34.597061, 49.238312>,  <31.263004, 34.746883, 49.240494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.075525, 34.597061, 49.238312>,  <30.763060, 34.347359, 49.234676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.075525, 34.597061, 49.238312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157221, -0.210790, 0.964805,
		0.604204, -0.752243, -0.262808,
		0.781165, 0.624258, 0.009092,
		31.309875, 34.784340, 49.241039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.260262, 34.001572, 49.572491>,  <30.763060, 34.347359, 49.234676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.260262, 34.001572, 49.572491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.389135, 34.380081, 49.583603>,  <31.466459, 34.607185, 49.590271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.389135, 34.380081, 49.583603>,  <31.260262, 34.001572, 49.572491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.389135, 34.380081, 49.583603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196129, -0.095432, 0.975923,
		0.926137, -0.308978, -0.216337,
		0.322185, 0.946269, 0.027784,
		31.485790, 34.663963, 49.591938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876060, 33.641315, 49.223492>,  <31.260262, 34.001572, 49.572491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876060, 33.641315, 49.223492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.504576, 33.496174, 49.254032>,  <31.281685, 33.409088, 49.272358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.504576, 33.496174, 49.254032>,  <31.876060, 33.641315, 49.223492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.504576, 33.496174, 49.254032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143709, 0.162396, -0.976205,
		0.341818, -0.917587, -0.202964,
		-0.928713, -0.362852, 0.076355,
		31.225962, 33.387318, 49.276939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324158, 33.057201, 49.042999>,  <31.876060, 33.641315, 49.223492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324158, 33.057201, 49.042999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.967340, 32.909649, 49.147449>,  <31.753250, 32.821117, 49.210121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.967340, 32.909649, 49.147449>,  <32.324158, 33.057201, 49.042999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967340, 32.909649, 49.147449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160919, -0.280680, -0.946216,
		0.422333, -0.886085, 0.191019,
		-0.892043, -0.368879, 0.261128,
		31.699728, 32.798985, 49.225788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205723, 32.568310, 48.594986>,  <32.324158, 33.057201, 49.042999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205723, 32.568310, 48.594986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.843103, 32.643158, 48.746326>,  <31.625530, 32.688068, 48.837132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.843103, 32.643158, 48.746326>,  <32.205723, 32.568310, 48.594986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843103, 32.643158, 48.746326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405644, -0.138441, -0.903486,
		-0.116666, -0.972536, 0.201401,
		-0.906555, 0.187103, 0.378352,
		31.571138, 32.699295, 48.859829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720209, 31.949202, 48.616280>,  <32.205723, 32.568310, 48.594986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720209, 31.949202, 48.616280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.488493, 32.274406, 48.592831>,  <31.349463, 32.469528, 48.578762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.488493, 32.274406, 48.592831>,  <31.720209, 31.949202, 48.616280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488493, 32.274406, 48.592831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328601, -0.298745, -0.895976,
		-0.745952, -0.499765, 0.440216,
		-0.579290, 0.813010, -0.058626,
		31.314705, 32.518311, 48.575245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.107750, 31.707916, 48.451679>,  <31.720209, 31.949202, 48.616280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.107750, 31.707916, 48.451679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.061487, 32.089207, 48.339977>,  <31.033730, 32.317982, 48.272957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.061487, 32.089207, 48.339977>,  <31.107750, 31.707916, 48.451679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.061487, 32.089207, 48.339977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333683, -0.302089, -0.892972,
		-0.935564, -0.010094, 0.353014,
		-0.115655, 0.953226, -0.279255,
		31.026791, 32.375175, 48.256199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.524553, 31.726763, 48.109943>,  <31.107750, 31.707916, 48.451679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.524553, 31.726763, 48.109943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.652403, 32.082573, 47.979355>,  <30.729113, 32.296059, 47.901001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.652403, 32.082573, 47.979355>,  <30.524553, 31.726763, 48.109943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.652403, 32.082573, 47.979355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266609, -0.246197, -0.931830,
		-0.909264, 0.384874, 0.158465,
		0.319624, 0.889527, -0.326469,
		30.748289, 32.349430, 47.881413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.025806, 31.878551, 47.595112>,  <30.524553, 31.726763, 48.109943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.025806, 31.878551, 47.595112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.350256, 32.104218, 47.533405>,  <30.544926, 32.239616, 47.496384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.350256, 32.104218, 47.533405>,  <30.025806, 31.878551, 47.595112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.350256, 32.104218, 47.533405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190694, 0.005754, -0.981633,
		-0.552916, 0.825641, 0.112251,
		0.811122, 0.564166, -0.154263,
		30.593594, 32.273468, 47.487125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<34.435883, 32.379917, 52.029491> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.634655, 32.726437, 52.009171>,  <34.753918, 32.934349, 51.996979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.634655, 32.726437, 52.009171>,  <34.435883, 32.379917, 52.029491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634655, 32.726437, 52.009171> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446483, -0.305439, -0.841047,
		-0.744118, 0.395259, -0.538571,
		0.496932, 0.866301, -0.050806,
		34.783733, 32.986328, 51.993927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071445, 32.811489, 51.457867>,  <34.435883, 32.379917, 52.029491>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071445, 32.811489, 51.457867> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.464245, 32.822067, 51.532684>,  <34.699924, 32.828415, 51.577576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.464245, 32.822067, 51.532684>,  <34.071445, 32.811489, 51.457867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464245, 32.822067, 51.532684> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179050, -0.445972, -0.876955,
		0.060222, 0.894656, -0.442678,
		0.981995, 0.026450, 0.187045,
		34.758842, 32.830002, 51.588799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314365, 33.015949, 50.851456>,  <34.071445, 32.811489, 51.457867>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314365, 33.015949, 50.851456> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.637123, 32.870659, 51.037785>,  <34.830776, 32.783485, 51.149582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.637123, 32.870659, 51.037785>,  <34.314365, 33.015949, 50.851456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637123, 32.870659, 51.037785> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258774, -0.491528, -0.831526,
		0.530996, 0.791496, -0.302618,
		0.806895, -0.363227, 0.465818,
		34.879192, 32.761692, 51.177528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831955, 33.168480, 50.423214>,  <34.314365, 33.015949, 50.851456>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831955, 33.168480, 50.423214> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.018482, 32.899323, 50.652912>,  <35.130398, 32.737827, 50.790733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.018482, 32.899323, 50.652912>,  <34.831955, 33.168480, 50.423214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018482, 32.899323, 50.652912> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386746, -0.428748, -0.816457,
		0.795599, 0.602814, 0.060309,
		0.466315, -0.672897, 0.574248,
		35.158379, 32.697453, 50.825188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570702, 33.192425, 50.226063>,  <34.831955, 33.168480, 50.423214>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570702, 33.192425, 50.226063> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.486694, 32.833778, 50.381996>,  <35.436291, 32.618591, 50.475555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.486694, 32.833778, 50.381996>,  <35.570702, 33.192425, 50.226063>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486694, 32.833778, 50.381996> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401074, -0.442643, -0.802002,
		0.891647, -0.012078, 0.452571,
		-0.210014, -0.896617, 0.389837,
		35.423691, 32.564793, 50.498947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076500, 32.775097, 49.959602>,  <35.570702, 33.192425, 50.226063>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076500, 32.775097, 49.959602> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.836727, 32.498795, 50.121361>,  <35.692863, 32.333012, 50.218414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.836727, 32.498795, 50.121361>,  <36.076500, 32.775097, 49.959602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836727, 32.498795, 50.121361> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292893, -0.659478, -0.692317,
		0.744911, -0.296554, 0.597631,
		-0.599434, -0.690757, 0.404394,
		35.656898, 32.291569, 50.242680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509945, 32.186069, 50.039921>,  <36.076500, 32.775097, 49.959602>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509945, 32.186069, 50.039921> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.136356, 32.051907, 49.990597>,  <35.912205, 31.971409, 49.961002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.136356, 32.051907, 49.990597>,  <36.509945, 32.186069, 50.039921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136356, 32.051907, 49.990597> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333047, -0.691885, -0.640606,
		0.129549, -0.639373, 0.757905,
		-0.933968, -0.335408, -0.123308,
		35.856167, 31.951284, 49.953606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573875, 31.474792, 49.832550>,  <36.509945, 32.186069, 50.039921>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573875, 31.474792, 49.832550> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.194935, 31.536327, 49.720226>,  <35.967571, 31.573248, 49.652832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.194935, 31.536327, 49.720226>,  <36.573875, 31.474792, 49.832550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194935, 31.536327, 49.720226> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159343, -0.534178, -0.830219,
		-0.277718, -0.831257, 0.481544,
		-0.947356, 0.153836, -0.280805,
		35.910728, 31.582478, 49.635986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331226, 30.778671, 49.644276>,  <36.573875, 31.474792, 49.832550>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331226, 30.778671, 49.644276> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.107246, 31.057417, 49.465019>,  <35.972858, 31.224665, 49.357464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.107246, 31.057417, 49.465019>,  <36.331226, 30.778671, 49.644276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107246, 31.057417, 49.465019> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097313, -0.481828, -0.870845,
		-0.822789, -0.531243, 0.201987,
		-0.559954, 0.696867, -0.448140,
		35.939259, 31.266478, 49.330578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852222, 30.409540, 49.271206>,  <36.331226, 30.778671, 49.644276>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852222, 30.409540, 49.271206> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.840656, 30.772644, 49.103809>,  <35.833717, 30.990507, 49.003372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.840656, 30.772644, 49.103809>,  <35.852222, 30.409540, 49.271206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840656, 30.772644, 49.103809> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102596, -0.419151, -0.902101,
		-0.994303, 0.016855, 0.105250,
		-0.028911, 0.907760, -0.418492,
		35.831982, 31.044971, 48.978260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242680, 30.369226, 48.796478>,  <35.852222, 30.409540, 49.271206>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242680, 30.369226, 48.796478> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.430595, 30.682951, 48.634415>,  <35.543343, 30.871185, 48.537174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.430595, 30.682951, 48.634415>,  <35.242680, 30.369226, 48.796478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430595, 30.682951, 48.634415> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133976, -0.390299, -0.910888,
		-0.872555, 0.482204, -0.078277,
		0.469786, 0.784313, -0.405161,
		35.571529, 30.918245, 48.512867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905411, 30.482773, 48.071949>,  <35.242680, 30.369226, 48.796478>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905411, 30.482773, 48.071949> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.246540, 30.691608, 48.067616>,  <35.451218, 30.816910, 48.065018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.246540, 30.691608, 48.067616>,  <34.905411, 30.482773, 48.071949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246540, 30.691608, 48.067616> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084140, -0.157849, -0.983872,
		-0.515379, 0.838156, -0.178546,
		0.852822, 0.522090, -0.010830,
		35.502388, 30.848236, 48.064365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253685, 30.846998, 48.063377>,  <34.905411, 30.482773, 48.071949>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253685, 30.846998, 48.063377> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.926521, 30.616899, 48.059193>,  <33.730221, 30.478840, 48.056683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.926521, 30.616899, 48.059193>,  <34.253685, 30.846998, 48.063377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926521, 30.616899, 48.059193> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067245, -0.113641, 0.991244,
		-0.571400, 0.810046, 0.131631,
		-0.817912, -0.575248, -0.010462,
		33.681149, 30.444324, 48.056053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736549, 31.143135, 48.560024>,  <34.253685, 30.846998, 48.063377>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736549, 31.143135, 48.560024> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.622948, 30.763311, 48.506836>,  <33.554787, 30.535418, 48.474922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.622948, 30.763311, 48.506836>,  <33.736549, 31.143135, 48.560024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622948, 30.763311, 48.506836> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072595, -0.116987, 0.990477,
		-0.956070, 0.290955, -0.035708,
		-0.284007, -0.949557, -0.132969,
		33.537746, 30.478445, 48.466946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049145, 31.030050, 48.887348>,  <33.736549, 31.143135, 48.560024>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049145, 31.030050, 48.887348> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.181656, 30.653231, 48.866188>,  <33.261162, 30.427139, 48.853493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.181656, 30.653231, 48.866188>,  <33.049145, 31.030050, 48.887348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181656, 30.653231, 48.866188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397669, -0.190246, 0.897589,
		-0.855638, -0.276312, -0.437648,
		0.331275, -0.942050, -0.052901,
		33.281040, 30.370615, 48.850319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618153, 30.725544, 49.357136>,  <33.049145, 31.030050, 48.887348>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618153, 30.725544, 49.357136> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.928116, 30.475000, 49.323200>,  <33.114094, 30.324675, 49.302837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.928116, 30.475000, 49.323200>,  <32.618153, 30.725544, 49.357136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928116, 30.475000, 49.323200> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040574, -0.183245, 0.982230,
		-0.630775, -0.757691, -0.167411,
		0.774904, -0.626359, -0.084844,
		33.160587, 30.287092, 49.297749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660854, 30.404665, 49.941429>,  <32.618153, 30.725544, 49.357136>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660854, 30.404665, 49.941429> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.015537, 30.271006, 49.813614>,  <33.228348, 30.190809, 49.736927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.015537, 30.271006, 49.813614>,  <32.660854, 30.404665, 49.941429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015537, 30.271006, 49.813614> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219745, -0.303484, 0.927151,
		-0.406780, -0.892324, -0.195673,
		0.886703, -0.334148, -0.319535,
		33.281548, 30.170761, 49.717754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661694, 29.637239, 50.045300>,  <32.660854, 30.404665, 49.941429>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661694, 29.637239, 50.045300> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.031181, 29.790247, 50.037155>,  <33.252876, 29.882051, 50.032269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.031181, 29.790247, 50.037155>,  <32.661694, 29.637239, 50.045300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031181, 29.790247, 50.037155> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192153, -0.416735, 0.888487,
		0.331379, -0.824628, -0.458450,
		0.923723, 0.382519, -0.020357,
		33.308300, 29.905003, 50.031048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136700, 29.146875, 50.275505>,  <32.661694, 29.637239, 50.045300>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136700, 29.146875, 50.275505> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.329082, 29.494802, 50.319508>,  <33.444511, 29.703558, 50.345909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.329082, 29.494802, 50.319508>,  <33.136700, 29.146875, 50.275505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329082, 29.494802, 50.319508> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105100, -0.181760, 0.977710,
		0.870423, -0.458673, -0.178836,
		0.480955, 0.869817, 0.110002,
		33.473370, 29.755747, 50.352509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738602, 28.958155, 50.677876>,  <33.136700, 29.146875, 50.275505>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738602, 28.958155, 50.677876> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.674015, 29.349298, 50.731113>,  <33.635262, 29.583984, 50.763058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.674015, 29.349298, 50.731113>,  <33.738602, 28.958155, 50.677876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674015, 29.349298, 50.731113> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224620, -0.094909, 0.969813,
		0.960975, 0.186491, -0.204322,
		-0.161469, 0.977862, 0.133094,
		33.625576, 29.642656, 50.771042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251301, 29.133741, 51.205212>,  <33.738602, 28.958155, 50.677876>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251301, 29.133741, 51.205212> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.963104, 29.410908, 51.216221>,  <33.790188, 29.577208, 51.222828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.963104, 29.410908, 51.216221>,  <34.251301, 29.133741, 51.205212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.963104, 29.410908, 51.216221> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146500, 0.113297, 0.982701,
		0.677812, 0.712061, -0.183142,
		-0.720492, 0.692917, 0.027523,
		33.746956, 29.618782, 51.224476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549957, 29.710726, 51.537033>,  <34.251301, 29.133741, 51.205212>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549957, 29.710726, 51.537033> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.152729, 29.741579, 51.572517>,  <33.914394, 29.760092, 51.593807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.152729, 29.741579, 51.572517>,  <34.549957, 29.710726, 51.537033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152729, 29.741579, 51.572517> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113557, 0.434353, 0.893556,
		0.030392, 0.897434, -0.440100,
		-0.993067, 0.077133, 0.088709,
		33.854809, 29.764719, 51.599129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425602, 30.316895, 51.955204>,  <34.549957, 29.710726, 51.537033>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425602, 30.316895, 51.955204> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.050831, 30.180840, 51.987370>,  <33.825966, 30.099207, 52.006668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.050831, 30.180840, 51.987370>,  <34.425602, 30.316895, 51.955204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050831, 30.180840, 51.987370> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042733, 0.339823, 0.939518,
		-0.346893, 0.876827, -0.332926,
		-0.936931, -0.340139, 0.080412,
		33.769753, 30.078798, 52.011494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040413, 30.871931, 52.103985>,  <34.425602, 30.316895, 51.955204>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040413, 30.871931, 52.103985> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.790005, 30.581261, 52.217155>,  <33.639759, 30.406858, 52.285057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.790005, 30.581261, 52.217155>,  <34.040413, 30.871931, 52.103985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790005, 30.581261, 52.217155> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296081, 0.557134, 0.775847,
		-0.721415, 0.401924, -0.563930,
		-0.626016, -0.726677, 0.282922,
		33.602200, 30.363258, 52.302032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387978, 31.216806, 52.288433>,  <34.040413, 30.871931, 52.103985>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387978, 31.216806, 52.288433> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.373585, 30.861444, 52.471493>,  <33.364948, 30.648228, 52.581329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.373585, 30.861444, 52.471493>,  <33.387978, 31.216806, 52.288433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373585, 30.861444, 52.471493> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444043, 0.424474, 0.789081,
		-0.895283, -0.174820, -0.409764,
		-0.035987, -0.888403, 0.457652,
		33.362789, 30.594923, 52.608788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699383, 31.158573, 52.546165>,  <33.387978, 31.216806, 52.288433>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699383, 31.158573, 52.546165> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.954983, 30.931650, 52.753952>,  <33.108341, 30.795496, 52.878624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.954983, 30.931650, 52.753952>,  <32.699383, 31.158573, 52.546165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954983, 30.931650, 52.753952> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214052, 0.517503, 0.828476,
		-0.738823, -0.640589, 0.209252,
		0.639001, -0.567306, 0.519462,
		33.146683, 30.761457, 52.909790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646656, 31.881727, 52.459129>,  <32.699383, 31.158573, 52.546165>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646656, 31.881727, 52.459129> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.294979, 32.064980, 52.511494>,  <32.083973, 32.174931, 52.542912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.294979, 32.064980, 52.511494>,  <32.646656, 31.881727, 52.459129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294979, 32.064980, 52.511494> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130855, 0.032027, -0.990884,
		-0.458146, -0.888308, 0.031790,
		-0.879192, 0.458130, 0.130913,
		32.031219, 32.202419, 52.550766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193928, 31.698561, 51.933399>,  <32.646656, 31.881727, 52.459129>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193928, 31.698561, 51.933399> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.047428, 32.053284, 52.046135>,  <31.959530, 32.266117, 52.113777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.047428, 32.053284, 52.046135>,  <32.193928, 31.698561, 51.933399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047428, 32.053284, 52.046135> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363596, 0.142421, -0.920605,
		-0.856541, -0.439645, 0.270278,
		-0.366246, 0.886808, 0.281842,
		31.937553, 32.319324, 52.130688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.583799, 31.669481, 51.627560>,  <32.193928, 31.698561, 51.933399>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.583799, 31.669481, 51.627560> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.632610, 32.060158, 51.698193>,  <31.661898, 32.294563, 51.740574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.632610, 32.060158, 51.698193>,  <31.583799, 31.669481, 51.627560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632610, 32.060158, 51.698193> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409628, 0.211613, -0.887370,
		-0.904054, 0.035952, 0.425903,
		0.122030, 0.976692, 0.176583,
		31.669220, 32.353165, 51.751167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.938194, 31.944044, 51.495754>,  <31.583799, 31.669481, 51.627560>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.938194, 31.944044, 51.495754> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.175220, 32.264553, 51.462700>,  <31.317436, 32.456860, 51.442867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.175220, 32.264553, 51.462700>,  <30.938194, 31.944044, 51.495754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.175220, 32.264553, 51.462700> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391720, 0.196996, -0.898748,
		-0.703862, 0.564939, 0.430607,
		0.592566, 0.801272, -0.082640,
		31.352991, 32.504936, 51.437908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.546989, 32.639698, 51.298790>,  <30.938194, 31.944044, 51.495754>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.546989, 32.639698, 51.298790> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.924269, 32.690540, 51.176006>,  <31.150637, 32.721046, 51.102337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.924269, 32.690540, 51.176006>,  <30.546989, 32.639698, 51.298790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.924269, 32.690540, 51.176006> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325772, 0.172522, -0.929575,
		-0.065201, 0.976770, 0.204131,
		0.943198, 0.127109, -0.306956,
		31.207228, 32.728672, 51.083920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513775, 33.290493, 50.888641>,  <30.546989, 32.639698, 51.298790>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.513775, 33.290493, 50.888641> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.840807, 33.075336, 50.806435>,  <31.037025, 32.946243, 50.757111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.840807, 33.075336, 50.806435>,  <30.513775, 33.290493, 50.888641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.840807, 33.075336, 50.806435> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198036, 0.072483, -0.977511,
		0.540691, 0.839893, -0.047261,
		0.817579, -0.537891, -0.205520,
		31.086081, 32.913971, 50.744778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.758465, 33.667896, 50.350452>,  <30.513775, 33.290493, 50.888641>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.758465, 33.667896, 50.350452> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.931284, 33.307323, 50.339512>,  <31.034975, 33.090981, 50.332947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.931284, 33.307323, 50.339512>,  <30.758465, 33.667896, 50.350452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.931284, 33.307323, 50.339512> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076670, 0.066931, -0.994807,
		0.898586, 0.427707, 0.098030,
		0.432048, -0.901436, -0.027351,
		31.060898, 33.036892, 50.331306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.266779, 34.095798, 50.314003>,  <30.758465, 33.667896, 50.350452>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.266779, 34.095798, 50.314003> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.341515, 34.476841, 50.217976>,  <31.386356, 34.705467, 50.160358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.341515, 34.476841, 50.217976>,  <31.266779, 34.095798, 50.314003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341515, 34.476841, 50.217976> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037497, 0.237281, 0.970717,
		0.981675, -0.190369, 0.008614,
		0.186839, 0.952605, -0.240071,
		31.397566, 34.762623, 50.145954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800816, 34.312172, 50.651253>,  <31.266779, 34.095798, 50.314003>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800816, 34.312172, 50.651253> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.609592, 34.656116, 50.579586>,  <31.494860, 34.862484, 50.536587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.609592, 34.656116, 50.579586>,  <31.800816, 34.312172, 50.651253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609592, 34.656116, 50.579586> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046485, 0.228470, 0.972441,
		0.877098, 0.456553, -0.149192,
		-0.478056, 0.859861, -0.179168,
		31.466175, 34.914074, 50.525837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299244, 34.649899, 50.967808>,  <31.800816, 34.312172, 50.651253>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299244, 34.649899, 50.967808> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.970266, 34.873249, 50.924351>,  <31.772879, 35.007259, 50.898277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.970266, 34.873249, 50.924351>,  <32.299244, 34.649899, 50.967808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970266, 34.873249, 50.924351> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106061, 0.338154, 0.935095,
		0.558870, 0.757542, -0.337334,
		-0.822445, 0.558374, -0.108638,
		31.723534, 35.040760, 50.891758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518215, 35.277573, 51.236168>,  <32.299244, 34.649899, 50.967808>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.518215, 35.277573, 51.236168> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.119583, 35.310131, 51.230534>,  <31.880404, 35.329666, 51.227154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.119583, 35.310131, 51.230534>,  <32.518215, 35.277573, 51.236168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119583, 35.310131, 51.230534> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012399, 0.315950, 0.948695,
		0.081673, 0.945277, -0.315880,
		-0.996582, 0.081399, -0.014084,
		31.820608, 35.334549, 51.226307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361225, 35.963921, 51.322224>,  <32.518215, 35.277573, 51.236168>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361225, 35.963921, 51.322224> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.060410, 35.736980, 51.456417>,  <31.879921, 35.600815, 51.536934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.060410, 35.736980, 51.456417>,  <32.361225, 35.963921, 51.322224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060410, 35.736980, 51.456417> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159971, 0.336662, 0.927938,
		-0.639413, 0.751511, -0.162423,
		-0.752037, -0.567353, 0.335486,
		31.834799, 35.566776, 51.557064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195995, 36.250538, 51.925945>,  <32.361225, 35.963921, 51.322224>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195995, 36.250538, 51.925945> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.957546, 35.932953, 51.973721>,  <31.814476, 35.742401, 52.002388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.957546, 35.932953, 51.973721>,  <32.195995, 36.250538, 51.925945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.957546, 35.932953, 51.973721> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112705, 0.230040, 0.966633,
		-0.794943, 0.562771, -0.226615,
		-0.596123, -0.793959, 0.119441,
		31.778709, 35.694767, 52.009552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550472, 36.533661, 52.256138>,  <32.195995, 36.250538, 51.925945>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.550472, 36.533661, 52.256138> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.576487, 36.143143, 52.338711>,  <31.592094, 35.908833, 52.388256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.576487, 36.143143, 52.338711>,  <31.550472, 36.533661, 52.256138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.576487, 36.143143, 52.338711> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038114, 0.204291, 0.978168,
		-0.997155, -0.071484, -0.023924,
		0.065036, -0.976297, 0.206435,
		31.595997, 35.850254, 52.400642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.887877, 36.264420, 52.620480>,  <31.550472, 36.533661, 52.256138>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.887877, 36.264420, 52.620480> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.188309, 36.016552, 52.711590>,  <31.368568, 35.867832, 52.766258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.188309, 36.016552, 52.711590>,  <30.887877, 36.264420, 52.620480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188309, 36.016552, 52.711590> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029224, 0.375874, 0.926210,
		-0.659563, -0.689002, 0.300420,
		0.751081, -0.619673, 0.227777,
		31.413633, 35.830650, 52.779922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884930, 36.252632, 53.374668>,  <30.887877, 36.264420, 52.620480>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884930, 36.252632, 53.374668> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.242292, 36.104702, 53.272644>,  <31.456711, 36.015945, 53.211430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.242292, 36.104702, 53.272644>,  <30.884930, 36.252632, 53.374668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.242292, 36.104702, 53.272644> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349515, 0.215503, 0.911810,
		-0.282241, -0.903765, 0.321791,
		0.893409, -0.369821, -0.255056,
		31.510315, 35.993755, 53.196129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.625511, 34.189926, 37.172031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005451, 34.262535, 37.273884>,  <34.233414, 34.306103, 37.334995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005451, 34.262535, 37.273884>,  <33.625511, 34.189926, 37.172031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005451, 34.262535, 37.273884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203014, -0.261390, 0.943642,
		0.237855, -0.948010, -0.211428,
		0.949848, 0.181527, 0.254632,
		34.290405, 34.316994, 37.350273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818905, 33.641605, 37.687378>,  <33.625511, 34.189926, 37.172031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818905, 33.641605, 37.687378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069118, 33.947891, 37.747219>,  <34.219246, 34.131664, 37.783123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069118, 33.947891, 37.747219>,  <33.818905, 33.641605, 37.687378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069118, 33.947891, 37.747219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009176, -0.184512, 0.982787,
		0.780141, -0.616142, -0.108393,
		0.625536, 0.765718, 0.149599,
		34.256779, 34.177608, 37.792099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341896, 33.378536, 38.193890>,  <33.818905, 33.641605, 37.687378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341896, 33.378536, 38.193890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308460, 33.776554, 38.215420>,  <34.288399, 34.015366, 38.228336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308460, 33.776554, 38.215420>,  <34.341896, 33.378536, 38.193890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308460, 33.776554, 38.215420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278734, -0.075203, 0.957419,
		0.956724, 0.065023, 0.283639,
		-0.083585, 0.995046, 0.053824,
		34.283386, 34.075069, 38.231567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580311, 33.598003, 38.941715>,  <34.341896, 33.378536, 38.193890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580311, 33.598003, 38.941715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383129, 33.915546, 38.799286>,  <34.264820, 34.106071, 38.713829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383129, 33.915546, 38.799286>,  <34.580311, 33.598003, 38.941715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383129, 33.915546, 38.799286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278122, 0.244002, 0.929038,
		0.824407, 0.557002, 0.100508,
		-0.492952, 0.793859, -0.356071,
		34.235245, 34.153706, 38.692463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658142, 33.962151, 39.478252>,  <34.580311, 33.598003, 38.941715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658142, 33.962151, 39.478252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365238, 34.159409, 39.290379>,  <34.189495, 34.277763, 39.177654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365238, 34.159409, 39.290379>,  <34.658142, 33.962151, 39.478252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365238, 34.159409, 39.290379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501482, 0.076163, 0.861809,
		0.460765, 0.866609, 0.191529,
		-0.732265, 0.493140, -0.469682,
		34.145557, 34.307350, 39.149475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533833, 34.639091, 39.716335>,  <34.658142, 33.962151, 39.478252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533833, 34.639091, 39.716335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183231, 34.527817, 39.559181>,  <33.972870, 34.461052, 39.464890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183231, 34.527817, 39.559181>,  <34.533833, 34.639091, 39.716335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183231, 34.527817, 39.559181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464343, 0.273212, 0.842461,
		-0.127016, 0.920853, -0.368643,
		-0.876500, -0.278182, -0.392889,
		33.920280, 34.444363, 39.441315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035057, 35.079769, 40.118732>,  <34.533833, 34.639091, 39.716335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035057, 35.079769, 40.118732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785301, 34.819584, 39.945744>,  <33.635448, 34.663471, 39.841949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785301, 34.819584, 39.945744>,  <34.035057, 35.079769, 40.118732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785301, 34.819584, 39.945744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536355, -0.045481, 0.842766,
		-0.567860, 0.758173, -0.320483,
		-0.624387, -0.650465, -0.432477,
		33.597984, 34.624443, 39.816002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426773, 35.424026, 40.031487>,  <34.035057, 35.079769, 40.118732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426773, 35.424026, 40.031487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365559, 35.031075, 40.074413>,  <33.328831, 34.795303, 40.100170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365559, 35.031075, 40.074413>,  <33.426773, 35.424026, 40.031487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365559, 35.031075, 40.074413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330823, 0.153262, 0.931164,
		-0.931201, 0.107000, -0.348447,
		-0.153038, -0.982375, 0.107320,
		33.319649, 34.736362, 40.106609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777031, 35.386101, 40.471935>,  <33.426773, 35.424026, 40.031487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777031, 35.386101, 40.471935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907158, 35.007877, 40.468220>,  <32.985233, 34.780941, 40.465992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907158, 35.007877, 40.468220>,  <32.777031, 35.386101, 40.471935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907158, 35.007877, 40.468220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364486, -0.134448, 0.921452,
		-0.872537, -0.296377, -0.388381,
		0.325314, -0.945560, -0.009286,
		33.004753, 34.724209, 40.465435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.181599, 35.013161, 40.690052>,  <32.777031, 35.386101, 40.471935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.181599, 35.013161, 40.690052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513496, 34.804462, 40.769344>,  <32.712635, 34.679241, 40.816921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513496, 34.804462, 40.769344>,  <32.181599, 35.013161, 40.690052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513496, 34.804462, 40.769344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337439, -0.186030, 0.922783,
		-0.444585, -0.832568, -0.330417,
		0.829746, -0.521751, 0.198234,
		32.762421, 34.647938, 40.828815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050678, 34.348866, 41.069271>,  <32.181599, 35.013161, 40.690052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.050678, 34.348866, 41.069271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441425, 34.390675, 41.143894>,  <32.675873, 34.415760, 41.188667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441425, 34.390675, 41.143894>,  <32.050678, 34.348866, 41.069271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441425, 34.390675, 41.143894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156742, -0.243450, 0.957165,
		0.145461, -0.964265, -0.221435,
		0.976869, 0.104522, 0.186554,
		32.734486, 34.422031, 41.199860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225037, 33.776878, 41.440834>,  <32.050678, 34.348866, 41.069271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225037, 33.776878, 41.440834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498341, 34.061436, 41.506657>,  <32.662323, 34.232170, 41.546150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498341, 34.061436, 41.506657>,  <32.225037, 33.776878, 41.440834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498341, 34.061436, 41.506657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103854, -0.128393, 0.986270,
		0.722753, -0.690968, -0.013845,
		0.683258, 0.711392, 0.164557,
		32.703320, 34.274853, 41.556023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.318481, 32.954865, 41.651367>,  <32.225037, 33.776878, 41.440834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.318481, 32.954865, 41.651367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.050488, 32.660076, 41.615612>,  <31.889690, 32.483204, 41.594158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.050488, 32.660076, 41.615612>,  <32.318481, 32.954865, 41.651367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050488, 32.660076, 41.615612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292197, -0.151094, -0.944347,
		0.682449, -0.658821, 0.316572,
		-0.669988, -0.736970, -0.089391,
		31.849491, 32.438984, 41.588795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587143, 32.358219, 41.422340>,  <32.318481, 32.954865, 41.651367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587143, 32.358219, 41.422340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205318, 32.317013, 41.310486>,  <31.976223, 32.292290, 41.243374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205318, 32.317013, 41.310486>,  <32.587143, 32.358219, 41.422340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205318, 32.317013, 41.310486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293551, -0.163387, -0.941877,
		0.051343, -0.981169, 0.186205,
		-0.954564, -0.103019, -0.279634,
		31.918949, 32.286106, 41.226597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599751, 31.702644, 41.135437>,  <32.587143, 32.358219, 41.422340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599751, 31.702644, 41.135437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257626, 31.855402, 40.995377>,  <32.052353, 31.947056, 40.911343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257626, 31.855402, 40.995377>,  <32.599751, 31.702644, 41.135437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257626, 31.855402, 40.995377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209234, -0.363662, -0.907729,
		-0.473991, -0.849652, 0.231138,
		-0.855309, 0.381893, -0.350148,
		32.001034, 31.969969, 40.890331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275997, 31.191538, 40.670876>,  <32.599751, 31.702644, 41.135437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275997, 31.191538, 40.670876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086308, 31.532867, 40.584198>,  <31.972494, 31.737665, 40.532192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086308, 31.532867, 40.584198>,  <32.275997, 31.191538, 40.670876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086308, 31.532867, 40.584198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105454, -0.189303, -0.976240,
		-0.874068, -0.485803, -0.000215,
		-0.474220, 0.853322, -0.216694,
		31.944042, 31.788864, 40.519188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763395, 31.057535, 40.227417>,  <32.275997, 31.191538, 40.670876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.763395, 31.057535, 40.227417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817551, 31.447317, 40.155739>,  <31.850044, 31.681187, 40.112732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817551, 31.447317, 40.155739>,  <31.763395, 31.057535, 40.227417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817551, 31.447317, 40.155739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188058, -0.152296, -0.970279,
		-0.972782, 0.165064, 0.162634,
		0.135389, 0.974454, -0.179192,
		31.858168, 31.739653, 40.101982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233021, 31.302530, 39.697235>,  <31.763395, 31.057535, 40.227417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233021, 31.302530, 39.697235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539343, 31.559675, 39.690628>,  <31.723135, 31.713963, 39.686665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539343, 31.559675, 39.690628>,  <31.233021, 31.302530, 39.697235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.539343, 31.559675, 39.690628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071868, 0.060032, -0.995606,
		-0.639047, 0.763625, 0.092174,
		0.765803, 0.642863, -0.016517,
		31.769083, 31.752535, 39.685673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.880709, 31.849289, 39.460995>,  <31.233021, 31.302530, 39.697235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.880709, 31.849289, 39.460995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269140, 31.904860, 39.383320>,  <31.502199, 31.938202, 39.336716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269140, 31.904860, 39.383320>,  <30.880709, 31.849289, 39.460995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269140, 31.904860, 39.383320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225936, 0.271647, -0.935501,
		-0.077217, 0.952317, 0.295179,
		0.971077, 0.138928, -0.194186,
		31.560463, 31.946537, 39.325066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.899847, 32.443367, 39.098969>,  <30.880709, 31.849289, 39.460995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.899847, 32.443367, 39.098969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237396, 32.271748, 38.970097>,  <31.439926, 32.168777, 38.892773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237396, 32.271748, 38.970097>,  <30.899847, 32.443367, 39.098969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237396, 32.271748, 38.970097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164416, 0.364801, -0.916454,
		0.510734, 0.826340, 0.237302,
		0.843871, -0.429048, -0.322180,
		31.490557, 32.143032, 38.873444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.022671, 32.857758, 38.578419>,  <30.899847, 32.443367, 39.098969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.022671, 32.857758, 38.578419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.270769, 32.549618, 38.519283>,  <31.419628, 32.364735, 38.483803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.270769, 32.549618, 38.519283>,  <31.022671, 32.857758, 38.578419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.270769, 32.549618, 38.519283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051299, 0.148230, -0.987622,
		0.782726, 0.620154, 0.052421,
		0.620248, -0.770348, -0.147837,
		31.456844, 32.318512, 38.474934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652941, 33.027264, 38.014988>,  <31.022671, 32.857758, 38.578419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652941, 33.027264, 38.014988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.559738, 32.638474, 38.027473>,  <31.503817, 32.405201, 38.034966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.559738, 32.638474, 38.027473>,  <31.652941, 33.027264, 38.014988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.559738, 32.638474, 38.027473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006473, -0.033648, -0.999413,
		0.972453, -0.232669, 0.014132,
		-0.233008, -0.971974, 0.031215,
		31.489836, 32.346882, 38.036839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037663, 32.698475, 37.487175>,  <31.652941, 33.027264, 38.014988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037663, 32.698475, 37.487175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753103, 32.430676, 37.572681>,  <31.582369, 32.269997, 37.623985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753103, 32.430676, 37.572681>,  <32.037663, 32.698475, 37.487175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753103, 32.430676, 37.572681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083545, -0.221442, -0.971588,
		0.697810, -0.709041, 0.101600,
		-0.711394, -0.669495, 0.213761,
		31.539684, 32.229828, 37.636810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.171627, 32.299576, 37.031651>,  <32.037663, 32.698475, 37.487175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.171627, 32.299576, 37.031651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819380, 32.152534, 37.151234>,  <31.608030, 32.064308, 37.222984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819380, 32.152534, 37.151234>,  <32.171627, 32.299576, 37.031651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819380, 32.152534, 37.151234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201383, -0.280742, -0.938418,
		0.428895, -0.886595, 0.173198,
		-0.880621, -0.367604, 0.298954,
		31.555193, 32.042255, 37.240921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077312, 31.592817, 36.795002>,  <32.171627, 32.299576, 37.031651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077312, 31.592817, 36.795002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.706217, 31.733244, 36.845676>,  <31.483559, 31.817501, 36.876083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.706217, 31.733244, 36.845676>,  <32.077312, 31.592817, 36.795002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.706217, 31.733244, 36.845676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251162, -0.336164, -0.907696,
		-0.276071, -0.873926, 0.400047,
		-0.927741, 0.351065, 0.126692,
		31.427895, 31.838564, 36.883682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639771, 31.042997, 36.714371>,  <32.077312, 31.592817, 36.795002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639771, 31.042997, 36.714371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492685, 31.402485, 36.618793>,  <31.404434, 31.618177, 36.561447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492685, 31.402485, 36.618793>,  <31.639771, 31.042997, 36.714371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492685, 31.402485, 36.618793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310001, -0.360708, -0.879653,
		-0.876748, -0.249388, 0.411241,
		-0.367713, 0.898718, -0.238939,
		31.382372, 31.672100, 36.547112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291100, 30.784470, 37.086380>,  <31.639771, 31.042997, 36.714371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291100, 30.784470, 37.086380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.008183, 31.045116, 37.196022>,  <31.838432, 31.201504, 37.261806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.008183, 31.045116, 37.196022>,  <32.291100, 30.784470, 37.086380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.008183, 31.045116, 37.196022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302311, 0.629308, -0.715947,
		-0.639020, -0.423518, -0.642095,
		-0.707292, 0.651617, 0.274106,
		31.795996, 31.240601, 37.278255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.339325, 30.272051, 37.588211>,  <32.291100, 30.784470, 37.086380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.339325, 30.272051, 37.588211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693172, 30.129059, 37.468445>,  <32.905483, 30.043264, 37.396584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693172, 30.129059, 37.468445>,  <32.339325, 30.272051, 37.588211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693172, 30.129059, 37.468445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144607, -0.400145, 0.904971,
		-0.443322, -0.843855, -0.302283,
		0.884621, -0.357481, -0.299420,
		32.958561, 30.021814, 37.378620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399685, 29.576342, 37.714024>,  <32.339325, 30.272051, 37.588211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399685, 29.576342, 37.714024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755825, 29.758333, 37.720570>,  <32.969509, 29.867527, 37.724499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755825, 29.758333, 37.720570>,  <32.399685, 29.576342, 37.714024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755825, 29.758333, 37.720570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148182, -0.323597, 0.934520,
		0.430482, -0.829627, -0.355535,
		0.890352, 0.454978, 0.016367,
		33.022930, 29.894827, 37.725479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814213, 29.145840, 38.086884>,  <32.399685, 29.576342, 37.714024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814213, 29.145840, 38.086884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003548, 29.496914, 38.116875>,  <33.117149, 29.707558, 38.134869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003548, 29.496914, 38.116875>,  <32.814213, 29.145840, 38.086884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003548, 29.496914, 38.116875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371042, -0.275850, 0.886699,
		0.798923, -0.391889, -0.456228,
		0.473338, 0.877684, 0.074976,
		33.145550, 29.760220, 38.139366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.512642, 28.958048, 38.278202>,  <32.814213, 29.145840, 38.086884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.512642, 28.958048, 38.278202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475670, 29.342512, 38.382221>,  <33.453487, 29.573191, 38.444633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475670, 29.342512, 38.382221>,  <33.512642, 28.958048, 38.278202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475670, 29.342512, 38.382221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427615, -0.197544, 0.882112,
		0.899223, 0.192736, -0.392747,
		-0.092430, 0.961160, 0.260053,
		33.447941, 29.630859, 38.460236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114521, 29.056637, 38.713177>,  <33.512642, 28.958048, 38.278202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114521, 29.056637, 38.713177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.882389, 29.369789, 38.802906>,  <33.743111, 29.557680, 38.856743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.882389, 29.369789, 38.802906>,  <34.114521, 29.056637, 38.713177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882389, 29.369789, 38.802906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269902, -0.074988, 0.959963,
		0.768357, 0.617637, -0.167783,
		-0.580328, 0.782880, 0.224319,
		33.708290, 29.604652, 38.870201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496349, 29.717922, 39.009903>,  <34.114521, 29.056637, 38.713177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496349, 29.717922, 39.009903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116299, 29.704012, 39.133865>,  <33.888268, 29.695665, 39.208244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116299, 29.704012, 39.133865>,  <34.496349, 29.717922, 39.009903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116299, 29.704012, 39.133865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309854, 0.007077, 0.950758,
		-0.035257, 0.999370, 0.004052,
		-0.950130, -0.034777, 0.309908,
		33.831261, 29.693579, 39.226837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474415, 30.048845, 39.664711>,  <34.496349, 29.717922, 39.009903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474415, 30.048845, 39.664711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106308, 29.893980, 39.687405>,  <33.885445, 29.801062, 39.701023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106308, 29.893980, 39.687405>,  <34.474415, 30.048845, 39.664711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106308, 29.893980, 39.687405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031782, 0.218471, 0.975326,
		-0.390006, 0.895754, -0.213356,
		-0.920264, -0.387164, 0.056737,
		33.830231, 29.777830, 39.704426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048031, 30.570406, 40.102093>,  <34.474415, 30.048845, 39.664711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048031, 30.570406, 40.102093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848984, 30.223572, 40.092804>,  <33.729557, 30.015471, 40.087231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848984, 30.223572, 40.092804>,  <34.048031, 30.570406, 40.102093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848984, 30.223572, 40.092804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182172, 0.078302, 0.980144,
		-0.848053, 0.491963, -0.196923,
		-0.497614, -0.867088, -0.023217,
		33.699699, 29.963446, 40.085838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445351, 30.670021, 40.323231>,  <34.048031, 30.570406, 40.102093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445351, 30.670021, 40.323231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466923, 30.278532, 40.402424>,  <33.479866, 30.043638, 40.449940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466923, 30.278532, 40.402424>,  <33.445351, 30.670021, 40.323231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466923, 30.278532, 40.402424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163062, 0.186975, 0.968737,
		-0.985141, -0.084524, -0.149510,
		0.053926, -0.978722, 0.197979,
		33.483101, 29.984915, 40.461819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814331, 30.490576, 40.674629>,  <33.445351, 30.670021, 40.323231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814331, 30.490576, 40.674629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093845, 30.225235, 40.781712>,  <33.261551, 30.066031, 40.845963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093845, 30.225235, 40.781712>,  <32.814331, 30.490576, 40.674629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093845, 30.225235, 40.781712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214257, 0.162974, 0.963085,
		-0.682495, -0.730344, -0.028245,
		0.698781, -0.663353, 0.267710,
		33.303478, 30.026230, 40.862026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543579, 30.127028, 41.191746>,  <32.814331, 30.490576, 40.674629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543579, 30.127028, 41.191746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929653, 30.043858, 41.255234>,  <33.161297, 29.993956, 41.293327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929653, 30.043858, 41.255234>,  <32.543579, 30.127028, 41.191746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929653, 30.043858, 41.255234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113529, 0.213685, 0.970283,
		-0.235661, -0.954519, 0.182639,
		0.965181, -0.207923, 0.158723,
		33.219208, 29.981480, 41.302849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387058, 29.891665, 41.806988>,  <32.543579, 30.127028, 41.191746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.387058, 29.891665, 41.806988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783684, 29.937103, 41.782005>,  <33.021660, 29.964367, 41.767014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783684, 29.937103, 41.782005>,  <32.387058, 29.891665, 41.806988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783684, 29.937103, 41.782005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025184, 0.303831, 0.952393,
		0.127166, -0.945929, 0.298406,
		0.991562, 0.113597, -0.062459,
		33.081154, 29.971184, 41.763268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683201, 29.526331, 42.347435>,  <32.387058, 29.891665, 41.806988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683201, 29.526331, 42.347435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979988, 29.771688, 42.239185>,  <33.158058, 29.918903, 42.174236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979988, 29.771688, 42.239185>,  <32.683201, 29.526331, 42.347435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979988, 29.771688, 42.239185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129532, 0.264895, 0.955538,
		0.657806, -0.744030, 0.117089,
		0.741965, 0.613392, -0.270625,
		33.202579, 29.955706, 42.157997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216339, 29.321249, 42.732044>,  <32.683201, 29.526331, 42.347435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216339, 29.321249, 42.732044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287209, 29.698917, 42.620937>,  <33.329731, 29.925518, 42.554276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287209, 29.698917, 42.620937>,  <33.216339, 29.321249, 42.732044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287209, 29.698917, 42.620937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185324, 0.245174, 0.951601,
		0.966574, -0.220071, -0.131540,
		0.177169, 0.944171, -0.277763,
		33.340359, 29.982168, 42.537609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823273, 29.525476, 42.980125>,  <33.216339, 29.321249, 42.732044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823273, 29.525476, 42.980125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638699, 29.875595, 42.922256>,  <33.527954, 30.085667, 42.887535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638699, 29.875595, 42.922256>,  <33.823273, 29.525476, 42.980125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.638699, 29.875595, 42.922256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128273, 0.227183, 0.965367,
		0.877851, 0.426898, -0.217108,
		-0.461436, 0.875298, -0.144673,
		33.500267, 30.138184, 42.878853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313072, 29.926914, 43.266087>,  <33.823273, 29.525476, 42.980125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313072, 29.926914, 43.266087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970261, 30.133020, 43.267445>,  <33.764576, 30.256683, 43.268261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970261, 30.133020, 43.267445>,  <34.313072, 29.926914, 43.266087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970261, 30.133020, 43.267445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194651, 0.317640, 0.928017,
		0.477095, 0.795995, -0.372522,
		-0.857025, 0.515264, 0.003397,
		33.713154, 30.287600, 43.268463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478390, 30.492619, 43.583370>,  <34.313072, 29.926914, 43.266087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478390, 30.492619, 43.583370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078934, 30.489460, 43.603958>,  <33.839260, 30.487564, 43.616310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078934, 30.489460, 43.603958>,  <34.478390, 30.492619, 43.583370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078934, 30.489460, 43.603958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048343, 0.226483, 0.972815,
		-0.019338, 0.973983, -0.225794,
		-0.998644, -0.007896, 0.051465,
		33.779339, 30.487091, 43.619396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320869, 31.087309, 43.916924>,  <34.478390, 30.492619, 43.583370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320869, 31.087309, 43.916924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014828, 30.832546, 43.954800>,  <33.831203, 30.679688, 43.977528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014828, 30.832546, 43.954800>,  <34.320869, 31.087309, 43.916924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014828, 30.832546, 43.954800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002340, 0.149810, 0.988712,
		-0.643905, 0.756244, -0.116111,
		-0.765102, -0.636908, 0.094693,
		33.785297, 30.641474, 43.983208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897388, 31.456131, 44.376534>,  <34.320869, 31.087309, 43.916924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897388, 31.456131, 44.376534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759609, 31.080772, 44.387585>,  <33.676941, 30.855556, 44.394215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759609, 31.080772, 44.387585>,  <33.897388, 31.456131, 44.376534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759609, 31.080772, 44.387585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051949, 0.048436, 0.997474,
		-0.937366, 0.342145, -0.065433,
		-0.344450, -0.938398, 0.027628,
		33.656273, 30.799253, 44.395874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375023, 31.418961, 44.890114>,  <33.897388, 31.456131, 44.376534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375023, 31.418961, 44.890114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.463139, 31.029171, 44.872791>,  <33.516006, 30.795298, 44.862396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.463139, 31.029171, 44.872791>,  <33.375023, 31.418961, 44.890114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.463139, 31.029171, 44.872791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091791, -0.064909, 0.993660,
		-0.971106, -0.214917, -0.103747,
		0.220288, -0.974473, -0.043306,
		33.529224, 30.736830, 44.859798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829189, 31.087957, 45.235378>,  <33.375023, 31.418961, 44.890114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829189, 31.087957, 45.235378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147903, 30.846590, 45.248093>,  <33.339134, 30.701769, 45.255722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147903, 30.846590, 45.248093>,  <32.829189, 31.087957, 45.235378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147903, 30.846590, 45.248093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058754, -0.025006, 0.997959,
		-0.601393, -0.797032, -0.055378,
		0.796790, -0.603420, 0.031791,
		33.386940, 30.665564, 45.257629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670723, 30.523817, 45.711781>,  <32.829189, 31.087957, 45.235378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670723, 30.523817, 45.711781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069916, 30.527061, 45.686588>,  <33.309433, 30.529009, 45.671471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069916, 30.527061, 45.686588>,  <32.670723, 30.523817, 45.711781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069916, 30.527061, 45.686588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062142, -0.329026, 0.942274,
		-0.013078, -0.944286, -0.328866,
		0.997982, 0.008113, -0.062983,
		33.369308, 30.529495, 45.667694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747395, 29.857275, 45.948380>,  <32.670723, 30.523817, 45.711781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747395, 29.857275, 45.948380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093452, 30.054632, 45.984337>,  <33.301086, 30.173046, 46.005913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093452, 30.054632, 45.984337>,  <32.747395, 29.857275, 45.948380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093452, 30.054632, 45.984337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073118, -0.301426, 0.950682,
		0.496156, -0.815909, -0.296854,
		0.865149, 0.493392, 0.089897,
		33.352997, 30.202650, 46.011307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196819, 29.435953, 46.257778>,  <32.747395, 29.857275, 45.948380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196819, 29.435953, 46.257778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346680, 29.801357, 46.321194>,  <33.436596, 30.020599, 46.359245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346680, 29.801357, 46.321194>,  <33.196819, 29.435953, 46.257778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.346680, 29.801357, 46.321194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273087, -0.272138, 0.922694,
		0.886035, -0.302396, -0.351425,
		0.374655, 0.913509, 0.158543,
		33.459076, 30.075409, 46.368755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648151, 29.282543, 46.731754>,  <33.196819, 29.435953, 46.257778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648151, 29.282543, 46.731754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616161, 29.679934, 46.764267>,  <33.596966, 29.918367, 46.783775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616161, 29.679934, 46.764267>,  <33.648151, 29.282543, 46.731754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616161, 29.679934, 46.764267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194605, -0.064414, 0.978764,
		0.977616, 0.094096, -0.188184,
		-0.079976, 0.993477, 0.081284,
		33.592167, 29.977976, 46.788651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352573, 29.670061, 46.950596>,  <33.648151, 29.282543, 46.731754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352573, 29.670061, 46.950596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026112, 29.871958, 47.063110>,  <33.830235, 29.993095, 47.130619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026112, 29.871958, 47.063110>,  <34.352573, 29.670061, 46.950596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026112, 29.871958, 47.063110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247367, -0.134727, 0.959510,
		0.522202, 0.852692, -0.014898,
		-0.816158, 0.504743, 0.281282,
		33.781265, 30.023380, 47.147495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587875, 30.043909, 47.505226>,  <34.352573, 29.670061, 46.950596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587875, 30.043909, 47.505226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190926, 30.005056, 47.535595>,  <33.952755, 29.981745, 47.553814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190926, 30.005056, 47.535595>,  <34.587875, 30.043909, 47.505226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190926, 30.005056, 47.535595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091265, -0.164797, 0.982096,
		-0.082882, 0.981533, 0.172405,
		-0.992372, -0.097133, 0.075920,
		33.893215, 29.975916, 47.558372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816074, 30.889359, 47.409885>,  <34.587875, 30.043909, 47.505226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816074, 30.889359, 47.409885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203503, 30.885860, 47.509319>,  <35.435959, 30.883762, 47.568981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203503, 30.885860, 47.509319>,  <34.816074, 30.889359, 47.409885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203503, 30.885860, 47.509319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247674, -0.058459, -0.967078,
		0.022988, 0.998251, -0.054456,
		0.968571, -0.008744, 0.248585,
		35.494072, 30.883238, 47.583893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169678, 31.390078, 47.039307>,  <34.816074, 30.889359, 47.409885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169678, 31.390078, 47.039307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454044, 31.127529, 47.140320>,  <35.624664, 30.969999, 47.200928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454044, 31.127529, 47.140320>,  <35.169678, 31.390078, 47.039307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454044, 31.127529, 47.140320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353837, 0.023502, -0.935012,
		0.607781, 0.754071, 0.248957,
		0.710916, -0.656372, 0.252533,
		35.667320, 30.930618, 47.216080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725178, 31.484138, 46.590523>,  <35.169678, 31.390078, 47.039307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725178, 31.484138, 46.590523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838478, 31.145668, 46.771080>,  <35.906456, 30.942587, 46.879414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838478, 31.145668, 46.771080>,  <35.725178, 31.484138, 46.590523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838478, 31.145668, 46.771080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534109, -0.251744, -0.807064,
		0.796554, 0.469694, 0.380643,
		0.283249, -0.846175, 0.451395,
		35.923454, 30.891815, 46.906498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516350, 31.469389, 46.663860>,  <35.725178, 31.484138, 46.590523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516350, 31.469389, 46.663860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350697, 31.105526, 46.651089>,  <36.251305, 30.887209, 46.643425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350697, 31.105526, 46.651089>,  <36.516350, 31.469389, 46.663860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350697, 31.105526, 46.651089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486930, -0.191769, -0.852129,
		0.769021, -0.368443, 0.522357,
		-0.414133, -0.909656, -0.031932,
		36.226456, 30.832628, 46.641510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031918, 31.130430, 46.549206>,  <36.516350, 31.469389, 46.663860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031918, 31.130430, 46.549206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.738560, 30.881924, 46.438820>,  <36.562546, 30.732821, 46.372589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.738560, 30.881924, 46.438820>,  <37.031918, 31.130430, 46.549206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738560, 30.881924, 46.438820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411293, -0.082287, -0.907781,
		0.541264, -0.779268, 0.315871,
		-0.733398, -0.621265, -0.275968,
		36.518539, 30.695545, 46.356030>
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
