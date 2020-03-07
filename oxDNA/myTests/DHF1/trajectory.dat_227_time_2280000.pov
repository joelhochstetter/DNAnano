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
	<1.366614, 1.896187, 1.940365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.489616, 1.671867, 1.632874>,  <1.563418, 1.537276, 1.448378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.489616, 1.671867, 1.632874>,  <1.366614, 1.896187, 1.940365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.489616, 1.671867, 1.632874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272708, 0.722045, -0.635830,
		0.911631, 0.405160, 0.069098,
		0.307505, -0.560799, -0.768730,
		1.581868, 1.503628, 1.402255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.733842, 2.301166, 1.386226>,  <1.366614, 1.896187, 1.940365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.733842, 2.301166, 1.386226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.549694, 2.004326, 1.191353>,  <1.439205, 1.826222, 1.074429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.549694, 2.004326, 1.191353>,  <1.733842, 2.301166, 1.386226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.549694, 2.004326, 1.191353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410008, 0.664505, -0.624761,
		0.787370, -0.087873, -0.610186,
		-0.460371, -0.742099, -0.487183,
		1.411583, 1.781696, 1.045198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.953673, 2.263491, 0.648451>,  <1.733842, 2.301166, 1.386226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.953673, 2.263491, 0.648451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.560791, 2.213654, 0.704666>,  <1.325062, 2.183751, 0.738395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.560791, 2.213654, 0.704666>,  <1.953673, 2.263491, 0.648451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.560791, 2.213654, 0.704666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181781, 0.818805, -0.544531,
		-0.047228, -0.560388, -0.826883,
		-0.982204, -0.124594, 0.140538,
		1.266130, 2.176275, 0.746828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.608562, 2.320938, -0.012696>,  <1.953673, 2.263491, 0.648451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.608562, 2.320938, -0.012696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.360844, 2.439964, 0.277939>,  <1.212213, 2.511380, 0.452320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.360844, 2.439964, 0.277939>,  <1.608562, 2.320938, -0.012696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.360844, 2.439964, 0.277939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157372, 0.859580, -0.486165,
		-0.769225, -0.415424, -0.485505,
		-0.619296, 0.297566, 0.726586,
		1.175055, 2.529234, 0.495915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.167519, 2.702008, -0.485872>,  <1.608562, 2.320938, -0.012696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.167519, 2.702008, -0.485872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.048592, 2.793625, -0.115112>,  <0.977235, 2.848595, 0.107344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.048592, 2.793625, -0.115112>,  <1.167519, 2.702008, -0.485872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.048592, 2.793625, -0.115112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470108, 0.809851, -0.350913,
		-0.831024, -0.540076, -0.133109,
		-0.297318, 0.229041, 0.926899,
		0.959396, 2.862337, 0.162957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.425864, 2.776522, -0.382811>,  <1.167519, 2.702008, -0.485872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.425864, 2.776522, -0.382811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.592640, 3.004547, -0.099632>,  <0.692706, 3.141362, 0.070275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.592640, 3.004547, -0.099632>,  <0.425864, 2.776522, -0.382811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.592640, 3.004547, -0.099632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426598, 0.810492, -0.401394,
		-0.802605, -0.134651, 0.581115,
		0.416940, 0.570063, 0.707947,
		0.717722, 3.175566, 0.112752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.112051, 3.275301, -0.200362>,  <0.425864, 2.776522, -0.382811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.112051, 3.275301, -0.200362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.253716, 3.407730, -0.107208>,  <0.473175, 3.487187, -0.051316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.253716, 3.407730, -0.107208>,  <-0.112051, 3.275301, -0.200362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.253716, 3.407730, -0.107208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134023, 0.790524, -0.597586,
		-0.381944, 0.515231, 0.767239,
		0.914416, 0.331073, 0.232883,
		0.528040, 3.507052, -0.037343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.218137, 3.907919, 0.177971>,  <-0.112051, 3.275301, -0.200362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.218137, 3.907919, 0.177971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.135960, 3.861946, -0.002312>,  <0.348418, 3.834363, -0.110482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.135960, 3.861946, -0.002312>,  <-0.218137, 3.907919, 0.177971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.135960, 3.861946, -0.002312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257277, 0.686273, -0.680323,
		0.387499, 0.718207, 0.577948,
		0.885242, -0.114932, -0.450708,
		0.401532, 3.827466, -0.137524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.012462, 4.995198, 4.783430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.379675, 5.125336, 4.692772>,  <0.600003, 5.203419, 4.638377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.379675, 5.125336, 4.692772>,  <0.012462, 4.995198, 4.783430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.379675, 5.125336, 4.692772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360079, -0.444744, 0.820089,
		0.166013, -0.834478, -0.525439,
		0.918032, 0.325345, -0.226645,
		0.655084, 5.222939, 4.624778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.165985, 4.895725, 4.070095>,  <0.012462, 4.995198, 4.783430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.165985, 4.895725, 4.070095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.564726, 4.867828, 4.055008>,  <0.803970, 4.851090, 4.045956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.564726, 4.867828, 4.055008>,  <0.165985, 4.895725, 4.070095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.564726, 4.867828, 4.055008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014329, -0.626339, 0.779419,
		-0.077981, -0.776425, -0.625367,
		0.996852, -0.069741, -0.037717,
		0.863781, 4.846906, 4.043693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.412775, 4.135486, 3.923178>,  <0.165985, 4.895725, 4.070095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.412775, 4.135486, 3.923178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.617186, 4.388046, 4.156479>,  <0.739832, 4.539583, 4.296459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.617186, 4.388046, 4.156479>,  <0.412775, 4.135486, 3.923178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.617186, 4.388046, 4.156479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043035, -0.696486, 0.716278,
		0.858486, -0.340937, -0.383096,
		0.511027, 0.631402, 0.583252,
		0.770494, 4.577467, 4.331454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.190674, 4.007985, 4.070941>,  <0.412775, 4.135486, 3.923178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.190674, 4.007985, 4.070941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.973646, 4.184692, 4.356728>,  <0.843430, 4.290717, 4.528199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.973646, 4.184692, 4.356728>,  <1.190674, 4.007985, 4.070941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.973646, 4.184692, 4.356728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312663, -0.683221, 0.659887,
		0.779655, 0.581421, 0.232570,
		-0.542568, 0.441768, 0.714465,
		0.810876, 4.317223, 4.571067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.607970, 3.891915, 4.632436>,  <1.190674, 4.007985, 4.070941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.607970, 3.891915, 4.632436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.238218, 3.966293, 4.765671>,  <1.016367, 4.010921, 4.845612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.238218, 3.966293, 4.765671>,  <1.607970, 3.891915, 4.632436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.238218, 3.966293, 4.765671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049419, -0.807427, 0.587895,
		0.378259, 0.559899, 0.737179,
		-0.924380, 0.185946, 0.333086,
		0.960904, 4.022077, 4.865597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.703875, 4.020076, 5.364281>,  <1.607970, 3.891915, 4.632436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.703875, 4.020076, 5.364281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.340826, 3.892212, 5.255440>,  <1.122997, 3.815494, 5.190135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.340826, 3.892212, 5.255440>,  <1.703875, 4.020076, 5.364281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.340826, 3.892212, 5.255440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015371, -0.673062, 0.739426,
		-0.419507, 0.666937, 0.615800,
		-0.907622, -0.319659, -0.272103,
		1.068539, 3.796314, 5.173809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.338664, 3.988335, 5.897895>,  <1.703875, 4.020076, 5.364281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.338664, 3.988335, 5.897895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.140785, 3.727966, 5.667564>,  <1.022058, 3.571745, 5.529366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.140785, 3.727966, 5.667564>,  <1.338664, 3.988335, 5.897895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.140785, 3.727966, 5.667564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006134, -0.659950, 0.751285,
		-0.869044, 0.375190, 0.322482,
		-0.494697, -0.650921, -0.575827,
		0.992376, 3.532690, 5.494816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.956536, 3.501732, 6.378155>,  <1.338664, 3.988335, 5.897895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.956536, 3.501732, 6.378155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.970486, 3.289886, 6.039146>,  <0.978855, 3.162779, 5.835741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.970486, 3.289886, 6.039146>,  <0.956536, 3.501732, 6.378155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.970486, 3.289886, 6.039146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237871, -0.819267, 0.521746,
		-0.970670, -0.219796, 0.097409,
		0.034873, -0.529614, -0.847521,
		0.980948, 3.131002, 5.784890>
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
